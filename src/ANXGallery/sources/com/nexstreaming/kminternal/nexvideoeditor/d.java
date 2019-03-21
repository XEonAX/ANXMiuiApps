package com.nexstreaming.kminternal.nexvideoeditor;

import android.media.CamcorderProfile;
import com.nexstreaming.kminternal.kinemaster.config.NexEditorDeviceProfile;
import java.util.Vector;

/* compiled from: NexVisualClipChecker */
public class d {
    private int a = 0;
    private int b = 0;
    private int c = 0;
    private int d = 0;
    private int e = 0;
    private int f = 0;
    private int g = 0;
    private int h = 0;
    private int i = 0;
    private boolean j = false;
    private int k = 0;
    private int l = 0;
    private int m = 0;
    private boolean n = false;
    private int o = 0;
    private int p = 0;
    private int q = 0;
    private int r = 55;
    private int s = 0;
    private int t = 0;
    private int u = 0;
    private int v = 0;
    private int w = 0;
    private Vector<CamcorderProfile> x;

    private static int a(int i, int i2) {
        if (i == 0) {
            return i2;
        }
        if (i2 == 0) {
            return i;
        }
        if (i < i2) {
            return i;
        }
        return i2;
    }

    d(NexEditor nexEditor) {
        if (nexEditor != null) {
            NexEditorDeviceProfile deviceProfile = NexEditorDeviceProfile.getDeviceProfile();
            int maxCamcorderProfileSizeForUnknownDevice = deviceProfile.getMaxCamcorderProfileSizeForUnknownDevice();
            if (maxCamcorderProfileSizeForUnknownDevice <= 0) {
                maxCamcorderProfileSizeForUnknownDevice = Integer.MAX_VALUE;
            }
            this.a = deviceProfile.getIntProperty("Device_Support_BaselineMaxLevel", 0);
            this.b = deviceProfile.getIntProperty("Device_Support_MainMaxLevel", 0);
            this.c = deviceProfile.getIntProperty("Device_Support_HighMaxLevel", 0);
            this.d = deviceProfile.getMCHWAVCDecBaselineSize();
            this.e = deviceProfile.getMCHWAVCDecMainSize();
            this.f = deviceProfile.getMCHWAVCDecHighSize();
            if (deviceProfile.isUnknownDevice()) {
                this.g = a(maxCamcorderProfileSizeForUnknownDevice, nexEditor.b("MCHWAVCEncBaselineLevelSize", 0));
                this.h = Math.min(maxCamcorderProfileSizeForUnknownDevice, nexEditor.b("MCHWAVCEncMainLevelSize", 0));
                this.i = Math.min(maxCamcorderProfileSizeForUnknownDevice, nexEditor.b("MCHWAVCEncHighLevelSize", 0));
            } else {
                this.g = nexEditor.b("MCHWAVCEncBaselineLevelSize", 0);
                this.h = nexEditor.b("MCHWAVCEncMainLevelSize", 0);
                this.i = nexEditor.b("MCHWAVCEncHighLevelSize", 0);
            }
            this.j = nexEditor.a("canUseMCSoftwareCodec", false);
            if (this.j) {
                this.k = deviceProfile.getMCSWAVCDecBaselineSize();
                this.l = deviceProfile.getMCSWAVCDecMainSize();
                this.m = deviceProfile.getMCSWAVCDecHighSize();
            }
            this.n = nexEditor.a("canUseSoftwareCodec", false);
            if (this.n) {
                this.o = deviceProfile.getNXSWAVCDecBaselineSize();
                this.p = deviceProfile.getNXSWAVCDecMainSize();
                this.q = deviceProfile.getNXSWAVCDecHighSize();
            }
            this.r = deviceProfile.getMaxSupportedFPS();
            this.u = deviceProfile.getMaxSupportedVideoBitrate(0);
            this.v = deviceProfile.getMaxSupportedAudioSamplingRate(0);
            this.w = deviceProfile.getMaxSupportedAudioChannels(0);
            if (deviceProfile.isUnknownDevice()) {
                this.s = this.d;
                this.t = this.d;
            } else {
                this.s = deviceProfile.getMaxImportSize(true);
                this.t = deviceProfile.getMaxImportSize(false);
            }
            this.x = new Vector();
            int[] iArr = new int[]{6, 5, 4, 3, 7};
            for (maxCamcorderProfileSizeForUnknownDevice = 0; maxCamcorderProfileSizeForUnknownDevice < iArr.length; maxCamcorderProfileSizeForUnknownDevice++) {
                if (CamcorderProfile.hasProfile(iArr[maxCamcorderProfileSizeForUnknownDevice])) {
                    this.x.add(CamcorderProfile.get(iArr[maxCamcorderProfileSizeForUnknownDevice]));
                }
            }
        }
    }

    public int a(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (this.v > 0 && this.v < i7) {
            return 6;
        }
        int i9 = this.n ? this.s : this.t;
        if (i != 255) {
            int i10;
            int i11;
            int i12;
            if (this.n) {
                i10 = this.o;
                i11 = this.p;
                i12 = this.q;
            } else {
                i10 = this.d;
                i11 = this.e;
                i12 = this.f;
            }
            switch (i) {
                case 66:
                    if (this.a != 0 && this.a < i2) {
                        return 5;
                    }
                case 77:
                    if (i11 == 0) {
                        return 3;
                    }
                    if (this.b == 0 || this.b >= i2) {
                        i10 = i11;
                        break;
                    }
                    return 5;
                case 100:
                    if (i12 == 0) {
                        return 3;
                    }
                    if (this.c == 0 || this.c >= i2) {
                        i10 = i12;
                        break;
                    }
                    return 5;
                default:
                    return 3;
            }
            if (i3 * i4 > i10) {
                if (!this.j) {
                    return 4;
                }
                if (i != 66 || i3 * i4 > this.k) {
                    return 3;
                }
                return 1;
            } else if (i3 * i4 > i9) {
                return 1;
            } else {
                if (i5 > this.r) {
                    return 2;
                }
                return 0;
            }
        } else if (i3 * i4 > i9) {
            if (i3 * i4 > (this.n ? this.o : this.d)) {
                return 4;
            }
            return 1;
        } else if (i5 > this.r) {
            return 2;
        } else {
            return 0;
        }
    }

    public int a() {
        return this.g;
    }
}
