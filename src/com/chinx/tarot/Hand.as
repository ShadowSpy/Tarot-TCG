package 
{
	
	/**
	 * ...
	 * @author Zhu
	 */
	public class  Hand {
		public static const MAX_HAND_SIZE:Number = 14;
		private var hand:Vector.<Card>;
		
		public function Hand() {//initializes empty hand
			hand = new Vector.<Card>(MAX_HAND_SIZE - 1);
		}
		
		public function put(c:Card):Boolean{//adds an input card into your hand. returns true if successful and false if hand too full.
			if (MAX_HAND_SIZE >= hand.length) {
					return false;
			}	
			cards.push(c);
			return true;
		}
		
		public function drop(suit:String, num:int):Boolean {//removes a target card from the hand. return true if successful and false if card does not exist.
			var i:int;
			for (i = 0; i < hand.length; i++) {
				if (hand[i].suit == suit && hand[i].number == num) {
					hand.splice(i, 1);
					return true;
				}
			}
			return false;
		}


		private function compareV(x:Card, y:Card):int{
			return x.number - y.number;
		}
		
		public function sortByValue():Vector.<Card> {//sorts from A-K of all suits. Majors are the largest
			return hand.sort(compareV);
			
		}
		private function compareS(x:Card, y:Card):int {
			var xval:int = x.number;
			var yval:int = y.number;
			
			if (x.suit == Suit.WANDS) {
				xval += 100;
			}
			else if (x.suit == Suit.CUPS) {
				xval += 200;
			}
			else if (x.suit == Suit.SWORDS) {
				xval += 300;
			}
			else if (x.suit == Suit.MAJOR) {
				xval += 400;
			}
			if (y.suit == Suit.WANDS) {
				yval += 100;
			}
			else if (y.suit == Suit.CUPS) {
				yval += 200;
			}
			else if (y.suit == Suit.SWORDS) {
				yval += 300;
			}
			else if (y.suit == Suit.MAJOR) {
				yval += 400;
			}
			return xval - yval;
		}
				
		public function sortBySuit():Vector.<Card> {//sort by suits
			return hand.sort(compareS);
		}	
	}
	
	
}