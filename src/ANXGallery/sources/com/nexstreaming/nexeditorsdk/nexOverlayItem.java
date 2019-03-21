package com.nexstreaming.nexeditorsdk;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Log;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.nexstreaming.app.common.nexasset.overlay.AwakeAsset;
import com.nexstreaming.app.common.nexasset.overlay.OverlayAsset;
import com.nexstreaming.app.common.nexasset.overlay.OverlayMotion;
import com.nexstreaming.kminternal.kinemaster.config.EditorGlobal;
import com.nexstreaming.kminternal.nexvideoeditor.LayerRenderer;
import com.nexstreaming.kminternal.nexvideoeditor.LayerRenderer.RenderTarget;
import com.nexstreaming.kminternal.nexvideoeditor.b;
import com.nexstreaming.nexeditorsdk.exception.ClipIsNotVideoException;
import com.nexstreaming.nexeditorsdk.exception.InvalidRangeException;
import com.nexstreaming.nexeditorsdk.exception.nexSDKException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.xmlpull.v1.XmlPullParserException;

public final class nexOverlayItem implements Cloneable {
    public static final int AnchorPoint_LeftBottom = 6;
    public static final int AnchorPoint_LeftMiddle = 3;
    public static final int AnchorPoint_LeftTop = 0;
    public static final int AnchorPoint_MiddleBottom = 7;
    public static final int AnchorPoint_MiddleMiddle = 4;
    public static final int AnchorPoint_MiddleTop = 1;
    public static final int AnchorPoint_RightBottom = 8;
    public static final int AnchorPoint_RightMiddle = 5;
    public static final int AnchorPoint_RightTop = 2;
    private static final String TAG = "nexOverlayItem";
    private static int handleTouchZonePxSize = 36;
    private static int iconSize = 24;
    public static final int kOutLine_Pos_LeftBottom = 3;
    public static final int kOutLine_Pos_LeftTop = 1;
    public static final int kOutLine_Pos_RightBottom = 4;
    public static final int kOutLine_Pos_RightTop = 2;
    private static int marchingAnts_dashSize = 10;
    private static int marchingAnts_width = 4;
    private static Bitmap[] outLineIcon;
    private static int sLastId = 1;
    private static Bitmap solidBlackBitmap;
    private static boolean solidOutlen;
    private static Bitmap solidWhiteBitmap;
    private int anchorPoint;
    private int anchorPointX;
    private int anchorPointY;
    private int animateResourceId;
    private transient AwakeAsset awakeAsset;
    boolean bApplayLayerExpression;
    private OverlayMotion cacheMotion;
    private int lastAnchorPoint;
    private int lastLayerHeight;
    private int lastLayerWidth;
    private Set<nexAnimate> mActiveAnimateList;
    float mAlpha;
    List<nexAnimate> mAniList;
    private float mAnimateLastAlpha;
    private float mAnimateLastRotateDegreeX;
    private float mAnimateLastRotateDegreeY;
    private float mAnimateLastRotateDegreeZ;
    private float mAnimateLastScaledX;
    private float mAnimateLastScaledY;
    private float mAnimateLastScaledZ;
    private float mAnimateTranslateXpos;
    private float mAnimateTranslateYpos;
    private float mAnimateTranslateZpos;
    private boolean mAudioOnOff;
    private int mBrightness;
    private ChromaKey mChromaKey;
    private nexColorEffect mColorEffect;
    private int mContrast;
    int mEndTime;
    private int mFlipMode;
    private int mId;
    private nexOverlayKineMasterExpression mLayerExpression;
    private int mLayerExpressionDuration;
    private Mask mMask;
    private Rect mMaskRect;
    private nexOverlayFilter mOverLayFilter;
    private nexOverlayImage mOverLayImage;
    private boolean mOverlayTitle;
    float mRotateDegreeX;
    float mRotateDegreeY;
    float mRotateDegreeZ;
    private int mSaturation;
    float mScaledX;
    float mScaledY;
    float mScaledZ;
    private int mSpeedControl;
    int mStartTime;
    private int mTime;
    private int mTrimEndDuration;
    private int mTrimStartDuration;
    private boolean mUpdated;
    int mVideoEngineId;
    private int mVolume;
    float mX;
    float mY;
    float mZ;
    private int mZOrder;
    private boolean relationCoordinates;
    private Matrix scratchMatrix;
    private float[] scratchPoint;
    private boolean showItem;
    private boolean showOutLien;

    public class BoundInfo {
        private float angleX;
        private float angleY;
        private float angleZ;
        private Rect drawPosition;
        private int height;
        private Rect mask;
        private boolean maskOn;
        private float scaleX;
        private float scaleY;
        private int time;
        private int width;
        private float x;
        private float y;

        public String toString() {
            return "BoundInfo{scaleX=" + this.scaleX + ", scaleY=" + this.scaleY + ", x=" + this.x + ", y=" + this.y + ", angleX=" + this.angleX + ", angleY=" + this.angleY + ", angleZ=" + this.angleZ + ", width=" + this.width + ", height=" + this.height + ", time=" + this.time + ", maskOn=" + this.maskOn + ", mask=" + this.mask + ", drawPosition=" + this.drawPosition + '}';
        }

        public float getScaleX() {
            return this.scaleX;
        }

        public float getScaleY() {
            return this.scaleY;
        }

        public float getTranslateX() {
            return this.x;
        }

        public float getTranslateY() {
            return this.y;
        }

        public float getAngle() {
            return this.angleZ;
        }

        public int getWidth() {
            return this.width;
        }

        public int getHeight() {
            return this.height;
        }

        public int getTime() {
            return this.time;
        }

        public float getAngleX() {
            return this.angleX;
        }

        public float getAngleY() {
            return this.angleY;
        }

        public void getMaskBound(Rect rect) {
            rect.set(this.mask.left, this.mask.top, this.mask.right, this.mask.bottom);
        }

        public void getDrawBound(Rect rect) {
            rect.set(this.drawPosition.left, this.drawPosition.top, this.drawPosition.right, this.drawPosition.bottom);
        }

        public boolean getMaskState() {
            return this.maskOn;
        }

        private BoundInfo() {
        }

        private BoundInfo(int i) {
            this.mask = new Rect();
            this.time = i;
            this.scaleX = nexOverlayItem.this.mScaledX;
            this.scaleY = nexOverlayItem.this.mScaledY;
            int[] access$1000 = nexOverlayItem.this.getRealPositions(false);
            this.x = (float) access$1000[0];
            this.y = (float) access$1000[1];
            this.angleX = nexOverlayItem.this.mRotateDegreeX;
            this.angleY = nexOverlayItem.this.mRotateDegreeY;
            this.angleZ = nexOverlayItem.this.mRotateDegreeZ;
            if (nexOverlayItem.this.mOverLayImage != null) {
                this.width = nexOverlayItem.this.mOverLayImage.getWidth();
                this.height = nexOverlayItem.this.mOverLayImage.getHeight();
                this.drawPosition = nexOverlayItem.getDrawBitmapPosition(nexOverlayItem.this.mOverLayImage.getAnchorPoint(), this.width, this.height);
            } else {
                this.width = nexOverlayItem.this.mOverLayFilter.getWidth();
                this.height = nexOverlayItem.this.mOverLayFilter.getHeight();
                this.drawPosition = new Rect((-this.width) / 2, (-this.height) / 2, this.width / 2, this.height / 2);
            }
            this.maskOn = false;
            if (nexOverlayItem.this.mMask != null && nexOverlayItem.this.mMask.onOff) {
                nexOverlayItem.this.mMask.getPosition(this.mask);
            }
            if (nexOverlayItem.this.mAniList != null) {
                for (nexAnimate nexanimate : nexOverlayItem.this.mAniList) {
                    int i2 = this.time - nexOverlayItem.this.mStartTime;
                    if (nexanimate.mStartTime <= i2 && nexanimate.getEndTime() > i2) {
                        if (nexanimate instanceof Move) {
                            if (nexOverlayItem.this.mLayerExpression.getID() == 0) {
                                this.x += nexanimate.getTranslatePosition(i2, 1);
                                this.y = nexanimate.getTranslatePosition(i2, 2) + this.y;
                            }
                        } else if (nexanimate instanceof Rotate) {
                            if (nexOverlayItem.this.mLayerExpression.getID() == 0) {
                                this.angleX = nexanimate.getAngleDegree(i2, nexOverlayItem.this.mRotateDegreeX, 1);
                                this.angleY = nexanimate.getAngleDegree(i2, nexOverlayItem.this.mRotateDegreeY, 2);
                                this.angleZ = nexanimate.getAngleDegree(i2, nexOverlayItem.this.mRotateDegreeZ, 3);
                            }
                        } else if ((nexanimate instanceof Scale) && nexOverlayItem.this.mLayerExpression.getID() == 0) {
                            this.scaleX = nexanimate.getScaledRatio(i2, nexOverlayItem.this.mScaledX, 1);
                            this.scaleY = nexanimate.getScaledRatio(i2, nexOverlayItem.this.mScaledY, 2);
                        }
                    }
                }
            }
        }
    }

    public static class ChromaKey {
        private static final float CHROMA_DEF_BLEND_X0 = 0.25f;
        private static final float CHROMA_DEF_BLEND_X1 = 0.75f;
        private static final float CHROMA_DEF_BLEND_Y0 = 0.25f;
        private static final float CHROMA_DEF_BLEND_Y1 = 0.75f;
        private static final float CHROMA_DEF_CLIP_BG = 0.5f;
        private static final float CHROMA_DEF_CLIP_FG = 0.72f;
        private static final int CHROMA_DEF_COLOR = -16711936;
        private static final int CHROMA_UNSET_COLOR = 0;
        private float m_chromaKeyBlend_x0 = 0.25f;
        private float m_chromaKeyBlend_x1 = 0.75f;
        private float m_chromaKeyBlend_y0 = 0.25f;
        private float m_chromaKeyBlend_y1 = 0.75f;
        private float m_chromaKeyClipBG = CHROMA_DEF_CLIP_BG;
        private float m_chromaKeyClipFG = CHROMA_DEF_CLIP_FG;
        private int m_chromaKeyColor = 0;
        private float[] m_chromaKeyDivisions = new float[]{0.05f, 0.3f, CHROMA_DEF_CLIP_BG, 0.65f};
        private boolean m_chromaKeyEnabled;
        private boolean m_chromaKeyMaskEnabled;
        private float[] m_chromaKeyStrengths = new float[]{0.0f, 0.25f, 0.75f, 1.0f};

        public static int[] getChromaKeyRecommendedColors(Bitmap bitmap) {
            if (bitmap == null) {
                return new int[0];
            }
            int i;
            int i2;
            float[] fArr = new float[3];
            int[] iArr = new int[360];
            int[] iArr2 = new int[(bitmap.getWidth() * bitmap.getHeight())];
            bitmap.getPixels(iArr2, 0, bitmap.getWidth(), 0, 0, bitmap.getWidth(), bitmap.getHeight());
            for (int i22 : iArr2) {
                Color.colorToHSV(i22, fArr);
                if (fArr[1] >= 0.3f && fArr[2] >= 0.2f) {
                    i22 = ((int) ((fArr[0] / 360.0f) * 360.0f)) % 360;
                    iArr[i22] = iArr[i22] + 1;
                }
            }
            for (i = 0; i < iArr.length; i++) {
            }
            Object obj = new int[14];
            int i3 = 0;
            for (i = 0; i < obj.length; i++) {
                i22 = -1;
                int i4 = -1;
                for (int i5 = 0; i5 < 360; i5++) {
                    if (iArr[i5] > i22) {
                        i22 = iArr[i5];
                        i4 = i5;
                    }
                }
                if (i4 < 0 || i22 < 5) {
                    break;
                }
                fArr[0] = (float) ((i4 * 360) / 360);
                fArr[1] = 1.0f;
                fArr[2] = 1.0f;
                obj[i3] = Color.HSVToColor(fArr);
                i3++;
                for (i22 = i4 - 3; i22 < i4 + 3; i22++) {
                    iArr[(i22 + 360) % 360] = -1;
                }
            }
            if (i3 >= obj.length) {
                return obj;
            }
            Object obj2 = new int[i3];
            System.arraycopy(obj, 0, obj2, 0, i3);
            return obj2;
        }

        public void getChromaKeyDivisions(float[] fArr) {
            System.arraycopy(this.m_chromaKeyDivisions, 0, fArr, 0, this.m_chromaKeyDivisions.length);
        }

        public void getChromaKeyStrengths(float[] fArr) {
            System.arraycopy(this.m_chromaKeyStrengths, 0, fArr, 0, this.m_chromaKeyStrengths.length);
        }

        public void setChromaKeyStrengths(float[] fArr) {
            System.arraycopy(fArr, 0, this.m_chromaKeyStrengths, 0, this.m_chromaKeyStrengths.length);
        }

        public int getChromaKeyColor() {
            return this.m_chromaKeyColor;
        }

        public void setChromaKeyColor(int i) {
            this.m_chromaKeyColor = i;
        }

        public boolean getChromaKeyEnabled() {
            return this.m_chromaKeyEnabled;
        }

        public void setChromaKeyMaskEnabled(boolean z) {
            this.m_chromaKeyMaskEnabled = z;
        }

        public boolean getChromaKeyMaskEnabled() {
            return this.m_chromaKeyMaskEnabled;
        }

        public void setChromaKeyEnabled(boolean z) {
            this.m_chromaKeyEnabled = z;
        }

        public void setChromaKeyFGClip(float f) {
            this.m_chromaKeyClipFG = f;
        }

        public void setChromaKeyBGClip(float f) {
            this.m_chromaKeyClipBG = f;
        }

        public float getChromaKeyFGClip() {
            return this.m_chromaKeyClipFG;
        }

        public float getChromaKeyBGClip() {
            return this.m_chromaKeyClipBG;
        }

        public void setChromaKeyBlend(float[] fArr) {
            this.m_chromaKeyBlend_x0 = fArr[0];
            this.m_chromaKeyBlend_y0 = fArr[1];
            this.m_chromaKeyBlend_x1 = fArr[2];
            this.m_chromaKeyBlend_y1 = fArr[3];
        }

        public void getChromaKeyBlend(float[] fArr) {
            fArr[0] = this.m_chromaKeyBlend_x0;
            fArr[1] = this.m_chromaKeyBlend_y0;
            fArr[2] = this.m_chromaKeyBlend_x1;
            fArr[3] = this.m_chromaKeyBlend_y1;
        }
    }

    public static class HitPoint {
        private int id;
        public int mTime;
        public float mViewHeight;
        public float mViewWidth;
        public float mViewX;
        public float mViewY;
        private int position;

        public int getID() {
            return this.id;
        }

        public int getHitInPosition() {
            return this.position;
        }
    }

    public class Mask {
        public static final int kSplit_Bottom = 4;
        public static final int kSplit_Left = 1;
        public static final int kSplit_LeftBottom = 7;
        public static final int kSplit_LeftTop = 5;
        public static final int kSplit_Right = 2;
        public static final int kSplit_RightBottom = 8;
        public static final int kSplit_RightTop = 6;
        public static final int kSplit_Top = 3;
        private int angle;
        private Bitmap maskImage;
        private boolean onOff;
        private Rect rectPosition = new Rect();
        private int splitMode;
        private boolean syncAnimationOverlayItem;
        private boolean vertical;

        public void setState(boolean z) {
            this.onOff = z;
        }

        public boolean getState() {
            return this.onOff;
        }

        public void setAngle(int i) {
            this.angle = i;
        }

        public int getAngle() {
            return this.angle;
        }

        public int getSplitMode() {
            return this.splitMode;
        }

        public int width() {
            return this.rectPosition.width();
        }

        public int height() {
            return this.rectPosition.height();
        }

        public void setMaskImage(Bitmap bitmap) {
            this.maskImage = bitmap;
        }

        public Bitmap getMaskImage() {
            return this.maskImage;
        }

        public void setSplitMode(int i, boolean z) {
            if (this.splitMode != i || this.vertical != z) {
                this.splitMode = i;
                this.vertical = z;
                int width = nexApplicationConfig.getAspectProfile().getWidth();
                int height = nexApplicationConfig.getAspectProfile().getHeight();
                switch (i) {
                    case 1:
                        this.rectPosition.left = 0;
                        this.rectPosition.top = 0;
                        this.rectPosition.right = width / 2;
                        this.rectPosition.bottom = height;
                        return;
                    case 2:
                        this.rectPosition.top = 0;
                        this.rectPosition.left = width / 2;
                        this.rectPosition.right = width;
                        this.rectPosition.bottom = height;
                        return;
                    case 3:
                        this.rectPosition.top = 0;
                        this.rectPosition.left = 0;
                        this.rectPosition.right = width;
                        this.rectPosition.bottom = height / 2;
                        return;
                    case 4:
                        this.rectPosition.top = height / 2;
                        this.rectPosition.left = 0;
                        this.rectPosition.right = width;
                        this.rectPosition.bottom = height;
                        return;
                    case 5:
                        this.rectPosition.top = 0;
                        this.rectPosition.left = 0;
                        this.rectPosition.right = width / 2;
                        this.rectPosition.bottom = height / 2;
                        return;
                    case 6:
                        this.rectPosition.top = 0;
                        this.rectPosition.left = width / 2;
                        this.rectPosition.right = width;
                        this.rectPosition.bottom = height / 2;
                        return;
                    case 7:
                        this.rectPosition.top = height / 2;
                        this.rectPosition.left = 0;
                        this.rectPosition.right = width / 2;
                        this.rectPosition.bottom = height;
                        return;
                    case 8:
                        this.rectPosition.top = height / 2;
                        this.rectPosition.left = width / 2;
                        this.rectPosition.right = width;
                        this.rectPosition.bottom = height;
                        return;
                    default:
                        return;
                }
            }
        }

        public void setPosition(int i, int i2, int i3, int i4) {
            this.splitMode = 0;
            this.rectPosition.bottom = i4;
            this.rectPosition.top = i2;
            this.rectPosition.left = i;
            this.rectPosition.right = i3;
        }

        public void setPosition(Rect rect) {
            this.splitMode = 0;
            this.rectPosition.bottom = rect.bottom;
            this.rectPosition.top = rect.top;
            this.rectPosition.left = rect.left;
            this.rectPosition.right = rect.right;
        }

        public void getPosition(Rect rect) {
            rect.bottom = this.rectPosition.bottom;
            rect.top = this.rectPosition.top;
            rect.left = this.rectPosition.left;
            rect.right = this.rectPosition.right;
        }

        public void setAnimateSyncFromOverlayItem(boolean z) {
            this.syncAnimationOverlayItem = z;
        }

        public boolean getAnimateSyncFromOverlayItem() {
            return this.syncAnimationOverlayItem;
        }
    }

    private static class a implements Comparator<nexAnimate> {
        private a() {
        }

        /* renamed from: a */
        public int compare(nexAnimate nexanimate, nexAnimate nexanimate2) {
            if (nexanimate.mStartTime > nexanimate2.mStartTime) {
                return -1;
            }
            return nexanimate.mStartTime < nexanimate2.mStartTime ? 1 : 0;
        }
    }

    private boolean updateCoordinates(boolean z) {
        boolean z2 = false;
        if (this.lastAnchorPoint != this.anchorPoint) {
            if (!z) {
                this.lastAnchorPoint = this.anchorPoint;
            }
            z2 = true;
        }
        if (this.lastLayerWidth != nexApplicationConfig.getAspectProfile().getWidth()) {
            if (!z) {
                this.lastLayerWidth = nexApplicationConfig.getAspectProfile().getWidth();
            }
            z2 = true;
        }
        if (this.lastLayerHeight == nexApplicationConfig.getAspectProfile().getHeight()) {
            return z2;
        }
        if (z) {
            return true;
        }
        this.lastLayerHeight = nexApplicationConfig.getAspectProfile().getHeight();
        return true;
    }

    private void getAnchorPosition(boolean z) {
        if (!z) {
            z = updateCoordinates(false);
        }
        if (z) {
            switch (this.anchorPoint) {
                case 0:
                    this.anchorPointX = 0;
                    this.anchorPointY = 0;
                    return;
                case 1:
                    this.anchorPointX = this.lastLayerWidth / 2;
                    this.anchorPointY = 0;
                    return;
                case 2:
                    this.anchorPointX = this.lastLayerWidth;
                    this.anchorPointY = 0;
                    return;
                case 3:
                    this.anchorPointX = 0;
                    this.anchorPointY = this.lastLayerHeight / 2;
                    return;
                case 4:
                    this.anchorPointX = this.lastLayerWidth / 2;
                    this.anchorPointY = this.lastLayerHeight / 2;
                    return;
                case 5:
                    this.anchorPointX = this.lastLayerWidth;
                    this.anchorPointY = this.lastLayerHeight / 2;
                    return;
                case 6:
                    this.anchorPointX = 0;
                    this.anchorPointY = this.lastLayerHeight;
                    return;
                case 7:
                    this.anchorPointX = this.lastLayerWidth / 2;
                    this.anchorPointY = this.lastLayerHeight;
                    return;
                case 8:
                    this.anchorPointX = this.lastLayerWidth;
                    this.anchorPointY = this.lastLayerHeight;
                    return;
                default:
                    return;
            }
        }
    }

    private int[] getRealPositions(boolean z) {
        int[] iArr = new int[3];
        getAnchorPosition(z);
        if (this.relationCoordinates) {
            iArr[0] = this.anchorPointX + ((int) (((float) this.lastLayerWidth) * this.mX));
            iArr[1] = this.anchorPointY + ((int) (((float) this.lastLayerHeight) * this.mY));
            iArr[2] = 0;
        } else {
            iArr[0] = this.anchorPointX + ((int) this.mX);
            iArr[1] = this.anchorPointY + ((int) this.mY);
            iArr[2] = (int) this.mZ;
        }
        return iArr;
    }

    protected static nexOverlayItem clone(nexOverlayItem nexoverlayitem) {
        nexOverlayItem nexoverlayitem2;
        CloneNotSupportedException e;
        try {
            nexoverlayitem2 = (nexOverlayItem) nexoverlayitem.clone();
            try {
                nexoverlayitem2.mColorEffect = nexColorEffect.clone(nexoverlayitem.mColorEffect);
                if (nexoverlayitem.mOverLayImage != null) {
                    nexoverlayitem2.mOverLayImage = nexOverlayImage.clone(nexoverlayitem.mOverLayImage);
                }
            } catch (CloneNotSupportedException e2) {
                e = e2;
                e.printStackTrace();
                return nexoverlayitem2;
            }
        } catch (CloneNotSupportedException e3) {
            CloneNotSupportedException cloneNotSupportedException = e3;
            nexoverlayitem2 = null;
            e = cloneNotSupportedException;
            e.printStackTrace();
            return nexoverlayitem2;
        }
        return nexoverlayitem2;
    }

    @Deprecated
    public void setLayerExpression(nexOverlayKineMasterExpression nexoverlaykinemasterexpression) {
        this.mLayerExpression = nexoverlaykinemasterexpression;
    }

    @Deprecated
    public nexOverlayKineMasterExpression getLayerExpression() {
        return this.mLayerExpression;
    }

    @Deprecated
    public void setLayerExpressionDuration(int i) {
        this.mLayerExpressionDuration = i;
    }

    @Deprecated
    public int getLayerExpressionDuration() {
        return this.mLayerExpressionDuration;
    }

    public void setColorEffect(nexColorEffect nexcoloreffect) {
        this.mColorEffect = nexcoloreffect;
    }

    private int getCombinedBrightness() {
        if (this.mColorEffect == null) {
            return this.mBrightness;
        }
        return this.mBrightness + ((int) (255.0f * this.mColorEffect.getBrightness()));
    }

    private int getCombinedContrast() {
        if (this.mColorEffect == null) {
            return this.mContrast;
        }
        return this.mContrast + ((int) (255.0f * this.mColorEffect.getContrast()));
    }

    private int getCombinedSaturation() {
        if (this.mColorEffect == null) {
            return this.mSaturation;
        }
        return this.mSaturation + ((int) (255.0f * this.mColorEffect.getSaturation()));
    }

    private int getTintColor() {
        if (this.mColorEffect == null) {
            return 0;
        }
        return this.mColorEffect.getTintColor();
    }

    public int getId() {
        return this.mId;
    }

    @Deprecated
    nexOverlayImage getOverlayImage() {
        return this.mOverLayImage;
    }

    public nexOverlayItem(String str, int i, int i2, int i3, int i4) {
        this.mUpdated = true;
        this.showItem = true;
        this.mId = 0;
        this.mAnimateTranslateXpos = 0.0f;
        this.mAnimateTranslateYpos = 0.0f;
        this.mAnimateTranslateZpos = 0.0f;
        this.anchorPoint = 0;
        this.mActiveAnimateList = new HashSet();
        this.mAlpha = 1.0f;
        this.mScaledX = 1.0f;
        this.mScaledY = 1.0f;
        this.mScaledZ = 1.0f;
        this.mRotateDegreeX = 0.0f;
        this.mRotateDegreeY = 0.0f;
        this.mRotateDegreeZ = 0.0f;
        this.mBrightness = 0;
        this.mContrast = 0;
        this.mSaturation = 0;
        this.mColorEffect = nexColorEffect.NONE;
        this.mLayerExpressionDuration = 1000;
        this.mMaskRect = new Rect();
        this.mTrimStartDuration = 0;
        this.mTrimEndDuration = 0;
        this.mAudioOnOff = true;
        this.mVolume = 100;
        this.mSpeedControl = 100;
        this.scratchPoint = new float[]{0.0f, 0.0f};
        this.scratchMatrix = new Matrix();
        this.mLayerExpression = nexOverlayKineMasterExpression.NONE;
        this.mOverlayTitle = false;
        this.bApplayLayerExpression = true;
        this.mZOrder = 0;
        this.mFlipMode = 0;
        nexOverlayPreset overlayPreset = nexOverlayPreset.getOverlayPreset();
        if (overlayPreset == null) {
            throw new nexSDKException("nexOverlayPreset is null");
        }
        this.mOverLayImage = overlayPreset.getOverlayImage(str);
        if (this.mOverLayImage == null) {
            throw new nexSDKException("Not found OverlayImage. id=" + str);
        } else if (i4 <= i3) {
            throw new InvalidRangeException(i3, i4);
        } else {
            this.mId = sLastId;
            sLastId++;
            this.mX = (float) i;
            this.mY = (float) i2;
            this.mStartTime = i3;
            this.mEndTime = i4;
            resetAnimate();
        }
    }

    public nexOverlayItem(String str, int i, boolean z, float f, float f2, int i2, int i3) {
        this.mUpdated = true;
        this.showItem = true;
        this.mId = 0;
        this.mAnimateTranslateXpos = 0.0f;
        this.mAnimateTranslateYpos = 0.0f;
        this.mAnimateTranslateZpos = 0.0f;
        this.anchorPoint = 0;
        this.mActiveAnimateList = new HashSet();
        this.mAlpha = 1.0f;
        this.mScaledX = 1.0f;
        this.mScaledY = 1.0f;
        this.mScaledZ = 1.0f;
        this.mRotateDegreeX = 0.0f;
        this.mRotateDegreeY = 0.0f;
        this.mRotateDegreeZ = 0.0f;
        this.mBrightness = 0;
        this.mContrast = 0;
        this.mSaturation = 0;
        this.mColorEffect = nexColorEffect.NONE;
        this.mLayerExpressionDuration = 1000;
        this.mMaskRect = new Rect();
        this.mTrimStartDuration = 0;
        this.mTrimEndDuration = 0;
        this.mAudioOnOff = true;
        this.mVolume = 100;
        this.mSpeedControl = 100;
        this.scratchPoint = new float[]{0.0f, 0.0f};
        this.scratchMatrix = new Matrix();
        this.mLayerExpression = nexOverlayKineMasterExpression.NONE;
        this.mOverlayTitle = false;
        this.bApplayLayerExpression = true;
        this.mZOrder = 0;
        this.mFlipMode = 0;
        nexOverlayPreset overlayPreset = nexOverlayPreset.getOverlayPreset();
        if (overlayPreset == null) {
            throw new nexSDKException("nexOverlayPreset is null");
        }
        this.mOverLayImage = overlayPreset.getOverlayImage(str);
        if (this.mOverLayImage == null) {
            throw new nexSDKException("Not found OverlayImage. id=" + str);
        } else if (i3 <= i2) {
            throw new InvalidRangeException(i2, i3);
        } else {
            this.mId = sLastId;
            sLastId++;
            this.anchorPoint = i;
            this.relationCoordinates = z;
            this.mX = f;
            this.mY = f2;
            this.mStartTime = i2;
            this.mEndTime = i3;
            resetAnimate();
        }
    }

    public nexOverlayItem(nexOverlayImage nexoverlayimage, int i, int i2, int i3, int i4) {
        this.mUpdated = true;
        this.showItem = true;
        this.mId = 0;
        this.mAnimateTranslateXpos = 0.0f;
        this.mAnimateTranslateYpos = 0.0f;
        this.mAnimateTranslateZpos = 0.0f;
        this.anchorPoint = 0;
        this.mActiveAnimateList = new HashSet();
        this.mAlpha = 1.0f;
        this.mScaledX = 1.0f;
        this.mScaledY = 1.0f;
        this.mScaledZ = 1.0f;
        this.mRotateDegreeX = 0.0f;
        this.mRotateDegreeY = 0.0f;
        this.mRotateDegreeZ = 0.0f;
        this.mBrightness = 0;
        this.mContrast = 0;
        this.mSaturation = 0;
        this.mColorEffect = nexColorEffect.NONE;
        this.mLayerExpressionDuration = 1000;
        this.mMaskRect = new Rect();
        this.mTrimStartDuration = 0;
        this.mTrimEndDuration = 0;
        this.mAudioOnOff = true;
        this.mVolume = 100;
        this.mSpeedControl = 100;
        this.scratchPoint = new float[]{0.0f, 0.0f};
        this.scratchMatrix = new Matrix();
        this.mLayerExpression = nexOverlayKineMasterExpression.NONE;
        this.mOverlayTitle = false;
        this.bApplayLayerExpression = true;
        this.mZOrder = 0;
        this.mFlipMode = 0;
        this.mId = sLastId;
        sLastId++;
        if (i4 <= i3) {
            throw new InvalidRangeException(i3, i4);
        }
        this.mOverLayImage = nexoverlayimage;
        this.mX = (float) i;
        this.mY = (float) i2;
        this.mStartTime = i3;
        this.mEndTime = i4;
        resetAnimate();
    }

    public nexOverlayItem(nexOverlayImage nexoverlayimage, int i, boolean z, float f, float f2, int i2, int i3) {
        this.mUpdated = true;
        this.showItem = true;
        this.mId = 0;
        this.mAnimateTranslateXpos = 0.0f;
        this.mAnimateTranslateYpos = 0.0f;
        this.mAnimateTranslateZpos = 0.0f;
        this.anchorPoint = 0;
        this.mActiveAnimateList = new HashSet();
        this.mAlpha = 1.0f;
        this.mScaledX = 1.0f;
        this.mScaledY = 1.0f;
        this.mScaledZ = 1.0f;
        this.mRotateDegreeX = 0.0f;
        this.mRotateDegreeY = 0.0f;
        this.mRotateDegreeZ = 0.0f;
        this.mBrightness = 0;
        this.mContrast = 0;
        this.mSaturation = 0;
        this.mColorEffect = nexColorEffect.NONE;
        this.mLayerExpressionDuration = 1000;
        this.mMaskRect = new Rect();
        this.mTrimStartDuration = 0;
        this.mTrimEndDuration = 0;
        this.mAudioOnOff = true;
        this.mVolume = 100;
        this.mSpeedControl = 100;
        this.scratchPoint = new float[]{0.0f, 0.0f};
        this.scratchMatrix = new Matrix();
        this.mLayerExpression = nexOverlayKineMasterExpression.NONE;
        this.mOverlayTitle = false;
        this.bApplayLayerExpression = true;
        this.mZOrder = 0;
        this.mFlipMode = 0;
        this.mId = sLastId;
        sLastId++;
        if (i3 <= i2) {
            throw new InvalidRangeException(i2, i3);
        }
        this.mOverLayImage = nexoverlayimage;
        this.anchorPoint = i;
        this.relationCoordinates = z;
        this.mX = f;
        this.mY = f2;
        this.mStartTime = i2;
        this.mEndTime = i3;
        resetAnimate();
    }

    @Deprecated
    public nexOverlayItem(nexOverlayKineMasterText nexoverlaykinemastertext, int i, int i2, int i3, int i4) {
        this.mUpdated = true;
        this.showItem = true;
        this.mId = 0;
        this.mAnimateTranslateXpos = 0.0f;
        this.mAnimateTranslateYpos = 0.0f;
        this.mAnimateTranslateZpos = 0.0f;
        this.anchorPoint = 0;
        this.mActiveAnimateList = new HashSet();
        this.mAlpha = 1.0f;
        this.mScaledX = 1.0f;
        this.mScaledY = 1.0f;
        this.mScaledZ = 1.0f;
        this.mRotateDegreeX = 0.0f;
        this.mRotateDegreeY = 0.0f;
        this.mRotateDegreeZ = 0.0f;
        this.mBrightness = 0;
        this.mContrast = 0;
        this.mSaturation = 0;
        this.mColorEffect = nexColorEffect.NONE;
        this.mLayerExpressionDuration = 1000;
        this.mMaskRect = new Rect();
        this.mTrimStartDuration = 0;
        this.mTrimEndDuration = 0;
        this.mAudioOnOff = true;
        this.mVolume = 100;
        this.mSpeedControl = 100;
        this.scratchPoint = new float[]{0.0f, 0.0f};
        this.scratchMatrix = new Matrix();
        this.mLayerExpression = nexOverlayKineMasterExpression.NONE;
        this.mOverlayTitle = false;
        this.bApplayLayerExpression = true;
        this.mZOrder = 0;
        this.mFlipMode = 0;
        nexoverlaykinemastertext.getClass();
        this.mId = sLastId;
        sLastId++;
        if (i4 <= i3) {
            throw new InvalidRangeException(i3, i4);
        }
        this.mOverLayImage = nexoverlaykinemastertext;
        this.mX = (float) i;
        this.mY = (float) i2;
        this.mStartTime = i3;
        this.mEndTime = i4;
        resetAnimate();
    }

    @Deprecated
    public nexOverlayItem(nexOverlayKineMasterText nexoverlaykinemastertext, int i, boolean z, float f, float f2, int i2, int i3) {
        this.mUpdated = true;
        this.showItem = true;
        this.mId = 0;
        this.mAnimateTranslateXpos = 0.0f;
        this.mAnimateTranslateYpos = 0.0f;
        this.mAnimateTranslateZpos = 0.0f;
        this.anchorPoint = 0;
        this.mActiveAnimateList = new HashSet();
        this.mAlpha = 1.0f;
        this.mScaledX = 1.0f;
        this.mScaledY = 1.0f;
        this.mScaledZ = 1.0f;
        this.mRotateDegreeX = 0.0f;
        this.mRotateDegreeY = 0.0f;
        this.mRotateDegreeZ = 0.0f;
        this.mBrightness = 0;
        this.mContrast = 0;
        this.mSaturation = 0;
        this.mColorEffect = nexColorEffect.NONE;
        this.mLayerExpressionDuration = 1000;
        this.mMaskRect = new Rect();
        this.mTrimStartDuration = 0;
        this.mTrimEndDuration = 0;
        this.mAudioOnOff = true;
        this.mVolume = 100;
        this.mSpeedControl = 100;
        this.scratchPoint = new float[]{0.0f, 0.0f};
        this.scratchMatrix = new Matrix();
        this.mLayerExpression = nexOverlayKineMasterExpression.NONE;
        this.mOverlayTitle = false;
        this.bApplayLayerExpression = true;
        this.mZOrder = 0;
        this.mFlipMode = 0;
        nexoverlaykinemastertext.getClass();
        this.mId = sLastId;
        sLastId++;
        if (i3 <= i2) {
            throw new InvalidRangeException(i2, i3);
        }
        this.mOverLayImage = nexoverlaykinemastertext;
        this.anchorPoint = i;
        this.relationCoordinates = z;
        this.mX = f;
        this.mY = f2;
        this.mStartTime = i2;
        this.mEndTime = i3;
        resetAnimate();
    }

    public nexOverlayItem(nexOverlayFilter nexoverlayfilter, int i, int i2, int i3, int i4) {
        this.mUpdated = true;
        this.showItem = true;
        this.mId = 0;
        this.mAnimateTranslateXpos = 0.0f;
        this.mAnimateTranslateYpos = 0.0f;
        this.mAnimateTranslateZpos = 0.0f;
        this.anchorPoint = 0;
        this.mActiveAnimateList = new HashSet();
        this.mAlpha = 1.0f;
        this.mScaledX = 1.0f;
        this.mScaledY = 1.0f;
        this.mScaledZ = 1.0f;
        this.mRotateDegreeX = 0.0f;
        this.mRotateDegreeY = 0.0f;
        this.mRotateDegreeZ = 0.0f;
        this.mBrightness = 0;
        this.mContrast = 0;
        this.mSaturation = 0;
        this.mColorEffect = nexColorEffect.NONE;
        this.mLayerExpressionDuration = 1000;
        this.mMaskRect = new Rect();
        this.mTrimStartDuration = 0;
        this.mTrimEndDuration = 0;
        this.mAudioOnOff = true;
        this.mVolume = 100;
        this.mSpeedControl = 100;
        this.scratchPoint = new float[]{0.0f, 0.0f};
        this.scratchMatrix = new Matrix();
        this.mLayerExpression = nexOverlayKineMasterExpression.NONE;
        this.mOverlayTitle = false;
        this.bApplayLayerExpression = true;
        this.mZOrder = 0;
        this.mFlipMode = 0;
        this.mOverLayFilter = nexoverlayfilter;
        if (i4 <= i3) {
            throw new InvalidRangeException(i3, i4);
        }
        this.mId = sLastId;
        sLastId++;
        this.mX = (float) i;
        this.mY = (float) i2;
        this.mStartTime = i3;
        this.mEndTime = i4;
        resetAnimate();
    }

    public nexOverlayItem(nexOverlayFilter nexoverlayfilter, int i, boolean z, float f, float f2, int i2, int i3) {
        this.mUpdated = true;
        this.showItem = true;
        this.mId = 0;
        this.mAnimateTranslateXpos = 0.0f;
        this.mAnimateTranslateYpos = 0.0f;
        this.mAnimateTranslateZpos = 0.0f;
        this.anchorPoint = 0;
        this.mActiveAnimateList = new HashSet();
        this.mAlpha = 1.0f;
        this.mScaledX = 1.0f;
        this.mScaledY = 1.0f;
        this.mScaledZ = 1.0f;
        this.mRotateDegreeX = 0.0f;
        this.mRotateDegreeY = 0.0f;
        this.mRotateDegreeZ = 0.0f;
        this.mBrightness = 0;
        this.mContrast = 0;
        this.mSaturation = 0;
        this.mColorEffect = nexColorEffect.NONE;
        this.mLayerExpressionDuration = 1000;
        this.mMaskRect = new Rect();
        this.mTrimStartDuration = 0;
        this.mTrimEndDuration = 0;
        this.mAudioOnOff = true;
        this.mVolume = 100;
        this.mSpeedControl = 100;
        this.scratchPoint = new float[]{0.0f, 0.0f};
        this.scratchMatrix = new Matrix();
        this.mLayerExpression = nexOverlayKineMasterExpression.NONE;
        this.mOverlayTitle = false;
        this.bApplayLayerExpression = true;
        this.mZOrder = 0;
        this.mFlipMode = 0;
        this.mOverLayFilter = nexoverlayfilter;
        if (i3 <= i2) {
            throw new InvalidRangeException(i2, i3);
        }
        this.mId = sLastId;
        sLastId++;
        this.anchorPoint = i;
        this.relationCoordinates = z;
        this.mX = f;
        this.mY = f2;
        this.mStartTime = i2;
        this.mEndTime = i3;
        resetAnimate();
    }

    public boolean getAudioOnOff() {
        return this.mAudioOnOff;
    }

    public void setAudioOnOff(boolean z) {
        if (isVideo()) {
            if (this.mAudioOnOff != z) {
                this.mUpdated = true;
            }
            this.mAudioOnOff = z;
            return;
        }
        throw new ClipIsNotVideoException();
    }

    public int getVolume() {
        return this.mVolume;
    }

    public void setVolume(int i) {
        if (isVideo()) {
            if (this.mVolume != i) {
                this.mUpdated = true;
            }
            this.mVolume = i;
            return;
        }
        throw new ClipIsNotVideoException();
    }

    public void setSpeedControl(int i) {
        if (isVideo()) {
            int speedControlTab = speedControlTab(i);
            if (this.mSpeedControl != speedControlTab) {
                this.mUpdated = true;
                this.mSpeedControl = speedControlTab;
                return;
            }
            return;
        }
        throw new ClipIsNotVideoException();
    }

    public int getSpeedControl() {
        return this.mSpeedControl;
    }

    private int speedControlTab(int i) {
        int[] iArr = new int[]{13, 25, 50, 75, 100, BaiduSceneResult.TRAVEL_OTHER, 150, 175, 200, 400};
        for (int i2 = 0; i2 < iArr.length; i2++) {
            if (iArr[i2] >= i) {
                return iArr[i2];
            }
        }
        return 400;
    }

    void resetAnimate() {
        this.mAnimateTranslateXpos = 0.0f;
        this.mAnimateTranslateYpos = 0.0f;
        this.mAnimateTranslateZpos = 0.0f;
        this.mAnimateLastAlpha = this.mAlpha;
        this.mAnimateLastRotateDegreeX = this.mRotateDegreeX;
        this.mAnimateLastRotateDegreeY = this.mRotateDegreeY;
        this.mAnimateLastRotateDegreeZ = this.mRotateDegreeZ;
        this.mAnimateLastScaledX = this.mScaledX;
        this.mAnimateLastScaledY = this.mScaledY;
        this.mAnimateLastScaledZ = this.mScaledZ;
        this.mActiveAnimateList.clear();
    }

    public int getPositionX() {
        return getRealPositions(false)[0];
    }

    public int getPositionY() {
        return getRealPositions(false)[1];
    }

    public void setPosition(int i, int i2) {
        updateCoordinates(false);
        if (this.relationCoordinates) {
            this.mX = ((float) (i - this.anchorPointX)) / ((float) this.lastLayerWidth);
            this.mY = ((float) (i2 - this.anchorPointY)) / ((float) this.lastLayerHeight);
        } else {
            this.mX = (float) (i - this.anchorPointX);
            this.mY = (float) (i2 - this.anchorPointY);
        }
        this.mUpdated = true;
        resetAnimate();
    }

    public void movePosition(float f, float f2) {
        this.mX = f;
        this.mY = f2;
        this.mUpdated = true;
        resetAnimate();
    }

    public void setAnchor(int i) {
        this.anchorPoint = i;
        this.mUpdated = true;
        resetAnimate();
    }

    public int getAnchor() {
        return this.anchorPoint;
    }

    public void setRelationCoordinates(boolean z) {
        if (this.relationCoordinates != z) {
            this.mUpdated = true;
        }
        this.relationCoordinates = z;
    }

    public boolean getRelationCoordinates() {
        return this.relationCoordinates;
    }

    public float getAlpha() {
        return this.mAlpha;
    }

    public void setAlpha(float f) {
        if (this.mAlpha != f) {
            this.mUpdated = true;
        }
        this.mAlpha = f;
        resetAnimate();
    }

    public float getScaledX() {
        return this.mScaledX;
    }

    public float getScaledY() {
        return this.mScaledY;
    }

    public float getScaledZ() {
        return this.mScaledZ;
    }

    public void setScale(float f, float f2) {
        setScale(f, f2, 1.0f);
    }

    public void setScale(float f, float f2, float f3) {
        this.mScaledX = f;
        this.mScaledY = f2;
        this.mScaledZ = f3;
        this.mUpdated = true;
        resetAnimate();
    }

    public int getRotate() {
        return getRotateZ();
    }

    public int getRotateX() {
        return (int) this.mRotateDegreeX;
    }

    public int getRotateY() {
        return (int) this.mRotateDegreeY;
    }

    public int getRotateZ() {
        return (int) this.mRotateDegreeZ;
    }

    public void setTrim(int i, int i2) {
        if (!isVideo()) {
            throw new ClipIsNotVideoException();
        } else if (i2 <= i) {
            throw new InvalidRangeException(i, i2);
        } else {
            this.mTrimStartDuration = i;
            this.mTrimEndDuration = this.mOverLayImage.getVideoClipInfo().getTotalTime() - i2;
            this.mUpdated = true;
            if (this.mTrimEndDuration < 0 || this.mTrimStartDuration < 0) {
                throw new InvalidRangeException(this.mTrimStartDuration, this.mTrimEndDuration);
            }
        }
    }

    public void clearTrim() {
        if (isVideo()) {
            this.mTrimStartDuration = 0;
            this.mTrimEndDuration = 0;
            return;
        }
        throw new ClipIsNotVideoException();
    }

    public int getStartTrimTime() {
        return this.mTrimStartDuration;
    }

    public int getEndTrimTime() {
        return this.mTrimEndDuration;
    }

    public void setRotate(int i) {
        setRotate(0, 0, i);
    }

    public void setRotate(int i, int i2, int i3) {
        this.mRotateDegreeX = (float) i;
        this.mRotateDegreeY = (float) i2;
        this.mRotateDegreeZ = (float) i3;
        this.mUpdated = true;
        resetAnimate();
    }

    public void setRotate(float f) {
        setRotate(0.0f, 0.0f, f);
    }

    public void setRotate(float f, float f2, float f3) {
        this.mRotateDegreeX = f;
        this.mRotateDegreeY = f2;
        this.mRotateDegreeZ = f3;
        this.mUpdated = true;
        resetAnimate();
    }

    public int getBrightness() {
        return this.mBrightness;
    }

    public int getContrast() {
        return this.mContrast;
    }

    public int getSaturation() {
        return this.mSaturation;
    }

    public boolean setBrightness(int i) {
        if (i < -255 || i > 255) {
            return false;
        }
        if (this.mBrightness != i) {
            this.mUpdated = true;
        }
        this.mBrightness = i;
        return true;
    }

    public boolean setContrast(int i) {
        if (i < -255 || i > 255) {
            return false;
        }
        if (this.mContrast != i) {
            this.mUpdated = true;
        }
        this.mContrast = i;
        return true;
    }

    public boolean setSaturation(int i) {
        if (i < -255 || i > 255) {
            return false;
        }
        if (this.mSaturation != i) {
            this.mUpdated = true;
        }
        this.mSaturation = i;
        return true;
    }

    void setTime(int i) {
        if (this.mTime > i) {
            resetAnimate();
        }
        this.mTime = i;
    }

    @Deprecated
    public void setLayerExpressionParam(boolean z) {
        if (this.bApplayLayerExpression != z) {
            this.mUpdated = true;
        }
        this.bApplayLayerExpression = z;
    }

    @Deprecated
    public boolean getLayerExpressiontParam() {
        return this.bApplayLayerExpression;
    }

    private void runAnimate(nexAnimate nexanimate, int i) {
        if (nexanimate instanceof AnimateImages) {
            this.animateResourceId = nexanimate.getImageResourceId(i);
            Log.d(TAG, "[" + getId() + "][" + i + "]AnimateImages=(" + this.animateResourceId + ")");
        } else if (nexanimate instanceof Move) {
            if (this.mLayerExpression.getID() == 0) {
                this.mAnimateTranslateXpos = nexanimate.getTranslatePosition(i, 1);
                this.mAnimateTranslateYpos = nexanimate.getTranslatePosition(i, 2);
                this.mAnimateTranslateZpos = nexanimate.getTranslatePosition(i, 3);
                Log.d(TAG, "[" + getId() + "][" + i + "]Move to=(" + this.mAnimateTranslateXpos + "," + this.mAnimateTranslateYpos + "," + this.mAnimateTranslateZpos + ")");
            }
        } else if (nexanimate instanceof Alpha) {
            if (this.mLayerExpression.getID() == 0) {
                this.mAnimateLastAlpha = nexanimate.getAlpha(i);
                Log.d(TAG, "[" + getId() + "][" + i + "]Alpha =(" + this.mAnimateLastAlpha + ")");
            }
        } else if (nexanimate instanceof Rotate) {
            if (this.mLayerExpression.getID() == 0) {
                this.mAnimateLastRotateDegreeX = nexanimate.getAngleDegree(i, this.mRotateDegreeX, 1);
                this.mAnimateLastRotateDegreeY = nexanimate.getAngleDegree(i, this.mRotateDegreeY, 2);
                this.mAnimateLastRotateDegreeZ = nexanimate.getAngleDegree(i, this.mRotateDegreeZ, 3);
                Log.d(TAG, "[" + getId() + "][" + i + "]Rotate =(" + this.mAnimateLastRotateDegreeX + "," + this.mAnimateLastRotateDegreeY + "," + this.mAnimateLastRotateDegreeZ + ")");
            }
        } else if (nexanimate instanceof Scale) {
            if (this.mLayerExpression.getID() == 0) {
                this.mAnimateLastScaledX = nexanimate.getScaledRatio(i, this.mScaledX, 1);
                this.mAnimateLastScaledY = nexanimate.getScaledRatio(i, this.mScaledY, 2);
                this.mAnimateLastScaledZ = nexanimate.getScaledRatio(i, this.mScaledY, 3);
                Log.d(TAG, "[" + getId() + "][" + i + "]Scale =(" + this.mAnimateLastScaledX + "," + this.mAnimateLastScaledY + "," + this.mAnimateLastScaledZ + ")");
            }
        } else if (this.mLayerExpression.getID() == 0 && nexanimate.onFreeTypeAnimate(i, this)) {
            this.mAnimateTranslateXpos = (float) nexanimate.mdX;
            this.mAnimateTranslateYpos = (float) nexanimate.mdY;
            this.mAnimateTranslateZpos = (float) nexanimate.mdZ;
            this.mAnimateLastAlpha = nexanimate.mAlpha;
            this.mAnimateLastRotateDegreeX = nexanimate.mRotateDegreeX;
            this.mAnimateLastRotateDegreeY = nexanimate.mRotateDegreeY;
            this.mAnimateLastRotateDegreeZ = nexanimate.mRotateDegreeZ;
            this.mAnimateLastScaledX = nexanimate.mScaledX;
            this.mAnimateLastScaledY = nexanimate.mScaledY;
            this.mAnimateLastScaledZ = nexanimate.mScaledZ;
            Log.d(TAG, "[" + getId() + "][" + i + "]FreeType =(" + this.mAnimateTranslateXpos + "," + this.mAnimateTranslateYpos + "," + this.mAnimateTranslateZpos + ")");
        }
    }

    private float getRelativeScale(int i, int i2) {
        float f;
        float f2 = 1.0f;
        int width = nexApplicationConfig.getAspectProfile().getWidth();
        int height = nexApplicationConfig.getAspectProfile().getHeight();
        if (width > i) {
            f = ((float) i) / ((float) width);
        } else {
            f = 1.0f;
        }
        if (height > height) {
            f2 = ((float) height) / ((float) height);
        }
        return f2 > f ? f : f2;
    }

    void renderOverlay(LayerRenderer layerRenderer, Context context) {
        if (this.showItem) {
            float relativeScale;
            int i;
            this.lastLayerWidth = (int) layerRenderer.a();
            this.lastLayerHeight = (int) layerRenderer.b();
            if (this.relationCoordinates) {
                relativeScale = getRelativeScale(this.lastLayerWidth, this.lastLayerHeight);
            } else {
                relativeScale = 1.0f;
            }
            setTime(layerRenderer.g());
            int[] realPositions = getRealPositions(true);
            int i2 = realPositions[0];
            int i3 = realPositions[1];
            int i4 = realPositions[2];
            this.animateResourceId = 0;
            if (this.mAniList != null) {
                for (nexAnimate nexanimate : this.mAniList) {
                    i = this.mTime - this.mStartTime;
                    boolean contains = this.mActiveAnimateList.contains(nexanimate);
                    if (nexanimate.mStartTime > i || nexanimate.getEndTime() <= i) {
                        if (contains) {
                            this.mActiveAnimateList.remove(nexanimate);
                            runAnimate(nexanimate, nexanimate.getEndTime());
                        }
                    } else if (contains) {
                        runAnimate(nexanimate, i);
                    } else {
                        this.mActiveAnimateList.add(nexanimate);
                        if (i - nexanimate.mStartTime < 33) {
                            runAnimate(nexanimate, 0);
                        } else {
                            runAnimate(nexanimate, i);
                        }
                    }
                }
            }
            layerRenderer.i();
            if (!(this.mMask == null || !this.mMask.onOff || this.mMask.syncAnimationOverlayItem)) {
                layerRenderer.h();
                layerRenderer.a(RenderTarget.Mask);
                this.mMask.getPosition(this.mMaskRect);
                if (this.mMask.getMaskImage() != null) {
                    layerRenderer.a(this.mMask.getMaskImage(), (float) this.mMaskRect.left, (float) this.mMaskRect.top, (float) this.mMaskRect.right, (float) this.mMaskRect.bottom);
                } else {
                    layerRenderer.a(-1, (float) this.mMaskRect.left, (float) this.mMaskRect.top, (float) this.mMaskRect.right, (float) this.mMaskRect.bottom);
                }
                layerRenderer.a(true);
                layerRenderer.a(RenderTarget.Normal);
            }
            layerRenderer.a((float) i2, (float) i3);
            layerRenderer.a(this.mAnimateTranslateXpos, this.mAnimateTranslateYpos);
            layerRenderer.b(this.mAnimateLastScaledX * relativeScale, this.mAnimateLastScaledY * relativeScale);
            layerRenderer.a(this.mAnimateLastRotateDegreeX, 1.0f, 0.0f, 0.0f);
            layerRenderer.a(this.mAnimateLastRotateDegreeY, 0.0f, 1.0f, 0.0f);
            layerRenderer.a(this.mAnimateLastRotateDegreeZ, 0.0f, 0.0f, 1.0f);
            if (this.showOutLien) {
                layerRenderer.a(1.0f);
            } else {
                layerRenderer.a(this.mAnimateLastAlpha);
            }
            if (this.mMask != null && this.mMask.onOff && this.mMask.syncAnimationOverlayItem) {
                layerRenderer.h();
                layerRenderer.a(RenderTarget.Mask);
                this.mMask.getPosition(this.mMaskRect);
                if (this.mMask.getMaskImage() != null) {
                    layerRenderer.a(this.mMask.getMaskImage(), (float) this.mMaskRect.left, (float) this.mMaskRect.top, (float) this.mMaskRect.right, (float) this.mMaskRect.bottom);
                } else {
                    layerRenderer.a(-1, (float) this.mMaskRect.left, (float) this.mMaskRect.top, (float) this.mMaskRect.right, (float) this.mMaskRect.bottom);
                }
                layerRenderer.a(true);
                layerRenderer.a(RenderTarget.Normal);
            }
            if (this.awakeAsset != null) {
                this.awakeAsset.onRender(layerRenderer, this.cacheMotion, this.mStartTime, this.mEndTime);
            } else if (this.mOverLayImage != null) {
                if (this.mOverLayImage.isVideo()) {
                    if (getChromaKey().getChromaKeyEnabled()) {
                        layerRenderer.b(getChromaKey().getChromaKeyEnabled());
                        layerRenderer.c(getChromaKey().getChromaKeyMaskEnabled());
                        layerRenderer.a(getChromaKey().m_chromaKeyColor, getChromaKey().m_chromaKeyClipFG, getChromaKey().m_chromaKeyClipBG, getChromaKey().m_chromaKeyBlend_x0, getChromaKey().m_chromaKeyBlend_y0, getChromaKey().m_chromaKeyBlend_x1, getChromaKey().m_chromaKeyBlend_y1);
                    }
                    int b = EditorGlobal.a().b(layerRenderer.o().id, this.mVideoEngineId);
                    layerRenderer.a(com.nexstreaming.app.common.thememath.a.a(((float) getCombinedBrightness()) / 255.0f, ((float) getCombinedContrast()) / 255.0f, ((float) getCombinedSaturation()) / 255.0f, getTintColor()));
                    layerRenderer.a(b, 0.0f, 0.0f, (float) this.mOverLayImage.getVideoClipInfo().getWidth(), (float) this.mOverLayImage.getVideoClipInfo().getHeight(), this.mFlipMode);
                    layerRenderer.b(false);
                    layerRenderer.a(null);
                } else {
                    Bitmap bitmap;
                    b a = b.a();
                    int i5 = this.animateResourceId;
                    if (i5 == 0) {
                        i = this.mOverLayImage.mResourceId;
                    } else {
                        i = i5;
                    }
                    Object userBitmapID;
                    if (i == 0) {
                        userBitmapID = this.mOverLayImage.getUserBitmapID();
                        if (this.mOverLayImage.mUpdate) {
                            this.mOverLayImage.mUpdate = false;
                            bitmap = null;
                            a.b(userBitmapID);
                        } else {
                            bitmap = a.a(userBitmapID);
                        }
                        if (bitmap == null) {
                            bitmap = this.mOverLayImage.getUserBitmap();
                            if (bitmap != null) {
                                try {
                                    a.a(userBitmapID, bitmap);
                                } catch (NullPointerException e) {
                                    Log.d(TAG, "exception: message=" + e.getMessage());
                                }
                            }
                        }
                    } else {
                        userBitmapID = this.mOverLayImage.getUserBitmapID() + i;
                        bitmap = a.a(userBitmapID);
                        if (bitmap == null) {
                            bitmap = BitmapFactory.decodeResource(context.getResources(), i);
                            if (bitmap != null) {
                                try {
                                    a.a(userBitmapID, bitmap);
                                } catch (NullPointerException e2) {
                                    Log.d(TAG, "exception: message=" + e2.getMessage());
                                }
                            }
                        }
                    }
                    if (bitmap != null) {
                        Log.d(TAG, "renderOverlay bitmap id = " + userBitmapID + ", wid = " + bitmap.getWidth() + ", hei = " + bitmap.getHeight() + ", X=" + i2 + ", Y=" + i3 + ", Z=" + i4 + ", ScaledX=" + this.mAnimateLastScaledX + ", Alpha=" + this.mAnimateLastAlpha + ", Rx=" + this.mAnimateLastRotateDegreeX + ", Ry=" + this.mAnimateLastRotateDegreeY + ", Rz=" + this.mAnimateLastRotateDegreeZ + ", flip=" + this.mFlipMode + ", baseScale=" + relativeScale + ", cts=" + layerRenderer.g());
                        layerRenderer.a(com.nexstreaming.app.common.thememath.a.a(((float) getCombinedBrightness()) / 255.0f, ((float) getCombinedContrast()) / 255.0f, ((float) getCombinedSaturation()) / 255.0f, getTintColor()));
                        if (this.mOverLayImage != null) {
                            Rect drawBitmapPosition = getDrawBitmapPosition(this.mOverLayImage.getAnchorPoint(), bitmap.getWidth(), bitmap.getHeight());
                            layerRenderer.a(bitmap, (float) drawBitmapPosition.left, (float) drawBitmapPosition.top, (float) drawBitmapPosition.right, (float) drawBitmapPosition.bottom, this.mFlipMode);
                        } else {
                            layerRenderer.b(bitmap, this.mFlipMode);
                        }
                    }
                }
            }
            layerRenderer.j();
            if (this.showOutLien) {
                renderOutLine(this, layerRenderer);
            }
        }
    }

    private static Rect getDrawBitmapPosition(int i, int i2, int i3) {
        Rect rect = new Rect((-i2) / 2, (-i3) / 2, i2 / 2, i3 / 2);
        switch (i) {
            case 0:
                rect.set(0, 0, i2, i3);
                break;
            case 1:
                rect.set((-i2) / 2, 0, i2 / 2, i3);
                break;
            case 2:
                rect.set(-i2, 0, 0, i3);
                break;
            case 3:
                rect.set(0, (-i3) / 2, i2, i3 / 2);
                break;
            case 5:
                rect.set(-i2, (-i3) / 2, 0, i3 / 2);
                break;
            case 6:
                rect.set(0, -i3, i2, 0);
                break;
            case 7:
                rect.set((-i2) / 2, -i3, i2 / 2, 0);
                break;
            case 8:
                rect.set(-i2, -i3, 0, 0);
                break;
        }
        return rect;
    }

    public int getStartTime() {
        return this.mStartTime;
    }

    public int getEndTime() {
        return this.mEndTime;
    }

    public void setTimePosition(int i, int i2) {
        if (i2 <= i) {
            throw new InvalidRangeException(i, i2);
        }
        this.mUpdated = true;
        this.mStartTime = i;
        this.mEndTime = i2;
    }

    public int getAnimateEndTime() {
        int i = 0;
        if (this.mAniList == null) {
            return 0;
        }
        Iterator it = this.mAniList.iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                return i2;
            }
            nexAnimate nexanimate = (nexAnimate) it.next();
            if (i2 < nexanimate.getEndTime()) {
                i = nexanimate.getEndTime();
            } else {
                i = i2;
            }
        }
    }

    public void addAnimate(nexAnimate nexanimate) {
        if (this.mAniList == null) {
            this.mAniList = new ArrayList();
        }
        this.mAniList.add(nexanimate);
        this.mUpdated = true;
        Collections.sort(this.mAniList, new a());
    }

    public void clearAnimate() {
        if (this.mAniList != null) {
            this.mAniList.clear();
            this.mUpdated = true;
            resetAnimate();
        }
    }

    @Deprecated
    public void clearCache() {
    }

    boolean isVideo() {
        if (this.mOverLayImage == null) {
            return false;
        }
        return this.mOverLayImage.isVideo();
    }

    void setOverlayTitle(boolean z) {
        this.mOverlayTitle = z;
    }

    boolean getOverlayTitle() {
        return this.mOverlayTitle;
    }

    public ChromaKey getChromaKey() {
        if (this.mChromaKey == null) {
            this.mChromaKey = new ChromaKey();
        }
        return this.mChromaKey;
    }

    public Mask getMask() {
        if (this.mMask == null) {
            this.mMask = new Mask();
        }
        return this.mMask;
    }

    public BoundInfo getBoundInfo(int i) {
        return new BoundInfo(i);
    }

    public boolean isPointInOverlayItem(HitPoint hitPoint) {
        float[] fArr = this.scratchPoint;
        Matrix matrix = this.scratchMatrix;
        BoundInfo boundInfo = getBoundInfo(hitPoint.mTime);
        matrix.reset();
        matrix.postScale(((float) nexApplicationConfig.getAspectProfile().getWidth()) / hitPoint.mViewWidth, ((float) nexApplicationConfig.getAspectProfile().getHeight()) / hitPoint.mViewHeight);
        matrix.postTranslate(-boundInfo.x, -boundInfo.y);
        matrix.postScale(1.0f / boundInfo.scaleX, 1.0f / boundInfo.scaleY);
        matrix.postRotate(-boundInfo.angleZ, 0.0f, 0.0f);
        fArr[0] = hitPoint.mViewX;
        fArr[1] = hitPoint.mViewY;
        matrix.mapPoints(fArr);
        float f = fArr[0];
        float f2 = fArr[1];
        Rect rect = new Rect();
        boundInfo.getDrawBound(rect);
        float access$1900 = ((float) rect.left) * boundInfo.scaleX;
        float access$19002 = ((float) rect.right) * boundInfo.scaleX;
        float access$2000 = ((float) rect.top) * boundInfo.scaleY;
        float access$20002 = boundInfo.scaleY * ((float) rect.bottom);
        Log.d(TAG, "new pos(" + f + "," + f2 + ") , Rect(" + access$1900 + "," + access$2000 + "," + access$19002 + "," + access$20002 + ") , handleRadius=" + 36.0f);
        if (f >= access$1900 - 36.0f && f <= access$1900 + 36.0f && f2 >= access$2000 - 36.0f && f2 <= access$2000 + 36.0f) {
            hitPoint.position = 1;
        } else if (f >= access$19002 - 36.0f && f <= access$19002 + 36.0f && f2 >= access$2000 - 36.0f && f2 <= access$2000 + 36.0f) {
            hitPoint.position = 2;
        } else if (f >= access$1900 - 36.0f && f <= access$1900 + 36.0f && f2 >= access$20002 - 36.0f && f2 <= access$20002 + 36.0f) {
            hitPoint.position = 3;
        } else if (f >= access$19002 - 36.0f && f <= access$19002 + 36.0f && f2 >= access$20002 - 36.0f && f2 <= 36.0f + access$20002) {
            hitPoint.position = 4;
        } else if (f < access$1900 || f > access$19002 || f2 < access$2000 || f2 > access$20002) {
            hitPoint.id = 0;
            hitPoint.position = 0;
            return false;
        } else {
            hitPoint.position = 0;
        }
        hitPoint.id = getId();
        return true;
    }

    public void showOutline(boolean z) {
        this.showOutLien = z;
    }

    public static void setOutLine() {
        solidOutlen = false;
        solidBlackBitmap = Bitmap.createBitmap(16, 16, Config.ARGB_8888);
        new Canvas(solidBlackBitmap).drawColor(-16777216);
        solidWhiteBitmap = Bitmap.createBitmap(16, 16, Config.ARGB_8888);
        new Canvas(solidWhiteBitmap).drawColor(-1);
        outLineIcon = new Bitmap[4];
    }

    public static void setOutlineType(boolean z) {
        solidOutlen = z;
    }

    public static void clearOutLine() {
        solidBlackBitmap = null;
        solidWhiteBitmap = null;
        outLineIcon = null;
    }

    public static boolean setOutLineIcon(Context context, int i, int i2) {
        if (outLineIcon == null || i <= 0 || i > 4) {
            return false;
        }
        if (i2 == 0) {
            outLineIcon[i - 1] = null;
        } else {
            outLineIcon[i - 1] = BitmapFactory.decodeResource(context.getResources(), i2);
        }
        return true;
    }

    private static void renderOutLine(nexOverlayItem nexoverlayitem, LayerRenderer layerRenderer) {
        if (solidBlackBitmap != null && solidWhiteBitmap != null) {
            float f;
            BoundInfo boundInfo = nexoverlayitem.getBoundInfo(nexoverlayitem.mTime);
            layerRenderer.i();
            layerRenderer.a(boundInfo.x, boundInfo.y);
            layerRenderer.b(boundInfo.scaleX, boundInfo.scaleY);
            layerRenderer.a(boundInfo.angleZ, 0.0f, 0.0f, 1.0f);
            layerRenderer.i();
            layerRenderer.b(1.0f / boundInfo.scaleX, 1.0f / boundInfo.scaleY);
            Rect rect = new Rect();
            boundInfo.getDrawBound(rect);
            float access$1900 = boundInfo.scaleX * ((float) rect.left);
            float access$19002 = ((float) rect.right) * boundInfo.scaleX;
            float access$2000 = boundInfo.scaleY * ((float) rect.top);
            float access$20002 = ((float) rect.bottom) * boundInfo.scaleY;
            float f2 = ((access$20002 - access$2000) / 2.0f) + access$2000;
            if (solidOutlen) {
                layerRenderer.a(solidWhiteBitmap, access$1900, access$2000, access$1900 + ((float) marchingAnts_width), access$20002);
                layerRenderer.a(solidWhiteBitmap, access$19002 - ((float) marchingAnts_width), access$2000, access$19002, access$20002);
                layerRenderer.a(solidWhiteBitmap, access$1900, access$2000, access$19002, access$2000 + ((float) marchingAnts_width));
                layerRenderer.a(solidWhiteBitmap, access$1900, access$20002 - ((float) marchingAnts_width), access$19002, access$20002);
            } else {
                layerRenderer.a(solidBlackBitmap, access$1900, access$2000, access$1900 + ((float) marchingAnts_width), access$20002);
                layerRenderer.a(solidBlackBitmap, access$19002 - ((float) marchingAnts_width), access$2000, access$19002, access$20002);
                layerRenderer.a(solidBlackBitmap, access$1900, access$2000, access$19002, access$2000 + ((float) marchingAnts_width));
                layerRenderer.a(solidBlackBitmap, access$1900, access$20002 - ((float) marchingAnts_width), access$19002, access$20002);
                f = 2.0f * ((float) marchingAnts_dashSize);
                for (f2 = access$1900 - ((float) (marchingAnts_dashSize * 2)); f2 < access$19002; f2 += (float) (marchingAnts_dashSize * 2)) {
                    float max = Math.max(access$1900, f2 + f);
                    float min = Math.min(access$19002, ((float) marchingAnts_dashSize) + max);
                    if (min >= access$1900 && max <= access$19002) {
                        layerRenderer.a(solidWhiteBitmap, max, access$2000, min, access$2000 + ((float) marchingAnts_width));
                        layerRenderer.a(solidWhiteBitmap, max, access$20002 - ((float) marchingAnts_width), min, access$20002);
                    }
                }
                for (f2 = access$2000 - ((float) (marchingAnts_dashSize * 2)); f2 < access$20002; f2 += (float) (marchingAnts_dashSize * 2)) {
                    float max2 = Math.max(access$2000, f2 + f);
                    float min2 = Math.min(access$20002, ((float) marchingAnts_dashSize) + max2);
                    if (min2 >= access$2000 && max2 <= access$20002) {
                        layerRenderer.a(solidWhiteBitmap, access$1900, max2, access$1900 + ((float) marchingAnts_width), min2);
                        layerRenderer.a(solidWhiteBitmap, access$19002 - ((float) marchingAnts_width), max2, access$19002, min2);
                    }
                }
            }
            layerRenderer.j();
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < 4) {
                    if (outLineIcon[i2] != null) {
                        f = 0.0f;
                        f2 = 0.0f;
                        switch (i2 + 1) {
                            case 1:
                                f2 = access$2000;
                                f = access$1900;
                                break;
                            case 2:
                                f2 = access$2000;
                                f = access$19002;
                                break;
                            case 3:
                                f2 = access$20002;
                                f = access$1900;
                                break;
                            case 4:
                                f2 = access$20002;
                                f = access$19002;
                                break;
                        }
                        layerRenderer.i();
                        layerRenderer.b(1.0f / boundInfo.scaleX, 1.0f / boundInfo.scaleY);
                        layerRenderer.a(outLineIcon[i2], f, f2);
                        layerRenderer.j();
                    }
                    i = i2 + 1;
                } else {
                    layerRenderer.j();
                    return;
                }
            }
        }
    }

    public int getZOrder() {
        return this.mZOrder;
    }

    public void setZOrder(int i) {
        if (this.mZOrder != i) {
            this.mUpdated = true;
        }
        this.mZOrder = i;
    }

    void onRenderAwake(LayerRenderer layerRenderer) {
        OverlayAsset overlayAssetFilter;
        Rect rect;
        if (this.mOverLayFilter != null) {
            try {
                overlayAssetFilter = this.mOverLayFilter.getOverlayAssetFilter();
                rect = new Rect();
                this.mOverLayFilter.getBound(rect);
                this.awakeAsset = overlayAssetFilter.onAwake(layerRenderer, new RectF(rect), this.mOverLayFilter.getEncodedEffectOptions(), null);
            } catch (IOException e) {
                e.printStackTrace();
            } catch (XmlPullParserException e2) {
                e2.printStackTrace();
            }
        } else if (this.mOverLayImage != null && this.mOverLayImage.isAssetManager()) {
            try {
                overlayAssetFilter = this.mOverLayImage.getOverlayAssetBitmap();
                rect = new Rect();
                this.mOverLayImage.getBound(rect);
                this.awakeAsset = overlayAssetFilter.onAwake(layerRenderer, new RectF(rect), null, null);
            } catch (IOException e3) {
                e3.printStackTrace();
            } catch (XmlPullParserException e22) {
                e22.printStackTrace();
            }
        }
    }

    void onRenderAsleep(LayerRenderer layerRenderer) {
        renderOverlay(layerRenderer, com.nexstreaming.kminternal.kinemaster.config.a.a().b());
        if (this.awakeAsset != null) {
            this.awakeAsset.onAsleep(layerRenderer);
            this.awakeAsset = null;
        }
    }

    void onRender(LayerRenderer layerRenderer) {
        if (!(this.mOverLayFilter == null || !this.mOverLayFilter.isUpdated() || this.awakeAsset == null)) {
            Rect rect = new Rect();
            this.mOverLayFilter.getBound(rect);
            this.awakeAsset.onRefresh(layerRenderer, new RectF(rect), this.mOverLayFilter.getEncodedEffectOptions());
        }
        renderOverlay(layerRenderer, com.nexstreaming.kminternal.kinemaster.config.a.a().b());
    }

    boolean updated(boolean z) {
        boolean z2 = this.mUpdated;
        this.mUpdated = z;
        return z2;
    }

    public void flipVertical(boolean z) {
        if (z) {
            this.mFlipMode |= 1;
        } else {
            this.mFlipMode &= -2;
        }
    }

    public void flipHorizontal(boolean z) {
        if (z) {
            this.mFlipMode |= 2;
        } else {
            this.mFlipMode &= -3;
        }
    }

    public boolean isFlipVertical() {
        return (this.mFlipMode & 1) == 1;
    }

    public boolean isFlipHorizontal() {
        return (this.mFlipMode & 2) == 2;
    }

    public void setEnableShow(boolean z) {
        this.showItem = z;
    }

    public boolean getEnableShow() {
        return this.showItem;
    }
}
