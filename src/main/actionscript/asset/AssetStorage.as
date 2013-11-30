/**
 * Created with IntelliJ IDEA.
 * User: WORKSATION
 * Date: 30.11.13
 * Time: 12:41
 * To change this template use File | Settings | File Templates.
 */
package asset {
public class AssetStorage {

    [Embed(source="../../resources/asset/graphics/background/ground_processed.png")]
    public static const groundBackground:Class;

    [Embed(source="../../resources/asset/graphics/train/processed.png")]
    public static const train:Class;

    [Embed(source="../../resources/asset/graphics/background/guide.png")]
    public static const guide:Class;

    public function AssetStorage() {
    }
}
}
