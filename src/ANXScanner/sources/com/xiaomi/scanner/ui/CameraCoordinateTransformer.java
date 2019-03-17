package com.xiaomi.scanner.ui;

import android.graphics.Matrix;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.RectF;

public class CameraCoordinateTransformer {
    private static final RectF CAMERA_DRIVER_RECT = new RectF(-1000.0f, -1000.0f, 1000.0f, 1000.0f);
    private final Matrix mCameraToPreviewTransform;
    private final Matrix mPreviewToCameraTransform;

    public CameraCoordinateTransformer(boolean mirrorX, int displayOrientation, RectF previewRect) {
        if (hasNonZeroArea(previewRect)) {
            this.mCameraToPreviewTransform = cameraToPreviewTransform(mirrorX, displayOrientation, previewRect);
            this.mPreviewToCameraTransform = inverse(this.mCameraToPreviewTransform);
            return;
        }
        throw new IllegalArgumentException("previewRect");
    }

    public RectF toPreviewSpace(RectF source) {
        RectF result = new RectF();
        this.mCameraToPreviewTransform.mapRect(result, source);
        return result;
    }

    public RectF toCameraSpace(RectF source) {
        RectF result = new RectF();
        this.mPreviewToCameraTransform.mapRect(result, source);
        return result;
    }

    private Matrix cameraToPreviewTransform(boolean mirrorX, int displayOrientation, RectF previewRect) {
        float f;
        Matrix transform = new Matrix();
        if (mirrorX) {
            f = -1.0f;
        } else {
            f = 1.0f;
        }
        transform.setScale(f, 1.0f);
        transform.postRotate((float) displayOrientation);
        Matrix fill = new Matrix();
        fill.setRectToRect(CAMERA_DRIVER_RECT, previewRect, ScaleToFit.FILL);
        transform.setConcat(fill, transform);
        return transform;
    }

    private Matrix inverse(Matrix source) {
        Matrix newMatrix = new Matrix();
        source.invert(newMatrix);
        return newMatrix;
    }

    private boolean hasNonZeroArea(RectF rect) {
        return (rect.width() == 0.0f || rect.height() == 0.0f) ? false : true;
    }
}
