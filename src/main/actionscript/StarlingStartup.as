package {

import flash.display.Sprite;
import flash.display.Sprite;
import flash.display.StageScaleMode;
import flash.events.Event;
import flash.geom.Rectangle;

import starling.core.Starling;
import starling.utils.RectangleUtil;
import starling.utils.ScaleMode;

import utils.Cnst;

[SWF(width="640", height="960", frameRate="60")]
public class StarlingStartup extends Sprite {

    private var _starling:Starling;

    public function StarlingStartup() {

        stage.align = 'TL';
        stage.scaleMode = 'noScale';

        this.addEventListener(Event.ADDED_TO_STAGE, addedToStageHandler);
    }

    private function addedToStageHandler(event:Event):void {

        var screenWidth:int=stage.fullScreenWidth;
        var screenHeight:int=stage.fullScreenHeight;
        var viewPort:Rectangle=new Rectangle(0,0,screenWidth,screenHeight);

        _starling = new Starling(Game, stage, viewPort);

        _starling.stage.stageWidth = Cnst.SCREEN_WIDHT;
        _starling.stage.stageHeight = Cnst.SCREEN_HEIGHT;
        _starling.showStats = true;

        _starling.antiAliasing = 0;
        _starling.start();

    }



}
}
