# LuaCraft

A simple demo for haxe/lua scripting in World of Warcraft.

## Installation

1. Clone this directory to your AddOns directory (usually
   /Applications/World of Warcraft/Interface/AddOns on a Mac).
2. Use Haxe 3.3 (available as a
   [nightly](http://hxbuilds.s3-website-us-east-1.amazonaws.com/builds/haxe/index.html)
   or from [source](https://github.com/HaxeFoundation/haxe).
3. compile the example Main.hx ```haxe build.hxml``` 
4. start up world of warcraft, make sure addons are enabled on your main screen.
5. (recommended) enable lua debugging.  Interface -> Help -> select "Display LUA errors"

You should now be able to execute commands from the Wow chat panel.  Try:
```\run greetings()```

This will either greet or threaten the current target based on its enemy status.


