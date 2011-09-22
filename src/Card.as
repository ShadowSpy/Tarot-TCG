package  
{
	/**
	 * ...
	 * @author Roman
	 */
	
	import flash.display.Shape;
    import flash.events.Event;
	
	public class Card extends Shape 
	{
		public var suit:String;
		public var number:Number;
		
		public function Card(setSuit:String, setNumber:Number) 
		{
			suit = setSuit;
			number = setNumber;
		}
		
		public function init ():void
		{
			graphics.beginFill(0xff9933, 1);
			graphics.drawRoundRect(0, 0, 100, 150);
		}
		
		public function getCardName():String
		{
			if (suit == Suit.MAJOR)
			{
				switch(number)
				{
					case 0: return "The Fool";
					case 1:	return "The Magician";
					case 2: return "The High Priestess";
					case 3: return "The Empress";
					case 4: return "The Emperor";
					case 5: return "The Hierophant";
					case 6: return "The Lovers";
					case 7: return "The Chariot";
					case 8: return "Justice";
					case 9: return "The Hermit";
					case 10: return "Wheel of Fortune";
					case 11: return "Strength"
					case 12: return "The Hanged Man";
					case 13: return "Death";
					case 14: return "Temperance";
					case 15: return "The Devil";
					case 16: return "The Tower";
					case 17: return "The Star";
					case 18: return "The Moon";
					case 19: return "The Sun";
					case 20: return "Judgment";
					case 21: return "The World";
				}
			}
			else
			{
				private var retName:String;
				if (number == 1)
					retName = "Ace";
				else if (number == 11)
					retName = "Page";
				else if (number == 12)
					retName = "Knight";
				else if (number == 13)
					retName = "Queen";
				else if (number == 14)
					retName = "King";
				else
					retName = number.toString();
				return retName + " of " + suit;
			}
		}
		
	}

}