package miui.yellowpage;

import android.content.Context;
import miui.util.CoderUtils;
import miui.yellowpage.YellowPageImgLoader.Image;
import miui.yellowpage.YellowPageImgLoader.Image.ImageFormat;

@Deprecated
public class YellowPageImage extends Image {
    private String mName;

    public YellowPageImage(Context context, String name, int width, int height, ImageFormat format) {
        super(HostManager.getImageUrl(context, name, width, height, format));
        this.mName = name;
    }

    public String getName() {
        return CoderUtils.encodeSHA(this.mName);
    }
}
