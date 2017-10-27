package ;


class Tic {

// special

	public static var init(default, set):Void->Void;
	public static var update(default, set):Void->Void;
	public static var scanline(default, set):Int->Void;


//io

	public static inline function btn(id:Float):Bool {
		return untyped (__js__("btn"))(id);
	}
	
	public static inline function btnp(id:Float, hold:Float, period:Float):Bool {
		return untyped (__js__("btnp"))(id, hold, period);
	}

	public static inline function mouse():Dynamic { // need // input: mouse
		return untyped (__js__("mouse"))();
	}


// text

	public static inline function print(text:String, x:Float = 0, y:Float = 0, color:UInt = 15, fixed:Bool = false, scale:Float = 1 ):Float {
		return untyped (__js__("print"))(text, x, y, color, fixed, scale);
	}

	public static inline function font(text:String, x:Float = 0, y:Float = 0, alpha_color:Int = 15, w:Float = 8, h:Float = 8, fixed:Bool = false, scale:Float = 1 ):Float {
		return untyped (__js__("font"))(text, x, y, alpha_color, w, h, fixed, scale);
	}

	// tic trace is changed to log, cause haxe is already used this name 
	public static inline function log(msg:String, color:UInt = 15):Void {
		untyped (__js__("trace"))(msg, color);
	}


// graphics

	public static inline function spr(id:Float, x:Float = 0, y:Float = 0, alpha_color:Dynamic = -1, scale:Float = 1, flip:Float = 0, rotate:Float = 0, cell_width:Float = 1, cell_height:Float = 1 ):Void {
		untyped (__js__("spr"))(id, x, y, alpha_color, scale, flip, rotate, cell_width, cell_height);
	}

	public static inline function map(cell_x:Float = 0, cell_y:Float = 0, cell_w:Float = 30, cell_h:Float = 17, x:Float = 0, y:Float = 0, alpha_color:Int = -1, scale:Float = 1, ?remap:Dynamic):Void {
		untyped (__js__("map"))(cell_x, cell_y, cell_w, cell_h, x, y, alpha_color, scale, remap);
	}

	public static inline function mset(cell_x:Float, cell_y:Float, index:UInt = 15):Void {
		untyped (__js__("mset"))(cell_x, cell_y, index);
	}
	
	public static inline function mget(cell_x:Float, cell_y:Float):Float {
		return untyped (__js__("mget"))(cell_x, cell_y);
	}

	public static inline function textri(x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float, u1:Float, v1:Float, u2:Float, v2:Float, u3:Float, v3:Float, use_map:Bool = false, alpha_color:Int = -1):Void {
		untyped (__js__("textri"))(x1, y1, x2, y2, x3, y3, u1, v1, u2, v2, u3, v3, use_map, alpha_color);
	}


// drawing

	public static inline function pix(x:Float, y:Float, color:Int = 15):Int {
		return untyped (__js__("pix"))(x, y, color);
	}

	public static inline function line(x0:Float, y0:Float, x1:Float, y1:Float, color:Int):Void {
		untyped (__js__("line"))(x0, y0, x1, y1, color);
	}

	public static inline function circ(x:Float, y:Float, radius:Float, color:Int):Void {
		untyped (__js__("circ"))(x, y, radius, color);
	}

	public static inline function circb(x:Float, y:Float, radius:Float, color:Int):Void {
		untyped (__js__("circb"))(x, y, radius, color);
	}

	public static inline function rect(x:Float, y:Float, w:Float, h:Float, color:Int):Void {
		untyped (__js__("rect"))(x, y, w, h, color);
	}

	public static inline function rectb(x:Float, y:Float, w:Float, h:Float, color:Int):Void {
		untyped (__js__("rectb"))(x, y, w, h, color);
	}


	public static inline function tri(x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float, color:Int):Void {
		untyped (__js__("tri"))(x1, y1, x2, y2, x3, y3, color);
	}


// screen

	public static inline function cls(color:Int = 0):Int {
		return untyped (__js__("cls"))(color);
	}

	public static inline function clip(x:Float, y:Float, w:Float, h:Float):Void {
		untyped (__js__("clip"))(x, y, w, h);
	}


// memory

	public static inline function peek(addr:Int):Int {
		return untyped (__js__("peek"))(addr);
	}

	public static inline function poke(addr:Int, val:Int):Void {
		untyped (__js__("poke"))(addr, val);
	}

	public static inline function peek4(addr:Int):Int {
		return untyped (__js__("peek4"))(addr);
	}

	public static inline function poke4(addr:Int, val:Int):Void {
		untyped (__js__("poke4"))(addr, val);
	}

	public static inline function memcpy(dst:Int, src:Int, size:Int):Void {
		untyped (__js__("memcpy"))(dst, src, size);
	}

	public static inline function memset(dst:Int, src:Int, size:Int):Void {
		untyped (__js__("memset"))(dst, src, size);
	}

	public static inline function pmem(index:Int, val:Int):Int {
		return untyped (__js__("pmem"))(index, val);
	}


// sound

	public static inline function sfx(id:Float, note:Float, duration:Float = -1, channel:Float = 0, volume:Float = 15, speed:Float = 0):Void {
		untyped (__js__("sfx"))(id, note, duration, channel, volume, speed);
	}

	public static inline function music(track:Float = -1, frame:Float = -1, loop:Bool = true):Void {
		untyped (__js__("music"))(track, frame, loop);
	}


// other

	public static inline function time():Float {
		return untyped (__js__("time"))();
	}

	public static inline function sync():Void {
		untyped (__js__("sync"))();
	}

	public static inline function exit():Void {
		untyped (__js__("exit"))();
	}


// helpers

	static inline function set_init(value:Void->Void):Void->Void {
		untyped (__js__('init = {0}', value));
		return value;
	}

	static inline function set_update(value:Void->Void):Void->Void {
		untyped (__js__('TIC = {0}', value));
		return value;
	}

	static inline function set_scanline(value:Int->Void):Int->Void {
		untyped (__js__('scanline = {0}', value));
		return value;
	}


}
