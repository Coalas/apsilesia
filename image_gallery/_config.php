<?php
	SortableDataObject::add_sortable_classes(array(
		"ImageGalleryItem",
		"ImageGalleryAlbum"
	)); 
	
	DataObject::add_extension("SiteTree","ImageGallerySiteTree");
	Object::add_extension('Image', 'ImageDecorator');
?>
