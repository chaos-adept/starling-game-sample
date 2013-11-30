/**
 * Created with IntelliJ IDEA.
 * User: WORKSATION
 * Date: 30.11.13
 * Time: 14:52
 * To change this template use File | Settings | File Templates.
 */
package graphics {
import asset.AssetStorage;

import flash.display.Bitmap;

import starling.animation.IAnimatable;
import starling.display.Image;
import starling.display.Sprite;
import starling.textures.Texture;

public class GroundBackground extends Sprite implements IAnimatable {

    private var img1:Image;
    private var img2:Image;
    private var imgContainer:Sprite;

    public function GroundBackground() {

        imgContainer = new Sprite();

        var imgSrc:Bitmap = new AssetStorage.groundBackground;

        this.img1 = new Image(Texture.fromBitmap(imgSrc));
        img1.y = -img1.height
        imgContainer.addChild(img1);

        this.img2 = new Image(Texture.fromBitmap(imgSrc));

        imgContainer.addChild(img2);
        imgContainer.y = 0;
        this.addChild(imgContainer);
    }

    public function advanceTime(time:Number):void {
        imgContainer.x = this.stage.stageWidth / 2 - this.width/2;
        imgContainer.y += Math.floor( time * 600 );

        if (imgContainer.y >= img1.height) {
            imgContainer.y = 0;
        }
    }
}
}
