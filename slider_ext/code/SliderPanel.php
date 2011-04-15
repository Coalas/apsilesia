<?php 
class SliderPanel extends DataObject {
	static $db = array (
		'Title' => 'Text',
		'Tagline' => 'Text'
	);

	static $has_one = array(
		'SliderPage' => 'SliderPage',
		'PanelImage' => 'Image',
    	'PanelLink' => 'SiteTree'
	);
	
	static $api_access = true;
	
	public function getCMSFields_forPopup(){
	    $image=class_exists('ImageUploadField')?'ImageUploadField':'FileIFrameField';
	    $tree=class_exists('SimpleTreeDropdownField')?'SimpleTreeDropdownField':'HTMLDropdownField';
	    
	    $imager=new $image('PanelImage',_t('Image.SINGULARNAME')." Note: Dopasuj wymiary obrazka do skryptu slidera.");
	    
	    if($image=='ImageUploadField')$imager->uploadOnSubmit();	    
	    
		return new FieldSet(
			new TextField('Title',_t('SiteTree.METATITLE')),
			new TextField('Tagline',_t('SiteTree.METADESC')),
			$imager,
			new $tree("PanelLinkID",_t('RedirectorPage.REDIRECTTOPAGE'),"SiteTree")
		);
	}
	
	
	function Thumbnail() {
        if ($Image = $this->PanelImage()) {
	        return $Image->CMSThumbnail();
        } else {
	        return null;
        }
    }
    public function canCreate() {       
        $member = Member::currentUser();
        if($member->inGroup(1)) return true;
        else return false;
	} 
    
    public function canEdit() {       
        $member = Member::currentUser();
        if($member->inGroup(1) || $member->inGroup(2)) return true;
        else return false;
	} 
    public function canDelete() {       
        $member = Member::currentUser();
        if($member->inGroup(1)) return true;
        else return false;
	}
}