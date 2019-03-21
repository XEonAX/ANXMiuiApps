package com.nexstreaming.nexeditorsdk;

import java.util.Arrays;
import java.util.List;

public class nexAspectProfile {
    public static final int ExportProfileLevel_HIGH = 1;
    public static final int ExportProfileLevel_LOW = 3;
    public static final int ExportProfileLevel_MID = 2;
    public static final int ExportProfileLevel_NONE = 0;
    public static final nexAspectProfile ar16v9 = new nexAspectProfile(1280, 720, 1);
    public static final nexAspectProfile ar1v1 = new nexAspectProfile(720, 720, 2);
    public static final nexAspectProfile ar1v2 = new nexAspectProfile(720, 1440, 5);
    public static final nexAspectProfile ar2v1 = new nexAspectProfile(1440, 720, 4);
    public static final nexAspectProfile ar3v4 = new nexAspectProfile(720, 960, 7);
    public static final nexAspectProfile ar4v3 = new nexAspectProfile(960, 720, 6);
    public static final nexAspectProfile ar9v16 = new nexAspectProfile(720, 1280, 3);
    public static final nexAspectProfile ardef = new nexAspectProfile(1280, 720, 0);
    private static final float[] aspects = new float[]{1.7777778f, 1.0f, 0.5625f, 2.0f, 0.5f, 1.3333334f, 0.75f};
    private static final int[] export_land_heights = new int[]{1080, 720, 480, 360, 240, 160};
    private static final int export_max = 2073600;
    private static final int[] export_port_heights = new int[]{1920, 1280, 640, 640, 320, 240};
    private int aspectMode = 0;
    private float aspectRatio;
    private int height;
    private int width;

    public static class ExportProfile {
        private int bitrate;
        private int height;
        private int level;
        private int width;

        private ExportProfile(int i, int i2, int i3, int i4) {
            this.bitrate = i4;
            this.width = i2;
            this.level = i;
            this.height = i3;
        }

        public int getBitrate() {
            return this.bitrate;
        }

        public int getWidth() {
            return this.width;
        }

        public int getLevel() {
            return this.level;
        }

        public int getHeight() {
            return this.height;
        }
    }

    public static List<nexAspectProfile> getPresetList() {
        return Arrays.asList(new nexAspectProfile[]{ardef, ar16v9, ar1v1, ar9v16, ar2v1, ar1v2, ar4v3, ar3v4});
    }

    public static nexAspectProfile getAspectProfile(int i) {
        if (i <= 0) {
            return null;
        }
        List presetList = getPresetList();
        if (presetList.size() > i) {
            return (nexAspectProfile) presetList.get(i);
        }
        return null;
    }

    private nexAspectProfile(int i, int i2, int i3) {
        this.width = i;
        this.height = i2;
        this.aspectRatio = ((float) i) / ((float) i2);
        this.aspectMode = i3;
    }

    public nexAspectProfile(int i, int i2) {
        int round;
        int i3 = 720;
        if (i > i2) {
            round = Math.round((((float) i) * 720.0f) / ((float) i2));
        } else {
            round = 720;
            i3 = Math.round((((float) i2) * 720.0f) / ((float) i));
        }
        this.width = round;
        this.height = i3;
        this.aspectRatio = ((float) round) / ((float) i3);
        this.aspectMode = getAspectMode(true);
    }

    public int getWidth() {
        return this.width;
    }

    public int getHeight() {
        return this.height;
    }

    public float getAspectRatio() {
        return this.aspectRatio;
    }

    int getAspectMode(boolean z) {
        float aspectRatio = getAspectRatio();
        if (aspectRatio == 1.7777778f) {
            return 1;
        }
        if (aspectRatio == 0.5625f) {
            return 3;
        }
        if (aspectRatio == 2.0f) {
            return 4;
        }
        if (aspectRatio == 1.0f) {
            return 2;
        }
        if (aspectRatio == 0.5f) {
            return 5;
        }
        if (aspectRatio == 0.75f) {
            return 7;
        }
        if (aspectRatio == 1.3333334f) {
            return 6;
        }
        return 0;
    }

    public int getAspectMode() {
        return this.aspectMode;
    }

    public ExportProfile[] getExportProfiles() {
        int[] iArr;
        ExportProfile[] exportProfileArr = new ExportProfile[3];
        int[] iArr2 = export_land_heights;
        if (isLandscapeMode()) {
            iArr = iArr2;
        } else {
            iArr = export_port_heights;
        }
        int length = iArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3;
            int i4 = iArr[i];
            if (2073600.0f < ((float) (i4 * i4)) * getAspectRatio() || (((float) i4) * getAspectRatio()) % 2.0f != 0.0f) {
                i3 = i2;
            } else {
                exportProfileArr[i2] = new ExportProfile(i2 + 1, (int) (((float) i4) * getAspectRatio()), i4, 6291456);
                i3 = i2 + 1;
                if (i3 == 3) {
                    i2 = i3;
                    break;
                }
            }
            i++;
            i2 = i3;
        }
        if (i2 < 3) {
            for (int i5 = i2; i5 < 3; i5++) {
                exportProfileArr[i2] = new ExportProfile(0, getWidth(), getHeight(), 6291456);
            }
        }
        return exportProfileArr;
    }

    public boolean isLandscapeMode() {
        return this.width >= this.height;
    }

    public int getSimilarAspectMode() {
        return getSimilarAspectMode(getAspectRatio());
    }

    public int[] aspect2ReduceFraction() {
        return aspect2ReduceFraction(this.width, this.height, 0);
    }

    public static int getSimilarAspectMode(float f) {
        float f2 = 3.0f;
        int i = 1;
        for (int i2 = 0; i2 < aspects.length; i2++) {
            float f3 = f - aspects[i2];
            if (f3 < 0.0f) {
                f3 *= -1.0f;
            }
            if (f2 > f3) {
                i = i2;
                f2 = f3;
            }
        }
        return i + 1;
    }

    public static int getSimilarAspectMode(int i, int i2, int i3) {
        float f = ((float) i) / ((float) i2);
        if (i3 == 90 || i3 == nexClip.kClip_Rotate_270) {
            f = ((float) i2) / ((float) i);
        }
        float f2 = 3.0f;
        int i4 = 1;
        for (int i5 = 0; i5 < aspects.length; i5++) {
            float f3 = f - aspects[i5];
            if (f3 < 0.0f) {
                f3 *= -1.0f;
            }
            if (f2 > f3) {
                i4 = i5;
                f2 = f3;
            }
        }
        return i4 + 1;
    }

    public static int[] aspect2ReduceFraction(int i, int i2, int i3) {
        if (i3 == 90 || i3 == nexClip.kClip_Rotate_270) {
            return reduceFraction(i2, i);
        }
        return reduceFraction(i, i2);
    }

    private static int[] reduceFraction(int i, int i2) {
        int[] iArr = new int[]{i, i2};
        if (iArr[1] == 0) {
            iArr[0] = 0;
            iArr[1] = 0;
        } else {
            int gcd = gcd(iArr[0], iArr[1]);
            iArr[0] = iArr[0] / gcd;
            iArr[1] = iArr[1] / gcd;
        }
        return iArr;
    }

    private static int gcd(int i, int i2) {
        while (i2 != 0) {
            int i3 = i % i2;
            i = i2;
            i2 = i3;
        }
        return Math.abs(i);
    }
}
