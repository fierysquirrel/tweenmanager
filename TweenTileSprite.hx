package;

import aze.display.TileSprite;

class TweenTileSprite extends Tween
{
	private var object : TileSprite;
	
	public function new(object : TileSprite,duration : Float) 
	{
		super(duration);
		
		this.object = object;
		iniX = object.x;
		iniY = object.y;
		iniAlpha = object.alpha;
		iniScaleX = object.scaleX;
		iniScaleY = object.scaleY;
		iniR = object.r;
		iniG = object.g;
		iniB = object.b;
		iniRot = object.rotation;
	}
	
	override function UpdatePosition(gameTime:Float):Void 
	{
		super.UpdatePosition(gameTime);
		
		var x : Float;
		var y : Float;
		
		if (currentTime <= MathHelper.ConvertSecToMillisec(duration))
		{
			x = TweenHelper.CubicIn(MathHelper.ConvertMillisecToSec(currentTime), iniX, endX, duration);
			y = TweenHelper.CubicOut(MathHelper.ConvertMillisecToSec(currentTime), iniY, endY, duration);
			object.x = x;
			object.y = y;
		}
		else
		{
			object.x = endX;
			object.y = endY;
		}
	}
}