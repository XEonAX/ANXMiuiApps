package com.nexstreaming.nexeditorsdk;

import android.animation.TimeInterpolator;
import android.util.Log;
import com.nexstreaming.nexeditorsdk.exception.InvalidRangeException;

public abstract class nexAnimate {
    public static final int kCoordinateX = 1;
    public static final int kCoordinateY = 2;
    public static final int kCoordinateZ = 3;
    protected float mAlpha = 1.0f;
    protected int mDuration;
    protected float mRotateDegreeX = 0.0f;
    protected float mRotateDegreeY = 0.0f;
    protected float mRotateDegreeZ = 0.0f;
    protected float mScaledX = 1.0f;
    protected float mScaledY = 1.0f;
    protected float mScaledZ = 1.0f;
    protected int mStartTime;
    private TimeInterpolator mTimeInterpolator;
    protected int mdX = 0;
    protected int mdY = 0;
    protected int mdZ = 0;

    protected static class Alpha extends nexAnimate {
        private final float mEnd;
        private final float mStart;

        protected Alpha(int i, int i2, float f, float f2) {
            super(i, i2);
            this.mStart = f;
            this.mEnd = f2;
        }

        protected float getAlpha(int i) {
            float timeRatio = ((this.mEnd - this.mStart) * timeRatio(i)) + this.mStart;
            if (timeRatio > 1.0f) {
                return 1.0f;
            }
            if (timeRatio < 0.0f) {
                return 0.0f;
            }
            return timeRatio;
        }
    }

    protected static class AnimateImages extends nexAnimate {
        private final int[] resourceIds;

        protected AnimateImages(int i, int i2, int... iArr) {
            super(i, i2);
            this.resourceIds = iArr;
        }

        protected int getImageResourceId(int i) {
            int length = ((i - this.mStartTime) / 33) % this.resourceIds.length;
            if (length < 0) {
                length = 0;
            }
            return this.resourceIds[length];
        }
    }

    public interface MoveTrackingPath {
        float getTranslatePosition(int i, float f);
    }

    protected static class Move extends nexAnimate {
        private MoveTrackingPath mPath;

        protected Move(int i, int i2, MoveTrackingPath moveTrackingPath) {
            super(i, i2);
            this.mPath = moveTrackingPath;
            if (this.mPath == null) {
                this.mPath = new MoveTrackingPath() {
                    public float getTranslatePosition(int i, float f) {
                        return 0.0f;
                    }
                };
            }
        }

        protected float getTranslatePosition(int i, int i2) {
            return this.mPath.getTranslatePosition(i2, timeRatio(i));
        }
    }

    protected static class Rotate extends nexAnimate {
        private MoveTrackingPath mCenter;
        private final boolean mClockWise;
        private final float mXAxisRotateDegree;
        private final float mYAxisRotateDegree;
        private final float mZAxisRotateDegree;

        protected Rotate(int i, int i2, boolean z, float f, int i3, MoveTrackingPath moveTrackingPath) {
            super(i, i2);
            this.mClockWise = z;
            if (i3 == 1) {
                this.mXAxisRotateDegree = f;
                this.mYAxisRotateDegree = 0.0f;
                this.mZAxisRotateDegree = 0.0f;
            } else if (i3 == 2) {
                this.mXAxisRotateDegree = 0.0f;
                this.mYAxisRotateDegree = f;
                this.mZAxisRotateDegree = 0.0f;
            } else {
                this.mXAxisRotateDegree = 0.0f;
                this.mYAxisRotateDegree = 0.0f;
                this.mZAxisRotateDegree = f;
            }
            this.mCenter = moveTrackingPath;
            if (this.mCenter == null) {
                this.mCenter = new MoveTrackingPath() {
                    public float getTranslatePosition(int i, float f) {
                        return 0.0f;
                    }
                };
            }
        }

        protected float getAngleDegree(int i, float f, int i2) {
            float f2 = 0.0f;
            if (i2 == 3) {
                f2 = this.mZAxisRotateDegree * timeRatio(i);
            } else if (i2 == 1) {
                f2 = this.mXAxisRotateDegree * timeRatio(i);
            } else if (i2 == 2) {
                f2 = this.mYAxisRotateDegree * timeRatio(i);
            }
            if (!this.mClockWise) {
                f2 *= -1.0f;
            }
            return (f2 + f) % 360.0f;
        }

        protected float getTranslatePosition(int i, int i2) {
            return this.mCenter.getTranslatePosition(i2, timeRatio(i));
        }
    }

    protected static class Scale extends nexAnimate {
        protected final float mLastScaledX;
        protected final float mLastScaledY;
        protected final float mLastScaledZ;
        private MoveTrackingPath mPath;
        protected final boolean mSetStart;
        protected final float mStartScaledX;
        protected final float mStartScaledY;
        protected final float mStartScaledZ;

        protected Scale(int i, int i2, float f, float f2, float f3) {
            super(i, i2);
            this.mStartScaledX = 0.0f;
            this.mStartScaledY = 0.0f;
            this.mStartScaledZ = 0.0f;
            this.mLastScaledX = f;
            this.mLastScaledY = f2;
            this.mLastScaledZ = f3;
            this.mSetStart = false;
        }

        protected Scale(int i, int i2, float f, float f2, float f3, float f4, float f5, float f6) {
            super(i, i2);
            this.mStartScaledX = f;
            this.mStartScaledY = f2;
            this.mStartScaledZ = f3;
            this.mLastScaledX = f4;
            this.mLastScaledY = f5;
            this.mLastScaledZ = f6;
            this.mSetStart = true;
        }

        protected Scale(int i, int i2, MoveTrackingPath moveTrackingPath) {
            super(i, i2);
            this.mStartScaledX = 0.0f;
            this.mStartScaledY = 0.0f;
            this.mStartScaledZ = 0.0f;
            this.mLastScaledX = 0.0f;
            this.mLastScaledY = 0.0f;
            this.mLastScaledZ = 0.0f;
            this.mPath = moveTrackingPath;
            this.mSetStart = false;
        }

        protected float getScaledRatio(int i, float f, int i2) {
            if (this.mPath != null) {
                return this.mPath.getTranslatePosition(i2, timeRatio(i)) + f;
            }
            float f2 = 0.0f;
            if (i2 == 1) {
                f2 = this.mLastScaledX;
                if (this.mSetStart) {
                    f = this.mStartScaledX;
                }
            } else if (i2 == 2) {
                f2 = this.mLastScaledY;
                if (this.mSetStart) {
                    f = this.mStartScaledY;
                }
            } else if (i2 == 3) {
                f2 = this.mLastScaledZ;
                if (this.mSetStart) {
                    f = this.mStartScaledZ;
                }
            }
            if (f2 > f) {
                return ((f2 - f) * timeRatio(i)) + f;
            }
            return f - ((f - f2) * timeRatio(i));
        }
    }

    public void setTime(int i, int i2) {
        if (i2 <= 0) {
            throw new InvalidRangeException(i2);
        }
        this.mStartTime = i;
        this.mDuration = i2;
    }

    public nexAnimate setInterpolator(TimeInterpolator timeInterpolator) {
        this.mTimeInterpolator = timeInterpolator;
        return this;
    }

    protected nexAnimate(int i, int i2) {
        if (i2 <= 0) {
            throw new InvalidRangeException(i2);
        }
        this.mStartTime = i;
        this.mDuration = i2;
    }

    protected float timeRatio(int i) {
        float f = 1.0f;
        float f2 = 0.0f;
        float f3 = ((float) (i - this.mStartTime)) / ((float) this.mDuration);
        Log.d("timeRatio", "timeRatio =" + f3 + ",mTime = " + i);
        if (f3 <= 1.0f) {
            f = f3;
        }
        if (f >= 0.0f) {
            f2 = f;
        }
        if (this.mTimeInterpolator != null) {
            return this.mTimeInterpolator.getInterpolation(f2);
        }
        return f2;
    }

    protected int getEndTime() {
        return this.mStartTime + this.mDuration;
    }

    int getImageResourceId(int i) {
        return 0;
    }

    protected float getTranslatePosition(int i, int i2) {
        if (i2 == 1) {
            return (float) this.mdX;
        }
        if (i2 == 2) {
            return (float) this.mdY;
        }
        if (i2 == 3) {
            return (float) this.mdZ;
        }
        return 0.0f;
    }

    protected float getAlpha(int i) {
        return this.mAlpha;
    }

    protected float getAngleDegree(int i, float f, int i2) {
        if (i2 == 1) {
            return this.mRotateDegreeX;
        }
        if (i2 == 2) {
            return this.mRotateDegreeY;
        }
        if (i2 == 3) {
            return this.mRotateDegreeZ;
        }
        return 0.0f;
    }

    protected float getScaledRatio(int i, float f, int i2) {
        if (i2 == 1) {
            return this.mScaledX;
        }
        if (i2 == 2) {
            return this.mScaledY;
        }
        if (i2 == 3) {
            return this.mScaledZ;
        }
        return 1.0f;
    }

    public void resetFreeTypeAnimate() {
        this.mdX = 0;
        this.mdY = 0;
        this.mdZ = 0;
        this.mAlpha = 1.0f;
        this.mScaledX = 1.0f;
        this.mScaledY = 1.0f;
        this.mScaledZ = 1.0f;
        this.mRotateDegreeX = 0.0f;
        this.mRotateDegreeY = 0.0f;
        this.mRotateDegreeZ = 0.0f;
    }

    protected boolean onFreeTypeAnimate(int i, nexOverlayItem nexoverlayitem) {
        return false;
    }

    public static nexAnimate getAnimateImages(int i, int i2, int... iArr) {
        return new AnimateImages(i, i2, iArr);
    }

    public static nexAnimate getMove(int i, int i2, MoveTrackingPath moveTrackingPath) {
        return new Move(i, i2, moveTrackingPath);
    }

    public static nexAnimate getAlpha(int i, int i2, float f, float f2) {
        return new Alpha(i, i2, f, f2);
    }

    public static nexAnimate getRotate(int i, int i2, boolean z, float f, MoveTrackingPath moveTrackingPath) {
        return new Rotate(i, i2, z, f, 3, moveTrackingPath);
    }

    public static nexAnimate getScale(int i, int i2, float f, float f2) {
        return new Scale(i, i2, f, f2, 1.0f);
    }

    public static nexAnimate getScale(int i, int i2, float f, float f2, float f3, float f4) {
        return new Scale(i, i2, f, f2, 1.0f, f3, f4, 1.0f);
    }

    public static nexAnimate getScale(int i, int i2, MoveTrackingPath moveTrackingPath) {
        return new Scale(i, i2, moveTrackingPath);
    }
}
