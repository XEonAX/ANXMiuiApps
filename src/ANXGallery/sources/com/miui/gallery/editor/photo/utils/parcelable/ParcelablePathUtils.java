package com.miui.gallery.editor.photo.utils.parcelable;

import android.graphics.Path;
import android.graphics.PointF;
import java.util.List;

public class ParcelablePathUtils {
    public static Path getPathFromPointList(List<PointF> pointFList) {
        Path path = new Path();
        PointF prePoint = null;
        for (PointF pointF : pointFList) {
            float x = pointF.x;
            float y = pointF.y;
            if (prePoint == null) {
                path.moveTo(x, y);
            } else {
                path.quadTo(prePoint.x, prePoint.y, (prePoint.x + x) / 2.0f, (prePoint.y + y) / 2.0f);
            }
            prePoint = pointF;
        }
        return path;
    }
}
