<?php
/**
 * Defines the HomePage page type
 */
 
class HomePage extends Page {
   static $db = array(
   );
   static $has_one = array(
   );
}
 
class HomePage_Controller extends Page_Controller {
     public function init() {
		parent::init();
	 
		//Requirements::javascript("sapphire/thirdparty/jquery/jquery-packed.js"); 
		Requirements::javascript("http://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js");
		Requirements::javascript("http://cloud.github.com/downloads/malsup/cycle/jquery.cycle.all.2.74.js");
		Requirements::customScript('$(document).ready(function() {
		jQuery(".slideshow").cycle({
		fx: "fade" 
					});
		});');

	}
}
