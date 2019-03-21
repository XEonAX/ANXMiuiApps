package com.miui.gallery.collage.core.poster;

public class CollagePositionModel {
    public boolean ignoreEdgeMargin;
    public float margin;
    public String[] masks;
    public float[] position;
    public float[] radius;
    public String relativePath;
    public int size;

    public static CollagePositionModel getCollagePositionModelByImageSize(CollagePositionModel[] collagePositionModels, int imageSize) {
        for (CollagePositionModel collagePositionModel : collagePositionModels) {
            if (collagePositionModel.size == 0 || collagePositionModel.size == imageSize) {
                return collagePositionModel;
            }
        }
        return collagePositionModels[0];
    }
}
