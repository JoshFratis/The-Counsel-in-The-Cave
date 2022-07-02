(function(storyContent) {

    // Create ink story from the content using inkjs
    var story = new inkjs.Story(storyContent);

    var savePoint = "";

    // Set default theme as 'white'
    var defaultThemeClass = 'white';
    var themeClass = 'white';

    // Set default scene title
    var sceneTitle = 'THE COUNSEL IN THE CAVE';

    // Initialize height tracker for accumulated pages 
    var storyHeight = 0;
    var pageNumber = 1;
    console.log('initialize pageNumber = 1')

    // Global tags - those at the top of the ink file
    var globalTags = story.globalTags;
    if( globalTags ) {
        for(var i=0; i<story.globalTags.length; i++) {
            var globalTag = story.globalTags[i];
            var splitTag = splitPropertyTag(globalTag);
            
            // THEME: color
            if( splitTag && splitTag.property == "THEME" ) {
                themeClass = splitTag.val;
            }
            else if( splitTag && splitTag.property == "DEFAULTTHEME" ) {
                defaultThemeClass = splitTag.val;
            }

            // SCENETITLE
            else if ( splitTag && splitTag.property == "SCENETITLE") {
                sceneTitle = splitTag.val;
            }
            
            // author: Your Name
            else if( splitTag && splitTag.property == "author" ) {
                var byline = document.querySelector('.byline');
                byline.innerHTML = "by "+splitTag.val;
            }
        }
    }

    var pageContainer = document.querySelector('#page')
    var headerContainer = document.querySelector('#header');
    var storyContainer = document.querySelector('#story');
    var outerScrollContainer = document.querySelector('.outerContainer');

    // Set theme to all elements with 'themed' class
    var themedElements = document.getElementsByClassName('themed');
    for(var i = 0; i < themedElements.length; i++) {
        var el = themedElements[i];
        el.classList.add(themeClass);
    } 
   
    var style = "dialogue";

    // page features setup
    var hasSave = loadSavePoint();
    setupButtons(hasSave);

    // Set initial save point
    savePoint = story.state.toJson();

    // Kick off the start of the story!
    continueStory(true);

    // Main story processing function. Each time this is called it generates
    // all the next content up as far as the next set of choices.
    function continueStory(firstTime) {

        var paragraphIndex = 0;
        var delay = 0.0;

        // Don't over-scroll past new content
        var previousBottomEdge = firstTime ? 0 : contentBottomEdgeY();

        // Generate story text - loop through available content
        while(story.canContinue) {

            // Get ink to generate the next paragraph
            var paragraphText = story.Continue();
            var tags = story.currentTags;

            // Any special tags included with this line
            var customClasses = [];
            for(var i=0; i<tags.length; i++) {
                var tag = tags[i];

                // Detect tags of the form "X: Y". Currently used for IMAGE and CLASS but could be
                // customised to be used for other things too.
                var splitTag = splitPropertyTag(tag);

                // AUDIO: src
                if( splitTag && splitTag.property == "AUDIO" ) {
                  if('audio' in this) {
                    this.audio.pause();
                    this.audio.removeAttribute('src');
                    this.audio.load();
                  }
                  this.audio = new Audio(splitTag.val);
                  this.audio.play();
                }

                // AUDIOLOOP: src
                else if( splitTag && splitTag.property == "AUDIOLOOP" ) {
                  if('audioLoop' in this) {
                    this.audioLoop.pause();
                    this.audioLoop.removeAttribute('src');
                    this.audioLoop.load();
                  }
                  this.audioLoop = new Audio(splitTag.val);
                  this.audioLoop.play();
                  this.audioLoop.loop = true;
                }

                // IMAGE: src
                if( splitTag && splitTag.property == "IMAGE" ) {
                    var imageElement = document.createElement('img');
                    imageElement.src = splitTag.val;
                    storyContainer.appendChild(imageElement);

                    showAfter(delay, imageElement);
                    delay += 200.0;
                }

                // LINK: url
                else if( splitTag && splitTag.property == "LINK" ) {
                    window.location.href = splitTag.val;
                }

                // LINKOPEN: url
                else if( splitTag && splitTag.property == "LINKOPEN" ) {
                    window.open(splitTag.val);
                }

                // BACKGROUND: src
                else if( splitTag && splitTag.property == "BACKGROUND" ) {
                    outerScrollContainer.style.backgroundImage = 'url('+splitTag.val+')';
                }

                // CLASS: className
                else if( splitTag && splitTag.property == "CLASS" ) {
                    customClasses.push(splitTag.val);
                }

                // TITLE: title
                else if (splitTag && splitTag.property == "TITLE") {

                    // Clear header of default scene title 
                    sceneTitleElement = headerContainer.querySelector('.pageHeader');
                    if (sceneTitleElement != null) {
                        headerContainer.removeChild(sceneTitleElement);
                    }

                    // Add title to header
                    var titleElement = document.createElement('h1');
                    titleElement.innerHTML = splitTag.val;
                    headerContainer.style.paddingTop = '2em';
                    headerContainer.appendChild(titleElement);
                }

                // THEME: color
                else if (splitTag && splitTag.property == "THEME") {
                    console.log(tag);

                    var themedElements = document.getElementsByClassName('themed');
                    
                    // Fade to default theme
                    for(var i = 0; i < themedElements.length; i++) {
                        var el = themedElements[i];
                        el.classList.replace(themeClass, defaultThemeClass);
                        console.log("Replacing "+themeClass+" theme with "+defaultThemeClass+" theme for element: "+el);
                    } 

                    // Wait  
                    setTimeout(() => {  
                        // Fade to new theme
                        for(var i = 0; i < themedElements.length; i++) {
                            var el = themedElements[i];
                            el.classList.replace(defaultThemeClass, splitTag.val);
                            console.log("Replacing "+defaultThemeClass+" theme with "+splitTag.val+" theme for element: "+el);
                        } 
                        themeClass = splitTag.val;
                    }, 1000);
                }

                else if ( splitTag && splitTag.property == "SCENETITLE") {
                    sceneTitle = splitTag.val;
                }

                // Page Break
                else if (tag == "PB") {
                    // Cut page
                    storyContainer.style.height = "auto";
                    storyHeight = contentBottomEdgeY();

                    // Create footer container
                    footerContainer = document.createElement('div');
                    footerContainer.classList.add('container', 'footerContainer');
                    pageContainer.append(footerContainer);

                    // Create footer element
                    pageNumberElement = document.createElement('h3');
                    pageNumberElement.innerHTML = '- '+pageNumber.toString()+' -';
                    pageNumberElement.classList.add('pageNumber');
                    footerContainer.append(pageNumberElement);
                    pageNumber++;
                    console.log('pagenumber = '+pageNumber);

                    /*
                        // Fade in page number after a short delay
                        showAfter(delay, pageNumberElement);
                        delay += 50.0;
                    */
                    
                    // Create new page
                    pageContainer = document.createElement('div');
                    pageContainer.classList.add('card');

                    // Create header container
                    headerContainer = document.createElement('div');
                    headerContainer.classList.add('container', 'headerContainer');
                    pageContainer.append(headerContainer);

                     // Create header element
                     if (headerContainer.hasChildNodes() == false) {
                        sceneTitleElement = document.createElement('h3');
                        sceneTitleElement.innerHTML = '- '+sceneTitle+' -';
                        sceneTitleElement.classList.add('pageHeader');
                        headerContainer.append(sceneTitleElement);
                     }

                     // Create body container
                    storyContainer = document.createElement('div');
                    storyContainer.classList.add('container', 'storyContainer');
                    pageContainer.append(storyContainer);

                    // Add new page
                    outerScrollContainer.append(pageContainer);

                     // Fade in new page after a short delay
                     showAfter(delay, storyContainer);
                     delay += 200.0;
        
                      // Fade in new page after a short delay
                      showAfter(delay, sceneTitleElement);
                      delay += 200.0;
                }

                // Text Styles
                // Cue / Line of Dialogue 
                else if (tag == "DIA") {
                    style = "dialogue";
                }

                // Stage Directions
                else if (tag == "DIR") {
                    style = "direction";
                }

                // Plain Text Paragraph
                else if (tag == "GRAPH") {
                    style = "graph";
                }
                
                // CLEAR - removes all existing content.
                // RESTART - clears everything and restarts the story from the beginning
                else if( tag == "CLEAR" || tag == "RESTART" ) {
                    console.log('removing all elements...');
                    removeAllElements();
                    console.log('all elements removed.');

                    // Comment out this line if you want to leave the header visible when clearing
                    //setVisible(".header", false);

                    if( tag == "RESTART" ) {
                        restart();
                        return;
                    }
                }
            }

            // Create paragraph element (initially hidden)
            
            if (paragraphText != "") {
                var paragraphElement = document.createElement('p');
                paragraphElement.innerHTML = paragraphText;
                paragraphElement.classList.add(style);

                // Automatic line breaks (not after cue)
                if ((paragraphText.toUpperCase() == paragraphText)
                    && paragraphText != paragraphText.toLowerCase()){
                    paragraphElement.classList.add("cue");
                }

                // Automatic styling for inflection encased in parentheses
                if (paragraphText.charAt(0) == "(") {
                    paragraphElement.classList.add("inflection");
                }
                
                // Add line to story
                storyContainer.appendChild(paragraphElement);

                // Set first line's top margin to 0
                console.log('line: '+paragraphText+'. paragraphElement: '+paragraphElement+'. storyContainer.firstChild: '+storyContainer.firstChild);
                if (paragraphElement == storyContainer.firstChild) {
                    paragraphElement.style.marginTop = '0';
                    console.log("margin-top set to 0 for line: "+paragraphText);
                }

                // Add any custom classes derived from ink tags
                for(var i=0; i<customClasses.length; i++)
                    paragraphElement.classList.add(customClasses[i]);

                // Fade in paragraph after a short delay
                showAfter(delay, paragraphElement);
                delay += 200.0;
            }
            
        }

        // Create HTML choices from ink choices
        story.currentChoices.forEach(function(choice) {

            // Create paragraph with anchor element
            var choiceParagraphElement = document.createElement('p');

            // Check for exception to choice
            if (choice.text.substring(0,3) == "ACT") {
                choiceParagraphElement.classList.add("cue");
                choiceParagraphElement.innerHTML = choice.text;
            }
            // If not exception, style as choice, link to choice
            else {
                choiceParagraphElement.classList.add("choice");
                choiceParagraphElement.innerHTML = `<a href='#'>${choice.text}</a>`
            }
        
            // Check for Page Turn Symbol ('<') to Style
            // Add choice to story
            if ((choice.text == "<") || (choice.text == ">")) {
                if (choice.text == "<") {
                    choiceParagraphElement.classList.add("pageTurnLeft");
                }
                else if (choice.text == ">") {
                    choiceParagraphElement.classList.add("pageTurnRight");
                }
                pageTurnContainer = document.createElement('div');
                pageTurnContainer.classList.add("pageTurnContainer");
                pageTurnContainer.appendChild(choiceParagraphElement);
                storyContainer.appendChild(pageTurnContainer);
            }
            else {
                choiceParagraphElement.classList.add(style);
                storyContainer.appendChild(choiceParagraphElement);
            }

            // Set first line's top margin to 0
            if (choiceParagraphElement == storyContainer.firstChild) {
                choiceParagraphElement.style.marginTop = '0';
                console.log("margin-top set to 0 for line: "+choice.text);
            }

            // Fade choice in after a short delay
            showAfter(delay, choiceParagraphElement);
            delay += 200.0;

            // Click on choice
            if (choiceParagraphElement.classList.contains("choice")) {

                var choiceAnchorEl = choiceParagraphElement.querySelectorAll("a")[0];
                choiceAnchorEl.addEventListener("click", function(event) {

                    // Don't follow <a> link
                    event.preventDefault();

                    // Remove all existing choices
                    removeAll(".choice");

                    // Tell the story where to go next
                    story.ChooseChoiceIndex(choice.index);

                    // This is where the save button will save from
                    savePoint = story.state.toJson();

                    // Aaand loop
                    continueStory();
                });
            }
        });

        // Extend height to fit
        // We do this manually so that removing elements and creating new ones doesn't
        // cause the height (and therefore scroll) to jump backwards temporarily.
        storyContainer.style.height = contentBottomEdgeY() - storyHeight + "px";

        if( !firstTime )
            scrollDown(previousBottomEdge);

    }

    function restart() {
        pageNumber = 1;
        story.ResetState();

        setVisible(".header", true);

        // set save point to here
        savePoint = story.state.toJson();

        continueStory(true);

        outerScrollContainer.scrollTo(0, 0);
    }

    // -----------------------------------
    // Various Helper functions
    // -----------------------------------

    // Fades in an element after a specified delay
    function showAfter(delay, el) {
        el.classList.add("hide");
        setTimeout(function() { el.classList.remove("hide") }, delay);
    }

    // Scrolls the page down, but no further than the bottom edge of what you could
    // see previously, so it doesn't go too far.
    function scrollDown(previousBottomEdge) {

        // Line up top of screen with the bottom of where the previous content ended
        var target = previousBottomEdge;

        // Can't go further than the very bottom of the page
        var limit = outerScrollContainer.scrollHeight - outerScrollContainer.clientHeight;
        if( target > limit ) target = limit;

        var start = outerScrollContainer.scrollTop;

        var dist = target - start;
        var duration = 300 + 300*dist/100;
        var startTime = null;
        function step(time) {
            if( startTime == null ) startTime = time;
            var t = (time-startTime) / duration;
            var lerp = 3*t*t - 2*t*t*t; // ease in/out
            outerScrollContainer.scrollTo(0, (1.0-lerp)*start + lerp*target);
            if( t < 1 ) requestAnimationFrame(step);
        }
        requestAnimationFrame(step);
    }

    // The Y coordinate of the bottom end of all the story content, used
    // for growing the container, and deciding how far to scroll.
    function contentBottomEdgeY() {
        var bottomElement = storyContainer.lastElementChild;
        return bottomElement ? bottomElement.offsetTop + bottomElement.offsetHeight : 0;
    }

    // Remove all elements that match the given selector. Used for removing choices after
    // you've picked one, as well as for the CLEAR and RESTART tags.
    function removeAll(selector)
    {
        var allElements = storyContainer.querySelectorAll(selector);
        for(var i=0; i<allElements.length; i++) {
            var el = allElements[i];
            el.parentNode.removeChild(el);
        }
    }

    function removeTitle(selector)
    {
        var allElements = headerContainer.querySelectorAll(selector);
        for(var i=0; i<allElements.length; i++) {
            var el = allElements[i];
            el.parentNode.removeChild(el);
        }
    }

    // Used for hiding and showing the header when you CLEAR or RESTART the story respectively.
    function setVisible(selector, visible)
    {
        var allElements = storyContainer.querySelectorAll(selector);
        for(var i=0; i<allElements.length; i++) {
            var el = allElements[i];
            if( !visible )
                el.classList.add("invisible");
            else
                el.classList.remove("invisible");
        }
    }

    // Helper for parsing out tags of the form:
    //  # PROPERTY: value
    // e.g. IMAGE: source path
    function splitPropertyTag(tag) {
        var propertySplitIdx = tag.indexOf(":");
        if( propertySplitIdx != null ) {
            var property = tag.substr(0, propertySplitIdx).trim();
            var val = tag.substr(propertySplitIdx+1).trim();
            return {
                property: property,
                val: val
            };
        }

        return null;
    }

    // Loads save state if exists in the browser memory
    function loadSavePoint() {

        try {
            let savedState = window.localStorage.getItem('save-state');
            if (savedState) {
                story.state.LoadJson(savedState);
                return true;
            }
        } catch (e) {
            console.debug("Couldn't load save state");
        }
        return false;
    }

    // Used to hook up the functionality for global functionality buttons
    function setupButtons(hasSave) {

        let rewindEl = document.getElementById("rewind");
        if (rewindEl) rewindEl.addEventListener("click", function(event) {
            removeAllElements();
            setVisible(".header", false);
            restart();
        });

        let saveEl = document.getElementById("save");
        if (saveEl) saveEl.addEventListener("click", function(event) {
            try {
                window.localStorage.setItem('save-state', savePoint);
                document.getElementById("reload").removeAttribute("disabled");
            } catch (e) {
                console.warn("Couldn't save state");
            }

        });

        let reloadEl = document.getElementById("reload");
        if (!hasSave) {
            reloadEl.setAttribute("disabled", "disabled");
        }
        reloadEl.addEventListener("click", function(event) {
            if (reloadEl.getAttribute("disabled"))
                return;

            removeAllElements();
            try {
                let savedState = window.localStorage.getItem('save-state');
                if (savedState) story.state.LoadJson(savedState);
            } catch (e) {
                console.debug("Couldn't load save state");
            }
            continueStory(true);
        });
    }

    function removeAllElements() {
        
        var cards = document.getElementsByClassName('card');
        console.log('removing '+cards.length+' cards...');
        for(var i = cards.length-1; i >= 0; i--) {
            var card = cards[i];
            outerScrollContainer.removeChild(card); 
            console.log('removing card '+i+': '+card);
        }

        removeAll("p");
        removeAll("img");
        removeAll("br");
        removeTitle("h1");


        recreateFirstPage();
    }

    function recreateFirstPage() {
        // Recreate Elements of First Page
        console.log('recreating elements fo first page...');

        headerContainer = document.createElement('div');
        headerContainer.classList.add('container', 'headerContainer');

        storyContainer = document.createElement('div')
        storyContainer.classList.add('storyContainer');
        pageContainer  = document.createElement('div');
        pageContainer.classList.add('card');

        // Construct First Page from Recreated Elements
        pageContainer.appendChild(headerContainer);
        pageContainer.appendChild(storyContainer);
        outerScrollContainer.appendChild(pageContainer);

        // Set first page height
        storyContainer.style.height = "auto";
        storyHeight = contentBottomEdgeY();

        /*
        // Fade in new page after a short delay
        console.log('fading in first page...');
        showAfter(delay, pageContainer);
        delay += 200.0;
        console.log('first page faded in');
        */
    }

})(storyContent);
