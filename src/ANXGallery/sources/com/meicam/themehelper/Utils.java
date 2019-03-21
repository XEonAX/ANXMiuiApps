package com.meicam.themehelper;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.RectF;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.meicam.sdk.NvsAVFileInfo;
import com.meicam.sdk.NvsSize;
import com.meicam.sdk.NvsVideoClip;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import org.keyczar.Keyczar;

public class Utils {
    private static int[] motionIdxList = new int[]{0, 0, 0, 0};

    public static String readFile(String path, AssetManager am) {
        InputStream in;
        if (am == null) {
            try {
                in = new FileInputStream(new File(path));
            } catch (FileNotFoundException e) {
                e.printStackTrace();
                return null;
            } catch (IOException e2) {
                e2.printStackTrace();
                return null;
            }
        }
        in = am.open(path);
        byte[] filecontent = new byte[in.available()];
        in.read(filecontent);
        in.close();
        String fileString = new String(filecontent, Keyczar.DEFAULT_ENCODING);
        return fileString;
    }

    public static float getImgRatio(NvsAVFileInfo fileInfo) {
        NvsSize imgSize = fileInfo.getVideoStreamDimension(0);
        int rotation = fileInfo.getVideoStreamRotation(0);
        NvsSize imgSizeInner = new NvsSize(imgSize.width, imgSize.height);
        if (rotation == 1 || rotation == 3) {
            imgSizeInner.width = imgSize.height;
            imgSizeInner.height = imgSize.width;
        }
        return ((float) imgSizeInner.width) / ((float) imgSizeInner.height);
    }

    public static void setImageMotion(NvsVideoClip clip, float imgRatio, boolean isLargeImg, RectF rect) {
        boolean z = true;
        if (!isLargeImg) {
            RectF startROI = new RectF();
            RectF endROI = new RectF();
            setImageROI(startROI, endROI, rect, imgRatio);
            clip.setImageMotionROI(startROI, endROI);
        } else if (getMotionIdx(2, 4) == 0) {
            clip.setImageMotionMode(0);
        } else {
            clip.setImageMotionMode(1);
        }
        if (imgRatio > 0.75f) {
            z = false;
        }
        setClipMask(clip, z);
    }

    public static void setImageROI(RectF startROI, RectF endROI, RectF rect, float imgRatio) {
        boolean isPortrait;
        if (imgRatio < 1.0f) {
            isPortrait = true;
        } else {
            isPortrait = false;
        }
        if (rect != null) {
            float[] frect = new float[]{rect.left, rect.top, rect.width(), rect.height()};
            if (isPortrait) {
                setPortraitFaceImgMotion(startROI, endROI, imgRatio, frect);
            } else {
                setLandscapeFaceImgMotion(startROI, endROI, imgRatio, frect);
            }
        } else if (isPortrait) {
            setPortraitImgMotion(startROI, endROI, imgRatio);
        } else {
            setLandscapeImgMotion(startROI, endROI, imgRatio);
        }
    }

    private static void setClipMask(NvsVideoClip clip, boolean fullscreen) {
        if (fullscreen) {
            clip.setImageMaskROI(new RectF(-1.0f, 1.0f, 1.0f, -1.0f));
            clip.setAttachment("fullscreenMode", "true");
            return;
        }
        float top = NvsThemeHelper.m_timelineRatio;
        clip.setImageMaskROI(new RectF(-1.0f, top, 1.0f, -top));
        clip.setAttachment("fullscreenMode", "false");
    }

    private static void setLandscapeImgMotion(RectF startROI, RectF endROI, float imgRatio) {
        int index = getMotionIdx(4, 3);
        switch (index) {
            case 2:
                setZoomIn(startROI, endROI, imgRatio);
                return;
            case 3:
                setZoomIn(endROI, startROI, imgRatio);
                return;
            default:
                if (index == 0) {
                    calcLandscapeLeftRec(startROI, imgRatio);
                    calcLandscapeRightRec(endROI, imgRatio);
                    return;
                }
                calcLandscapeLeftRec(endROI, imgRatio);
                calcLandscapeRightRec(startROI, imgRatio);
                return;
        }
    }

    private static void setZoomIn(RectF inRect, RectF outRect, float ratio) {
        inRect.top = 1.4f;
        inRect.bottom = -1.4f;
        inRect.left = (((-(inRect.top - inRect.bottom)) * NvsThemeHelper.m_timelineRatio) / ratio) / 2.0f;
        inRect.right = -inRect.left;
        outRect.top = 1.2f;
        outRect.bottom = -1.2f;
        outRect.left = (((-(outRect.top - outRect.bottom)) / ratio) * NvsThemeHelper.m_timelineRatio) / 2.0f;
        outRect.right = -outRect.left;
    }

    private static RectF calcLandscapeLeftRec(RectF ROI, float imgRatio) {
        ROI.left = -1.0f;
        ROI.top = 1.4f;
        ROI.bottom = -1.4f;
        ROI.right = (((ROI.top - ROI.bottom) / imgRatio) * NvsThemeHelper.m_timelineRatio) + ROI.left;
        return ROI;
    }

    private static RectF calcLandscapeRightRec(RectF ROI, float imgRatio) {
        ROI.left = -0.8f;
        ROI.top = 1.4f;
        ROI.bottom = -1.4f;
        ROI.right = (((ROI.top - ROI.bottom) / imgRatio) * NvsThemeHelper.m_timelineRatio) + ROI.left;
        return ROI;
    }

    private static void setPortraitImgMotion(RectF startROI, RectF endROI, float imgRatio) {
        int index = getMotionIdx(imgRatio <= 0.4f ? 4 : 6, 2);
        if (index == 4) {
            setPortraitZoomin(startROI, endROI, imgRatio);
        } else if (index == 5) {
            setPortraitZoomin(endROI, startROI, imgRatio);
        } else {
            switch (index) {
                case 0:
                    normalLtToRb(startROI, endROI, imgRatio);
                    return;
                case 1:
                    normalLtToRb(endROI, startROI, imgRatio);
                    return;
                case 2:
                    normalLbToRt(startROI, endROI, imgRatio);
                    return;
                case 3:
                    normalLbToRt(endROI, startROI, imgRatio);
                    return;
                default:
                    return;
            }
        }
    }

    private static void setPortraitZoomin(RectF inRect, RectF outRect, float ratio) {
        if (ratio >= NvsThemeHelper.m_timelineRatio) {
            inRect.top = 1.0f;
            inRect.bottom = -1.0f;
            inRect.left = (((-(inRect.top - inRect.bottom)) / ratio) * NvsThemeHelper.m_timelineRatio) / 2.0f;
            inRect.right = -inRect.left;
            outRect.top = 0.87f;
            outRect.bottom = -0.87f;
            outRect.left = (((-(outRect.top - outRect.bottom)) / ratio) * NvsThemeHelper.m_timelineRatio) / 2.0f;
            outRect.right = -outRect.left;
            return;
        }
        inRect.left = -1.0f;
        inRect.right = 1.0f;
        inRect.top = (((inRect.right - inRect.left) * ratio) / NvsThemeHelper.m_timelineRatio) / 2.0f;
        inRect.bottom = -inRect.top;
        outRect.left = -0.87f;
        outRect.right = 0.87f;
        outRect.top = (((outRect.right - outRect.left) * ratio) / NvsThemeHelper.m_timelineRatio) / 2.0f;
        outRect.bottom = -outRect.top;
    }

    private static void setPortraitFaceImgMotion(RectF startROI, RectF endROI, float imgRatio, float[] rect) {
        switch (getMotionIdx(2, 0)) {
            case 0:
                upToBottom(startROI, endROI, rect, imgRatio);
                return;
            case 1:
                upToBottom(endROI, startROI, rect, imgRatio);
                return;
            default:
                return;
        }
    }

    private static void setLandscapeFaceImgMotion(RectF startROI, RectF endROI, float imgRatio, float[] rect) {
        switch (getMotionIdx(2, 1)) {
            case 0:
                leftToRight(startROI, endROI, rect, imgRatio);
                return;
            case 1:
                leftToRight(endROI, startROI, rect, imgRatio);
                return;
            default:
                return;
        }
    }

    private static void leftToRight(RectF left, RectF right, float[] rect, float imgRatio) {
        left.left = Math.max(-1.0f, rect[0] - 0.3f);
        left.top = 1.4f;
        left.bottom = -1.4f;
        left.right = (((left.top - left.bottom) / imgRatio) * NvsThemeHelper.m_timelineRatio) + left.left;
        right.top = left.top;
        right.bottom = left.bottom;
        right.right = Math.min(1.0f, left.right + 0.15f);
        right.left = (left.left + right.right) - left.right;
    }

    private static void leftToRightByFx(RectF left, RectF right, float[] rect, float imgRatio) {
        if (((double) imgRatio) > 1.5d) {
            left.top = 1.4f;
            left.bottom = -1.4f;
            left.left = Math.max(-1.0f, ((-(((left.top - left.bottom) * NvsThemeHelper.m_timelineRatio) / imgRatio)) / 2.0f) - 0.075f);
            left.right = (((left.top - left.bottom) / imgRatio) * NvsThemeHelper.m_timelineRatio) + left.left;
            right.top = left.top;
            right.bottom = left.bottom;
            right.right = Math.min(1.0f, left.right + 0.15f);
            right.left = (left.left + right.right) - left.right;
            return;
        }
        float centerY = ((rect[1] * 2.0f) - rect[3]) / 2.0f;
        left.left = -0.9f;
        left.right = 0.7f;
        left.top = ((((left.right - left.left) * imgRatio) / NvsThemeHelper.m_timelineRatio) / 2.0f) + centerY;
        left.bottom = ((((-(left.right - left.left)) * imgRatio) / NvsThemeHelper.m_timelineRatio) / 2.0f) + centerY;
        right.left = -0.7f;
        right.right = 0.9f;
        right.top = left.top;
        right.bottom = left.bottom;
    }

    private static void upToBottom(RectF up, RectF bottom, float[] rect, float imgRatio) {
        up.left = Math.max(-1.0f, rect[0] - 0.35f);
        up.right = Math.min(1.0f, (rect[0] + rect[2]) + 0.35f);
        up.top = Math.min(1.0f, rect[1] + 0.5f);
        up.bottom = up.top - (((up.right - up.left) / NvsThemeHelper.m_timelineRatio) * imgRatio);
        float offset;
        if (up.bottom < -1.0f) {
            offset = -1.0f - up.bottom;
            up.bottom = -1.0f;
            up.top += offset;
            if (up.top > 1.0f) {
                setPortraitZoomin(up, bottom, imgRatio);
                return;
            }
            offset = 1.0f - up.top;
            bottom.top = up.top + offset;
            bottom.bottom = up.bottom + offset;
        } else {
            bottom.bottom = up.bottom - 0.13f;
            bottom.top = up.top - 0.13f;
            if (bottom.bottom < -1.0f) {
                offset = -1.0f - bottom.bottom;
                bottom.bottom = -1.0f;
                bottom.top += offset;
            }
        }
        bottom.left = up.left;
        bottom.right = up.right;
    }

    private static void upToBottomByFx(RectF up, RectF bottom, float[] rect, float imgRatio) {
        float centerX = ((rect[0] * 2.0f) + rect[2]) / 2.0f;
        up.top = 1.0f;
        up.bottom = -0.8f;
        up.left = ((((-(up.top - up.bottom)) * NvsThemeHelper.m_timelineRatio) / imgRatio) / 2.0f) + centerX;
        up.right = ((((up.top - up.bottom) * NvsThemeHelper.m_timelineRatio) / imgRatio) / 2.0f) + centerX;
        if (up.left < -1.0f) {
            up.right += -1.0f - up.left;
            up.left = -1.0f;
        }
        if (up.right > 1.0f) {
            up.left -= up.right - 1.0f;
            up.right = 1.0f;
        }
        bottom.left = up.left;
        bottom.right = up.right;
        bottom.top = 0.8f;
        bottom.bottom = -1.0f;
    }

    private static void LtToRb(RectF Lt, RectF Rb, float[] rect, float imgRatio) {
        Lt.left = Math.max(-1.0f, rect[0] - 0.25f);
        Lt.right = Math.min(1.0f, (rect[0] + rect[2]) + 0.35f);
        Lt.top = ((((Lt.right - Lt.left) / NvsThemeHelper.m_timelineRatio) * imgRatio) / 2.0f) - 0.05f;
        Lt.bottom = (-Lt.top) - 0.1f;
        Rb.left = Math.max(-1.0f, Lt.left - 0.1f);
        Rb.top = Math.min(1.0f, Lt.top + 0.1f);
        Rb.right = Lt.right - 0.1f;
        Rb.bottom = Rb.top - (((Rb.right - Rb.left) / NvsThemeHelper.m_timelineRatio) * imgRatio);
    }

    private static void RtToLb(RectF Rt, RectF Lb, float[] rect, float imgRatio) {
        Rt.right = Math.min(1.0f, (rect[0] + rect[2]) + 0.25f);
        Rt.left = Math.max(-1.0f, rect[0] - 0.35f);
        Rt.top = ((((Rt.right - Rt.left) / NvsThemeHelper.m_timelineRatio) * imgRatio) / 2.0f) - 0.05f;
        Rt.bottom = (-Rt.top) - 0.1f;
        Lb.right = Math.min(1.0f, Rt.right + 0.1f);
        Lb.top = Math.min(1.0f, Rt.top + 0.1f);
        Lb.left = Rt.left + 0.1f;
        Lb.bottom = Lb.top - (((Lb.right - Lb.left) / NvsThemeHelper.m_timelineRatio) * imgRatio);
    }

    private static void normalLtToRb(RectF Lt, RectF Rb, float ratio) {
        Lt.left = -1.0f;
        Lt.top = 1.0f;
        Lt.right = 0.8f;
        Lt.bottom = Lt.top - ((Lt.width() * ratio) / NvsThemeHelper.m_timelineRatio);
        if (Lt.bottom < -1.0f) {
            Lt.bottom = -1.0f;
            Lt.right = changeROTBottom(Lt, ratio);
        }
        Rb.left = -0.85f;
        Rb.top = 0.9f;
        Rb.right = 1.0f;
        Rb.bottom = Rb.top - ((Rb.width() * ratio) / NvsThemeHelper.m_timelineRatio);
        if (Rb.bottom < -1.0f) {
            Rb.bottom = -1.0f;
            Rb.right = changeROTBottom(Rb, ratio);
        }
    }

    private static void normalLbToRt(RectF Lb, RectF Rt, float ratio) {
        Lb.left = -0.9f;
        Lb.top = 0.9f;
        Lb.right = 0.85f;
        Lb.bottom = Lb.top - ((Lb.width() * ratio) / NvsThemeHelper.m_timelineRatio);
        if (Lb.bottom < -1.0f) {
            Lb.bottom = -1.0f;
            Lb.right = changeROTBottom(Lb, ratio);
        }
        Rt.left = -0.75f;
        Rt.top = 1.0f;
        Rt.right = 1.0f;
        Rt.bottom = Rt.top - ((Rt.width() * ratio) / NvsThemeHelper.m_timelineRatio);
        if (Rt.bottom < -1.0f) {
            Rt.bottom = -1.0f;
            Rt.right = changeROTBottom(Rt, ratio);
        }
    }

    public static void normalLeftToRightByFx(RectF left, RectF right, float imgRatio) {
        if (((double) imgRatio) > 1.5d) {
            left.top = 1.4f;
            left.bottom = -1.4f;
            left.left = Math.max(-1.0f, ((-(((left.top - left.bottom) * NvsThemeHelper.m_timelineRatio) / imgRatio)) / 2.0f) - 0.075f);
            left.right = (((left.top - left.bottom) / imgRatio) * NvsThemeHelper.m_timelineRatio) + left.left;
            right.top = left.top;
            right.bottom = left.bottom;
            right.right = Math.min(1.0f, left.right + 0.15f);
            right.left = (left.left + right.right) - left.right;
            return;
        }
        left.left = -0.8f;
        left.right = 0.7f;
        left.top = (((left.right - left.left) * imgRatio) / NvsThemeHelper.m_timelineRatio) / 2.0f;
        left.bottom = -left.top;
        right.left = -0.7f;
        right.right = 0.8f;
        right.top = left.top;
        right.bottom = left.bottom;
    }

    public static void normalUpToBottomByFx(RectF up, RectF bottom, float imgRatio) {
        up.top = 1.0f;
        up.bottom = -0.8f;
        up.left = (((-(up.top - up.bottom)) * NvsThemeHelper.m_timelineRatio) / imgRatio) / 2.0f;
        up.right = -up.left;
        bottom.left = up.left;
        bottom.right = up.right;
        bottom.top = 0.8f;
        bottom.bottom = -1.0f;
    }

    private static float changeROTBottom(RectF ROI, float ratio) {
        return ROI.left + (((ROI.top - ROI.bottom) / ratio) * NvsThemeHelper.m_timelineRatio);
    }

    public static String changeHoriROI(float imgRatio, RectF rect, String desc, NvsVideoClip clip) {
        RectF up = new RectF();
        RectF bottom = new RectF();
        if (rect != null) {
            upToBottomByFx(up, bottom, new float[]{rect.left, rect.top, rect.width(), rect.height()}, imgRatio);
        } else {
            normalUpToBottomByFx(up, bottom, imgRatio);
        }
        String ret = desc;
        if (clip != null) {
            clip.setImageMotionROI(up, bottom);
            return ret;
        }
        String upstr = "" + up.left + "," + up.right + "," + up.bottom + "," + up.top;
        return desc.replace("xiaomiEndROI", upstr).replace("xiaomiStartROI", "" + bottom.left + "," + bottom.right + "," + bottom.bottom + "," + bottom.top);
    }

    public static String changeHoriROIV3(float imgRatio, RectF rect, String desc, boolean isSecondPic) {
        RectF up = new RectF();
        RectF bottom = new RectF();
        if (rect != null) {
            upToBottomByFx(up, bottom, new float[]{rect.left, rect.top, rect.width(), rect.height()}, imgRatio);
        } else {
            normalUpToBottomByFx(up, bottom, imgRatio);
        }
        String upstr = "" + up.left + "," + up.right + "," + up.bottom + "," + up.top;
        String bottomstr = "" + bottom.left + "," + bottom.right + "," + bottom.bottom + "," + bottom.top;
        String ret = desc;
        if (isSecondPic) {
            return desc.replace("xiaomiStartROI", upstr).replace("xiaomiEndROI", bottomstr);
        }
        return desc.replace("jieshu", upstr).replace("kaishi", bottomstr);
    }

    public static String changeVertROI(float imgRatio, RectF rect, String desc, NvsVideoClip clip) {
        RectF left = new RectF();
        RectF right = new RectF();
        if (rect != null) {
            leftToRightByFx(left, right, new float[]{rect.left, rect.top, rect.width(), rect.height()}, imgRatio);
        } else {
            normalLeftToRightByFx(left, right, imgRatio);
        }
        String ret = desc;
        if (clip != null) {
            clip.setImageMotionROI(left, right);
            return ret;
        }
        String leftstr = "" + left.left + "," + left.right + "," + left.bottom + "," + left.top;
        return desc.replace("xiaomiEndROI", leftstr).replace("xiaomiStartROI", "" + right.left + "," + right.right + "," + right.bottom + "," + right.top);
    }

    public static String changeVertROIV3(float imgRatio, RectF rect, String desc, boolean isSecondPic) {
        RectF left = new RectF();
        RectF right = new RectF();
        if (rect != null) {
            leftToRightByFx(left, right, new float[]{rect.left, rect.top, rect.width(), rect.height()}, imgRatio);
        } else {
            normalLeftToRightByFx(left, right, imgRatio);
        }
        String leftstr = "" + left.left + "," + left.right + "," + left.bottom + "," + left.top;
        String rightstr = "" + right.left + "," + right.right + "," + right.bottom + "," + right.top;
        String ret = desc;
        if (isSecondPic) {
            return desc.replace("xiaomiStartROI", leftstr).replace("xiaomiEndROI", rightstr);
        }
        return desc.replace("jieshu", leftstr).replace("kaishi", rightstr);
    }

    public static String changeROI(float imgRatio, RectF rect, String desc) {
        RectF start = new RectF();
        RectF end = new RectF();
        setImageROI(start, end, rect, imgRatio);
        String upstr = "" + start.left + "," + start.right + "," + start.bottom + "," + start.top;
        return desc.replace("xiaomiStartROI", upstr).replace("xiaomiEndROI", "" + end.left + "," + end.right + "," + end.bottom + "," + end.top);
    }

    public static String changeROIV3(float imgRatio, RectF rect, String desc, boolean isSecondPic) {
        RectF start = new RectF();
        RectF end = new RectF();
        setImageROI(start, end, rect, imgRatio);
        String upstr = "" + start.left + "," + start.right + "," + start.bottom + "," + start.top;
        String bottomstr = "" + end.left + "," + end.right + "," + end.bottom + "," + end.top;
        if (isSecondPic) {
            return desc.replace("xiaomiStartROI", upstr).replace("xiaomiEndROI", bottomstr);
        }
        return desc.replace("kaishi", upstr).replace("jieshu", bottomstr);
    }

    private static int getMotionIdx(int maxIdx, int motionType) {
        int newIdx = NvsThemeHelper.rand.nextInt(maxIdx);
        if (motionType >= motionIdxList.length) {
            return newIdx;
        }
        if (newIdx == motionIdxList[motionType]) {
            newIdx++;
            if (newIdx >= maxIdx) {
                newIdx = 0;
            }
        }
        motionIdxList[motionType] = newIdx;
        return newIdx;
    }

    public static int getScreenWidth(Context context) {
        DisplayMetrics dm = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(dm);
        return dm.widthPixels;
    }

    public static int dip2px(Context context, float dpValue) {
        return (int) ((dpValue * context.getResources().getDisplayMetrics().density) + 0.5f);
    }
}
