/**
 * Created with IntelliJ IDEA.
 * User: WORKSATION
 * Date: 30.11.13
 * Time: 15:27
 * To change this template use File | Settings | File Templates.
 */
package graphics {
import asset.AssetStorage;

import flash.display.Bitmap;
import flash.globalization.NumberFormatter;

import starling.animation.IAnimatable;
import starling.display.Image;
import starling.display.Sprite;
import starling.events.Event;
import starling.textures.Texture;

public class Train extends Sprite implements IAnimatable {

    private var trainImg:Image;

    private var MAX_RANGE:Number = 1;
    private var currentHPos:Number = -MAX_RANGE;
    private var direction:Number = 1;

    public function Train() {
        var imgSrc:Bitmap = new AssetStorage.train;

        this.trainImg = new Image(Texture.fromBitmap(imgSrc));

        this.addChild(trainImg);

        this.addEventListener(Event.ADDED_TO_STAGE, addToStageHandler);
    }

    private function addToStageHandler(event:Event):void {

        currentHPos = 0;

        this.x = stage.stageWidth / 2 - this.width / 2;
        this.y = stage.stageHeight / 2 - this.height / 2;
    }

    public function advanceTime(time:Number):void {
        //Math.ceil( Math.cos(new Date().getTime()) )
        currentHPos += time * direction;
        if (Math.abs(currentHPos) > MAX_RANGE) {
            direction = direction * -1;
        }
        var delta:Number = 1;
        this.x += delta * direction;
    }
}
}
