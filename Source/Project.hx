package;

import nme.display.Sprite;
import nme.events.Event;
import nme.Lib;

class Project extends Sprite 
{
	
	public function new()
	{
		super();
		
		#if iphone
		Lib.current.stage.addEventListener(Event.RESIZE, init);
		#else
		addEventListener(Event.ADDED_TO_STAGE, init);
		#end
	}
	
	private function init(e):Void 
	{
		// Entry point
		
		// Stage:
		// stage.stageWidth x stage.stageHeight @ nme.system.Capabilities.screenDPI
		
		// Assets:
		// nme.Assets.getBitmapData("/assetname.jpg");
	}
	
	public static function main() 
	{
		// Static entry point
		Lib.current.stage.align = nme.display.StageAlign.TOP_LEFT;
		Lib.current.stage.scaleMode = nme.display.StageScaleMode.NO_SCALE;
		Lib.current.addChild(new Project());
	}
}
