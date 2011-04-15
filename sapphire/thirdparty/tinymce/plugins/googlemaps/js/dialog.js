tinyMCEPopup.requireLangPack();

var ExampleDialog = {

	init : function() {
		var f = document.forms[0];

		// Get the selected contents as text and place it in the input
		//f.someval.value = tinyMCEPopup.editor.selection.getContent({format : 'text'});
		//f.somearg.value = tinyMCEPopup.getWindowArg('akey');
	},

	insert : function() {
		// Insert the contents from the input into the document

		var strHtml = '';
		var akey      = document.forms[0].akey.value;
		//var divnaam      = document.forms[0].divnaam.value;
		var coords      = document.forms[0].coords.value;
		var width      = document.forms[0].width.value;
		var height      = document.forms[0].height.value;
		var zoom      = document.forms[0].zoomlevel.value;
		var hud      = document.forms[0].hud.value;
		var mapstyle      = document.forms[0].mapstyle.value;
		var customstyle = document.forms[0].custom_style.value;
		
			if (width == "")  {width = 100;}
			if (height == "") {height = 100;}

			

		if (coords == "")
		{
			alert(tinyMCEPopup.getLang('googlemaps_dlg.missing_stuff'));
		}
		else
		{
			
			strHtml += '<div style="background:#d3d3d3;width: '+width+'px; height: '+height+'px;'+customstyle+'"';
			strHtml += 'class="googlemaps ';
			strHtml += 'config={\'mapstyle\':'+mapstyle+',\'coords\':\''+coords+'\',\'zoom\':'+zoom+',\'hud\':'+hud+'}';
			strHtml += '">&nbsp;</div>\n';
			
			//strHtml += '<img class="googlemaps config={}" src="/jsparty/googlemapsjs/mapdummy.gif" width="'+width+'" height="'+height+'"/>';
			
			tinyMCEPopup.editor.execCommand('mceInsertContent', false, strHtml);
			tinyMCEPopup.close();
		}
	}
};

tinyMCEPopup.onInit.add(ExampleDialog.init, ExampleDialog);
