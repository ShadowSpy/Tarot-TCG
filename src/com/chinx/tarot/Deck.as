package com.chinx.tarot
{
	/**
	 * ...
	 * @author Roman
	 */
	public class Deck 
	{
		public static const NUM_MAJOR_ARCANA:Number = 22; //There is one set of major arcana
		public static const CARDS_PER_SUIT:Number = 14;
		public static const NUM_MINOR_ARCANA:Number = CARDS_PER_SUIT * 4 * 2; //4 minor suits and two sets of the minor arcana
		
		public var numCards;
		
		private var cards:Vector.<Card>;
		
		public function Deck() 
		{
			private var i:int;
			
			//Fill deck with cards
			cards = new Vector.<Card>(NUM_MAJOR_ARCANA + NUM_MINOR_ARCANA);
			for (i = 0; i < NUM_MAJOR_ARCANA; i++)
			{
				cards.push(new Card(Suit.MAJOR, 100+i));
			}
			for (i = 0; i < CARDS_PER_SUIT*2; i++)
			{
				private var cardNumber:Number = i % CARDS_PER_SUIT + 1;
				cards.push(new Card(Suit.CUPS, cardNumber));
				cards.push(new Card(Suit.PENTACLES, cardNumber));
				cards.push(new Card(Suit.WANDS, cardNumber));
				cards.push(new Card(Suit.SWORDS, cardNumber));
			}
			
			numCards = NUM_MAJOR_ARCANA + NUM_MINOR_ARCANA;
		}
		
		public function draw():Card{
			private var i = Math.round((Math.random() * (numCards - 1)));
			private var c:Card = cards[i];
			cards = cards.splice(i, 1);
			numCards--;
			return c;
		}
		
	}

}