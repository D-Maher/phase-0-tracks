jQuery Exploration Plan:

* Google "Intro to jQuery" to get a synopsis of what jQuery is like
    - take notes on overall jQuery principles

* Locate a docs page for jQuery and bookmark it for further reference
     - particularly docs that show concrete examples

* Google "jQuery tutorial" to see if there are any resources that allow me to experiment with jQuery from the browser

* Stop researching and try a bit of jQuery on my own

* Time permitting, look up jQuery best practices for helpful tips on working with jQuery effectively

 * Use the Pomodoro technique (25 min. of work, 5 min. break) while researching jQuery


What was effective?


















NOTES - jQuery Basics (from w3schools.com/jquery)

* jQuery syntax selects and HTML element and performs some action on the element
    - jQuery uses CSS syntax to select elements
    - basic syntax:
        + `$(selector).action()`
            * a `$` sign to define/access jQuery
            * a `(selector` to "query (or find)" HTML elements
            * a jQuery `action()` to be perfomred on the element(s)
    - examples:
        + `$(this).hide()` - hides the current element
        + `$("p").hide()` - hides all `<p>` elements
        + `$(".test").hide()` - hides all elements with `class="test"`
        + `$("#test").hide()` - hides all elements with `id="test"`

* it is often good practice to put jQuery methods inside a "document ready event":
    ```javascript
    $(document).ready(function(){
    
        // jQuery methods go here...

    });
    ```
    - this prevents jQuery from running before the document is finished loading (i.e. before the document is ready)
    - this also allows you to have JS code in the head section of the HTML document

* jQuery selectors
    - jQuery selectors allow us to select and manipulate HTML element(s)
    - all jQuery selectors start wit the dollar sign and parentheses: `$()`
    - different types of jQuery selectors (just like CSS selectors)
        + element selector
            * e.g. `$("p")` - selects all `<p>` elements on a page
        + `#`id selector
            * e.g. `$("#test")`
        + `.`class selector
            * e.g. `$(".test")`
        + others:
            * `$("*")` - selects all elements
            * `$(this)` - selects the current HTML element
            * and more!

* events - visitor's actions to which a web page can respond
    - the event is defined by the precise moment when something happens
    - different event handlers: `click`, `dblclick`, `keypress`, `scroll`, `hover`, etc.
    - in jQuery, most DOM events have an equivalent jQuery method
    - syntax (assigning a click event to all paragraphs on a page):
        ```javascript
        $("p").click(function(){
            // action goes here!! (i.e. what happens when the 'click' event "fires"/happens)
        });
        ```
    - the `on()` method attaches one or more event handlers for the selected elements
        + e.g. attaching multiple event handlers to a `<p>` element:
            ```javascript
            $("p").on({
                mouseenter: function(){
                    $(this).css("background-color", "lightgray");
                }, 
                mouseleave: function(){
                    $(this).css("background-color", "lightblue");
                }, 
                click: function(){
                    $(this).css("background-color", "yellow");
                } 
            });
            ```

* adding jQuery to a web page
    - the jQuery library (which comes in the form of a single JS file) must be referenced with the HTML `<script>` tag, which goes inside the `<head>` section of the document:
        ```html
        <head>
            <script src="jquery-3.1.1.js"></script>
        </head>
        ```
