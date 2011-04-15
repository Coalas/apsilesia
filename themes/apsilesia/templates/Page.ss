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
        
    <div id="header" >
    <div id ="logo">
        <img src="$ThemeDir/images/logo.jpg" alt="logo"/>
        </div>
    
    <div id="navigation-menu">
    <% include Navigation %>
    
    </div>
    </div>
    
    <div id="contentw">
        
     
     $Layout
    
    </div>
<div id="footerback" class="all">
<div id="footer">

</div>
</div>
</div>

</body>
</html>