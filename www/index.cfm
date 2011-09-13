<!DOCTYPE html>
<html>
  <head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no;" />
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
			<cfloop array="#News.item#" index="item">
				<cfset newsid = ListLast(item.guid.value, "/")>
				<cfoutput>
					<li><a href="###newsid#">#item.title#</a></li>
				</cfoutput>
			</cfloop>
		</ul>

		</div>	
	</div>
	
	<cfloop array="#News.item#" index="item">
		<cfset newsid = ListLast(item.guid.value, "/")>
		<cfoutput>
			<div data-role="page" id="#newsid#" data-add-back-btn="true">
	   			<div data-role="header"><h1>#item.title#</h1></div>
	   			<div data-role="content">
					<div>
					<cfif ArrayLen(item.thumbnail)>
						<img src="#item.thumbnail[2].url#">
					</cfif>
					</div>
	      			#item.description.value#
					<a href="#item.link#" data-role="button">Read More</a>
	   			</div>
			</div>
		</cfoutput>
	</cfloop>
  </body>
</html>