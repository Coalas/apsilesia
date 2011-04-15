jQuery.noConflict();
jQuery(document).ready(function(){
	
	
	if(jQuery('.googlemaps').length !=0){

		// We have a Googlemap on this page so let's load dependencies:
		
		google.load("maps", "2", {"callback" : "mapsLoaded"});
		
		
	}
	
	
});

var scriptURL = 'sapphire/thirdparty/googlemapsjs/gmapsapp.js';

mapsLoaded = function(){

	// Google Maps has been loaded, now load the app by appending it to the header
	// console.info('maps is loaded');
  	var headID = document.getElementsByTagName("head")[0];         
  	var newScript = document.createElement('script');
	newScript.type = 'text/javascript';
	newScript.src = scriptURL;
	newScript.defer = 'true';
	headID.appendChild(newScript);	

}