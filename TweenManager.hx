package fs.tweenmanager;
import aze.display.TileSprite;

/**
 * ...
 * @author Fiery Squirrel
 */
class TweenManager
{
	public static var NAME : String = "TWEEN_MANAGER";
	
	private var tweens : Array<Tween>;
	/*
	 * Constructor
	 */
	public function new() 
	{
		tweens = new Array<Tween>();
	}
	
	public function Update(gameTime : Float) : Void
	{
		for (t in tweens)
			t.Update(gameTime);
	}
	
	public function TweenTileSpritePosition(obj : TileSprite,duration : Float, endX : Float, endY : Float) : Void
	{
		var t : Tween;
		t = new TweenTileSprite(obj, duration);
		t.Move(endX, endY);
		tweens.push(t);
	}
}