package com.nexstreaming.nexeditorsdk;

import android.graphics.PointF;
import android.graphics.RectF;
import java.util.List;

public interface nexCollageInfo {
    String getId();

    List<PointF> getPositions();

    RectF getRectangle();
}
