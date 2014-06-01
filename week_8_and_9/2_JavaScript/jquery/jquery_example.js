$(document).ready(function(){
 
$(document).ready(function(){
 
//RELEASE 0: 
  //Link this script and the jQuery library to the jquery_example.html file and analyze what this code does. 
 
$('body').css({'background-color': 'pink'});
//RELEASE 1:
  //Add code here to select elements of the DOM 
 var bodyElement = $('body')

 
//RELEASE 2: 
  // Add code here to modify the css and html of DOM elements
 
 $('h1').css({'color': 'red'});
 $('h1').css({'border': '5px solid'});
 $('h1').css({'visibility': 'visible'});
 $('.mascot').html('woodchucks');
 
//RELEASE 3: Event Listener
  // Add the code for the event listener here 
 $('img').on('mouseover', function(e){
     e.preventDefault()
    $(this).attr('src', 'http://3.bp.blogspot.com/_E-2iOC9hoPg/TVGxI6P9fDI/AAAAAAAAATg/3CmSwYcbZ-M/s1600/woodchuck1P4268846.jpg')
  }).on("mouseleave", function(e){
     e.preventDefault()
$(this).attr('src', 'http://scm-l3.technorati.com/12/12/13/73853/devbootcamp.png?t=20121213131231')});
//RELEASE 4 : Experiment on your own
 
 $( 'img' ).click(function() {
  $( "img" ).animate({
    opacity: 0.25,
    left: "+=50",
    height: "toggle",
    border: "50px"
  }, 5000, function() {
  });
});
 
 
 
})  // end of the document.ready function: do not remove or write DOM manipulation below this.