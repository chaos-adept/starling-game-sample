/**
 * Created with IntelliJ IDEA.
 * User: WORKSATION
 * Date: 19.11.13
 * Time: 20:59
 * To change this template use File | Settings | File Templates.
 */
package {
import asset.AssetStorage;

import flash.display.Bitmap;

import flash.display.DisplayObject;

import graphics.GroundBackground;
import graphics.Train;

import starling.core.Starling;
import starling.display.Button;
import starling.display.Image;
import starling.display.MovieClip;
import starling.display.Sprite;
import starling.text.TextField;
import starling.textures.Texture;
import starling.textures.TextureAtlas;

public class Game extends Sprite {

    public function Game() {
        var train:Train = new Train();


        var ground:GroundBackground = new GroundBackground();
        var guide:Button = new Button(Texture.fromBitmap(new AssetStorage.guide));

        Starling.juggler.add(ground);
        Starling.juggler.add(train);


        this.addChild(ground);
        this.addChild(train);
    }
}
}
