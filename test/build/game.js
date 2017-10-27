// script: js
var Main = function() { };
Main.main = function() {
	var value = Main.update;
	TIC = value;
};
Main.update = function() {
	if(btn(0)) {
		Main.y--;
	}
	if(btn(1)) {
		Main.y++;
	}
	if(btn(2)) {
		Main.x--;
	}
	if(btn(3)) {
		Main.x++;
	}
	cls(13);
	spr(1 + Math.floor(Main.t % 60 / 30) * 2,Main.x,Main.y,14,3,0,0,2,2);
	print("HELLO WORLD!",84,84,15,false,1);
	Main.t++;
};
Main.t = 0;
Main.x = 96;
Main.y = 24;
Main.main();
