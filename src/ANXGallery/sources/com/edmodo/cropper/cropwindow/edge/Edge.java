package com.edmodo.cropper.cropwindow.edge;

import android.graphics.RectF;
import com.edmodo.cropper.util.AspectRatioUtil;

public enum Edge {
    LEFT,
    TOP,
    RIGHT,
    BOTTOM;
    
    private float mCoordinate;

    public void setCoordinate(float coordinate) {
        this.mCoordinate = coordinate;
    }

    public void offset(float distance) {
        this.mCoordinate += distance;
    }

    public float getCoordinate() {
        return this.mCoordinate;
    }

    public void adjustCoordinate(float x, float y, RectF imageRect, float imageSnapRadius, float aspectRatio) {
        switch (this) {
            case LEFT:
                this.mCoordinate = adjustLeft(x, imageRect, imageSnapRadius, aspectRatio);
                return;
            case TOP:
                this.mCoordinate = adjustTop(y, imageRect, imageSnapRadius, aspectRatio);
                return;
            case RIGHT:
                this.mCoordinate = adjustRight(x, imageRect, imageSnapRadius, aspectRatio);
                return;
            case BOTTOM:
                this.mCoordinate = adjustBottom(y, imageRect, imageSnapRadius, aspectRatio);
                return;
            default:
                return;
        }
    }

    public void adjustCoordinate(float aspectRatio) {
        float left = LEFT.getCoordinate();
        float top = TOP.getCoordinate();
        float right = RIGHT.getCoordinate();
        float bottom = BOTTOM.getCoordinate();
        switch (this) {
            case LEFT:
                this.mCoordinate = AspectRatioUtil.calculateLeft(top, right, bottom, aspectRatio);
                return;
            case TOP:
                this.mCoordinate = AspectRatioUtil.calculateTop(left, right, bottom, aspectRatio);
                return;
            case RIGHT:
                this.mCoordinate = AspectRatioUtil.calculateRight(left, top, bottom, aspectRatio);
                return;
            case BOTTOM:
                this.mCoordinate = AspectRatioUtil.calculateBottom(left, top, right, aspectRatio);
                return;
            default:
                return;
        }
    }

    public boolean isNewRectangleOutOfBounds(Edge edge, RectF imageRect, float aspectRatio) {
        float offset = edge.snapOffset(imageRect);
        float top;
        float bottom;
        float right;
        float left;
        switch (this) {
            case LEFT:
                if (edge.equals(TOP)) {
                    top = imageRect.top;
                    bottom = BOTTOM.getCoordinate() - offset;
                    right = RIGHT.getCoordinate();
                    return isOutOfBounds(top, AspectRatioUtil.calculateLeft(top, right, bottom, aspectRatio), bottom, right, imageRect);
                } else if (edge.equals(BOTTOM)) {
                    bottom = imageRect.bottom;
                    top = TOP.getCoordinate() - offset;
                    right = RIGHT.getCoordinate();
                    return isOutOfBounds(top, AspectRatioUtil.calculateLeft(top, right, bottom, aspectRatio), bottom, right, imageRect);
                }
                break;
            case TOP:
                if (edge.equals(LEFT)) {
                    left = imageRect.left;
                    right = RIGHT.getCoordinate() - offset;
                    bottom = BOTTOM.getCoordinate();
                    return isOutOfBounds(AspectRatioUtil.calculateTop(left, right, bottom, aspectRatio), left, bottom, right, imageRect);
                } else if (edge.equals(RIGHT)) {
                    right = imageRect.right;
                    left = LEFT.getCoordinate() - offset;
                    bottom = BOTTOM.getCoordinate();
                    return isOutOfBounds(AspectRatioUtil.calculateTop(left, right, bottom, aspectRatio), left, bottom, right, imageRect);
                }
                break;
            case RIGHT:
                if (edge.equals(TOP)) {
                    top = imageRect.top;
                    bottom = BOTTOM.getCoordinate() - offset;
                    left = LEFT.getCoordinate();
                    return isOutOfBounds(top, left, bottom, AspectRatioUtil.calculateRight(left, top, bottom, aspectRatio), imageRect);
                } else if (edge.equals(BOTTOM)) {
                    bottom = imageRect.bottom;
                    top = TOP.getCoordinate() - offset;
                    left = LEFT.getCoordinate();
                    return isOutOfBounds(top, left, bottom, AspectRatioUtil.calculateRight(left, top, bottom, aspectRatio), imageRect);
                }
                break;
            case BOTTOM:
                if (edge.equals(LEFT)) {
                    left = imageRect.left;
                    right = RIGHT.getCoordinate() - offset;
                    top = TOP.getCoordinate();
                    return isOutOfBounds(top, left, AspectRatioUtil.calculateBottom(left, top, right, aspectRatio), right, imageRect);
                } else if (edge.equals(RIGHT)) {
                    right = imageRect.right;
                    left = LEFT.getCoordinate() - offset;
                    top = TOP.getCoordinate();
                    return isOutOfBounds(top, left, AspectRatioUtil.calculateBottom(left, top, right, aspectRatio), right, imageRect);
                }
                break;
        }
        return true;
    }

    private boolean isOutOfBounds(float top, float left, float bottom, float right, RectF imageRect) {
        return top < imageRect.top || left < imageRect.left || bottom > imageRect.bottom || right > imageRect.right;
    }

    public float snapToRect(RectF imageRect) {
        float oldCoordinate = this.mCoordinate;
        switch (this) {
            case LEFT:
                this.mCoordinate = imageRect.left;
                break;
            case TOP:
                this.mCoordinate = imageRect.top;
                break;
            case RIGHT:
                this.mCoordinate = imageRect.right;
                break;
            case BOTTOM:
                this.mCoordinate = imageRect.bottom;
                break;
        }
        return this.mCoordinate - oldCoordinate;
    }

    public float snapOffset(RectF imageRect) {
        float newCoordinate;
        float oldCoordinate = this.mCoordinate;
        switch (this) {
            case LEFT:
                newCoordinate = imageRect.left;
                break;
            case TOP:
                newCoordinate = imageRect.top;
                break;
            case RIGHT:
                newCoordinate = imageRect.right;
                break;
            default:
                newCoordinate = imageRect.bottom;
                break;
        }
        return newCoordinate - oldCoordinate;
    }

    public static float getWidth() {
        return RIGHT.getCoordinate() - LEFT.getCoordinate();
    }

    public static float getHeight() {
        return BOTTOM.getCoordinate() - TOP.getCoordinate();
    }

    public boolean isOutsideMargin(RectF rect, float margin) {
        switch (this) {
            case LEFT:
                if (this.mCoordinate - rect.left < margin) {
                    return true;
                }
                return false;
            case TOP:
                if (this.mCoordinate - rect.top < margin) {
                    return true;
                }
                return false;
            case RIGHT:
                if (rect.right - this.mCoordinate < margin) {
                    return true;
                }
                return false;
            default:
                if (rect.bottom - this.mCoordinate < margin) {
                    return true;
                }
                return false;
        }
    }

    private static float adjustLeft(float x, RectF imageRect, float imageSnapRadius, float aspectRatio) {
        if (x - imageRect.left < imageSnapRadius) {
            return imageRect.left;
        }
        float resultXHoriz = Float.POSITIVE_INFINITY;
        float resultXVert = Float.POSITIVE_INFINITY;
        if (x >= RIGHT.getCoordinate() - 40.0f) {
            resultXHoriz = RIGHT.getCoordinate() - 40.0f;
        }
        if ((RIGHT.getCoordinate() - x) / aspectRatio <= 40.0f) {
            resultXVert = RIGHT.getCoordinate() - (40.0f * aspectRatio);
        }
        return Math.max(imageRect.left, Math.min(x, Math.min(resultXHoriz, resultXVert)));
    }

    private static float adjustRight(float x, RectF imageRect, float imageSnapRadius, float aspectRatio) {
        if (imageRect.right - x < imageSnapRadius) {
            return imageRect.right;
        }
        float resultXHoriz = Float.NEGATIVE_INFINITY;
        float resultXVert = Float.NEGATIVE_INFINITY;
        if (x <= LEFT.getCoordinate() + 40.0f) {
            resultXHoriz = LEFT.getCoordinate() + 40.0f;
        }
        if ((x - LEFT.getCoordinate()) / aspectRatio <= 40.0f) {
            resultXVert = LEFT.getCoordinate() + (40.0f * aspectRatio);
        }
        return Math.min(imageRect.right, Math.max(x, Math.max(resultXHoriz, resultXVert)));
    }

    private static float adjustTop(float y, RectF imageRect, float imageSnapRadius, float aspectRatio) {
        if (y - imageRect.top < imageSnapRadius) {
            return imageRect.top;
        }
        float resultYVert = Float.POSITIVE_INFINITY;
        float resultYHoriz = Float.POSITIVE_INFINITY;
        if (y >= BOTTOM.getCoordinate() - 40.0f) {
            resultYHoriz = BOTTOM.getCoordinate() - 40.0f;
        }
        if ((BOTTOM.getCoordinate() - y) * aspectRatio <= 40.0f) {
            resultYVert = BOTTOM.getCoordinate() - (40.0f / aspectRatio);
        }
        return Math.max(imageRect.top, Math.min(y, Math.min(resultYHoriz, resultYVert)));
    }

    private static float adjustBottom(float y, RectF imageRect, float imageSnapRadius, float aspectRatio) {
        if (imageRect.bottom - y < imageSnapRadius) {
            return imageRect.bottom;
        }
        float resultYVert = Float.NEGATIVE_INFINITY;
        float resultYHoriz = Float.NEGATIVE_INFINITY;
        if (y <= TOP.getCoordinate() + 40.0f) {
            resultYVert = TOP.getCoordinate() + 40.0f;
        }
        if ((y - TOP.getCoordinate()) * aspectRatio <= 40.0f) {
            resultYHoriz = TOP.getCoordinate() + (40.0f / aspectRatio);
        }
        return Math.min(imageRect.bottom, Math.max(y, Math.max(resultYHoriz, resultYVert)));
    }
}
