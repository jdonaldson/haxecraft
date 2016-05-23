@:expose
class HelloLua {
    @:expose("greetings")
    public static function greetings(){
        if (Wow.UnitIsEnemy("player", "target")){
            var message = lua.NativeStringTools.format("I will destroy you %s!!!", Wow.UnitName("target"));
            Wow.message(message);
            Wow.DoEmote("growl","target");
        } else {
            var message = lua.NativeStringTools.format("How are you doing %s?", Wow.UnitName("target"));
            Wow.message(message);
            Wow.DoEmote("hello","target");
        }
    }
}

@:native("_G")
extern class Wow {
    public static function message(d:Dynamic) : Void;
    public static function DoEmote(emote:Dynamic, ?target:Dynamic) : Void;
    public static function UnitIsEnemy(target1:Dynamic, target2:Dynamic) : Bool;
    public static function UnitName(target:Dynamic) : String;
    public static function __init__() : Void{
        // wow lua doesn't have the os module exposed, but it does have the time function.
        // so, this patches it
        untyped __lua__("_G.os = {}; _G.os.time = _G.time");
        // it doesn't appear as if wow has a randomseed function.
        untyped __lua__("_G.math.randomseed = function() end;");
    }
}
