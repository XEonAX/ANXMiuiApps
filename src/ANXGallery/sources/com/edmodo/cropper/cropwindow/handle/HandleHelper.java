package com.edmodo.cropper.cropwindow.handle;

import android.graphics.RectF;
import com.edmodo.cropper.cropwindow.edge.Edge;
import com.edmodo.cropper.cropwindow.edge.EdgePair;
import com.edmodo.cropper.util.AspectRatioUtil;

abstract class HandleHelper {
    private EdgePair mActiveEdges = new EdgePair(this.mHorizontalEdge, this.mVerticalEdge);
    private Edge mHorizontalEdge;
    private Edge mVerticalEdge;

    abstract void updateCropWindow(float f, float f2, float f3, RectF rectF, float f4);

    HandleHelper(Edge horizontalEdge, Edge verticalEdge) {
        this.mHorizontalEdge = horizontalEdge;
        this.mVerticalEdge = verticalEdge;
    }

    void updateCropWindow(float x, float y, RectF imageRect, float snapRadius) {
        EdgePair activeEdges = getActiveEdges();
        Edge primaryEdge = activeEdges.primary;
        Edge secondaryEdge = activeEdges.secondary;
        if (primaryEdge != null) {
            primaryEdge.adjustCoordinate(x, y, imageRect, snapRadius, 1.0f);
        }
        if (secondaryEdge != null) {
            secondaryEdge.adjustCoordinate(x, y, imageRect, snapRadius, 1.0f);
        }
    }

    EdgePair getActiveEdges() {
        return this.mActiveEdges;
    }

    EdgePair getActiveEdges(float x, float y, float targetAspectRatio) {
        if (getAspectRatio(x, y) > targetAspectRatio) {
            this.mActiveEdges.primary = this.mVerticalEdge;
            this.mActiveEdges.secondary = this.mHorizontalEdge;
        } else {
            this.mActiveEdges.primary = this.mHorizontalEdge;
            this.mActiveEdges.secondary = this.mVerticalEdge;
        }
        return this.mActiveEdges;
    }

    private float getAspectRatio(float x, float y) {
        return AspectRatioUtil.calculateAspectRatio(this.mVerticalEdge == Edge.LEFT ? x : Edge.LEFT.getCoordinate(), this.mHorizontalEdge == Edge.TOP ? y : Edge.TOP.getCoordinate(), this.mVerticalEdge == Edge.RIGHT ? x : Edge.RIGHT.getCoordinate(), this.mHorizontalEdge == Edge.BOTTOM ? y : Edge.BOTTOM.getCoordinate());
    }
}
