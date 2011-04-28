<!DOCTYPE html>

<html lang="$ContentLocale">
  <head>
		<% base_tag %>
		<title><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
		$MetaTags(false)
		<link rel="shortcut icon" href="/favicon.ico" />
		
		<% require themedCSS(layout) %> 
		<% require themedCSS(typography) %> 
		<% require themedCSS(form) %> 
		
		
		<!--[if IE 6]>
			<style type="text/css">
			 @import url(themes/apsilesia/css/ie6.css);
			</style> 
		<![endif]-->
	</head>
<body>
	
<div id="wrapper">
        
    <div id="header">
    <div id ="logo">
        <img src="$ThemeDir/images/apsilesia3_02.jpg" alt="logo"/>
        </div>
    <div id="cloud">
    <div id="navigation-menu">
    <% include Navigation %>
    
    </div>
   </div>
    </div>
    
    <div id="contentw" style="width: 354px; overflow: hidden;overflow: auto;margin-top: 20px; position: relative; z-index: 100; margin-bottom: -200px; ">
    <a href="program"><img src="themes/apsilesia/images/final.jpg" alt="plakat" class="shadow" style="margin-left:40px;"/></a>    
    
    
    
    </div>
<div id="impreza"></div>
<div id="footerback" class="home">
<img src="$ThemeDir/images/apsilesia_06b.jpg" />
<div id="partners" class="slideshow">
<img src="$ThemeDir/logos1.jpg" />
</div>
</div>
</div>

</body>
</html>
