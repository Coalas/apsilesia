<?php

class ImageDecorator extends DataObjectDecorator
{	
  /* RotateClockwise */
	public function RotateClockwise()
	{
		return $this->owner->getFormattedImage('RotateClockwise');
	}
	public function generateRotateClockwise(GD $gd) 
	{
		return $gd->rotate(90);
	}
	/* RotateClockwise */
	public function RotateCounterClockwise()
	{
		return $this->owner->getFormattedImage('RotateCounterClockwise');
	}
	public function generateRotateCounterClockwise(GD $gd)
	{
		return $gd->rotate(270);
	}
	
	public function clearResampledImages()
	{
		$files = glob(Director::baseFolder().'/'.$this->owner->Parent()->Filename."_resampled/*-$this->owner->Name");
	 	foreach($files as $file) {unlink($file);}
	}
	
	public function Landscape()
	{
		return $this->owner->getWidth() > $this->owner->getHeight();
	}
	
	public function Portrait()
	{
		return $this->owner->getWidth() < $this->owner->getHeight();
	}
	
	function BackLinkTracking() {return false;}
	
}

?>
