package com.chinx.tarot
{
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.events.Event;
	import mx.core.BitmapAsset;
	
	/**
	 * ...
	 * @author Roman
	 */
	public class Main extends Sprite 
	{
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			var bmp:BitmapAsset = CardImage.getImage(Suit.PENTACLES,1);
			addChild(bmp);
		}
		
	}
	
}