package com.nexstreaming.kminternal.kinemaster.config;

import android.content.Context;
import android.media.CamcorderProfile;
import android.os.Build.VERSION;
import android.util.Log;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.nexstreaming.app.common.tracelog.DeviceSupportResponse;
import com.nexstreaming.app.common.util.o;
import com.nexstreaming.kminternal.nexvideoeditor.NexEditor;
import com.nexstreaming.nexeditorsdk.BuildConfig;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public class NexEditorDeviceProfile implements Serializable {
    public static final int UNKNOWN = Integer.MIN_VALUE;
    private static NexEditorDeviceProfile a = null;
    private static final b b = new b(1920, 1088);
    private static final long serialVersionUID = 1;
    private final int MAX_SUPPORTED_FPS = BaiduSceneResult.MOTORCYCLE;
    private final int MEM_1080P_SIZE = 2088960;
    private final int MEM_720P_SIZE = 921600;
    private final int MEM_UHD_SIZE = 8355840;
    private final String mBoardPlatform;
    private final int m_MCHWAVCDecBaselineSize;
    private final int m_MCHWAVCDecHighSize;
    private final int m_MCHWAVCDecMainSize;
    private final int m_MCSWAVCDecBaselineSize;
    private final int m_MCSWAVCDecHighSize;
    private final int m_MCSWAVCDecMainSize;
    private final int m_NXSWAVCDecBaselineSize;
    private final int m_NXSWAVCDecHighSize;
    private final int m_NXSWAVCDecMainSize;
    private NexExportProfile[] m_actualSupportedExportProfilesHW = null;
    private NexExportProfile[] m_actualSupportedExportProfilesSW = null;
    private final int m_audioCodecCount;
    private boolean m_bSetUserConfig;
    private final int m_deviceMaxGamma;
    private final int m_deviceMaxLightLevel;
    private final DeviceSupportResponse m_dsr;
    private final boolean m_enableProjectProtection;
    private final NexExportProfile[] m_exportExtraProfilesHW;
    private final NexExportProfile[] m_exportExtraProfilesSW;
    private final NexExportProfile[] m_exportProfilesHW;
    private final NexExportProfile[] m_exportProfilesSW;
    private int m_extraDurationForSplit = 0;
    private final int m_forceDirectExport;
    private int m_fullHDMaxTransitionTime;
    private final int m_glDepthBufferBits;
    private final boolean m_glMultisample;
    private final int m_hardwareCodecMemSize;
    private final int m_hardwareDecMaxCount;
    private final int m_hardwareEncMaxCount;
    private final MediaRecordingMode m_imageRecording;
    private final boolean m_limitTextInputHeight;
    private final a m_matchInfo;
    private int m_maxCamcorderProfileSizeForUnknownDevice = 2119680;
    private final int m_maxImportHWSize;
    private final int m_maxImportSWSize;
    private int m_maxSupportedFPS;
    private int m_maxSupportedResolution;
    private final int m_nativeLogLevel;
    private final boolean m_needSeekBeforeFastPreview;
    private final ProfileSource m_profileSource;
    private final Map<String, String> m_properties;
    private final boolean m_support;
    private final boolean m_supportAVC;
    private final int m_supportIfUpgradeVersion;
    private final boolean m_supportMPEGV4;
    private final int m_supportedTimeCheker;
    private NexExportProfile m_transcodeProfile = null;
    private final boolean m_useEditorView;
    private final boolean m_useNativeMediaDB;
    private final boolean m_usedContext;
    private final boolean m_usedDSR;
    private final MediaRecordingMode m_videoRecording;
    private final boolean m_visualMediaFromKineMasterFolderOnly;

    public enum MediaRecordingMode {
        Disable,
        UseNative,
        UseKineMaster;

        public static MediaRecordingMode fromValue(int i) {
            switch (i) {
                case 0:
                    return Disable;
                case 1:
                    return UseNative;
                case 2:
                    return UseKineMaster;
                default:
                    return Disable;
            }
        }
    }

    public enum ProfileSource {
        Local,
        Server,
        Unknown
    }

    public static class a {
    }

    public static class b {
        public final int a;
        public final int b;

        public b(int i, int i2) {
            this.a = i;
            this.b = i2;
        }

        public int hashCode() {
            return (this.a * 31) + this.b;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            if (((b) obj).a == this.a && ((b) obj).b == this.b) {
                return true;
            }
            return false;
        }
    }

    public static void setAppContext(Context context, int[] iArr) {
        if (a == null || !(a.m_usedContext || a.m_usedDSR)) {
            a = new NexEditorDeviceProfile(context.getApplicationContext(), null, iArr);
        }
    }

    public static void setDeviceSupportResponse(DeviceSupportResponse deviceSupportResponse) {
        if (a == null || !a.m_usedDSR) {
            a = new NexEditorDeviceProfile(null, deviceSupportResponse, null);
        }
    }

    public static NexEditorDeviceProfile getDeviceProfile() {
        if (a == null) {
            a = new NexEditorDeviceProfile(null, null, null);
        }
        return a;
    }

    private boolean a(String str) {
        return str == null || str.trim().length() < 1;
    }

    private NexEditorDeviceProfile(Context context, DeviceSupportResponse deviceSupportResponse, int[] iArr) {
        boolean z;
        this.m_usedContext = context != null;
        if (deviceSupportResponse != null) {
            z = true;
        } else {
            z = false;
        }
        this.m_usedDSR = z;
        Log.d("NexEditorDeviceProfile", "Building device profile : hasContext=" + this.m_usedContext);
        this.mBoardPlatform = o.b();
        if (deviceSupportResponse != null) {
        }
        this.m_dsr = null;
        this.m_videoRecording = MediaRecordingMode.UseKineMaster;
        this.m_imageRecording = MediaRecordingMode.UseNative;
        this.m_supportIfUpgradeVersion = 0;
        this.m_useNativeMediaDB = true;
        this.m_needSeekBeforeFastPreview = true;
        this.m_limitTextInputHeight = false;
        this.m_glDepthBufferBits = 16;
        this.m_glMultisample = true;
        this.m_useEditorView = false;
        this.m_supportAVC = true;
        this.m_support = true;
        this.m_audioCodecCount = -1;
        this.m_matchInfo = null;
        if (iArr == null) {
            this.m_bSetUserConfig = false;
        } else {
            this.m_bSetUserConfig = iArr[0] == 1;
        }
        if (iArr == null) {
            this.m_hardwareCodecMemSize = 8355840;
        } else {
            this.m_hardwareCodecMemSize = iArr[1];
        }
        if (iArr == null) {
            this.m_hardwareDecMaxCount = 2;
        } else {
            this.m_hardwareDecMaxCount = iArr[2];
        }
        if (iArr == null) {
            this.m_maxSupportedFPS = BaiduSceneResult.MOTORCYCLE;
        } else {
            this.m_maxSupportedFPS = iArr[3];
        }
        if (iArr == null) {
            this.m_supportMPEGV4 = false;
        } else {
            this.m_supportMPEGV4 = iArr[4] != 0;
        }
        if (iArr == null) {
            this.m_maxSupportedResolution = 8355840;
        } else {
            this.m_maxSupportedResolution = iArr[5];
        }
        if (iArr == null) {
            this.m_forceDirectExport = 0;
        } else {
            this.m_forceDirectExport = iArr[6];
        }
        if (iArr == null) {
            this.m_nativeLogLevel = 2;
        } else {
            this.m_nativeLogLevel = iArr[7];
        }
        if (iArr == null) {
            this.m_supportedTimeCheker = 1;
        } else {
            this.m_supportedTimeCheker = iArr[8];
        }
        if (iArr == null) {
            this.m_deviceMaxLightLevel = 550;
        } else {
            this.m_deviceMaxLightLevel = iArr[9];
        }
        if (iArr == null) {
            this.m_deviceMaxGamma = 550;
        } else {
            this.m_deviceMaxGamma = iArr[10];
        }
        Log.d("NexEditorDeviceProfile", "User set supportMPEGV4 = " + this.m_supportMPEGV4);
        Log.d("NexEditorDeviceProfile", "User set hardwareDecMaxCount = " + this.m_hardwareDecMaxCount);
        Log.d("NexEditorDeviceProfile", "User set maxSupportedFPS = " + this.m_maxSupportedFPS);
        Log.d("NexEditorDeviceProfile", "User set hardwareCodecMemSize = " + this.m_hardwareCodecMemSize);
        Log.d("NexEditorDeviceProfile", "User set maxSupportedResolution = " + this.m_maxSupportedResolution);
        Log.d("NexEditorDeviceProfile", "User set forceDirectExport = " + this.m_forceDirectExport);
        Log.d("NexEditorDeviceProfile", "User set m_nativeLogLevel = " + this.m_nativeLogLevel);
        Log.d("NexEditorDeviceProfile", "User set m_supportedTimeCheker = " + this.m_supportedTimeCheker);
        Log.d("NexEditorDeviceProfile", "User set device LightLevel = " + this.m_deviceMaxLightLevel + ", Gamma=" + this.m_deviceMaxGamma);
        this.m_hardwareEncMaxCount = 1;
        this.m_maxImportSWSize = Integer.MIN_VALUE;
        this.m_maxImportHWSize = Integer.MIN_VALUE;
        this.m_NXSWAVCDecBaselineSize = Integer.MIN_VALUE;
        this.m_NXSWAVCDecMainSize = Integer.MIN_VALUE;
        this.m_NXSWAVCDecHighSize = Integer.MIN_VALUE;
        this.m_MCSWAVCDecBaselineSize = Integer.MIN_VALUE;
        this.m_MCSWAVCDecMainSize = Integer.MIN_VALUE;
        this.m_MCSWAVCDecHighSize = Integer.MIN_VALUE;
        this.m_MCHWAVCDecBaselineSize = Integer.MIN_VALUE;
        this.m_MCHWAVCDecMainSize = Integer.MIN_VALUE;
        this.m_MCHWAVCDecHighSize = Integer.MIN_VALUE;
        this.m_exportProfilesSW = null;
        this.m_exportProfilesHW = null;
        this.m_fullHDMaxTransitionTime = Integer.MAX_VALUE;
        this.m_profileSource = ProfileSource.Unknown;
        this.m_properties = new HashMap();
        if (!BuildConfig.KM_PROJECT.equals(BuildConfig.KM_PROJECT)) {
            int[] iArr2 = new int[]{1, 6, 5, 4, 3, 7};
            int i = 0;
            for (int i2 = 0; i2 < iArr2.length; i2++) {
                if (CamcorderProfile.hasProfile(iArr2[i2])) {
                    CamcorderProfile camcorderProfile = CamcorderProfile.get(iArr2[i2]);
                    if (camcorderProfile != null) {
                        int i3 = (camcorderProfile.videoFrameHeight + 31) & -16;
                        if (camcorderProfile.videoFrameWidth * i3 > i) {
                            i = camcorderProfile.videoFrameWidth * i3;
                            Log.d("NexEditorDeviceProfile", String.format("bestCamcorderProfileSize(%d), Width(%d), Height(%d/%d), Project=[%s]", new Object[]{Integer.valueOf(i), Integer.valueOf(camcorderProfile.videoFrameWidth), Integer.valueOf(camcorderProfile.videoFrameHeight), Integer.valueOf(i3), BuildConfig.KM_PROJECT}));
                        }
                    }
                }
            }
            this.m_maxCamcorderProfileSizeForUnknownDevice = i;
        }
        this.m_exportExtraProfilesSW = new NexExportProfile[]{NexExportProfile.EXPORT_320_180};
        this.m_exportExtraProfilesHW = new NexExportProfile[]{NexExportProfile.EXPORT_320_180};
        this.m_enableProjectProtection = false;
        this.m_visualMediaFromKineMasterFolderOnly = false;
    }

    public ProfileSource getProfileSource() {
        return this.m_profileSource;
    }

    public boolean isUnknownDevice() {
        return this.m_profileSource == ProfileSource.Unknown;
    }

    public int getMaxResolution() {
        return this.m_maxSupportedResolution;
    }

    public int getMaxImportSize(boolean z) {
        return z ? this.m_maxImportSWSize : this.m_maxImportHWSize;
    }

    private int a(int i, String str, String str2) {
        if (i != Integer.MIN_VALUE) {
            return i;
        }
        NexEditor a = EditorGlobal.a();
        if (a == null) {
            return this.m_maxCamcorderProfileSizeForUnknownDevice;
        }
        if (str != null && !a.a(str, false)) {
            return 0;
        }
        if (str2 == null) {
            return 0;
        }
        if (this.m_maxCamcorderProfileSizeForUnknownDevice <= 0) {
            return a.b(str2, 0);
        }
        return Math.min(this.m_maxCamcorderProfileSizeForUnknownDevice, a.b(str2, 0));
    }

    public int getMaxCamcorderProfileSizeForUnknownDevice() {
        return this.m_maxCamcorderProfileSizeForUnknownDevice;
    }

    public int getNXSWAVCDecBaselineSize() {
        return a(this.m_NXSWAVCDecBaselineSize, "canUseSoftwareCodec", "NXSWAVCDecBaselineLevelSize");
    }

    public int getNXSWAVCDecMainSize() {
        return a(this.m_NXSWAVCDecMainSize, "canUseSoftwareCodec", "NXSWAVCDecMainLevelSize");
    }

    public int getNXSWAVCDecHighSize() {
        return a(this.m_NXSWAVCDecHighSize, "canUseSoftwareCodec", "NXSWAVCDecHighLevelSize");
    }

    public int getMCSWAVCDecBaselineSize() {
        return a(this.m_MCSWAVCDecBaselineSize, "canUseMCSoftwareCodec", "MCSWAVCDecBaselineLevelSize");
    }

    public int getMCSWAVCDecMainSize() {
        return a(this.m_MCSWAVCDecMainSize, "canUseMCSoftwareCodec", "MCSWAVCDecMainLevelSize");
    }

    public int getMCSWAVCDecHighSize() {
        return a(this.m_MCSWAVCDecHighSize, "canUseMCSoftwareCodec", "MCSWAVCDecMainLevelSize");
    }

    public int getMCHWAVCDecBaselineSize() {
        return a(this.m_MCHWAVCDecBaselineSize, null, "MCHWAVCDecBaselineLevelSize");
    }

    public int getMCHWAVCDecMainSize() {
        return a(this.m_MCHWAVCDecMainSize, null, "MCHWAVCDecMainLevelSize");
    }

    public int getMCHWAVCDecHighSize() {
        return a(this.m_MCHWAVCDecHighSize, null, "MCHWAVCDecHighLevelSize");
    }

    public int getMaxSupportedFPS() {
        return this.m_maxSupportedFPS;
    }

    public int getFullHDMaxTransitionTime() {
        return this.m_fullHDMaxTransitionTime;
    }

    public MediaRecordingMode getImageRecordingMode() {
        return this.m_imageRecording;
    }

    public MediaRecordingMode getVideoRecordingMode() {
        return this.m_videoRecording;
    }

    public boolean getUseNativeMediaDB() {
        return this.m_useNativeMediaDB;
    }

    public boolean getUseEditorView() {
        return this.m_useEditorView;
    }

    public NexExportProfile[] getSupportedExportProfiles(boolean z) {
        NexExportProfile[] nexExportProfileArr;
        if (z) {
            nexExportProfileArr = this.m_actualSupportedExportProfilesSW;
        } else {
            nexExportProfileArr = this.m_actualSupportedExportProfilesHW;
        }
        if (nexExportProfileArr != null) {
            return a(nexExportProfileArr, z);
        }
        if (z) {
            nexExportProfileArr = this.m_exportProfilesSW;
        } else {
            nexExportProfileArr = this.m_exportProfilesHW;
        }
        if (nexExportProfileArr == null) {
            NexEditor a = EditorGlobal.a();
            if (a == null) {
                nexExportProfileArr = new NexExportProfile[0];
            } else {
                List exportProfiles = NexExportProfile.getExportProfiles(a.j().a());
                nexExportProfileArr = (NexExportProfile[]) exportProfiles.toArray(new NexExportProfile[exportProfiles.size()]);
            }
        }
        if (z) {
            this.m_actualSupportedExportProfilesSW = nexExportProfileArr;
        } else {
            this.m_actualSupportedExportProfilesHW = nexExportProfileArr;
        }
        return a(nexExportProfileArr, z);
    }

    private NexExportProfile[] a(NexExportProfile[] nexExportProfileArr, boolean z) {
        List arrayList = new ArrayList(nexExportProfileArr.length);
        int maxImportSize = getMaxImportSize(z);
        NexExportProfile nexExportProfile = null;
        for (NexExportProfile nexExportProfile2 : nexExportProfileArr) {
            if (nexExportProfile2.width() * (nexExportProfile2.height() - 31) <= maxImportSize) {
                arrayList.add(nexExportProfile2);
            } else if (nexExportProfile == null || nexExportProfile.width() * nexExportProfile.height() > nexExportProfile2.width() * nexExportProfile2.height()) {
                nexExportProfile = nexExportProfile2;
            }
        }
        if (arrayList.size() < 1 && nexExportProfile != null) {
            arrayList.add(nexExportProfile);
        }
        return (NexExportProfile[]) arrayList.toArray(new NexExportProfile[arrayList.size()]);
    }

    public NexExportProfile[] getSupportedExtraProfiles(boolean z) {
        if (z) {
            return this.m_exportExtraProfilesSW;
        }
        return this.m_exportExtraProfilesHW;
    }

    public NexExportProfile getDefaultExportProfile(boolean z) {
        NexExportProfile[] supportedExportProfiles = getSupportedExportProfiles(z);
        if (null == null) {
            for (NexExportProfile nexExportProfile : supportedExportProfiles) {
                if (nexExportProfile.height() == 720 || nexExportProfile.height() == 736) {
                    break;
                }
            }
        }
        NexExportProfile nexExportProfile2 = null;
        if (nexExportProfile2 == null) {
            for (NexExportProfile nexExportProfile3 : supportedExportProfiles) {
                if (nexExportProfile3.height() == 1080 && nexExportProfile3.height() == 1088) {
                    break;
                }
            }
        }
        NexExportProfile nexExportProfile32 = nexExportProfile2;
        if (nexExportProfile32 == null) {
            return supportedExportProfiles[0];
        }
        return nexExportProfile32;
    }

    public boolean getEnableProjectProtection() {
        return this.m_enableProjectProtection;
    }

    public boolean getVisualMediaFromKineMasterFolderOnly() {
        return this.m_visualMediaFromKineMasterFolderOnly;
    }

    public boolean getNeedSeekBeforeFastPreview() {
        return this.m_needSeekBeforeFastPreview;
    }

    public boolean getLimitTextInputHeight() {
        return this.m_limitTextInputHeight;
    }

    public int getGLDepthBufferBits() {
        return this.m_glDepthBufferBits;
    }

    public boolean getGLMultisample() {
        return this.m_glMultisample;
    }

    public boolean getUserConfigSettings() {
        return this.m_bSetUserConfig;
    }

    public int getHardwareCodecMemSize() {
        return this.m_hardwareCodecMemSize;
    }

    public int getHardwareDecMaxCount() {
        return this.m_hardwareDecMaxCount;
    }

    public boolean allowOverlappingVideo() {
        return getHardwareDecMaxCount() >= 2;
    }

    public int getHardwareEncMaxCount() {
        return this.m_hardwareEncMaxCount;
    }

    public int getForceDirectExport() {
        return this.m_forceDirectExport;
    }

    public int getNativeLogLevel() {
        return this.m_nativeLogLevel;
    }

    public int getSupportedTimeCheker() {
        return this.m_supportedTimeCheker;
    }

    public int getDeviceMaxLightLevel() {
        return this.m_deviceMaxLightLevel;
    }

    public int getDeviceMaxGamma() {
        return this.m_deviceMaxGamma;
    }

    public b getTranscodeMaxInputResolution(boolean z) {
        return b;
    }

    public NexExportProfile getTranscodeProfile(boolean z) {
        int maxImportSize = getMaxImportSize(z);
        if (this.m_transcodeProfile == null) {
            for (NexExportProfile nexExportProfile : getSupportedExportProfiles(z)) {
                if (nexExportProfile.width() * (nexExportProfile.height() - 31) <= maxImportSize && nexExportProfile.width() <= 1920 && nexExportProfile.height() <= 1088 && (this.m_transcodeProfile == null || this.m_transcodeProfile.height() < nexExportProfile.height())) {
                    this.m_transcodeProfile = nexExportProfile;
                }
            }
        }
        if (this.m_transcodeProfile != null) {
            return this.m_transcodeProfile;
        }
        throw new InternalError();
    }

    public NexExportProfile getTranscodeProfile(boolean z, int i, int i2) {
        NexExportProfile nexExportProfile;
        int i3 = i * i2;
        int i4 = z ? this.m_maxImportSWSize : this.m_maxImportHWSize;
        int maxImportSize = getMaxImportSize(z);
        for (NexExportProfile nexExportProfile2 : getSupportedExportProfiles(z)) {
            if (nexExportProfile2.width() * (nexExportProfile2.height() - 31) <= maxImportSize) {
                int width = nexExportProfile2.width() * nexExportProfile2.height();
                if (width <= (i3 * BaiduSceneResult.TEMPLE) / 100 && width <= i4) {
                    nexExportProfile = nexExportProfile2;
                    break;
                }
            }
        }
        nexExportProfile = null;
        if (nexExportProfile == null) {
            nexExportProfile = NexExportProfile.getExportProfiles(i, i2);
        }
        if (nexExportProfile != null) {
            return nexExportProfile;
        }
        throw new InternalError();
    }

    public int getMaxSpeedCtrlValue(int i, int i2) {
        if (i * i2 > this.m_maxImportHWSize && i * i2 > 942080) {
            return 100;
        }
        return 150;
    }

    public int getMinSpeedCtrlValue() {
        return 25;
    }

    public int getExtraDurationForSplit() {
        return this.m_extraDurationForSplit;
    }

    public boolean getAVCSupported() {
        return this.m_supportAVC;
    }

    public boolean getMPEGV4Supported() {
        return this.m_supportMPEGV4;
    }

    public boolean getNeedsColorFormatCheck() {
        if (isUnknownDevice()) {
            if (VERSION.SDK_INT > 17 || !this.mBoardPlatform.trim().toLowerCase(Locale.US).contains("exynos")) {
                return false;
            }
            return true;
        } else if (getIntProperty("chk_color_fmt", 0) != 1) {
            return false;
        } else {
            return true;
        }
    }

    public String getStringProperty(String str, String str2) {
        if (this.m_properties.containsKey(str)) {
            return (String) this.m_properties.get(str);
        }
        return str2;
    }

    public int getIntProperty(String str, int i) {
        if (!this.m_properties.containsKey(str)) {
            return i;
        }
        try {
            return Integer.parseInt((String) this.m_properties.get(str));
        } catch (NumberFormatException e) {
            return i;
        }
    }

    public boolean getBooleanProperty(String str, boolean z) {
        if (!this.m_properties.containsKey(str)) {
            return z;
        }
        String str2 = (String) this.m_properties.get(str);
        if (str2.trim().equalsIgnoreCase("true")) {
            return true;
        }
        if (str2.trim().equalsIgnoreCase("false")) {
            return false;
        }
        return z;
    }

    public long getLongProperty(String str, long j) {
        if (!this.m_properties.containsKey(str)) {
            return j;
        }
        try {
            return Long.parseLong((String) this.m_properties.get(str));
        } catch (NumberFormatException e) {
            return j;
        }
    }

    public a getMatchInfo() {
        return this.m_matchInfo;
    }

    public int getAudioCodecMaxCount() {
        if (this.m_audioCodecCount == -1) {
            return Integer.MAX_VALUE;
        }
        if (this.m_audioCodecCount < 0) {
            return 0;
        }
        return this.m_audioCodecCount;
    }

    public boolean getIsDeviceSupported() {
        return this.m_support && ((this.m_audioCodecCount == -1 || this.m_audioCodecCount >= 6) && (getAVCSupported() || getMPEGV4Supported()));
    }

    public int getSupportIfUpgradeVersion() {
        return this.m_supportIfUpgradeVersion;
    }

    public boolean getUseAndroidJPEGDecoder() {
        return getIntProperty("use_android_jpeg_dec", 1) == 1;
    }

    public int getMaxSupportedVideoBitrate(int i) {
        return getIntProperty("max_supported_video_bitrate", i);
    }

    public int getMaxSupportedAudioSamplingRate(int i) {
        return getIntProperty("max_supported_audio_samplingrate", i);
    }

    public int getMaxSupportedAudioChannels(int i) {
        return getIntProperty("max_supported_audio_channels", i);
    }

    public boolean getUseMediaExtractor() {
        return getIntProperty("use_mediaextractor", 1) == 1;
    }

    public DeviceSupportResponse getDSR() {
        return this.m_dsr;
    }
}
