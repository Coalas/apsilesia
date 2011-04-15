jQuery.noConflict();
startApp = function(){

	var mapElements = jQuery('.googlemaps');
	
	jQuery(mapElements).each (function(i){
			doElement(this);			
		}
	);
	
}

var oMapsOptions = null;

doElement = function(element){
		
		var elementClasses = element.className.split(" ");
		for(var i=0;i < elementClasses.length;i++){
			currentClass = elementClasses[i];
			if(currentClass.split('=').length > 1){
				sJson = currentClass.split('=');
				if(sJson[0] == 'config'){
					// We have hit an element to replace with a Google Map
					if(typeof eval('('+sJson[1]+')') =='object'){
						oMapsOptions = eval('('+sJson[1]+')');
						//console.dir(oMapsOptions);
						doMap(element,oMapsOptions);
					}	
				}
			} 
		}
		
}


doMap = function(mapContainer,mapOptions){
		
		var latlong = mapOptions.coords.split(",");
		var lat = parseFloat(latlong[0]);
		var long = parseFloat(latlong[1]);
		var mapstyle = mapOptions.mapstyle;
		var zoom = mapOptions.zoom;
		var hud = mapOptions.hud;
		
		if (GBrowserIsCompatible()){
			var map = new GMap2(mapContainer);
			var center = new GLatLng(lat,long);
			map.setCenter(center, zoom);
			var marker = new GMarker(center);
			map.addOverlay(marker);
			
			/* TODO: allow content editor to add the address to the dialog so it can be shown in the balloon popup */
			/*
			GEvent.addListener(marker, "click", function() {
        		marker.openInfoWindowHtml("Could contain the address details");
      		});
			*/
			
			if(mapstyle==2){    map.setMapType(G_SATELLITE_MAP);   }
			if(mapstyle==3){    map.setMapType(G_HYBRID_MAP);   }
			if(mapstyle==4){    map.setMapType(G_PHYSICAL_MAP);   }

			map.enableContinuousZoom();
			map.enableDoubleClickZoom();

			if(hud==1){
			
				map.addControl(new GSmallMapControl());
				map.addControl(new GMapTypeControl());
			}
			
			if(hud==2){
				map.setUIToDefault();
			}
		}
		
}

startApp();