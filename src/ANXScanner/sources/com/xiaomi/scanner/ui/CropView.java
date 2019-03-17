package com.xiaomi.scanner.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.util.CameraUtil;
import com.xiaomi.scanner.util.Util;

public class CropView extends View {
    private static final int MIN_CROP_HEIGHT = Util.dpToPixel(20.0f);
    private static final int MIN_CROP_WIDTH = Util.dpToPixel(64.0f);
    private static final int MOVE_BLOCK = 16;
    private static final int MOVE_BOTTOM = 8;
    private static final int MOVE_LEFT = 1;
    private static final int MOVE_RIGHT = 4;
    private static final int MOVE_TOP = 2;
    private static final int TEXT_ROW_HEIGHT = Util.dpToPixel(20.0f);
    private static final int TOUCH_TOLERANCE = Util.dpToPixel(18.0f);
    private final RectF mCropBounds = new RectF();
    private final Drawable mCropRectDrawable;
    private final RectF mDefaultBounds = new RectF();
    private final RectF mDisplayBounds = new RectF();
    private float mLastX;
    private float mLastY;
    private int mMovingEdges;
    private Rect mPromptBounds;
    private int mPromptMarginTop;
    private final Paint mPromptPaint;
    private final String mPromptText;
    private final Paint mSelectPaint;
    private boolean mTextCrop;
    private final Drawable mTextRangeDrawable;
    private final RectF mTextRectBounds = new RectF();
    private float mTextTapCenterX;
    private float mTextTapCenterY;

    public CropView(Context context, AttributeSet attrs) {
        super(context, attrs);
        Resources resources = context.getResources();
        this.mCropRectDrawable = resources.getDrawable(R.drawable.crop_rect);
        this.mTextRangeDrawable = resources.getDrawable(R.drawable.text_rect_handle);
        this.mPromptText = resources.getString(R.string.translation_prompt_sentence);
        this.mPromptPaint = new Paint();
        this.mPromptPaint.setColor(-1);
        this.mPromptPaint.setTextSize((float) resources.getDimensionPixelSize(R.dimen.text_size_38));
        this.mPromptBounds = new Rect();
        this.mSelectPaint = new Paint();
        this.mSelectPaint.setColor(-1433423938);
        this.mPromptPaint.getTextBounds(this.mPromptText, 0, this.mPromptText.length(), this.mPromptBounds);
        this.mPromptMarginTop = resources.getDimensionPixelOffset(R.dimen.prompt_margin_top);
    }

    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        this.mDisplayBounds.set(0.0f, 0.0f, (float) w, (float) h);
        this.mTextRectBounds.set((float) this.mTextRangeDrawable.getIntrinsicWidth(), 0.0f, (float) (w - this.mTextRangeDrawable.getIntrinsicWidth()), (float) ((h - this.mTextRangeDrawable.getIntrinsicHeight()) + TEXT_ROW_HEIGHT));
        this.mDefaultBounds.set((float) ((w * 3) / 10), (float) ((h * 2) / 5), (float) ((w * 7) / 10), (float) ((h * 3) / 5));
        this.mCropBounds.set(this.mDefaultBounds);
        onCropChange();
    }

    private void onCropChange() {
        invalidate();
    }

    private void detectMovingEdges(float x, float y) {
        int i = 1;
        this.mMovingEdges = 0;
        if (this.mTextCrop) {
            PointF ltCorner = new PointF(this.mCropBounds.left - this.mTextTapCenterX, this.mCropBounds.top + this.mTextTapCenterY);
            if (Math.abs(x - ltCorner.x) > ((float) TOUCH_TOLERANCE) || Math.abs(y - ltCorner.y) > ((float) TOUCH_TOLERANCE)) {
                PointF rbCorner = new PointF(this.mCropBounds.right + this.mTextTapCenterX, (this.mCropBounds.bottom - ((float) TEXT_ROW_HEIGHT)) + this.mTextTapCenterY);
                if (Math.abs(x - rbCorner.x) <= ((float) TOUCH_TOLERANCE) && Math.abs(y - rbCorner.y) <= ((float) TOUCH_TOLERANCE)) {
                    this.mMovingEdges = 12;
                }
            } else {
                this.mMovingEdges = 3;
            }
            if (this.mMovingEdges == 0) {
                if (this.mCropBounds.height() < ((float) (TEXT_ROW_HEIGHT * 2)) && this.mCropBounds.contains(x, y)) {
                    this.mMovingEdges = 16;
                } else if ((this.mCropBounds.top <= y && y <= this.mCropBounds.top + ((float) TEXT_ROW_HEIGHT) && x > this.mCropBounds.left) || ((this.mCropBounds.top + ((float) TEXT_ROW_HEIGHT) < y && y < this.mCropBounds.bottom - ((float) TEXT_ROW_HEIGHT)) || (y <= this.mCropBounds.bottom && y >= this.mCropBounds.bottom - ((float) TEXT_ROW_HEIGHT) && x < this.mCropBounds.right))) {
                    this.mMovingEdges = 16;
                }
            }
        } else {
            if (y <= this.mCropBounds.bottom && this.mCropBounds.top <= y) {
                float left = Math.abs(x - this.mCropBounds.left);
                float right = Math.abs(x - this.mCropBounds.right);
                if (left <= ((float) TOUCH_TOLERANCE) && left < right) {
                    this.mMovingEdges |= 1;
                } else if (right <= ((float) TOUCH_TOLERANCE)) {
                    this.mMovingEdges |= 4;
                }
            }
            if (x <= this.mCropBounds.right && this.mCropBounds.left <= x) {
                int i2;
                float top = Math.abs(y - this.mCropBounds.top);
                float bottom = Math.abs(y - this.mCropBounds.bottom);
                if (top <= ((float) TOUCH_TOLERANCE)) {
                    i2 = 1;
                } else {
                    i2 = 0;
                }
                if (top >= bottom) {
                    i = 0;
                }
                if ((i & i2) != 0) {
                    this.mMovingEdges |= 2;
                } else if (bottom <= ((float) TOUCH_TOLERANCE)) {
                    this.mMovingEdges |= 8;
                }
            }
            if (this.mCropBounds.contains(x, y) && this.mMovingEdges == 0) {
                this.mMovingEdges = 16;
            }
        }
        invalidate();
    }

    private void moveEdges(float deltaX, float deltaY) {
        float minWidth;
        float minHeight;
        if (this.mTextCrop) {
            minWidth = (float) this.mTextRangeDrawable.getIntrinsicWidth();
            if (this.mMovingEdges == 16) {
                if (deltaX > 0.0f) {
                    deltaX = Math.min(this.mTextRectBounds.right - Math.max(this.mCropBounds.left, this.mCropBounds.right), deltaX);
                } else {
                    deltaX = Math.max(this.mTextRectBounds.left - Math.min(this.mCropBounds.left, this.mCropBounds.right), deltaX);
                }
                if (deltaY > 0.0f) {
                    deltaY = Math.min(this.mTextRectBounds.bottom - this.mCropBounds.bottom, deltaY);
                } else {
                    deltaY = Math.max(this.mTextRectBounds.top - this.mCropBounds.top, deltaY);
                }
                this.mCropBounds.offset(deltaX, deltaY);
            } else {
                minHeight = (float) TEXT_ROW_HEIGHT;
                float dy;
                if (this.mMovingEdges == 3) {
                    this.mCropBounds.left = Util.clamp(this.mCropBounds.left + deltaX, this.mTextRectBounds.left, this.mTextRectBounds.right);
                    this.mCropBounds.top = Util.clamp(this.mCropBounds.top + deltaY, this.mTextRectBounds.top, this.mCropBounds.bottom - minHeight);
                    if (this.mCropBounds.height() < ((float) (TEXT_ROW_HEIGHT * 2)) && this.mCropBounds.right - this.mCropBounds.left < 2.0f * minWidth) {
                        dy = ((float) (TEXT_ROW_HEIGHT * 2)) - this.mCropBounds.height();
                        if (this.mCropBounds.top - dy >= this.mTextRectBounds.top) {
                            this.mCropBounds.top -= dy;
                        } else {
                            this.mCropBounds.left = this.mCropBounds.right - (2.0f * minWidth);
                        }
                    }
                } else if (this.mMovingEdges == 12) {
                    this.mCropBounds.right = Util.clamp(this.mCropBounds.right + deltaX, this.mTextRectBounds.left, this.mTextRectBounds.right);
                    this.mCropBounds.bottom = Util.clamp(this.mCropBounds.bottom + deltaY, this.mCropBounds.top + minHeight, this.mTextRectBounds.bottom);
                    if (this.mCropBounds.height() < ((float) (TEXT_ROW_HEIGHT * 2)) && this.mCropBounds.right - this.mCropBounds.left < 2.0f * minWidth) {
                        dy = ((float) (TEXT_ROW_HEIGHT * 2)) - this.mCropBounds.height();
                        if (this.mCropBounds.bottom + dy <= this.mTextRectBounds.bottom) {
                            this.mCropBounds.bottom += dy;
                        } else {
                            this.mCropBounds.right = this.mCropBounds.left + (2.0f * minWidth);
                        }
                    }
                }
            }
        } else if (this.mMovingEdges == 16) {
            if (deltaX > 0.0f) {
                deltaX = Math.min(this.mDisplayBounds.right - this.mCropBounds.right, deltaX);
            } else {
                deltaX = Math.max(this.mDisplayBounds.left - this.mCropBounds.left, deltaX);
            }
            if (deltaY > 0.0f) {
                deltaY = Math.min(this.mDisplayBounds.bottom - this.mCropBounds.bottom, deltaY);
            } else {
                deltaY = Math.max(this.mDisplayBounds.top - this.mCropBounds.top, deltaY);
            }
            this.mCropBounds.offset(deltaX, deltaY);
        } else {
            minWidth = (float) MIN_CROP_WIDTH;
            minHeight = (float) MIN_CROP_HEIGHT;
            if ((this.mMovingEdges & 1) != 0) {
                this.mCropBounds.left = Math.min(this.mCropBounds.left + deltaX, this.mCropBounds.right - minWidth);
            }
            if ((this.mMovingEdges & 2) != 0) {
                this.mCropBounds.top = Math.min(this.mCropBounds.top + deltaY, this.mCropBounds.bottom - minHeight);
            }
            if ((this.mMovingEdges & 4) != 0) {
                this.mCropBounds.right = Math.max(this.mCropBounds.right + deltaX, this.mCropBounds.left + minWidth);
            }
            if ((this.mMovingEdges & 8) != 0) {
                this.mCropBounds.bottom = Math.max(this.mCropBounds.bottom + deltaY, this.mCropBounds.top + minHeight);
            }
            this.mCropBounds.intersect(this.mDisplayBounds);
        }
        onCropChange();
    }

    public boolean onTouchEvent(MotionEvent event) {
        if (!isShown()) {
            return false;
        }
        boolean last = isMovingEdges();
        if (isEnabled()) {
            float x = event.getX();
            float y = event.getY();
            switch (event.getAction()) {
                case 0:
                    detectMovingEdges(x, y);
                    this.mLastX = x;
                    this.mLastY = y;
                    break;
                case 1:
                case 3:
                    this.mMovingEdges = 0;
                    invalidate();
                    break;
                case 2:
                    if (this.mMovingEdges != 0) {
                        moveEdges(x - this.mLastX, y - this.mLastY);
                    }
                    this.mLastX = x;
                    this.mLastY = y;
                    break;
            }
        }
        if (last || isMovingEdges()) {
            return true;
        }
        return false;
    }

    private void drawIndicator(Canvas canvas, Drawable indicator, float left, float top, boolean mirror) {
        RectF rect = new RectF(left, top, ((float) indicator.getIntrinsicWidth()) + left, ((float) indicator.getIntrinsicHeight()) + top);
        canvas.save();
        if (mirror) {
            canvas.scale(-1.0f, 1.0f, rect.centerX(), rect.centerY());
        }
        indicator.setBounds((int) rect.left, (int) rect.top, (int) rect.right, (int) rect.bottom);
        indicator.draw(canvas);
        canvas.restore();
    }

    protected void onDraw(Canvas canvas) {
        if (this.mTextCrop) {
            if (this.mCropBounds.height() < ((float) (TEXT_ROW_HEIGHT * 2))) {
                canvas.drawRect(this.mCropBounds.left, this.mCropBounds.top, this.mCropBounds.right, this.mCropBounds.bottom, this.mSelectPaint);
            } else {
                Canvas canvas2 = canvas;
                canvas2.drawRect(this.mCropBounds.left, this.mCropBounds.top, this.mDisplayBounds.right, ((float) TEXT_ROW_HEIGHT) + this.mCropBounds.top, this.mSelectPaint);
                canvas2 = canvas;
                canvas2.drawRect(this.mDisplayBounds.left, ((float) TEXT_ROW_HEIGHT) + this.mCropBounds.top, this.mDisplayBounds.right, this.mCropBounds.bottom - ((float) TEXT_ROW_HEIGHT), this.mSelectPaint);
                canvas.drawRect(this.mDisplayBounds.left, this.mCropBounds.bottom - ((float) TEXT_ROW_HEIGHT), this.mCropBounds.right, this.mCropBounds.bottom, this.mSelectPaint);
            }
            drawIndicator(canvas, this.mTextRangeDrawable, this.mCropBounds.left - ((float) this.mTextRangeDrawable.getIntrinsicWidth()), this.mCropBounds.top, true);
            drawIndicator(canvas, this.mTextRangeDrawable, this.mCropBounds.right, this.mCropBounds.bottom - ((float) TEXT_ROW_HEIGHT), false);
        } else {
            this.mCropRectDrawable.setBounds((int) this.mCropBounds.left, (int) this.mCropBounds.top, (int) this.mCropBounds.right, (int) this.mCropBounds.bottom);
            this.mCropRectDrawable.draw(canvas);
        }
        canvas.drawText(this.mPromptText, (this.mDisplayBounds.width() / 2.0f) - ((float) this.mPromptBounds.centerX()), (this.mCropBounds.bottom + ((float) this.mPromptMarginTop)) + ((float) this.mPromptBounds.height()), this.mPromptPaint);
    }

    public void getDisplayRect(Rect rect) {
        rect.set(CameraUtil.rectFToRect(this.mDisplayBounds));
    }

    public void getCropRect(Rect rect) {
        if (this.mTextCrop) {
            rect.set((int) this.mDisplayBounds.left, Math.max(((int) this.mCropBounds.top) - MIN_CROP_HEIGHT, (int) this.mDisplayBounds.top), (int) this.mDisplayBounds.right, Math.min(((int) this.mCropBounds.bottom) + MIN_CROP_HEIGHT, (int) this.mDisplayBounds.bottom));
        } else {
            rect.set((int) this.mCropBounds.left, (int) this.mCropBounds.top, (int) this.mCropBounds.right, (int) this.mCropBounds.bottom);
        }
    }

    public void setTextCrop(boolean textCrop) {
        this.mTextCrop = textCrop;
        if (this.mTextCrop) {
            this.mTextTapCenterX = ((float) this.mTextRangeDrawable.getIntrinsicWidth()) * 0.5f;
            this.mTextTapCenterY = ((float) this.mTextRangeDrawable.getIntrinsicHeight()) * 0.76f;
        }
    }

    public boolean isMovingEdges() {
        return this.mMovingEdges != 0;
    }

    public boolean isMoveBlock() {
        return this.mMovingEdges == 16;
    }

    public void getRelativeCropRect(RectF rect) {
        if (this.mTextCrop) {
            Rect textCropRect = new Rect((int) this.mDisplayBounds.left, Math.max(((int) this.mCropBounds.top) - MIN_CROP_HEIGHT, (int) this.mDisplayBounds.top), (int) this.mDisplayBounds.right, Math.min(((int) this.mCropBounds.bottom) + MIN_CROP_HEIGHT, (int) this.mDisplayBounds.bottom));
            rect.set((this.mCropBounds.left - ((float) textCropRect.left)) / ((float) textCropRect.width()), (this.mCropBounds.top - ((float) textCropRect.top)) / ((float) textCropRect.height()), (this.mCropBounds.right - ((float) textCropRect.left)) / ((float) textCropRect.width()), (this.mCropBounds.bottom - ((float) textCropRect.top)) / ((float) textCropRect.height()));
            return;
        }
        rect.set(0.0f, 0.0f, 1.0f, 1.0f);
    }
}
