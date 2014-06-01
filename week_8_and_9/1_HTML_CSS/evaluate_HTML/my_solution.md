## Evaluate a Website! 
 
1) How does this website follow HTML Best Practices? Are there any places where 
it does not?  Provide examples of the "bad" code.

The HTML best practices this website follows include compressing their html file and always closing tags, as well as styling all their elements on the page. That being said, the page is very poorly coded, and has multiple errors. They use a lot of inline styles, instead of having them on another CSS page. They should consider placing their JS files at the bottom, since when loading a script the browser can't continue until their entire file has been loaded. Having it at the bottom makes things more efficient and makes pages load faster. 


    // This part of the javascript should be at the bottom of the page. 
    //  function byId(id) {
    return document.getElementById(id);
     }

     function vote(node) {
    var v = node.id.split(/_/);   // {'up', '123'}
    var item = v[1];

    // hide arrows
    byId('up_'   + item).style.visibility = 'hidden';
    byId('down_' + item).style.visibility = 'hidden';

    // ping server
    var ping = new Image();
    ping.src = node.href;

    return false; // cancel browser nav
    }

Another big thing is using tables for formatting, instead of something more semantic. This could really be improved. 

      <table border="0" cellpadding="0" cellspacing="0" width="100%" style="padding:2px">
          <tbody>
            <tr>
              <td style="width:18px;padding-right:4px">
                <a href="http://ycombinator.com">
                  <img src="y18.gif" width="18" height="18" style="border:1px #ffffff solid;"></a>
              </td>
              <td style="line-height:12pt; height:10px;">
                <span class="pagetop"> <b><a href="news">Hacker News</a></b> 
                  <img src="s.gif" height="1" width="10">
                  <a href="newest">new</a>
                  |
                  <a href="newcomments">comments</a>
                  |
                  <a href="ask">ask</a>
                  |
                  <a href="jobs">jobs</a>
                  |
                  <a href="submit">submit</a>
                </span>
              </td>
              <td style="text-align:right;padding-right:4px;">
                <span class="pagetop">
                  <a href="newslogin?whence=%6e%65%77%73">login</a>
                </span>
              </td>
            </tr>
          </tbody>
        </table>
 
 
2) What do you think of the HTML? Did the writers use IDs and Classes properly? Did you like the way they used HTML tags?  Please use examples with your arguments.

 No, not exactly. Even though the classes are being properly reused like below. 
 
 			   <td class="subtext">
                <span id="score_7811674">187 points</span>
                by
                <a href="user?id=rafaelc">rafaelc</a>
                2 hours ago  |
                <a href="item?id=7811674">41 comments</a>
              </td>
              
              <td class="subtext">
                <span id="score_7811674">187 points</span>
                by
                <a href="user?id=rafaelc">rafaelc</a>
                2 hours ago  |
                <a href="item?id=7811674">41 comments</a>
              </td>
              
   The IDs, however are being reused, which is definitely something that's not permissible. The ID's shouldn't be reused, and if you need to reuse CSS code, you should always make it a class, not an ID. 

 
3) How did the authors handle formatting? Did they include it in the HTML or 
separate it into a CSS file? Or did they do both?  Again, include examples.

They did both, inline and external, which isn't something one should do. They had inline styles like below, but then included a seperate CSS sheet for different stylings. If you are doing something like the code below, it would make for cleaner code if you incorporated it into a seperate CSS stylesheet. 

	              <td style="text-align:right;padding-right:4px;">


 
4) Did the authors include anything you didn't immediately understand? 
If so, what?

We didn't know what the below tag meant, because we haven't used tables much in our exercises, considering their deprecated for styling. Other than that, the styling was of the HTML itself was confusing, but we didn't have much trouble understanding it once we reformatted. 

	              <td colspan="2"></td>

 
5) How did the authors organize the CSS file? Was it DRY?

It was and it wasn't. The code below illustrates that, even though they re-used a color for subtext a:link and a:visited on the same line, they could have also included the .comhead class with it as well. It makes more sense to reorganize it in a way where the color takes precendence instead of the class. That way they wouldn't be repeating themselves.

    .subtext a:link, .subtext a:visited { color:#828282; }
    .subtext a:hover { text-decoration:underline; }

    .comhead a:link, .subtext a:visited { color:#828282; }
    .comhead a:hover { text-decoration:underline; }
 
6) Did the authors incorporate any responsive design into the site?

Yes, the included media queries in the bottom, and will also run different code based on what web browser the website is running on. 

	@media only screen and (-webkit-min-device-pixel-ratio: 2), only screen and (min-	device-pixel-ratio: 2) {
    .votearrow { background-size: 10px; background-image: url("grayarrow2x.gif"); }
     }

    .rotate180 {
      -webkit-transform: rotate(180deg);  /* Chrome and other webkit browsers */
     -moz-transform:    rotate(180deg);  /* FF */
     -o-transform:      rotate(180deg);  /* Opera */
     -ms-transform:     rotate(180deg);  /* IE9 */
    transform:         rotate(180deg);  /* W3C complaint browsers */

     /* IE8 and below */
    filter: progid:DXImageTransform.Microsoft.Matrix(M11=-1, M12=0, M21=0, M22=-1, DX=0, DY=0, SizingMethod='auto expand');
    }
 
7) What are your overall thoughts on the HTML/CSS from this website based on 
what you've read?

I think it could definitely be better organized. They're using tables, it's repetitive at times, and doesn't follow html best practices. They're using inline styles and a stylesheet, instead of just a seperate stylesheet. They're using javascript in the page but not putting it at the bottom. It should definitely be organized better. 

That being said, compressing your code to make it run better is interesting and I think it's worth investigating more. And also, some of the responsive things they did, like using transform, was interesting. Sid and I definitely learned a lot from this web page, both what to do and what not to do. 