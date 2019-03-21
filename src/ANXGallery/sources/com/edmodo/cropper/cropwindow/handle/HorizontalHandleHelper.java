package com.edmodo.cropper.cropwindow.handle;

import android.graphics.RectF;
import com.edmodo.cropper.cropwindow.edge.Edge;
import com.edmodo.cropper.util.AspectRatioUtil;

class HorizontalHandleHelper extends HandleHelper {
    private Edge mEdge;

    HorizontalHandleHelper(Edge edge) {
        super(edge, null);
        this.mEdge = edge;
    }

    void updateCropWindow(float x, float y, float targetAspectRatio, RectF imageRect, float snapRadius) {
        this.mEdge.adjustCoordinate(x, y, imageRect, snapRadius, targetAspectRatio);
        float left = Edge.LEFT.getCoordinate();
        float halfDifference = (AspectRatioUtil.calculateWidth(Edge.getHeight(), targetAspectRatio) - Edge.getWidth()) / 2.0f;
        float right = Edge.RIGHT.getCoordinate() + halfDifference;
        Edge.LEFT.setCoordinate(left - halfDifference);
        Edge.RIGHT.setCoordinate(right);
        if (Edge.LEFT.isOutsideMargin(imageRect, snapRadius) && !this.mEdge.isNewRectangleOutOfBounds(Edge.LEFT, imageRect, targetAspectRatio)) {
            Edge.RIGHT.offset(-Edge.LEFT.snapToRect(imageRect));
            this.mEdge.adjustCoordinate(targetAspectRatio);
        }
        if (Edge.RIGHT.isOutsideMargin(imageRect, snapRadius) && !this.mEdge.isNewRectangleOutOfBounds(Edge.RIGHT, imageRect, targetAspectRatio)) {
            Edge.LEFT.offset(-Edge.RIGHT.snapToRect(imageRect));
            this.mEdge.adjustCoordinate(targetAspectRatio);
        }
    }
}
