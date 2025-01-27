package;
import flixel.*;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;

/**
 * omg aer you bbpanzu???????????????????????????????????
 */
class EndingState extends MusicBeatState
{

	var _ending:String;
	var _song:String;
	
	public function new(ending:String,song:String) 
	{
		super();
		_ending = ending;
		_song = song;
	}
	
	override public function create():Void 
	{
		super.create();
		var end:FlxSprite = new FlxSprite(0, 0);
		end.loadGraphic(Paths.image("dave/" + _ending));
		FlxG.sound.playMusic(Paths.music(_song),1,true);
		add(end);
		FlxG.camera.fade(FlxColor.BLACK, 0.8, true);

                addVirtualPad(NONE, A);	
	}
	
	override public function update(elapsed:Float):Void 
	{
		super.update(elapsed);
		
		if (controls.ACCEPT)
		{
			endIt();
		}
		
	}
	
	
	public function endIt()
	{
		trace("ENDING");
		MusicBeatState.switchState(new MainMenuState());
		FlxG.sound.playMusic(Paths.music('freakyMenu'));
	}
	
}
