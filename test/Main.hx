package ;

import Tic.*;


class Main {


	static var t:Int = 0;
	static var x:Int = 96;
	static var y:Int = 24;


	static inline function main() {

		Tic.update = update;

	}

	static function update() {

		if(btn(0)) {
			y--;
		}
		if(btn(1)) {
			y++;
		}
		if(btn(2)) {
			x--;
		}
		if(btn(3)) {
			x++;
		}

		cls(13);
		spr(1+Math.floor(t%60/30)*2,x,y,14,3,0,0,2,2);
		print("HELLO WORLD!",84,84);
		t++;
		
	}


}

