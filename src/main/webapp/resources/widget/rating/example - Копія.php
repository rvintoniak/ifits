<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Rating</title>
<script type="text/javascript" src="jquery-1.2.3.min.js"></script>
<script type="text/javascript" src="jquery.rating.js"></script>
<link rel="stylesheet" type="text/css" href="rating.css" />
<link rel="stylesheet" href="../jq.css" type="text/css" />
<script type="text/javascript">
$(document).ready(function() {
	$('#star1').rating('example.php', {maxvalue: 1});
	$('#star2').rating('example.php', {maxvalue:1, curvalue:1});
	$('#rate1').rating('example.php', {maxvalue:5,increment:.5});
	$('#rate2').rating('example.php', {maxvalue:5, curvalue:3});
});
</script>
<style type="text/css">
.implementation{
	background-color:#CCCCCC;
	color:#000000;
	width:80%;
}

.spacer{
clear:both;
height:0px;
}
.left{
	float:left;
	width:250px;
}
blockquote {
  padding-left: 5px;
  border-left: 3px solid #ccc;
}
.highlight {
  background-color: #ff3;
}
#main {
  padding: 20px;
}
</style>
</head>
<body>
  <div><a id="logo" href="http://jquery.com" title="Powered By jQuery"></a></div>
  <h1 id="banner"><a id="backnav" href="..">&lsaquo;&lsaquo; home</a>jQuery Simple Half-Star Rating Plugin</h1>
  <div id="main">  

<p>from Ritesh Agrawal:</p>
<blockquote cite="http://php.scripts.psu.edu/rja171/widgets/rating.php"><p>This is a jQuery plugin for star rating systems. The initial inspiration for this script came from Wil Stuckey's star rating system. But the original script requires too much coding. Also it does not have provision for developing a star system (such as GMail, where you star or un-star an email). I have modified the original script to make it simpler for user to develop a star rating system. Check the demo below &mdash; hover and click on stars to change their state </p></blockquote>
<p>I added the option to have half-star increments.</p>
<h2>Download</h2>
<ul>
  <li><a href="jquery.rating.js">jquery.rating.js</a></li>
  <li><a href="rating.css">rating.css</a></li>
  <li>Images: <a href="star.gif">star.gif</a>, <a href="delete.gif">delete.gif</a>, <a href="star-left.gif">star-left.gif</a>, <a href="star-right.gif">star-right.gif</a></li>
  <li>Also requires <a href="http://www.jquery.com">jQuery</a></li>
</ul>
<div><h2>Examples</h2></div>
<div id="star1" class="rating">&nbsp;</div>
<div class="implementation">
<pre>$('#star1').rating('www.url.php', {maxvalue:1});</pre>
</div>

<div id="star2" class="rating">&nbsp;</div>
<div class="implementation">
<pre>$('#star2').rating('www.url.php', {maxvalue:1, curvalue:1});</pre>
</div>

<div id="rate1" class="rating">&nbsp;</div>
<div class="implementation">
<pre>$('#rate1').rating('www.url.php', {maxvalue:5, <span class="highlight">increment:.5</span>});</pre>
</div>


<div id="rate2" class="rating">&nbsp;</div>
<div class="implementation">
<pre>$('#rate2').rating('www.url.php', {maxvalue:5, curvalue:3});</pre>
</div>
<p>As you might have noticed, for a single star the script works like a star/unstar. For two or more stars, it works as a rating system. The value can be received at the server end via <code>post</code> variable named &quot;rating&quot;.
</p>

</div>

</body>
</html>
