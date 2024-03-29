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
			
			var hand:Hand = new Hand();
			var bmp:BitmapAsset = CardImage.getImage(Suit.PENTACLES, 10);
			var scale:Number = 90 / bmp.width;
			bmp.scaleX = scale;
			bmp.scaleY = scale;
			addChild(bmp);
			
			trace (bmp.width);
			trace (bmp.height);
		}
		
	}
	
}