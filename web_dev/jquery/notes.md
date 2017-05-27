# jQuery Notes

### Plan of Attack

1. Find a decent, but short youtube video introducing jQuery.
2. Take notes on video and find the main points to research further.
3. Since the assignment specifically asks about breaks, be sure to researcht that.
4. Create a small sample project to test my findings.

### My Findings

* jQuery is a JavaScript library that has a ton of built-in commands and functions.
* Steps for using jQuery
1. Download it from wwww.jQuery.com
2. import jQuery library by calling the jQuery.js like you would any other JavaScript file in HTML with the script tag. <script src ="file here"></script>

#### Writing jQuery
1. Any time we want to reference jQuery, we use $.
2. All jQuery code goes inside of a document-ready function, which looks like this: $(document).ready(function() { code in here }); or $(function() { code in here }); 
	* what this does is prevents the JavaScript from loading until the entire HTML document has loaded.
3. To select elements and give them code, we use this syntax: $("#idOfElement").function();
4. You can chain functions together. For example:
	* $("#panel1").hide(300).show(1000).hide(300).show(1000);
5. You can drop CSS into jQuery using this syntax: $(#idOfElement).css({key: 'value'});
	* It's important to note that javascript and jQuery read "-" as part of their syntax, so writing font-weight, should instead be written as "font-weight" or fontWeight.
6. You can change html code with jQuery by using $("#idOfElement").html("what you want to change it to");
	* You can even add html tags. It's not the best practice, but here's an example: $("#idOfElement").html('what you want to change it to <strong> my bold</strong>');

#### Event Binding: When jQuery is Most Useful!




### Resources
[Intro to jQuery](https://www.youtube.com/watch?v=ueb_YVfCfiI)
