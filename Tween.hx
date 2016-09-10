package;

enum TweenType
{
	Position;
	Scale;
	Alpha;
	Color;
	Rotation;
}

class Tween
{
	public static var NAME : String = "TWEEN";
	
	private var type : TweenType;
	private var duration : Float;
	private var iniX : Float;
	private var iniY : Float;
	private var endX : Float;
	private var endY : Float;
	private var iniScaleX : Float;
	private var iniScaleY : Float;
	private var endScaleX : Float;
	private var endScaleY : Float;
	private var iniAlpha : Float;
	private var endAlpha : Float;
	private var iniR : Float;
	private var iniG : Float;
	private var iniB : Float;
	private var endR : Float;
	private var endG : Float;
	private var endB : Float;
	private var iniRot : Float;
	private var endRot : Float;
	private var isComplete : Bool;
	private var currentTime : Float;
	
	/*
	 * Constructor
	 */
	public function new(duration : Float) 
	{
		this.duration = duration;
		isComplete = false;
	}
	public function IsComplete() : Bool
	{
		return isComplete;
	}
	
	public function Update(gameTime : Float) : Void
	{
		switch(type)
		{
			case TweenType.Alpha:
				UpdateAlpha(gameTime);
			case TweenType.Color:
				UpdateAlpha(gameTime);
			case TweenType.Position:
				UpdatePosition(gameTime);
			case TweenType.Rotation:
				UpdateRotation(gameTime);
			case TweenType.Scale:
				UpdateScale(gameTime);
		}
		
		currentTime += gameTime;
	}
	
	public function ChangeAlpha(endAlpha : Float) : Void
	{
		type = TweenType.Alpha;
		this.endAlpha = endAlpha;
		currentTime = 0;
	}
	
	public function ChangeColor(endR : Float,endG : Float,endB : Float) : Void
	{
		type = TweenType.Color;
		this.endR = endR;
		this.endG = endG;
		this.endB = endB;
		currentTime = 0;
	}
	
	public function Move(endX : Float, endY : Float) : Void
	{
		type = TweenType.Position;
		this.endX = endX;
		this.endY = endY;
		currentTime = 0;
	}
	
	public function Rotate(endRot : Float) : Void
	{
		type = TweenType.Rotation;
		this.endRot = endRot;
		currentTime = 0;
	}
	
	public function Scale(endScaleX: Float,endScaleY: Float) : Void
	{
		type = TweenType.Scale;
		this.endScaleX = endScaleX;
		this.endScaleY = endScaleY;
		currentTime = 0;
	}
	
	private function UpdateAlpha(gameTime : Float) : Void
	{}
	
	private function UpdateColor(gameTime : Float) : Void
	{}
	
	private function UpdatePosition(gameTime : Float) : Void
	{}
	
	private function UpdateRotation(gameTime : Float) : Void
	{}
	
	private function UpdateScale(gameTime : Float) : Void
	{}
}