package com.meicam.sdk;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.RectF;
import android.graphics.SurfaceTexture;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.Log;
import com.cdv.io.NvAndroidVirtualCameraSurfaceTexture;
import com.meicam.sdk.NvsCustomVideoFx.Renderer;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

public class NvsStreamingContext {
    public static final int BUFFER_IMAGE_ROTATION_0 = 0;
    public static final int BUFFER_IMAGE_ROTATION_180 = 2;
    public static final int BUFFER_IMAGE_ROTATION_270 = 3;
    public static final int BUFFER_IMAGE_ROTATION_90 = 1;
    public static final int CAPTURE_DEVICE_ERROR_SERVER_DIED = 2;
    public static final int CAPTURE_DEVICE_ERROR_UNKNOWN = 1;
    public static final String COMPILE_AUDIO_BITRATE = "audio bitrate";
    public static final String COMPILE_BITRATE = "bitrate";
    public static final int COMPILE_BITRATE_GRADE_HIGH = 2;
    public static final int COMPILE_BITRATE_GRADE_LOW = 0;
    public static final int COMPILE_BITRATE_GRADE_MEDIUM = 1;
    public static final String COMPILE_GOP_SIZE = "gopsize";
    public static final String COMPILE_LOSSLESS_AUDIO = "lossless audio";
    public static final String COMPILE_OPTIMIZE_FOR_NETWORK_USE = "optimize-for-network-use";
    public static final String COMPILE_SOFTWARE_ENCODER_CRF = "software encorder crf";
    public static final String COMPILE_SOFTWARE_ENCODER_MODE = "software encorder mode";
    public static final String COMPILE_SOFTWARE_ENCODER_PRESET = "software encorder preset";
    public static final int COMPILE_VIDEO_RESOLUTION_GRADE_1080 = 3;
    public static final int COMPILE_VIDEO_RESOLUTION_GRADE_2160 = 4;
    public static final int COMPILE_VIDEO_RESOLUTION_GRADE_360 = 0;
    public static final int COMPILE_VIDEO_RESOLUTION_GRADE_480 = 1;
    public static final int COMPILE_VIDEO_RESOLUTION_GRADE_720 = 2;
    public static final int COMPILE_VIDEO_RESOLUTION_GRADE_CUSTOM = 256;
    public static final int DEBUG_LEVEL_DEBUG = 3;
    public static final int DEBUG_LEVEL_ERROR = 1;
    public static final int DEBUG_LEVEL_NONE = 0;
    public static final int DEBUG_LEVEL_WARNING = 2;
    public static final String RECORD_BITRATE = "bitrate";
    public static final String RECORD_GOP_SIZE = "gopsize";
    public static final int STREAMING_CONTEXT_FLAG_ASYNC_ENGINE_STATE = 16;
    public static final int STREAMING_CONTEXT_FLAG_COMPACT_MEMORY_MODE = 2;
    public static final int STREAMING_CONTEXT_FLAG_SUPPORT_4K_EDIT = 1;
    public static final int STREAMING_CONTEXT_FLAG_SUPPORT_8K_EDIT = 4;
    public static final int STREAMING_ENGINE_CAPTURE_FLAG_CAPTURE_BUDDY_HOST_VIDEO_FRAME = 32;
    public static final int STREAMING_ENGINE_CAPTURE_FLAG_DONT_CAPTURE_AUDIO = 16;
    public static final int STREAMING_ENGINE_CAPTURE_FLAG_DONT_USE_SYSTEM_RECORDER = 4;
    public static final int STREAMING_ENGINE_CAPTURE_FLAG_FACE_ACTION_WITH_PARTICLE = 256;
    public static final int STREAMING_ENGINE_CAPTURE_FLAG_GRAB_CAPTURED_VIDEO_FRAME = 1;
    public static final int STREAMING_ENGINE_CAPTURE_FLAG_LOW_PIPELINE_SIZE = 512;
    public static final int STREAMING_ENGINE_CAPTURE_FLAG_STRICT_PREVIEW_VIDEO_SIZE = 8;
    public static final int STREAMING_ENGINE_COMPILE_FLAG_DISABLE_ALIGN_VIDEO_SIZE = 4;
    public static final int STREAMING_ENGINE_COMPILE_FLAG_DISABLE_HARDWARE_ENCODER = 1;
    public static final int STREAMING_ENGINE_COMPILE_FLAG_DISABLE_OPERATING_RATE = 2;
    public static final int STREAMING_ENGINE_HARDWARE_ERROR_TYPE_VIDEO_DECODER_SETUP_ERROR = 2;
    public static final int STREAMING_ENGINE_HARDWARE_ERROR_TYPE_VIDEO_DECODING_ERROR = 3;
    public static final int STREAMING_ENGINE_HARDWARE_ERROR_TYPE_VIDEO_ENCODER_SETUP_ERROR = 0;
    public static final int STREAMING_ENGINE_HARDWARE_ERROR_TYPE_VIDEO_ENCODING_ERROR = 1;
    public static final int STREAMING_ENGINE_PLAYBACK_EXCEPTION_TYPE_MEDIA_FILE_ERROR = 0;
    public static final int STREAMING_ENGINE_PLAYBACK_FLAG_LOW_PIPELINE_SIZE = 8;
    public static final int STREAMING_ENGINE_RECORDING_FLAG_DISABLE_HARDWARE_ENCODER = 4;
    public static final int STREAMING_ENGINE_RECORDING_FLAG_IGNORE_VIDEO_ROTATION = 32;
    public static final int STREAMING_ENGINE_RECORDING_FLAG_ONLY_RECORD_VIDEO = 16;
    public static final int STREAMING_ENGINE_RECORDING_FLAG_SOFTWARE_VIDEO_INTRA_FRAME_ONLY_FAST_STOP = 8;
    public static final int STREAMING_ENGINE_RECORDING_FLAG_VIDEO_INTRA_FRAME_ONLY = 2;
    public static final int STREAMING_ENGINE_SEEK_FLAG_SHOW_ANIMATED_STICKER_POSTER = 4;
    public static final int STREAMING_ENGINE_SEEK_FLAG_SHOW_CAPTION_POSTER = 2;
    public static final int STREAMING_ENGINE_SEND_BUFFER_FLAG_ONLY_FOR_BUDDY = 2;
    public static final int STREAMING_ENGINE_SEND_BUFFER_FLAG_ONLY_FOR_GRAB = 1;
    public static final int STREAMING_ENGINE_STATE_CAPTUREPREVIEW = 1;
    public static final int STREAMING_ENGINE_STATE_CAPTURERECORDING = 2;
    public static final int STREAMING_ENGINE_STATE_COMPILE = 5;
    public static final int STREAMING_ENGINE_STATE_PLAYBACK = 3;
    public static final int STREAMING_ENGINE_STATE_SEEKING = 4;
    public static final int STREAMING_ENGINE_STATE_STOPPED = 0;
    public static final int STREAMING_ENGINE_STOP_FLAG_ASYNC = 2;
    public static final int STREAMING_ENGINE_STOP_FLAG_FORCE_STOP_COMPILATION = 1;
    private static final String TAG = "Meicam";
    public static final int VIDEO_CAPTURE_RESOLUTION_GRADE_HIGH = 2;
    public static final int VIDEO_CAPTURE_RESOLUTION_GRADE_LOW = 0;
    public static final int VIDEO_CAPTURE_RESOLUTION_GRADE_MEDIUM = 1;
    public static final int VIDEO_CAPTURE_RESOLUTION_GRADE_SUPER_HIGH = 3;
    public static final int VIDEO_PREVIEW_SIZEMODE_FULLSIZE = 0;
    public static final int VIDEO_PREVIEW_SIZEMODE_LIVEWINDOW_SIZE = 1;
    public static final int VIDEO_STABILIZATION_MODE_AUTO = 1;
    public static final int VIDEO_STABILIZATION_MODE_OFF = 0;
    public static final int VIDEO_STABILIZATION_MODE_STANDARD = 2;
    public static final int VIDEO_STABILIZATION_MODE_SUPER = 3;
    private static AssetManager m_assetManager = null;
    private static ClassLoader m_classLoader = null;
    private static Context m_context = null;
    private static boolean m_customNativeLibraryDirPath = false;
    private static int m_debugLevel = 3;
    private static boolean m_initializedOnce = false;
    private static NvsStreamingContext m_instance = null;
    private static int m_maxReaderCount = 0;
    private static boolean m_maxReaderFlag = false;
    private static String m_nativeLibraryDirPath;
    private static boolean m_saveDebugMessagesToFile = false;
    private NvsAssetPackageManager m_assetPackageManager;
    private CaptureRecordingDurationCallback m_captureRecordingDurationCallback;
    private CaptureRecordingStartedCallback m_captureRecordingStartedCallback;
    private CaptureDeviceCallback m_catpureDeviceCallback;
    private CapturedVideoFrameGrabberCallback m_catpuredVideoFrameGrabberCallback;
    private CompileCallback m_compileCallback;
    private CompileCallback2 m_compileCallback2;
    private Hashtable<String, Object> m_compileConfigurations;
    private float m_compileVideoBitrateMultiplier;
    private HardwareErrorCallback m_hardwareErrorCallback;
    private PlaybackCallback m_playbackCallback;
    private PlaybackCallback2 m_playbackCallback2;
    private PlaybackExceptionCallback m_playbackExceptionCallback;
    private float m_recordVideoBitrateMultiplier;
    private StreamingEngineCallback m_streamingEngineCallback;
    private TimelineTimestampCallback m_timelineTimestampCallback;

    public interface CaptureDeviceCallback {
        void onCaptureDeviceAutoFocusComplete(int i, boolean z);

        void onCaptureDeviceCapsReady(int i);

        void onCaptureDeviceError(int i, int i2);

        void onCaptureDevicePreviewResolutionReady(int i);

        void onCaptureDevicePreviewStarted(int i);

        void onCaptureDeviceStopped(int i);

        void onCaptureRecordingError(int i);

        void onCaptureRecordingFinished(int i);
    }

    public static class CaptureDeviceCapability {
        public float exposureCompensationStep;
        public int maxExposureCompensation;
        public int maxZoom;
        public int minExposureCompensation;
        public boolean supportAutoExposure;
        public boolean supportAutoFocus;
        public boolean supportExposureCompensation;
        public boolean supportFlash;
        public boolean supportVideoStabilization;
        public boolean supportZoom;
        public float[] zoomRatios;
    }

    public interface CaptureRecordingDurationCallback {
        void onCaptureRecordingDuration(int i, long j);
    }

    public interface CaptureRecordingStartedCallback {
        void onCaptureRecordingStarted(int i);
    }

    public interface CapturedVideoFrameGrabberCallback {
        void onCapturedVideoFrameGrabbedArrived(ByteBuffer byteBuffer, NvsVideoFrameInfo nvsVideoFrameInfo);
    }

    public interface CompileCallback2 {
        void onCompileCompleted(NvsTimeline nvsTimeline, boolean z);
    }

    public interface CompileCallback {
        void onCompileFailed(NvsTimeline nvsTimeline);

        void onCompileFinished(NvsTimeline nvsTimeline);

        void onCompileProgress(NvsTimeline nvsTimeline, int i);
    }

    public interface HardwareErrorCallback {
        void onHardwareError(int i, String str);
    }

    public interface PlaybackCallback2 {
        void onPlaybackTimelinePosition(NvsTimeline nvsTimeline, long j);
    }

    public interface PlaybackCallback {
        void onPlaybackEOF(NvsTimeline nvsTimeline);

        void onPlaybackPreloadingCompletion(NvsTimeline nvsTimeline);

        void onPlaybackStopped(NvsTimeline nvsTimeline);
    }

    public interface PlaybackExceptionCallback {
        void onPlaybackException(NvsTimeline nvsTimeline, int i, String str);
    }

    public static class SdkVersion {
        public int majorVersion;
        public int minorVersion;
        public int revisionNumber;
    }

    public interface StreamingEngineCallback {
        void onFirstVideoFramePresented(NvsTimeline nvsTimeline);

        void onStreamingEngineStateChanged(int i);
    }

    public interface TimelineTimestampCallback {
        void onTimestampOutOfRange(NvsTimeline nvsTimeline);
    }

    public static class VerifyLicenseResult {
        public boolean needCheckExpiration;
        public boolean success;
    }

    private native boolean nativeApplyCaptureScene(String str);

    private native boolean nativeCanDecodeVideoStreamBySoftware(String str);

    private native void nativeCancelAutoFocus();

    private native boolean nativeCheckDontSetCameraParamOnRecordingWithSystemRecorder();

    private native void nativeClearCachedResources(boolean z);

    private static native void nativeClose();

    private native boolean nativeCompileTimeline(NvsTimeline nvsTimeline, long j, long j2, String str, int i, int i2, float f, Hashtable hashtable, int i3);

    private native boolean nativeConnectCapturePreviewWithLiveWindow(Object obj);

    private native boolean nativeConnectCapturePreviewWithSurfaceTexture(SurfaceTexture surfaceTexture);

    private native boolean nativeConnectTimelineWithLiveWindow(NvsTimeline nvsTimeline, Object obj);

    private native boolean nativeConnectTimelineWithSurfaceTexture(NvsTimeline nvsTimeline, SurfaceTexture surfaceTexture, NvsRational nvsRational);

    private native boolean nativeCreateSecondaryStreamingEngine();

    private native NvsTimeline nativeCreateTimeline(NvsVideoResolution nvsVideoResolution, NvsRational nvsRational, NvsAudioResolution nvsAudioResolution);

    private native void nativeDestroySecondaryStreamingEngine();

    private native void nativeDetectPackageName(Context context);

    private native int nativeDetectVideoFileKeyframeInterval(String str);

    private native NvsAREffectContext nativeGetAREffectContext();

    private native NvsAVFileInfo nativeGetAVFileInfo(String str);

    private native List<String> nativeGetAllBuiltinAudioFxNames();

    private native List<String> nativeGetAllBuiltinCaptureVideoFxNames();

    private native List<String> nativeGetAllBuiltinVideoFxNames();

    private native List<String> nativeGetAllBuiltinVideoTransitionNames();

    private native long nativeGetAssetPackageManager();

    private native NvsFxDescription nativeGetAudioFxDescription(String str);

    private native String nativeGetBeautyVideoFxName();

    private native CaptureDeviceCapability nativeGetCaptureDeviceCapability(int i);

    private native int nativeGetCaptureDeviceCount();

    private native NvsSize nativeGetCapturePreviewVideoSize(int i);

    private native NvsCaptureVideoFx nativeGetCaptureVideoFxByIndex(int i);

    private native int nativeGetCaptureVideoFxCount();

    private native String nativeGetCurrentCaptureSceneId();

    private native int nativeGetCustomCompileVideoHeight();

    private native String nativeGetDefaultThemeEndingLogoImageFilePath();

    private native String nativeGetDefaultVideoTransitionName();

    private native int nativeGetExposureCompensation();

    private native SdkVersion nativeGetSdkVersion();

    private native int nativeGetStreamingEngineState();

    private native long nativeGetTimelineCurrentPosition(NvsTimeline nvsTimeline);

    private native NvsFxDescription nativeGetVideoFxDescription(String str);

    private native int nativeGetVideoStabilization();

    private native int nativeGetZoom();

    private native Bitmap nativeGrabImageFromTimeline(NvsTimeline nvsTimeline, long j, NvsRational nvsRational, int i);

    private static native boolean nativeInit(String str, String str2, int i);

    private static native boolean nativeInitJNI();

    private native NvsCaptureVideoFx nativeInsertBuiltinCaptureVideoFx(String str, int i);

    private native NvsCaptureVideoFx nativeInsertCustomCaptureVideoFx(Renderer renderer, int i);

    private native NvsCaptureVideoFx nativeInsertPackagedCaptureVideoFx(String str, int i);

    private native boolean nativeIsCaptureDeviceBackFacing(int i);

    private native boolean nativeIsDefaultCaptionFade();

    private native boolean nativeIsFlashOn();

    private native boolean nativeIsRecordingPaused();

    private native boolean nativeIsSdkAuthorised();

    private native boolean nativeIsSecondaryStreamingEngineOpened();

    private native boolean nativePauseResumeRecording(boolean z);

    private native boolean nativePlaybackTimeline(NvsTimeline nvsTimeline, long j, long j2, int i, boolean z, int i2);

    private native boolean nativePlaybackTimelineWithProxyScale(NvsTimeline nvsTimeline, long j, long j2, NvsRational nvsRational, boolean z, int i);

    private native void nativeRemoveAllCaptureVideoFx();

    private native boolean nativeRemoveCaptureVideoFx(int i);

    private native void nativeRemoveCurrentCaptureScene();

    private native boolean nativeRemoveTimeline(NvsTimeline nvsTimeline);

    private native NvsColor nativeSampleColorFromCapturedVideoFrame(RectF rectF);

    private native boolean nativeSeekTimeline(NvsTimeline nvsTimeline, long j, int i, int i2);

    private native boolean nativeSeekTimelineWithProxyScale(NvsTimeline nvsTimeline, long j, NvsRational nvsRational, int i);

    private native boolean nativeSendBufferToCapturePreview(byte[] bArr, long j, int i);

    private native boolean nativeSendBufferToCapturePreviewForSecondaryEngine(byte[] bArr, long j);

    private static native void nativeSetAssetManager(AssetManager assetManager);

    private native void nativeSetAutoExposureRect(RectF rectF);

    private static native void nativeSetCaptureDeviceCallback(CaptureDeviceCallback captureDeviceCallback);

    private static native void nativeSetCaptureRecordingDurationCallback(CaptureRecordingDurationCallback captureRecordingDurationCallback);

    private static native void nativeSetCaptureRecordingStartedCallback(CaptureRecordingStartedCallback captureRecordingStartedCallback);

    private static native void nativeSetCapturedVideoFrameGrabberCallback(CapturedVideoFrameGrabberCallback capturedVideoFrameGrabberCallback);

    private static native void nativeSetCompileCallback(CompileCallback compileCallback);

    private static native void nativeSetCompileCallback2(CompileCallback2 compileCallback2);

    private native void nativeSetCustomCompileVideoHeight(int i);

    private static native void nativeSetDebugLevel(int i);

    private native void nativeSetDefaultCaptionFade(boolean z);

    private native boolean nativeSetDefaultThemeEndingLogoImageFilePath(String str);

    private native void nativeSetExposureCompensation(int i);

    private static native void nativeSetHardwareErrorCallback(HardwareErrorCallback hardwareErrorCallback);

    private static native void nativeSetMaxReaderCount(int i);

    private native void nativeSetMediaCodecIconReaderEnabled(String str, boolean z);

    private native void nativeSetMediaCodecVideoDecodingOperatingRate(String str, int i);

    private static native void nativeSetPlaybackCallback(PlaybackCallback playbackCallback);

    private static native void nativeSetPlaybackCallback2(PlaybackCallback2 playbackCallback2);

    private static native void nativeSetPlaybackExceptionCallback(PlaybackExceptionCallback playbackExceptionCallback);

    private static native void nativeSetSaveDebugMessagesToFile(boolean z);

    private native void nativeSetSecondaryEngineCapturedVideoFrameCallback(CapturedVideoFrameGrabberCallback capturedVideoFrameGrabberCallback);

    private static native void nativeSetStreamingEngineCallback(StreamingEngineCallback streamingEngineCallback);

    private native boolean nativeSetThemeEndingEnabled(boolean z);

    private native void nativeSetUserWatermarkForCapture(String str, int i, int i2, float f, int i3, int i4, int i5);

    private native void nativeSetVideoStabilization(int i);

    private native void nativeSetZoom(int i);

    private native void nativeStartAutoFocus(RectF rectF);

    private native boolean nativeStartBufferCapturePreview(int i, int i2, NvsRational nvsRational, int i3, boolean z);

    private native boolean nativeStartBufferCapturePreviewForSecondaryEngine(int i, int i2, NvsRational nvsRational, int i3, boolean z);

    private native boolean nativeStartCapturePreview(int i, int i2, int i3, NvsRational nvsRational);

    private native boolean nativeStartCapturePreviewForLiveStreaming(int i, int i2, int i3, NvsRational nvsRational, String str);

    private native boolean nativeStartDualBufferCapturePreview(int i, int i2, int i3, int i4, int i5, boolean z, int i6, NvsRational nvsRational, int i7, NvAndroidVirtualCameraSurfaceTexture nvAndroidVirtualCameraSurfaceTexture);

    private native boolean nativeStartRecording(String str, float f, int i, int i2, int i3);

    private native void nativeStop(int i);

    private native void nativeStopRecording();

    private native void nativeStopSecondaryEngine();

    private native void nativeToggleFlash(boolean z);

    private static native VerifyLicenseResult nativeVerifySdkLicenseFile(Context context, String str, boolean z);

    public static void setNativeLibraryDirPath(String str) {
        NvsUtils.checkFunctionInMainThread();
        m_nativeLibraryDirPath = str + "/";
        if (str != null) {
            m_customNativeLibraryDirPath = true;
        }
    }

    public static void setLoadPluginFromAssets(boolean z) {
        NvsUtils.checkFunctionInMainThread();
    }

    public static void setPluginDirPath(String str) {
        NvsUtils.checkFunctionInMainThread();
    }

    public static void setDebugLevel(int i) {
        NvsUtils.checkFunctionInMainThread();
        if (i != m_debugLevel) {
            m_debugLevel = i;
            if (m_instance != null) {
                nativeSetDebugLevel(m_debugLevel);
            }
        }
    }

    public static void setSaveDebugMessagesToFile(boolean z) {
        NvsUtils.checkFunctionInMainThread();
        if (z != m_saveDebugMessagesToFile) {
            m_saveDebugMessagesToFile = z;
            if (m_instance != null) {
                nativeSetSaveDebugMessagesToFile(m_saveDebugMessagesToFile);
            }
        }
    }

    public static Context getContext() {
        NvsUtils.checkFunctionInMainThread();
        return m_context;
    }

    public static ClassLoader getClassLoader() {
        NvsUtils.checkFunctionInMainThread();
        return m_classLoader;
    }

    public boolean isSdkAuthorised() {
        NvsUtils.checkFunctionInMainThread();
        return nativeIsSdkAuthorised();
    }

    /* JADX WARNING: Missing block: B:50:0x0126, code:
            if (r3 <= 24) goto L_0x0128;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static NvsStreamingContext init(final Context context, String str, int i) {
        boolean z = false;
        NvsUtils.checkFunctionInMainThread();
        if (m_instance != null) {
            return m_instance;
        }
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (m_nativeLibraryDirPath == null) {
            m_nativeLibraryDirPath = applicationInfo.nativeLibraryDir + "/";
        }
        String str2 = ("QT_BLOCK_EVENT_LOOPS_WHEN_SUSPENDED=0" + "\tHOME=" + context.getFilesDir().getAbsolutePath()) + "\tTMPDIR=" + context.getFilesDir().getAbsolutePath();
        try {
            Object obj;
            m_assetManager = context.getAssets();
            m_context = context;
            m_classLoader = m_context.getClassLoader();
            if (!m_initializedOnce) {
                try {
                    Class.forName("com.meicam.sdk.NvsFaceEffectV1Detector");
                    obj = 1;
                } catch (Exception e) {
                    obj = null;
                }
                if (obj != null) {
                    loadNativeLibrary("nama");
                }
                try {
                    Class.forName("com.meicam.sdk.NvsFaceEffect2Init");
                    obj = 1;
                } catch (Exception e2) {
                    obj = null;
                }
                if (obj != null) {
                    loadNativeLibrary("st_mobile");
                }
                loadNativeLibrary("NvStreamingSdkCore");
            }
            if (nativeInitJNI()) {
                boolean z2;
                nativeSetAssetManager(m_assetManager);
                if (m_maxReaderFlag) {
                    nativeSetMaxReaderCount(m_maxReaderCount);
                }
                nativeSetDebugLevel(m_debugLevel);
                nativeSetSaveDebugMessagesToFile(m_saveDebugMessagesToFile);
                if (NvsSystemVariableManager.getSystemVariableInt(context, "isExpired") == 1) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                VerifyLicenseResult verifyLicenseResult = new VerifyLicenseResult();
                if (!m_initializedOnce) {
                    verifyLicenseResult = nativeVerifySdkLicenseFile(context, str, z2);
                }
                boolean z3 = verifyLicenseResult.needCheckExpiration;
                if (z3) {
                    obj = NvsSystemVariableManager.getSystemVariableString(context, "lastTime");
                    if (!TextUtils.isEmpty(obj)) {
                        int hourRange = NvsTimeUtil.getHourRange(obj, NvsTimeUtil.getCurrentTime());
                        if (hourRange >= 0) {
                        }
                    }
                }
                z = z3;
                if (z) {
                    final int randomTime = NvsTimeUtil.getRandomTime(30000, 60000);
                    new Thread() {
                        public void run() {
                            try {
                                Thread.sleep((long) randomTime);
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                            NvsHttpsRequest nvsHttpsRequest = new NvsHttpsRequest();
                            Map hashMap = new HashMap();
                            hashMap.put("command", "isExpired");
                            hashMap.put("appId", context.getPackageName());
                            try {
                                JSONObject jSONObject = new JSONObject(nvsHttpsRequest.httpsRequest("https://api.meishesdk.com/license/index.php", hashMap));
                                if (jSONObject.getInt("errNo") != 0) {
                                    Log.e(NvsStreamingContext.TAG, "" + jSONObject.getString("errString"));
                                } else if (jSONObject.getBoolean("isExpired")) {
                                    NvsSystemVariableManager.setSystemVariableInt(context, "isExpired", 1);
                                    NvsSystemVariableManager.setSystemVariableString(context, "lastTime", NvsTimeUtil.getCurrentTime());
                                } else {
                                    NvsSystemVariableManager.setSystemVariableInt(context, "isExpired", 0);
                                    NvsSystemVariableManager.setSystemVariableString(context, "lastTime", NvsTimeUtil.getCurrentTime());
                                }
                            } catch (Exception e2) {
                                e2.printStackTrace();
                            }
                        }
                    }.start();
                }
                if (!nativeInit("<meishesdk>", str2, i)) {
                    return null;
                }
                m_instance = new NvsStreamingContext(context);
                m_initializedOnce = true;
                return m_instance;
            }
            throw new Exception("nativeInitJNI() failed!");
        } catch (Exception e3) {
            Log.e(TAG, "" + e3.getMessage());
            e3.printStackTrace();
            m_context = null;
            m_classLoader = null;
            m_assetManager = null;
            return null;
        }
    }

    public static NvsStreamingContext init(Activity activity, String str, int i) {
        NvsUtils.checkFunctionInMainThread();
        return init((Context) activity, str, i);
    }

    public static NvsStreamingContext init(Activity activity, String str) {
        NvsUtils.checkFunctionInMainThread();
        return init(activity, str, 0);
    }

    public static void close() {
        NvsUtils.checkFunctionInMainThread();
        if (m_instance != null) {
            NvsAssetPackageManager assetPackageManager = m_instance.getAssetPackageManager();
            if (assetPackageManager != null) {
                assetPackageManager.setCallbackInterface(null);
            }
            m_instance.setCaptureDeviceCallback(null);
            m_instance.setCapturedVideoFrameGrabberCallback(null);
            m_instance.setCaptureRecordingStartedCallback(null);
            m_instance.setCaptureRecordingDurationCallback(null);
            m_instance.setPlaybackCallback(null);
            m_instance.setCompileCallback(null);
            m_instance.setStreamingEngineCallback(null);
            m_instance.setTimelineTimestampCallback(null);
            m_instance.setCompileCallback2(null);
            m_instance.setPlaybackCallback2(null);
            m_instance.setPlaybackExceptionCallback(null);
            m_instance.setHardwareErrorCallback(null);
            m_instance = null;
            m_context = null;
            m_classLoader = null;
            nativeSetAssetManager(null);
            m_assetManager = null;
            nativeClose();
        }
    }

    public static NvsStreamingContext getInstance() {
        NvsUtils.checkFunctionInMainThread();
        return m_instance;
    }

    private NvsStreamingContext(Context context) {
        this.m_assetPackageManager = null;
        this.m_compileVideoBitrateMultiplier = 1.0f;
        this.m_recordVideoBitrateMultiplier = 1.0f;
        this.m_compileConfigurations = new Hashtable();
        this.m_assetPackageManager = new NvsAssetPackageManager();
        this.m_assetPackageManager.setInternalObject(nativeGetAssetPackageManager());
        nativeDetectPackageName(context);
    }

    public SdkVersion getSdkVersion() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetSdkVersion();
    }

    public NvsAssetPackageManager getAssetPackageManager() {
        NvsUtils.checkFunctionInMainThread();
        return this.m_assetPackageManager;
    }

    public void setCaptureDeviceCallback(CaptureDeviceCallback captureDeviceCallback) {
        NvsUtils.checkFunctionInMainThread();
        this.m_catpureDeviceCallback = captureDeviceCallback;
        nativeSetCaptureDeviceCallback(captureDeviceCallback);
    }

    public void setCapturedVideoFrameGrabberCallback(CapturedVideoFrameGrabberCallback capturedVideoFrameGrabberCallback) {
        NvsUtils.checkFunctionInMainThread();
        this.m_catpuredVideoFrameGrabberCallback = capturedVideoFrameGrabberCallback;
        nativeSetCapturedVideoFrameGrabberCallback(capturedVideoFrameGrabberCallback);
    }

    public void setCaptureRecordingStartedCallback(CaptureRecordingStartedCallback captureRecordingStartedCallback) {
        NvsUtils.checkFunctionInMainThread();
        this.m_captureRecordingStartedCallback = captureRecordingStartedCallback;
        nativeSetCaptureRecordingStartedCallback(captureRecordingStartedCallback);
    }

    public void setCaptureRecordingDurationCallback(CaptureRecordingDurationCallback captureRecordingDurationCallback) {
        NvsUtils.checkFunctionInMainThread();
        this.m_captureRecordingDurationCallback = captureRecordingDurationCallback;
        nativeSetCaptureRecordingDurationCallback(captureRecordingDurationCallback);
    }

    public void setPlaybackCallback(PlaybackCallback playbackCallback) {
        NvsUtils.checkFunctionInMainThread();
        this.m_playbackCallback = playbackCallback;
        nativeSetPlaybackCallback(playbackCallback);
    }

    public void setCompileCallback(CompileCallback compileCallback) {
        NvsUtils.checkFunctionInMainThread();
        this.m_compileCallback = compileCallback;
        nativeSetCompileCallback(compileCallback);
    }

    public void setStreamingEngineCallback(StreamingEngineCallback streamingEngineCallback) {
        NvsUtils.checkFunctionInMainThread();
        this.m_streamingEngineCallback = streamingEngineCallback;
        nativeSetStreamingEngineCallback(streamingEngineCallback);
    }

    public void setTimelineTimestampCallback(TimelineTimestampCallback timelineTimestampCallback) {
        NvsUtils.checkFunctionInMainThread();
        this.m_timelineTimestampCallback = timelineTimestampCallback;
    }

    public void setCompileCallback2(CompileCallback2 compileCallback2) {
        NvsUtils.checkFunctionInMainThread();
        this.m_compileCallback2 = compileCallback2;
        nativeSetCompileCallback2(compileCallback2);
    }

    public void setPlaybackCallback2(PlaybackCallback2 playbackCallback2) {
        NvsUtils.checkFunctionInMainThread();
        this.m_playbackCallback2 = playbackCallback2;
        nativeSetPlaybackCallback2(playbackCallback2);
    }

    public void setPlaybackExceptionCallback(PlaybackExceptionCallback playbackExceptionCallback) {
        NvsUtils.checkFunctionInMainThread();
        this.m_playbackExceptionCallback = playbackExceptionCallback;
        nativeSetPlaybackExceptionCallback(playbackExceptionCallback);
    }

    public void setHardwareErrorCallback(HardwareErrorCallback hardwareErrorCallback) {
        NvsUtils.checkFunctionInMainThread();
        this.m_hardwareErrorCallback = hardwareErrorCallback;
        nativeSetHardwareErrorCallback(hardwareErrorCallback);
    }

    public NvsAVFileInfo getAVFileInfo(String str) {
        return nativeGetAVFileInfo(str);
    }

    public int detectVideoFileKeyframeInterval(String str) {
        return nativeDetectVideoFileKeyframeInterval(str);
    }

    public boolean canDecodeVideoStreamBySoftware(String str) {
        NvsUtils.checkFunctionInMainThread();
        return nativeCanDecodeVideoStreamBySoftware(str);
    }

    public boolean setDefaultThemeEndingLogoImageFilePath(String str) {
        NvsUtils.checkFunctionInMainThread();
        return nativeSetDefaultThemeEndingLogoImageFilePath(str);
    }

    public String getDefaultThemeEndingLogoImageFilePath() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetDefaultThemeEndingLogoImageFilePath();
    }

    public boolean setThemeEndingEnabled(boolean z) {
        NvsUtils.checkFunctionInMainThread();
        return nativeSetThemeEndingEnabled(z);
    }

    public NvsTimeline createTimeline(NvsVideoResolution nvsVideoResolution, NvsRational nvsRational, NvsAudioResolution nvsAudioResolution) {
        NvsUtils.checkFunctionInMainThread();
        return nativeCreateTimeline(nvsVideoResolution, nvsRational, nvsAudioResolution);
    }

    public boolean removeTimeline(NvsTimeline nvsTimeline) {
        NvsUtils.checkFunctionInMainThread();
        return nativeRemoveTimeline(nvsTimeline);
    }

    public int getStreamingEngineState() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetStreamingEngineState();
    }

    public long getTimelineCurrentPosition(NvsTimeline nvsTimeline) {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetTimelineCurrentPosition(nvsTimeline);
    }

    public boolean compileTimeline(NvsTimeline nvsTimeline, long j, long j2, String str, int i, int i2, int i3) {
        NvsUtils.checkFunctionInMainThread();
        return nativeCompileTimeline(nvsTimeline, j, j2, str, i, i2, this.m_compileVideoBitrateMultiplier, this.m_compileConfigurations, i3);
    }

    public void setCustomCompileVideoHeight(int i) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetCustomCompileVideoHeight(i);
    }

    public int getCustomCompileVideoHeight() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetCustomCompileVideoHeight();
    }

    public boolean connectTimelineWithLiveWindow(NvsTimeline nvsTimeline, NvsLiveWindow nvsLiveWindow) {
        NvsUtils.checkFunctionInMainThread();
        return nativeConnectTimelineWithLiveWindow(nvsTimeline, nvsLiveWindow);
    }

    public boolean connectTimelineWithLiveWindowExt(NvsTimeline nvsTimeline, NvsLiveWindowExt nvsLiveWindowExt) {
        NvsUtils.checkFunctionInMainThread();
        return nativeConnectTimelineWithLiveWindow(nvsTimeline, nvsLiveWindowExt);
    }

    public boolean connectTimelineWithSurfaceTexture(NvsTimeline nvsTimeline, SurfaceTexture surfaceTexture) {
        NvsUtils.checkFunctionInMainThread();
        return nativeConnectTimelineWithSurfaceTexture(nvsTimeline, surfaceTexture, new NvsRational(1, 1));
    }

    public boolean connectTimelineWithSurfaceTexture(NvsTimeline nvsTimeline, SurfaceTexture surfaceTexture, NvsRational nvsRational) {
        NvsUtils.checkFunctionInMainThread();
        return nativeConnectTimelineWithSurfaceTexture(nvsTimeline, surfaceTexture, nvsRational);
    }

    public boolean seekTimeline(NvsTimeline nvsTimeline, long j, int i, int i2) {
        NvsUtils.checkFunctionInMainThread();
        if (nvsTimeline == null) {
            return false;
        }
        if (j >= 0 && j < nvsTimeline.getDuration()) {
            return nativeSeekTimeline(nvsTimeline, j, i, i2);
        }
        if (this.m_timelineTimestampCallback == null) {
            return false;
        }
        this.m_timelineTimestampCallback.onTimestampOutOfRange(nvsTimeline);
        return false;
    }

    public boolean seekTimeline(NvsTimeline nvsTimeline, long j, NvsRational nvsRational, int i) {
        NvsUtils.checkFunctionInMainThread();
        if (nvsTimeline == null) {
            return false;
        }
        if (j >= 0 && j < nvsTimeline.getDuration()) {
            return nativeSeekTimelineWithProxyScale(nvsTimeline, j, nvsRational, i);
        }
        if (this.m_timelineTimestampCallback == null) {
            return false;
        }
        this.m_timelineTimestampCallback.onTimestampOutOfRange(nvsTimeline);
        return false;
    }

    public Bitmap grabImageFromTimeline(NvsTimeline nvsTimeline, long j, NvsRational nvsRational) {
        NvsUtils.checkFunctionInMainThread();
        return nativeGrabImageFromTimeline(nvsTimeline, j, nvsRational, 0);
    }

    public Bitmap grabImageFromTimeline(NvsTimeline nvsTimeline, long j, NvsRational nvsRational, int i) {
        NvsUtils.checkFunctionInMainThread();
        return nativeGrabImageFromTimeline(nvsTimeline, j, nvsRational, i);
    }

    public boolean playbackTimeline(NvsTimeline nvsTimeline, long j, long j2, int i, boolean z, int i2) {
        NvsUtils.checkFunctionInMainThread();
        if (nvsTimeline == null) {
            return false;
        }
        if (j >= 0 && j < nvsTimeline.getDuration() && (j2 < 0 || j < j2)) {
            return nativePlaybackTimeline(nvsTimeline, j, j2, i, z, i2);
        }
        if (this.m_timelineTimestampCallback == null) {
            return false;
        }
        this.m_timelineTimestampCallback.onTimestampOutOfRange(nvsTimeline);
        return false;
    }

    public boolean playbackTimeline(NvsTimeline nvsTimeline, long j, long j2, NvsRational nvsRational, boolean z, int i) {
        NvsUtils.checkFunctionInMainThread();
        if (nvsTimeline == null) {
            return false;
        }
        if (j >= 0 && j < nvsTimeline.getDuration() && (j2 < 0 || j < j2)) {
            return nativePlaybackTimelineWithProxyScale(nvsTimeline, j, j2, nvsRational, z, i);
        }
        if (this.m_timelineTimestampCallback == null) {
            return false;
        }
        this.m_timelineTimestampCallback.onTimestampOutOfRange(nvsTimeline);
        return false;
    }

    public void stop() {
        NvsUtils.checkFunctionInMainThread();
        nativeStop(0);
    }

    public void stop(int i) {
        NvsUtils.checkFunctionInMainThread();
        nativeStop(i);
    }

    public void clearCachedResources(boolean z) {
        NvsUtils.checkFunctionInMainThread();
        nativeClearCachedResources(z);
    }

    public int getCaptureDeviceCount() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetCaptureDeviceCount();
    }

    public boolean isCaptureDeviceBackFacing(int i) {
        NvsUtils.checkFunctionInMainThread();
        return nativeIsCaptureDeviceBackFacing(i);
    }

    public CaptureDeviceCapability getCaptureDeviceCapability(int i) {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetCaptureDeviceCapability(i);
    }

    public boolean checkDontSetCameraParamOnRecordingWithSystemRecorder() {
        NvsUtils.checkFunctionInMainThread();
        return nativeCheckDontSetCameraParamOnRecordingWithSystemRecorder();
    }

    public boolean connectCapturePreviewWithLiveWindow(NvsLiveWindow nvsLiveWindow) {
        NvsUtils.checkFunctionInMainThread();
        return nativeConnectCapturePreviewWithLiveWindow(nvsLiveWindow);
    }

    public boolean connectCapturePreviewWithLiveWindowExt(NvsLiveWindowExt nvsLiveWindowExt) {
        NvsUtils.checkFunctionInMainThread();
        return nativeConnectCapturePreviewWithLiveWindow(nvsLiveWindowExt);
    }

    public boolean connectCapturePreviewWithSurfaceTexture(SurfaceTexture surfaceTexture) {
        NvsUtils.checkFunctionInMainThread();
        return nativeConnectCapturePreviewWithSurfaceTexture(surfaceTexture);
    }

    public void setUserWatermarkForCapture(String str, int i, int i2, float f, int i3, int i4, int i5) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetUserWatermarkForCapture(str, i, i2, f, i3, i4, i5);
    }

    public void removeUserWatermarkForCapture() {
        NvsUtils.checkFunctionInMainThread();
        nativeSetUserWatermarkForCapture(null, 0, 0, 0.0f, 0, 0, 0);
    }

    public boolean startCapturePreview(int i, int i2, int i3, NvsRational nvsRational) {
        NvsUtils.checkFunctionInMainThread();
        if (checkCameraPermission()) {
            return nativeStartCapturePreview(i, i2, i3, nvsRational);
        }
        return false;
    }

    public boolean startBufferCapturePreview(int i, int i2, NvsRational nvsRational, int i3, boolean z) {
        NvsUtils.checkFunctionInMainThread();
        return nativeStartBufferCapturePreview(i, i2, nvsRational, i3, z);
    }

    public boolean startDualBufferCapturePreview(SurfaceTexture surfaceTexture, int i, int i2, int i3, int i4, int i5, boolean z, int i6, NvsRational nvsRational, int i7) {
        NvsUtils.checkFunctionInMainThread();
        if (surfaceTexture == null) {
            return false;
        }
        NvAndroidVirtualCameraSurfaceTexture nvAndroidVirtualCameraSurfaceTexture = new NvAndroidVirtualCameraSurfaceTexture(surfaceTexture);
        if (nativeStartDualBufferCapturePreview(i, i2, i3, i4, i5, z, i6, nvsRational, i7, nvAndroidVirtualCameraSurfaceTexture)) {
            return true;
        }
        nvAndroidVirtualCameraSurfaceTexture.release();
        return false;
    }

    public boolean sendBufferToCapturePreview(byte[] bArr, long j) {
        return sendBufferToCapturePreview(bArr, j, 0);
    }

    public boolean sendBufferToCapturePreview(byte[] bArr, long j, int i) {
        return nativeSendBufferToCapturePreview(bArr, j, i);
    }

    public boolean startCapturePreviewForLiveStreaming(int i, int i2, int i3, NvsRational nvsRational, String str) {
        NvsUtils.checkFunctionInMainThread();
        if (!checkCameraPermission()) {
            return false;
        }
        checkInternetPermission();
        return nativeStartCapturePreviewForLiveStreaming(i, i2, i3, nvsRational, str);
    }

    public NvsSize getCapturePreviewVideoSize(int i) {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetCapturePreviewVideoSize(i);
    }

    public NvsColor sampleColorFromCapturedVideoFrame(RectF rectF) {
        NvsUtils.checkFunctionInMainThread();
        return nativeSampleColorFromCapturedVideoFrame(rectF);
    }

    public void startAutoFocus(RectF rectF) {
        NvsUtils.checkFunctionInMainThread();
        nativeStartAutoFocus(rectF);
    }

    public void cancelAutoFocus() {
        NvsUtils.checkFunctionInMainThread();
        nativeCancelAutoFocus();
    }

    public void setAutoExposureRect(RectF rectF) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetAutoExposureRect(rectF);
    }

    public void setZoom(int i) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetZoom(i);
    }

    public int getZoom() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetZoom();
    }

    public void toggleFlash(boolean z) {
        NvsUtils.checkFunctionInMainThread();
        nativeToggleFlash(z);
    }

    public boolean isFlashOn() {
        NvsUtils.checkFunctionInMainThread();
        return nativeIsFlashOn();
    }

    public int getVideoStabilization() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetVideoStabilization();
    }

    public void setVideoStabilization(int i) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetVideoStabilization(i);
    }

    public void setExposureCompensation(int i) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetExposureCompensation(i);
    }

    public int getExposureCompensation() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetExposureCompensation();
    }

    public NvsCaptureVideoFx appendBuiltinCaptureVideoFx(String str) {
        NvsUtils.checkFunctionInMainThread();
        return insertBuiltinCaptureVideoFx(str, getCaptureVideoFxCount());
    }

    public NvsCaptureVideoFx insertBuiltinCaptureVideoFx(String str, int i) {
        NvsUtils.checkFunctionInMainThread();
        return nativeInsertBuiltinCaptureVideoFx(str, i);
    }

    public NvsCaptureVideoFx appendPackagedCaptureVideoFx(String str) {
        NvsUtils.checkFunctionInMainThread();
        return insertPackagedCaptureVideoFx(str, getCaptureVideoFxCount());
    }

    public NvsCaptureVideoFx insertPackagedCaptureVideoFx(String str, int i) {
        NvsUtils.checkFunctionInMainThread();
        return nativeInsertPackagedCaptureVideoFx(str, i);
    }

    public NvsCaptureVideoFx appendCustomCaptureVideoFx(Renderer renderer) {
        NvsUtils.checkFunctionInMainThread();
        return nativeInsertCustomCaptureVideoFx(renderer, getCaptureVideoFxCount());
    }

    public NvsCaptureVideoFx insertCustomCaptureVideoFx(Renderer renderer, int i) {
        NvsUtils.checkFunctionInMainThread();
        return nativeInsertCustomCaptureVideoFx(renderer, i);
    }

    public NvsCaptureVideoFx appendBeautyCaptureVideoFx() {
        NvsUtils.checkFunctionInMainThread();
        return insertBeautyCaptureVideoFx(getCaptureVideoFxCount());
    }

    public NvsCaptureVideoFx insertBeautyCaptureVideoFx(int i) {
        NvsUtils.checkFunctionInMainThread();
        return insertBuiltinCaptureVideoFx(getBeautyVideoFxName(), i);
    }

    public boolean removeCaptureVideoFx(int i) {
        NvsUtils.checkFunctionInMainThread();
        return nativeRemoveCaptureVideoFx(i);
    }

    public void removeAllCaptureVideoFx() {
        NvsUtils.checkFunctionInMainThread();
        nativeRemoveAllCaptureVideoFx();
    }

    public int getCaptureVideoFxCount() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetCaptureVideoFxCount();
    }

    public NvsCaptureVideoFx getCaptureVideoFxByIndex(int i) {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetCaptureVideoFxByIndex(i);
    }

    public boolean applyCaptureScene(String str) {
        NvsUtils.checkFunctionInMainThread();
        return nativeApplyCaptureScene(str);
    }

    public String getCurrentCaptureSceneId() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetCurrentCaptureSceneId();
    }

    public void removeCurrentCaptureScene() {
        NvsUtils.checkFunctionInMainThread();
        nativeRemoveCurrentCaptureScene();
    }

    public NvsAREffectContext getAREffectContext() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetAREffectContext();
    }

    public void setCompileConfigurations(Hashtable<String, Object> hashtable) {
        NvsUtils.checkFunctionInMainThread();
        this.m_compileConfigurations = hashtable;
    }

    public Hashtable<String, Object> getCompileConfigurations() {
        NvsUtils.checkFunctionInMainThread();
        return this.m_compileConfigurations;
    }

    public void setCompileVideoBitrateMultiplier(float f) {
        NvsUtils.checkFunctionInMainThread();
        if (f > 0.0f) {
            this.m_compileVideoBitrateMultiplier = f;
        }
    }

    public float getCompileVideoBitrateMultiplier() {
        NvsUtils.checkFunctionInMainThread();
        return this.m_compileVideoBitrateMultiplier;
    }

    public void setRecordVideoBitrateMultiplier(float f) {
        NvsUtils.checkFunctionInMainThread();
        if (f > 0.0f) {
            this.m_recordVideoBitrateMultiplier = f;
        }
    }

    public float getRecordVideoBitrateMultiplier() {
        NvsUtils.checkFunctionInMainThread();
        return this.m_recordVideoBitrateMultiplier;
    }

    public boolean startRecording(String str) {
        NvsUtils.checkFunctionInMainThread();
        return nativeStartRecording(str, this.m_recordVideoBitrateMultiplier, 0, 0, 0);
    }

    public boolean startRecording(String str, int i) {
        NvsUtils.checkFunctionInMainThread();
        return nativeStartRecording(str, this.m_recordVideoBitrateMultiplier, 0, 0, i);
    }

    public boolean startRecording(String str, int i, Hashtable<String, Object> hashtable) {
        int intValue;
        int i2;
        NvsUtils.checkFunctionInMainThread();
        if (hashtable != null) {
            int intValue2;
            Number number = (Number) hashtable.get("bitrate");
            if (number != null) {
                intValue2 = number.intValue();
            } else {
                intValue2 = 0;
            }
            number = (Number) hashtable.get("gopsize");
            if (number != null) {
                intValue = number.intValue();
                i2 = intValue2;
            } else {
                intValue = 0;
                i2 = intValue2;
            }
        } else {
            intValue = 0;
            i2 = 0;
        }
        return nativeStartRecording(str, this.m_recordVideoBitrateMultiplier, i2, intValue, i);
    }

    public void stopRecording() {
        NvsUtils.checkFunctionInMainThread();
        nativeStopRecording();
    }

    public boolean pauseRecording() {
        NvsUtils.checkFunctionInMainThread();
        return nativePauseResumeRecording(true);
    }

    public boolean resumeRecording() {
        NvsUtils.checkFunctionInMainThread();
        return nativePauseResumeRecording(false);
    }

    public boolean isRecordingPaused() {
        NvsUtils.checkFunctionInMainThread();
        return nativeIsRecordingPaused();
    }

    public List<String> getAllBuiltinVideoFxNames() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetAllBuiltinVideoFxNames();
    }

    public List<String> getAllBuiltinAudioFxNames() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetAllBuiltinAudioFxNames();
    }

    public List<String> getAllBuiltinVideoTransitionNames() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetAllBuiltinVideoTransitionNames();
    }

    public List<String> getAllBuiltinCaptureVideoFxNames() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetAllBuiltinCaptureVideoFxNames();
    }

    public String getBeautyVideoFxName() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetBeautyVideoFxName();
    }

    public String getDefaultVideoTransitionName() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetDefaultVideoTransitionName();
    }

    public NvsFxDescription getVideoFxDescription(String str) {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetVideoFxDescription(str);
    }

    public NvsFxDescription getAudioFxDescription(String str) {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetAudioFxDescription(str);
    }

    public NvsVideoFrameRetriever createVideoFrameRetriever(String str) {
        return new NvsVideoFrameRetriever(str);
    }

    public NvsVideoKeyFrameRetriever createVideoKeyFrameRetriever(String str, int i, boolean z) {
        NvsUtils.checkFunctionInMainThread();
        return new NvsVideoKeyFrameRetriever(str, i, z);
    }

    public void setDefaultCaptionFade(boolean z) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetDefaultCaptionFade(z);
    }

    public boolean isDefaultCaptionFade() {
        NvsUtils.checkFunctionInMainThread();
        return nativeIsDefaultCaptionFade();
    }

    public static void setMaxReaderCount(int i) {
        NvsUtils.checkFunctionInMainThread();
        m_maxReaderFlag = true;
        m_maxReaderCount = i;
    }

    public void setMediaCodecVideoDecodingOperatingRate(String str, int i) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetMediaCodecVideoDecodingOperatingRate(str, i);
    }

    public void setMediaCodecIconReaderEnabled(String str, boolean z) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetMediaCodecIconReaderEnabled(str, z);
    }

    public boolean createSecondaryStreamingEngine() {
        NvsUtils.checkFunctionInMainThread();
        return nativeCreateSecondaryStreamingEngine();
    }

    public boolean isSecondaryStreamingEngineOpened() {
        NvsUtils.checkFunctionInMainThread();
        return nativeIsSecondaryStreamingEngineOpened();
    }

    public void destroySecondaryStreamingEngine() {
        NvsUtils.checkFunctionInMainThread();
        nativeDestroySecondaryStreamingEngine();
    }

    public void setSecondaryEngineCapturedVideoFrameCallback(CapturedVideoFrameGrabberCallback capturedVideoFrameGrabberCallback) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetSecondaryEngineCapturedVideoFrameCallback(capturedVideoFrameGrabberCallback);
    }

    public boolean sendBufferToCapturePreviewForSecondaryEngine(byte[] bArr, long j) {
        return nativeSendBufferToCapturePreviewForSecondaryEngine(bArr, j);
    }

    public boolean startBufferCapturePreviewForSecondaryEngine(int i, int i2, NvsRational nvsRational, int i3, boolean z) {
        NvsUtils.checkFunctionInMainThread();
        return nativeStartBufferCapturePreviewForSecondaryEngine(i, i2, nvsRational, i3, z);
    }

    public void stopSecondaryEngine() {
        NvsUtils.checkFunctionInMainThread();
        nativeStopSecondaryEngine();
    }

    private boolean checkCameraPermission() {
        if (VERSION.SDK_INT < 23 || m_context.checkSelfPermission("android.permission.CAMERA") == 0) {
            return true;
        }
        Log.e(TAG, "CAMERA permission has not been granted!");
        return false;
    }

    private boolean checkInternetPermission() {
        if (VERSION.SDK_INT < 23 || m_context.checkSelfPermission("android.permission.INTERNET") == 0) {
            return true;
        }
        Log.e(TAG, "INTERNET permission has not been granted!");
        return false;
    }

    private static void loadNativeLibrary(String str) throws SecurityException, UnsatisfiedLinkError, NullPointerException {
        if (m_customNativeLibraryDirPath) {
            System.load(m_nativeLibraryDirPath + "lib" + str + ".so");
        } else {
            System.loadLibrary(str);
        }
    }
}
