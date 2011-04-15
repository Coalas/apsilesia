<?php

class Imageflow extends ImageGalleryUI
{
	static $label = "ImageFlow";
	static $link_to_demo = "http://www.shadowbox-js.com/";
	public $item_template = "Imageflow_item";
	
	
	public function initialize()
	{
		Requirements::javascript(THIRDPARTY_DIR.'/jquery/jquery.js'); 	
		Requirements::javascript('image_gallery/gallery_ui/imageflow/javascript/imageflow.js');
		Requirements::javascript('image_gallery/gallery_ui/imageflow/javascript/imageflow_init.js');
		Requirements::css('image_gallery/gallery_ui/imageflow/css/imageflow.css');
		
	}

}