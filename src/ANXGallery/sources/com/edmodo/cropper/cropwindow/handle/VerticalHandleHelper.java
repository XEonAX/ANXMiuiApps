package com.edmodo.cropper.cropwindow.handle;

import android.graphics.RectF;
import com.edmodo.cropper.cropwindow.edge.Edge;
import com.edmodo.cropper.util.AspectRatioUtil;

class VerticalHandleHelper extends HandleHelper {
    private Edge mEdge;

    VerticalHandleHelper(Edge edge) {
        super(null, edge);
        this.mEdge = edge;
    }

    void updateCropWindow(float x, float y, float targetAspectRatio, RectF imageRect, float snapRadius) {
        this.mEdge.adjustCoordinate(x, y, imageRect, snapRadius, targetAspectRatio);
        float top = Edge.TOP.getCoordinate();
        float halfDifference = (AspectRatioUtil.calculateHeight(Edge.getWidth(), targetAspectRatio) - Edge.getHeight()) / 2.0f;
        float bottom = Edge.BOTTOM.getCoordinate() + halfDifference;
        Edge.TOP.setCoordinate(top - halfDifference);
        Edge.BOTTOM.setCoordinate(bottom);
        if (Edge.TOP.isOutsideMargin(imageRect, snapRadius) && !this.mEdge.isNewRectangleOutOfBounds(Edge.TOP, imageRect, targetAspectRatio)) {
            Edge.BOTTOM.offset(-Edge.TOP.snapToRect(imageRect));
            this.mEdge.adjustCoordinate(targetAspectRatio);
        }
        if (Edge.BOTTOM.isOutsideMargin(imageRect, snapRadius) && !this.mEdge.isNewRectangleOutOfBounds(Edge.BOTTOM, imageRect, targetAspectRatio)) {
            Edge.TOP.offset(-Edge.BOTTOM.snapToRect(imageRect));
            this.mEdge.adjustCoordinate(targetAspectRatio);
        }
    }
}
