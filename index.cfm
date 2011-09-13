<!DOCTYPE html>
<html>
  <head>
	<title>JQueryMobile Serverside Demo</title>
	<link rel="stylesheet" href="jquery.mobile-1.0b3.min.css" type="text/css" media="screen" title="no title" charset="utf-8">
	<script src="jquery-1.6.2.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="jquery.mobile-1.0b3.min.js" type="text/javascript" charset="utf-8"></script>

	<cffeed source="http://feeds.bbci.co.uk/news/rss.xml" name="News">

  </head>
  <body>
	
	<div data-role="page" id="home">
	   <div data-role="header">
	      <h1>BBC News Reader</h1>
	    </div>
	   <div data-role="content">

		<ul data-role="listview">
			<cfdump var="#News#">
			
			<!---
			<li><a href="#item">Item</a></li>
			<li><a href="#item">Item</a></li>
			<li><a href="#item">Item</a></li>
			--->
		</ul>

		</div>	
	</div>
	<div data-role="page" id="item" data-add-back-btn="true">
	   <div data-role="header">
	      <h1>A News Item</h1>
	    </div>
	   <div data-role="content">
		</div>	
	</div>
  </body>
</html>