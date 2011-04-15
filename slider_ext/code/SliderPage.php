<?php 
class SliderPage extends Page {

	static $db = array(
		'effect' => "Enum('sliceDown,sliceDownLeft,sliceUp,sliceUpLeft,sliceUpDown,sliceUpDownLeft,fold,fade,random','random')",
		'slices' => 'Int(15)',
		'animSpeed' => 'Int(500)',
		'pauseTime' => 'Int(3000)',
		'startSlide' => 'Int()',
		'directionNav'  => "Boolean",
		'directionNavHide' => "Boolean",
		'controlNav' => "Boolean",
		'controlNavThumbs' => "Boolean",
		'keyboardNav' => "Boolean",
		'pauseOnHover' => "Boolean",
		'manualAdvance' => "Boolean",
		'captionOpacity' => 'Decimal(2,1,0.8)'
	); 

	static $has_many = array('Panels' => 'SliderPanel');
		
	public function getCMSFields() {
		$f = parent::getCMSFields();
		
		if (class_exists('DataObjectManager'))$a='DataObjectManager'; else $a='ComplexTableField';
		$f->addFieldToTab("Root.Content.Panels", new $a($this,'Panels','SliderPanel',array('Thumbnail' => _t('Image.PLURALNAME'),'Title' => _t('SiteTree.METATITLE'),'Tagline' => _t('SiteTree.METADESC')), 'getCMSFields_forPopup')); 
		$f->addFieldToTab('Root.SliderSettings', new CompositeField(
			new LiteralField("wrapper","<div style='margin-left: 50px;'>"),
				new HeaderField("settings","Slider Settings"),
				new DropdownField('effect',"Effect", singleton('SliderPage')->dbObject('effect')->enumValues()),
				new TextField('slices','Number of slices'),
				new TextField('animSpeed','Animation Speed'),
				new TextField('pauseTime','Display panel time'),
				new CheckboxField('randomStartSlide', 'Random 1st panel?'),
				new CheckboxField('directionNav','Show directional Nav?'),
				new CheckboxField('directionNavHide','Only show on hover?'),
				new CheckboxField('controlNav','1,2,3...'),
				new CheckboxField('controlNavThumbs','Thumbs??'),
				new CheckboxField('keyboardNav','Enable keyboard navigation?'),
				new CheckboxField('pauseOnHover','Stop animation while hovering?'),
				new CheckboxField('manualAdvance','Force manual transitions?'),
				new TextField('captionOpacity','Universal caption opacity 0-1'),
			new LiteralField("wrapper_close","</div>")
		));
		return $f;
	}
}

class SliderPage_Controller extends Page_Controller {

	function init(){
	
		parent::init();
		
		Requirements::javascript("sapphire/thirdparty/jquery/jquery.js");
		
		if (Director::isDev()) {
			Requirements::css("slider_ext/css/imageflow.css");
			Requirements::javascript("slider_ext/javascript/imageflow.js");
			
		}else{
			Requirements::css("slider_ext/css/imageflow.packed.css");
			Requirements::javascript("slider_ext/javascript/imageflow.packed.js");
		}
		
		$a=array();
		
		isset($this->effect) && $this->effect ? $a[]="effect:'{$this->effect}'":null;
		isset($this->slices) && $this->slices ? $a[]="slices:'{$this->slices}'":null;
		isset($this->animSpeed) && $this->animSpeed ? $a[]="animSpeed:'{$this->animSpeed}'":null;
		isset($this->pauseTime) && $this->pauseTime ? $a[]="pauseTime:'{$this->pauseTime}'":null;
		isset($this->startSlide) && $this->startSlide ? $a[]="startSlide:'{$this->startSlide}'":null;
		
		//TODO: Test how clever is a javascript boolean
		isset($this->startSlide) && $this->startSlide ? $a[]="startSlide:true":$a[]="startSlide:false";
		isset($this->directionNav) && $this->directionNav ? $a[]="directionNav:true":$a[]="directionNav:false";
		isset($this->directionNavHide) && $this->directionNavHide ? $a[]="directionNavHide:true":$a[]="directionNavHide:false";
		isset($this->controlNav) && $this->controlNav ? $a[]="controlNav:true":$a[]="controlNav:false";
		isset($this->controlNavThumbs) && $this->controlNavThumbs ? $a[]="controlNavThumbs:true":$a[]="controlNavThumbs:false";
		isset($this->keyboardNav) && $this->keyboardNav ? $a[]="keyboardNav:true":$a[]="keyboardNav:false";
		isset($this->pauseOnHover) && $this->pauseOnHover ? $a[]="pauseOnHover:true":$a[]="pauseOnHover:false";
		isset($this->manualAdvance) && $this->manualAdvance ? $a[]="manualAdvance:true":$a[]="manualAdvance:false";
		
		//isset($this->captionOpacity) && $this->captionOpacity ? $a[]="captionOpacity:'{$this->captionOpacity}'":null;
		
		$a=implode(", ",$a);
		
		/** Requirements::customScript("
			jQuery(window).load(function($) {
				jQuery('#slider').nivoSlider({{$a}});
			});
		");**/
	}
	/**
	public function forTemplate(){
		//TODO
	}
	**/
}