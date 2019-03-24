package com.nexstreaming.kminternal.nexvideoeditor;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Rect;
import android.media.Image;
import android.media.Image.Plane;
import android.media.ImageReader;
import android.media.ImageReader.OnImageAvailableListener;
import android.os.Build.VERSION;
import android.os.StrictMode;
import android.os.StrictMode.ThreadPolicy;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import com.nexstreaming.app.common.nexasset.assetpackage.AssetPackageReader;
import com.nexstreaming.app.common.task.ResultTask;
import com.nexstreaming.app.common.task.ResultTask.OnResultAvailableListener;
import com.nexstreaming.app.common.task.Task;
import com.nexstreaming.app.common.task.Task.Event;
import com.nexstreaming.app.common.task.Task.OnFailListener;
import com.nexstreaming.app.common.task.Task.TaskError;
import com.nexstreaming.kminternal.kinemaster.codeccolorformat.ColorFormatChecker;
import com.nexstreaming.kminternal.kinemaster.codeccolorformat.ColorFormatChecker.ColorFormat;
import com.nexstreaming.kminternal.kinemaster.config.NexEditorDeviceProfile;
import com.nexstreaming.nexeditorsdk.BuildConfig;
import com.nexstreaming.nexeditorsdk.nexEngine;
import dalvik.system.BaseDexClassLoader;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collection;
import java.util.Deque;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Map.Entry;
import java.util.NoSuchElementException;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import miui.provider.ExtraTelephony.Phonelist;

public class NexEditor {
    private static File D = null;
    private static boolean O = false;
    private static int P = 1280;
    private static int Q = 720;
    private static int R = 0;
    private static NexEditor W = null;
    private static final f aF = new f() {
        public void a(ErrorCode errorCode) {
        }
    };
    private static boolean ae = false;
    private static final ExecutorService at = Executors.newSingleThreadExecutor();
    private int A = 0;
    private int B = 0;
    private int C = 0;
    private int E;
    private int F;
    private int G;
    private ColorFormat H = null;
    private int I = 0;
    private String J = null;
    private int K;
    private Surface L;
    private int M = 1;
    private int N = 0;
    private int S = -1;
    private Thread T = null;
    private d U = null;
    private Task V = null;
    private m X;
    private h Y;
    private r Z;
    private int a = 1;
    private int aA = 0;
    private int aB = 0;
    private boolean aC = false;
    private int aD = 0;
    private int aE = 0;
    private j aG;
    private float aH = 1.0f;
    private Task aa = null;
    private k ab;
    private l ac;
    private s ad;
    private boolean af = false;
    private ResultTask<Rect> ag;
    private Callback ah = new Callback() {
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
        }

        public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            if (NexEditor.this.ag != null) {
                NexEditor.this.ag.sendResult(new Rect(0, 0, i2, i3));
                NexEditor.this.ag = null;
            }
        }

        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        }
    };
    private boolean ai = false;
    private boolean aj = false;
    private boolean ak = false;
    private int al;
    private int am = 0;
    private boolean an = false;
    private boolean ao = false;
    private String ap;
    private Task aq = null;
    private int ar;
    private ImageReader as = null;
    private BlockingQueue<Integer> au = new ArrayBlockingQueue(3);
    private boolean av = false;
    private v aw = null;
    private Object ax = new Object();
    private boolean ay = false;
    private boolean az = false;
    private boolean b = false;
    private boolean c = false;
    private NexEditorEventListener d = null;
    private NexThemeView e = null;
    private c f = null;
    private t[] g = null;
    private a[] h = null;
    private a[] i = null;
    private boolean j = false;
    private Deque<d> k = new LinkedList();
    private Deque<d> l = new LinkedList();
    private Deque<g> m = new LinkedList();
    private Deque<n> n = new LinkedList();
    private Deque<p> o = new LinkedList();
    private Deque<f> p = new LinkedList();
    private Deque<o> q = new LinkedList();
    private Deque<o> r = new LinkedList();
    private Deque<f> s = new LinkedList();
    private Deque<f> t = new LinkedList();
    private Deque<Integer> u = new LinkedList();
    private Deque<e> v = new LinkedList();
    private Deque<i> w = new LinkedList();
    private q x = null;
    private int y = 1;
    private int z = 0;

    public interface k {
        void a(int i, int i2, int i3, int i4, int i5, byte[] bArr, int i6, int i7, int i8);
    }

    public interface j {
        void a(ErrorCode errorCode, int i);
    }

    public interface h {
        void a();
    }

    public interface m {
        void a();
    }

    public static abstract class g {
        public abstract void a();

        public abstract void a(ErrorCode errorCode);
    }

    public interface b {
        b a(int i);

        b a(int i, int i2);

        b a(Rect rect);

        b a(FastPreviewOption fastPreviewOption, int i);

        b a(boolean z);

        void a();
    }

    public static abstract class p {
        private int a;
        private int b;
        StackTraceElement[] e;

        public abstract String a();

        public abstract void a(int i, int i2);

        public abstract void a(ErrorCode errorCode);
    }

    public static abstract class e {
        public abstract void a(Bitmap bitmap);

        public abstract void a(ErrorCode errorCode);
    }

    public static abstract class f {
        private int a;

        public abstract void a(ErrorCode errorCode);
    }

    public static abstract class o {
        public abstract void a();

        public abstract void a(ErrorCode errorCode);
    }

    public static class EditorInitException extends Exception {
        private static final long serialVersionUID = 1;

        public EditorInitException(String str, Throwable th) {
            super(str, th);
        }

        public EditorInitException(String str) {
            super(str);
        }

        public EditorInitException(Throwable th) {
            super(th);
        }
    }

    public enum ErrorCode implements TaskError {
        NONE(0),
        GENERAL(1),
        UNKNOWN(2),
        NO_ACTION(3),
        INVALID_INFO(4),
        INVALID_STATE(5),
        VERSION_MISMATCH(6),
        CREATE_FAILED(7),
        MEMALLOC_FAILED(8, "Memory allocation failed", 0),
        ARGUMENT_FAILED(9),
        NOT_ENOUGH_NEMORY(10, "Insufficient memory", 0),
        EVENTHANDLER(11),
        FILE_IO_FAILED(12, "Error accessing file", 0),
        FILE_INVALID_SYNTAX(13),
        FILEREADER_CREATE_FAIL(14, "Could not open file", 0),
        FILEWRITER_CREATE_FAIL(15),
        AUDIORESAMPLER_CREATE_FAIL(16),
        UNSUPPORT_FORMAT(17, "Unsupported format", 0),
        FILEREADER_FAILED(18, "Error reading file format", 0),
        PLAYSTART_FAILED(19),
        PLAYSTOP_FAILED(20),
        PROJECT_NOT_CREATE(21),
        PROJECT_NOT_OPEN(22),
        CODEC_INIT(23, "Codec init failed", 0),
        RENDERER_INIT(24),
        THEMESET_CREATE_FAIL(25),
        ADD_CLIP_FAIL(26, "Unable to add clip", 0),
        ENCODE_VIDEO_FAIL(27),
        INPROGRESS_GETCLIPINFO(28),
        THUMBNAIL_BUSY(29),
        UNSUPPORT_MIN_DURATION(30),
        UNSUPPORT_MAX_RESOLUTION(31),
        UNSUPPORT_MIN_RESOLUTION(32),
        UNSUPPORT_VIDEIO_PROFILE(33),
        UNSUPPORT_VIDEO_LEVEL(34),
        UNSUPPORT_VIDEO_FPS(35),
        TRANSCODING_BUSY(36),
        TRANSCODING_NOT_SUPPORTED_FORMAT(37),
        TRANSCODING_USER_CANCEL(38),
        TRANSCODING_NOT_ENOUGHT_DISK_SPACE(39),
        TRANSCODING_CODEC_FAILED(40),
        EXPORT_WRITER_INVAILED_HANDLE(41),
        EXPORT_WRITER_INIT_FAIL(42),
        EXPORT_WRITER_START_FAIL(43),
        EXPORT_AUDIO_DEC_INIT_FAIL(44),
        EXPORT_VIDEO_DEC_INIT_FAIL(45),
        EXPORT_VIDEO_ENC_FAIL(46),
        EXPORT_VIDEO_RENDER_INIT_FAIL(47),
        EXPORT_NOT_ENOUGHT_DISK_SPACE(48, "Not enough space", 0),
        UNSUPPORT_AUDIO_PROFILE(49),
        THUMBNAIL_INIT_FAIL(50),
        UNSUPPORT_AUDIO_CODEC(51),
        UNSUPPORT_VIDEO_CODEC(52),
        HIGHLIGHT_FILEREADER_INIT_ERROR(53),
        HIGHLIGHT_TOO_SHORT_CONTENTS(54),
        HIGHLIGHT_CODEC_INIT_ERROR(55),
        HIGHLIGHT_CODEC_DECODE_ERROR(56),
        HIGHLIGHT_RENDER_INIT_ERROR(57),
        HIGHLIGHT_WRITER_INIT_ERROR(58),
        HIGHLIGHT_WRITER_WRITE_ERROR(59),
        HIGHLIGHT_GET_INDEX_ERROR(60),
        HIGHLIGHT_USER_CANCEL(61),
        GETCLIPINFO_USER_CANCEL(62),
        DIRECTEXPORT_CLIPLIST_ERROR(63),
        DIRECTEXPORT_CHECK_ERROR(64),
        DIRECTEXPORT_FILEREADER_INIT_ERROR(65),
        DIRECTEXPORT_FILEWRITER_INIT_ERROR(66),
        DIRECTEXPORT_DEC_INIT_ERROR(67),
        DIRECTEXPORT_DEC_INIT_SURFACE_ERROR(68),
        DIRECTEXPORT_DEC_DECODE_ERROR(69),
        DIRECTEXPORT_ENC_INIT_ERROR(70),
        DIRECTEXPORT_ENC_ENCODE_ERROR(71),
        DIRECTEXPORT_ENC_INPUT_SURFACE_ERROR(72),
        DIRECTEXPORT_ENC_FUNCTION_ERROR(73),
        DIRECTEXPORT_ENC_DSI_DIFF_ERROR(74),
        DIRECTEXPORT_ENC_FRAME_CONVERT_ERROR(75),
        DIRECTEXPORT_RENDER_INIT_ERROR(76),
        DIRECTEXPORT_WRITER_WRITE_ERROR(77),
        DIRECTEXPORT_WRITER_UNKNOWN_ERROR(78),
        FASTPREVIEW_USER_CANCEL(79),
        FASTPREVIEW_CLIPLIST_ERROR(80),
        FASTPREVIEW_FIND_CLIP_ERROR(81),
        FASTPREVIEW_FIND_READER_ERROR(82),
        FASTPREVIEW_VIDEO_RENDERER_ERROR(83),
        FASTPREVIEW_DEC_INIT_SURFACE_ERROR(84),
        HW_NOT_ENOUGH_MEMORY(85),
        EXPORT_USER_CANCEL(86),
        FASTPREVIEW_DEC_INIT_ERROR(87),
        FASTPREVIEW_FILEREADER_INIT_ERROR(88),
        FASTPREVIEW_TIME_ERROR(89),
        FASTPREVIEW_RENDER_INIT_ERROR(90),
        FASTPREVIEW_OUTPUTSURFACE_INIT_ERROR(91),
        FASTPREVIEW_BUSY(92),
        CODEC_DECODE(93, "Codec decode failed", 0),
        RENDERER_AUDIO(94),
        UNSUPPORT_AUDIO_SAMPLINGRATE(95),
        IMAGE_PROCESS(4097),
        SET_TIME_IGNORED("Set time ignored", 0),
        SET_TIME_CANCELED("Set time canceled", 0),
        CAPTURE_FAILED("Capture failed", 0),
        SOURCE_FILE_NOT_FOUND,
        TRANSCODING_ABORTED,
        DESTINATION_FILE_ALREADY_EXISTS,
        TEMP_FILE_ALREADY_EXISTS,
        NO_INSTANCE_AVAILABLE,
        EXPORT_NO_SUCCESS,
        PLAY_SUPERCEEDED,
        WRAPPER_BUSY,
        NOT_READY_TO_PLAY,
        SEEKING_LOCKED,
        NO_PROJECT_LOADED,
        ALREADY_EXPORTING,
        EMPTY_PROJECT,
        MISSING_RESOURCES,
        EXPORT_UNEXPECTED_STOP,
        RENAME_FAIL,
        CAPTURE_FAIL_ENOSPC("Not enough space", 0),
        CAPTURE_FAIL_OTHER("Capture failed", 0),
        CAPTURE_FAIL_SCANNING("Media scanner failed", 0),
        UNRECOGNIZED_ERROR_CODE("Unrecognized error code", 0),
        EDITOR_INSTANCE_DESTROYED,
        FILE_MISSING;
        
        private final String mDescription;
        private final int mDescriptionRsrcId;
        private final boolean mFromEngine;
        private final int mValue;

        public boolean isError() {
            return this != NONE;
        }

        private ErrorCode(int i) {
            this.mValue = i;
            this.mDescription = null;
            this.mDescriptionRsrcId = 0;
            this.mFromEngine = true;
        }

        private ErrorCode(int i, String str, int i2) {
            this.mValue = i;
            this.mDescription = str;
            this.mDescriptionRsrcId = i2;
            this.mFromEngine = true;
        }

        private ErrorCode(String str, int i) {
            this.mValue = 0;
            this.mDescription = str;
            this.mDescriptionRsrcId = i;
            this.mFromEngine = false;
        }

        public int getValue() {
            return this.mValue;
        }

        public String getDescription() {
            if (this.mDescription == null) {
                return name();
            }
            return this.mDescription;
        }

        public String getLocalizedDescription(Context context) {
            if (this.mDescriptionRsrcId != 0) {
                return context.getResources().getString(this.mDescriptionRsrcId);
            }
            if (this.mDescription == null) {
                return name();
            }
            return this.mDescription;
        }

        public static ErrorCode fromValue(int i) {
            for (ErrorCode errorCode : values()) {
                if (errorCode.mFromEngine && errorCode.getValue() == i) {
                    return errorCode;
                }
            }
            Log.e("NexEditor.java", "Unrecognized error code : " + i);
            return UNRECOGNIZED_ERROR_CODE;
        }

        public Exception getException() {
            return null;
        }

        public String getMessage() {
            return getDescription();
        }

        public String getLocalizedMessage(Context context) {
            return getLocalizedDescription(context);
        }

        public String toString() {
            if (this == NONE) {
                return "NONE(0)";
            }
            if (this.mValue != 0) {
                return name() + "(" + this.mValue + ")";
            }
            return name();
        }
    }

    public enum FastPreviewOption {
        normal,
        brightness,
        contrast,
        saturation,
        adj_brightness,
        adj_contrast,
        adj_saturation,
        tintColor,
        left,
        top,
        right,
        bottom,
        nofx,
        cts,
        swapv,
        video360flag,
        video360_horizontal,
        video360_vertical,
        adj_vignette,
        adj_vignetteRange,
        adj_sharpness,
        customlut_clip,
        customlut_power
    }

    public enum PlayState {
        NONE(0),
        IDLE(1),
        RUN(2),
        RECORD(3),
        PAUSE(4),
        RESUME(5);
        
        private int mValue;

        private PlayState(int i) {
            this.mValue = i;
        }

        public int getValue() {
            return this.mValue;
        }

        public static PlayState fromValue(int i) {
            for (PlayState playState : values()) {
                if (playState.getValue() == i) {
                    return playState;
                }
            }
            return null;
        }
    }

    public static abstract class u {
    }

    public static class a extends u {
    }

    public interface c {
        void a(LayerRenderer layerRenderer);
    }

    public static abstract class d {
        int a;

        public abstract void a(int i, int i2, int i3);

        public abstract void a(ErrorCode errorCode);
    }

    public static abstract class i {
        public abstract void a();

        public abstract void a(int i);

        public abstract void a(ErrorCode errorCode);
    }

    public interface l {
        int a(int i);

        int a(int i, int[] iArr);
    }

    public static abstract class n {
        public abstract void a(int i);

        public abstract void a(ErrorCode errorCode);
    }

    public static abstract class q {
        public abstract void a();
    }

    public interface r {
        void a(int i, int i2, int i3);

        void a(ErrorCode errorCode, int i);
    }

    public interface s {
        int a(int i);

        int a(int i, int[] iArr, int[] iArr2);
    }

    public static class t extends u {
    }

    public static abstract class v {
        public abstract void a();

        public abstract boolean a(int i);

        public abstract boolean a(byte[] bArr, int i);

        public abstract int b();

        public abstract void b(int i);
    }

    private native int asyncLoadList(NexVisualClip[] nexVisualClipArr, NexAudioClip[] nexAudioClipArr, int i);

    private native int captureCurrentFrame();

    private native int clearRenderItems(int i);

    private native int clearScreen(int i);

    private native int closeInputFile(int i, int i2);

    private native void closeOutputFile(int i);

    private native int createEditor(String str, String str2, int i, int i2, int[] iArr);

    private native int createRenderItem(String str, int i);

    private native int deleteClipID(int i);

    private native int destroyEditor();

    private native int drawRenderItemOverlay(int i, String str, int i2, int i3, int i4, int i5, float[] fArr, float f, float f2, float f3, float f4, float f5);

    private native int encodeProject(String str, int i, int i2, int i3, long j, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13);

    private native int encodeProjectJpeg(Surface surface, String str, int i, int i2, int i3, int i4);

    private native int fastOptionPreview(String str, int i);

    private native int getAudioSessionID();

    private native int getClipAudioThumb(String str, String str2, int i);

    private native int getClipInfoSync(String str, NexClipInfo nexClipInfo, int i, int i2);

    private native int getClipStopThumb(int i);

    private native int getClipVideoThumb(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, int i7);

    private native int getClipVideoThumbWithTimeTable(String str, String str2, int i, int i2, int i3, int[] iArr, int i4, int i5);

    private native int getNativeSDKInfoWM();

    private static native String getSystemProperty(String str);

    private native int getTexNameForClipID(int i, int i2);

    private native int getTexNameForMask(int i);

    private native byte[] getTimeThumbData(int i);

    private native int highlightStart(String str, int i, int i2, int i3, int i4, String str2, int i5, int i6, int i7, long j, int i8, int i9, int i10);

    private native int highlightStop();

    private native int initUserData();

    private native int loadList(NexVisualClip[] nexVisualClipArr, NexAudioClip[] nexAudioClipArr, int i);

    private native int loadRenderItem(String str, String str2, int i);

    private native int loadTheme(String str, String str2, int i);

    private native int prepareSurface(Surface surface);

    private native int pushLoadedBitmap(String str, int[] iArr, int i, int i2, int i3);

    private native int releaseLUTTexture(int i);

    private native int releaseRenderItem(int i, int i2);

    private native int removeBitmap(String str);

    private native int resetFaceDetectInfo(int i);

    private native int set360VideoTrackPosition(int i, int i2, int i3);

    private static native void setEncInfo(String[] strArr);

    private native int setEventHandler(NexEditorEventListener nexEditorEventListener);

    private native int setGIFMode(int i);

    private native int setInputFile(FileDescriptor fileDescriptor, int i, long j, long j2);

    private static native void setPacakgeName4Protection(String str);

    private native int setPreviewScaleFactor(float f);

    private native int setRenderToDefault(int i);

    private native int setRenderToMask(int i);

    private native int setThumbnailRoutine(int i);

    private native int setTime(int i, int i2, int i3);

    private native int setVideoTrackUUID(int i, byte[] bArr);

    private native int startPlay(int i);

    private native int stopPlay(int i);

    private native int transcodingStart(String str, String str2, int i, int i2, int i3, int i4, int i5, long j, int i6, int i7, String str3);

    private native int transcodingStop();

    private native int updateRenderInfo(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14);

    public native int addUDTA(int i, String str);

    public native int asyncDrawInfoList(NexDrawInfo[] nexDrawInfoArr, NexDrawInfo[] nexDrawInfoArr2);

    public native int checkDirectExport(int i);

    public native int checkIDREnd();

    public native int checkIDRStart(String str);

    public native int checkIDRTime(int i);

    public native int checkPFrameDirectExportSync(String str);

    public native int clearProject();

    public native int clearTrackCache();

    public native int clearUDTA();

    public native int closeProject();

    public native int[] createCubeLUT(byte[] bArr);

    public native int[] createLGLUT(byte[] bArr);

    public native int createProject();

    public native int directExport(String str, long j, long j2, String str2, int i);

    public native int encodePause();

    public native int encodeResume();

    public native int fastPreviewStart(int i, int i2, int i3, int i4);

    public native int fastPreviewStop();

    public native int fastPreviewTime(int i);

    public native int getBrightness();

    public native int getContrast();

    public native int getDuration();

    public native String getProperty(String str);

    public native int getSaturation();

    public native int getSharpness();

    public native int getVignette();

    public native int getVignetteRange();

    public native int reverseStart(String str, String str2, String str3, int i, int i2, int i3, long j, int i4, int i5, int i6);

    public native int reverseStop();

    public native int setBaseFilterRenderItem(String str);

    public native int setBrightness(int i);

    public native int setContrast(int i);

    public native int setDeviceGamma(float f);

    public native int setDeviceLightLevel(int i);

    public native int setProjectEffect(String str);

    public native int setProjectManualVolumeControl(int i);

    public native int setProjectVolume(int i);

    public native int setProjectVolumeFade(int i, int i2);

    public native int setProperty(String str, String str2);

    public native int setSaturation(int i);

    public native void setSharpness(int i);

    public native int setTaskSleep(int i);

    public native void setVignette(int i);

    public native void setVignetteRange(int i);

    public native int setVolumeWhilePlay(int i, int i2);

    public native int updateDrawInfo(NexDrawInfo nexDrawInfo);

    static {
        ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            System.loadLibrary("nexeditorsdk");
        } catch (UnsatisfiedLinkError e) {
            Log.e("NexEditor.java", "[NexEditor.java] nexeditor load failed : " + e);
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    public static void a(int i, int i2, int i3) {
        P = i;
        Q = i2;
        R = i3;
    }

    public static int a() {
        return P;
    }

    public static int b() {
        return Q;
    }

    public static int c() {
        return R;
    }

    public void a(int i) {
        this.N = i;
    }

    public int d() {
        return this.N;
    }

    public void a(Thread thread) {
        this.T = thread;
    }

    public void e() {
        if (this.T != null) {
            try {
                this.T.join();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            this.T = null;
        }
    }

    public Task a(Context context) {
        Log.d("NexEditor.java", "detectAndSetEditorColorFormat");
        if (this.V == null) {
            this.V = new Task();
            if (NexEditorDeviceProfile.getDeviceProfile().getNeedsColorFormatCheck()) {
                ColorFormatChecker.a(context).onResultAvailable(new OnResultAvailableListener<ColorFormat>() {
                    /* renamed from: a */
                    public void onResultAvailable(ResultTask<ColorFormat> resultTask, Event event, ColorFormat colorFormat) {
                        NexEditor.this.H = colorFormat;
                        if (colorFormat != ColorFormat.UNKNOWN) {
                            Log.d("NexEditor.java", "Setting color format: " + colorFormat.name());
                            NexEditor.this.setProperty("setExportColorFormat", colorFormat.name());
                            NexEditor.this.V.signalEvent(Event.COMPLETE);
                            return;
                        }
                        NexEditor.this.V.signalEvent(Event.FAIL);
                    }
                }).onFailure(new OnFailListener() {
                    public void onFail(Task task, Event event, TaskError taskError) {
                        NexEditor.this.V.sendFailure(taskError);
                    }
                });
            } else {
                Log.d("NexEditor.java", "Skip checking color format (not needed)");
                this.V.signalEvent(Event.COMPLETE);
            }
        }
        return this.V;
    }

    public NexEditor(Context context, NexThemeView nexThemeView, String str, int i, com.nexstreaming.kminternal.nexvideoeditor.NexImageLoader.d dVar, int[] iArr) throws EditorInitException {
        W = this;
        int i2 = i ^ 323655054;
        String str2 = "libnexeditorsdk.so";
        if (context.getFilesDir() == null) {
            throw new IllegalStateException("No files directory - cannot play video - relates to Android issue: 8886!");
        }
        int i3;
        String str3 = "";
        str3 = ((BaseDexClassLoader) context.getClassLoader()).findLibrary("nexcralbody_mc_jb");
        if (str3 != null) {
            str3 = str3.substring(0, str3.lastIndexOf(File.separator)) + File.separator;
            Log.d("NexEditor.java", "[nexlib] getApplicationInfo mc libarays in: " + str3);
            str2 = str3;
        } else {
            str3 = context.getApplicationInfo().nativeLibraryDir;
            if (!str3.endsWith(File.separator)) {
                str3 = str3 + File.separator;
            }
            Log.d("NexEditor.java", "[nexlib] getApplicationInfo says libs are in: " + str3);
            Log.d("NexEditor.java", "[nexlib] sdk lib name: libnexeditorsdk.so");
            if (new File(str3, "libnexeditorsdk.so").exists()) {
                Log.d("NexEditor.java", "[nexlib] libs found in: " + str3);
                str2 = str3;
            } else {
                Object obj;
                str2 = System.getProperty("java.library.path");
                if (str2 != null) {
                    String[] split = str2.split(":");
                    for (i3 = 0; i3 < split.length; i3++) {
                        if (!split[i3].endsWith("/")) {
                            split[i3] = split[i3] + "/";
                        }
                        Log.d("NexEditor.java", "[nexlib] trying: " + split[i3]);
                        if (new File(split[i3], "libnexeditorsdk.so").exists()) {
                            Log.d("NexEditor.java", "[nexlib] libs found in: " + split[i3]);
                            str3 = split[i3];
                            obj = 1;
                            break;
                        }
                        Log.d("NexEditor.java", "[nexlib] libs NOT FOUND!");
                    }
                }
                obj = null;
                if (obj == null) {
                    if (str3.contains("/arm64")) {
                        str3 = "/system/lib64/";
                    } else if (str3.contains("/x86_64")) {
                        str3 = "/system/lib64/";
                    } else {
                        str3 = "/system/lib/";
                    }
                    Log.d("NexEditor.java", "[nexlib]2 trying: " + str3);
                    if (new File(str3, "libnexeditorsdk.so").exists()) {
                        Log.d("NexEditor.java", "[nexlib]2 libs found in: " + str3);
                        str2 = str3;
                    } else {
                        Log.d("NexEditor.java", "[nexlib]2 libs NOT FOUND!");
                    }
                }
                str2 = str3;
            }
        }
        c(context.getPackageName());
        int createEditor = createEditor(str2, str, VERSION.SDK_INT, i2 ^ initUserData(), iArr == null ? null : Arrays.copyOf(iArr, iArr.length + 2));
        if (createEditor != 0) {
            throw new EditorInitException("Editor Initialization Failed (result=" + createEditor + ")");
        }
        if (NexEditorDeviceProfile.getDeviceProfile().getUserConfigSettings()) {
            setProperty("HardWareCodecMemSize", "" + NexEditorDeviceProfile.getDeviceProfile().getHardwareCodecMemSize());
            setProperty("HardWareDecMaxCount", "" + NexEditorDeviceProfile.getDeviceProfile().getHardwareDecMaxCount());
            setProperty("HardWareEncMaxCount", "" + NexEditorDeviceProfile.getDeviceProfile().getHardwareEncMaxCount());
            setProperty("FeatureVersion", Phonelist.TYPE_VIP);
            setProperty("useNexEditorSDK", "1");
            setProperty("DeviceExtendMode", "1");
            setProperty("forceDirectExport", "" + NexEditorDeviceProfile.getDeviceProfile().getForceDirectExport());
            setProperty("SupportedMaxFPS", "" + NexEditorDeviceProfile.getDeviceProfile().getMaxSupportedFPS());
            setProperty("InputMaxFPS", "" + NexEditorDeviceProfile.getDeviceProfile().getMaxSupportedFPS());
            setProperty("SupportFrameTimeChecker", "" + NexEditorDeviceProfile.getDeviceProfile().getSupportedTimeCheker());
            setProperty("DeviceMaxLightLevel", "" + NexEditorDeviceProfile.getDeviceProfile().getDeviceMaxLightLevel());
            setProperty("DeviceMaxGamma", "" + NexEditorDeviceProfile.getDeviceProfile().getDeviceMaxGamma());
        } else {
            setProperty("HardWareCodecMemSize", "8912896");
            if (BuildConfig.KM_PROJECT.equals("Gionee")) {
                setProperty("HardWareDecMaxCount", "2");
            } else {
                setProperty("HardWareDecMaxCount", Phonelist.TYPE_CLOUDS_BLACK);
            }
            setProperty("HardWareEncMaxCount", "1");
            setProperty("FeatureVersion", Phonelist.TYPE_VIP);
            setProperty("useNexEditorSDK", "1");
            setProperty("forceDirectExport", "" + NexEditorDeviceProfile.getDeviceProfile().getForceDirectExport());
            setProperty("DeviceExtendMode", "1");
            setProperty("InputMaxFPS", "120");
            setProperty("SupportFrameTimeChecker", "1");
        }
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        int max = Math.max(displayMetrics.widthPixels, displayMetrics.heightPixels);
        createEditor = 1024;
        while (true) {
            i3 = createEditor;
            if (i3 * 2 >= max) {
                break;
            }
            createEditor = i3 * 2;
        }
        this.E = i3;
        this.F = i3;
        this.G = i3 * i3;
        setProperty("JpegMaxWidthFactor", "" + this.E);
        setProperty("JpegMaxHeightFactor", "" + this.E);
        setProperty("JpegMaxSizeFactor", "" + this.G);
        setProperty("UseAndroidJPEG", "1");
        setProperty("supportPeakMeter", "0");
        createEditor = 0;
        if (BuildConfig.KM_PROJECT.equals("Vivo")) {
            createEditor = 1;
        }
        setProperty("skipPrefetchEffect", "" + createEditor);
        Log.d("NexEditor.java", "largestDimension = " + max + " selectedSize=" + i3);
        if (this.e != nexThemeView) {
            if (this.e != null) {
                this.e.linkToEditor(null);
            }
            nexThemeView.linkToEditor(this);
            this.e = nexThemeView;
        }
        this.d = new NexEditorEventListener(this, context, com.nexstreaming.app.common.nexasset.assetpackage.c.a(context).e(), dVar);
        setEventHandler(this.d);
        try {
            AssetFileDescriptor openFd = context.getAssets().openFd("nexasset.jpg");
            this.S = setInputFile(openFd.getFileDescriptor(), 1, -1, -1);
            openFd.close();
            Log.d("NexEditor.java", "assetNativeFD is: " + this.S);
        } catch (IOException e) {
            e.printStackTrace();
        }
        String[] a = AssetPackageReader.a();
        if (a.length > 0) {
            a(a);
        }
    }

    public int f() {
        return this.E;
    }

    public int g() {
        return this.F;
    }

    public int h() {
        return this.G;
    }

    public void i() {
        if (W == this) {
            Log.d("NexEditor.java", "destroy editor instance");
            m();
            destroyEditor();
        } else {
            Log.d("NexEditor.java", "skip destroying editor instance (not latest instance)");
        }
        if (this.S >= 0) {
            closeInputFile(1, this.S);
        }
        this.d = null;
        if (this.e != null) {
            this.e.linkToEditor(null);
            this.e = null;
        }
        if (this.ac != null) {
            this.ac = null;
        }
    }

    public d j() {
        if (this.U == null) {
            this.U = new d(this);
        }
        return this.U;
    }

    public void a(c cVar) {
        this.f = cVar;
        if (this.d != null) {
            this.d.setUIListener(this.f);
        }
    }

    public void a(c cVar) {
        if (this.d != null) {
            this.d.setCustomRenderCallback(cVar);
        }
    }

    public void a(NexThemeView nexThemeView) {
        Context context = null;
        if (this.e != nexThemeView) {
            if (this.e != null) {
                this.e.linkToEditor(null);
            }
            if (nexThemeView != null) {
                nexThemeView.linkToEditor(this);
            }
            this.e = nexThemeView;
            if (this.d != null) {
                NexEditorEventListener nexEditorEventListener = this.d;
                if (this.e != null) {
                    context = this.e.getContext();
                }
                nexEditorEventListener.setContext(context);
            }
        }
    }

    public NexThemeView k() {
        return this.e;
    }

    public synchronized int a(int i, int i2, Rect rect, Rect rect2, Rect rect3) {
        return updateRenderInfo(i, rect.left, rect.top, rect.right, rect.bottom, rect2.left, rect2.top, rect2.right, rect2.bottom, i2, rect3.left, rect3.top, rect3.right, rect3.bottom);
    }

    public int b(int i) {
        return resetFaceDetectInfo(i);
    }

    private String B() {
        return " m_seekSerial=" + this.aE + "; m_isSeeking=" + this.ay + "; m_isPendingSeek=" + this.az + "; m_pendingSeekLocation=" + this.aA + "; m_setTimeDoneListeners.size()=" + this.o.size();
    }

    private String C() {
        String str = "";
        int i = 0;
        for (p pVar : this.o) {
            i++;
            str = str + "\n     " + i + ": " + pVar + " m_reqTime=" + pVar.a + " m_serialNumber=" + pVar.b + " ";
            if (pVar.e != null) {
                int i2 = 0;
                for (StackTraceElement stackTraceElement : pVar.e) {
                    String className = stackTraceElement.getClassName();
                    if (!(className.equals("dalvik.system.VMStack") || className.equals("java.lang.Thread") || className.equals("dalvik.system.VMStack") || className.equals("android.app.ActivityThread") || className.equals("java.lang.reflect.Method") || className.equals("com.android.internal.os.ZygoteInit") || className.equals("com.android.internal.os.ZygoteInit$MethodAndArgsCaller:") || className.equals("dalvik.system.NativeStart") || className.equals("android.os.Looper"))) {
                        str = str + "\n          " + i2 + ": " + className + "::" + stackTraceElement.getMethodName() + "(" + stackTraceElement.getFileName() + " " + stackTraceElement.getLineNumber() + ")";
                    }
                    i2++;
                }
            }
        }
        return str;
    }

    public void a(m mVar) {
        this.X = mVar;
    }

    public void a(h hVar) {
        this.Y = hVar;
    }

    protected void l() {
        if (this.X != null) {
            this.X.a();
        }
    }

    protected void m() {
        if (this.Y != null) {
            this.Y.a();
        }
    }

    protected void b(int i, int i2, int i3) {
        if (this.Z != null) {
            this.Z.a(i, i2, i3);
        }
    }

    protected void a(ErrorCode errorCode, int i) {
        Log.d("NexEditor.java", "-  onTranscodingDone() result : " + errorCode + " mTranscoding =" + this.af);
        if (this.af) {
            this.af = false;
            if (this.Z != null) {
                this.Z.a(errorCode, i);
            }
        }
    }

    protected void a(ErrorCode errorCode) {
        if (errorCode.isError()) {
            Log.d("NexEditor.java", "onFastOptionPreviewDone:" + errorCode.getMessage());
        }
        this.I--;
        if (this.J == null || this.I >= 2) {
            if (this.I < 1 && this.aa != null) {
                this.aa.signalEvent(Event.SUCCESS, Event.COMPLETE);
                this.aa = null;
            }
        } else if (this.ay) {
            Log.d("NexEditor.java", "onFastOptionPreviewDone: stat is seeking");
            this.J = null;
        } else {
            int fastOptionPreview = fastOptionPreview(this.J, this.K);
            this.J = null;
            if (fastOptionPreview == 0) {
                this.I++;
            } else {
                Log.d("NexEditor.java", "onFastOptionPreviewDone: pending result=" + fastOptionPreview);
            }
        }
    }

    protected void b(ErrorCode errorCode) {
        Log.d("NexEditor.java", "onPlay:" + errorCode);
        this.b = true;
        if (this.q.size() >= 1) {
            o oVar = (o) this.q.remove();
            oVar.a(errorCode);
            if (errorCode == ErrorCode.NONE) {
                this.r.add(oVar);
            }
        }
    }

    protected void n() {
        this.ao = false;
        if (this.r.size() >= 1) {
            ((o) this.r.remove()).a();
        }
    }

    protected void c(ErrorCode errorCode) {
        Log.d("NexEditor.java", "onStop : m_onStopListeners.size()=" + this.p.size());
        this.b = false;
        if (this.aq != null && errorCode.isError()) {
            this.aq.sendFailure(errorCode);
            this.aq = null;
        }
        while (true) {
            f fVar = (f) this.p.poll();
            if (fVar != null) {
                fVar.a(errorCode);
            } else {
                return;
            }
        }
    }

    protected void d(ErrorCode errorCode) {
        if (this.aq != null) {
            if (errorCode.isError()) {
                this.aq.sendFailure(errorCode);
            } else {
                this.aq.signalEvent(Event.SUCCESS, Event.COMPLETE);
            }
            this.aq = null;
            E();
        }
    }

    protected void b(ErrorCode errorCode, int i) {
        this.z = i;
        Log.d("NexEditor.java", "REACHED MARKER " + i);
        while (true) {
            f fVar = (f) this.s.peek();
            if (fVar == null) {
                Log.d("NexEditor.java", "    - onCommandMarker(" + errorCode + "," + i + "): Skipping because listener is null");
                return;
            } else if (fVar.a > i) {
                Log.d("NexEditor.java", "    - onCommandMarker(" + errorCode + "," + i + "): Skipping because " + fVar.a + ">" + i);
                return;
            } else {
                Log.d("NexEditor.java", "    - onCommandMarker(" + errorCode + "," + i + "): Notifying because " + fVar.a + "<=" + i);
                ((f) this.s.remove()).a(errorCode);
            }
        }
    }

    public void a(k kVar) {
        this.ab = kVar;
    }

    protected void a(int i, int i2, int i3, int i4, int i5, byte[] bArr, int i6, int i7, int i8) {
        if (this.ab != null) {
            this.ab.a(i, i2, i3, i4, i5, bArr, i6, i7, i8);
        }
    }

    public void a(l lVar) {
        this.ac = lVar;
    }

    protected void a(int i, int[] iArr) {
        if (this.ac != null) {
            this.ac.a(i, iArr);
        }
    }

    protected void c(int i) {
        if (this.ac != null) {
            this.ac.a(i);
        }
    }

    public void a(s sVar) {
        this.ad = sVar;
    }

    protected void a(int i, int[] iArr, int[] iArr2) {
        if (this.ad != null) {
            this.ad.a(i, iArr, iArr2);
        }
    }

    protected void d(int i) {
        if (this.ad != null) {
            this.ad.a(i);
        }
    }

    protected void a(int i, int i2, int i3, byte[] bArr, boolean z) {
        if (this.v.size() >= 1) {
            if (i < 1 || i2 < 1 || i3 < 1 || bArr == null) {
                e(ErrorCode.CAPTURE_FAILED);
            }
            try {
                e eVar = (e) this.v.remove();
                if (z) {
                    Object obj = new byte[(i * 4)];
                    for (int i4 = 0; i4 < i2 / 2; i4++) {
                        System.arraycopy(bArr, (i * i4) * 4, obj, 0, i * 4);
                        System.arraycopy(bArr, (((i2 - 1) - i4) * i) * 4, bArr, (i * i4) * 4, i * 4);
                        System.arraycopy(obj, 0, bArr, (((i2 - 1) - i4) * i) * 4, i * 4);
                    }
                }
                Bitmap createBitmap = Bitmap.createBitmap(i, i2, Config.ARGB_8888);
                createBitmap.copyPixelsFromBuffer(ByteBuffer.wrap(bArr));
                eVar.a(createBitmap);
            } catch (NoSuchElementException e) {
                e.printStackTrace();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    protected void e(ErrorCode errorCode) {
        if (this.v.size() >= 1) {
            ((e) this.v.remove()).a(errorCode);
        }
    }

    protected boolean f(ErrorCode errorCode) {
        if (this.w.size() < 1) {
            return false;
        }
        ((i) this.w.remove()).a(errorCode);
        this.aq = null;
        return true;
    }

    protected boolean e(int i) {
        if (this.w.size() < 1) {
            return false;
        }
        ((i) this.w.getFirst()).a(i);
        return true;
    }

    protected boolean o() {
        if (this.w.size() < 1) {
            return false;
        }
        ((i) this.w.remove()).a();
        this.aq = null;
        return true;
    }

    protected void a(int i, int i2, int i3, int i4) {
        if (i4 == 1 || i4 == 4 || i4 == 0) {
            if (this.l == null || this.l.size() < 1) {
                Log.d("NexEditor.java", "Ignore onAddClipDone event -- no listeners");
                return;
            }
            for (d dVar : this.l) {
                if (dVar.a == i3) {
                    this.l.remove(dVar);
                    if (i == 0) {
                        dVar.a(i3, i2, i4);
                        return;
                    } else {
                        dVar.a(ErrorCode.fromValue(i));
                        return;
                    }
                }
            }
        }
        if (i4 != 3 && i4 != 0) {
            return;
        }
        if (this.k == null || this.k.size() < 1) {
            Log.d("NexEditor.java", "Ignore onAddClipDone event -- no listeners");
            return;
        }
        for (d dVar2 : this.k) {
            if (dVar2.a == i3) {
                this.k.remove(dVar2);
                if (i == 0) {
                    dVar2.a(i3, i2, i4);
                    return;
                } else {
                    dVar2.a(ErrorCode.fromValue(i));
                    return;
                }
            }
        }
    }

    protected void f(int i) {
        g gVar = (g) this.m.remove();
        if (i == 0) {
            gVar.a();
        } else {
            gVar.a(ErrorCode.fromValue(i));
        }
    }

    protected void a(int i, int i2) {
        if (this.u.size() >= 1 && this.n.size() >= 1 && ((Integer) this.u.peek()).intValue() == i2) {
            this.u.remove();
            n nVar = (n) this.n.remove();
            if (i == 0) {
                nVar.a(i2);
            } else {
                nVar.a(ErrorCode.fromValue(i));
            }
        }
    }

    public int a(String str) {
        return removeBitmap(str);
    }

    public int a(String str, int[] iArr, int i, int i2, int i3) {
        return pushLoadedBitmap(str, iArr, i, i2, i3);
    }

    public int b(int i, int i2) {
        return getTexNameForClipID(i, i2);
    }

    public int g(int i) {
        return getTexNameForMask(i);
    }

    public int a(int i, String str, int i2, int i3, int i4, int i5, float[] fArr, float f, float f2, float f3, float f4, float f5) {
        return drawRenderItemOverlay(i, str, i2, i3, i4, i5, fArr, f, f2, f3, f4, f5);
    }

    public int a(String str, int i) {
        return createRenderItem(str, i);
    }

    public int c(int i, int i2) {
        return releaseRenderItem(i, i2);
    }

    public int h(int i) {
        return setRenderToMask(i);
    }

    public int i(int i) {
        return setRenderToDefault(i);
    }

    public int b(String str, int i) {
        String property = getProperty(str);
        if (property == null) {
            return i;
        }
        try {
            return Integer.parseInt(property);
        } catch (NumberFormatException e) {
            return i;
        }
    }

    public boolean a(String str, boolean z) {
        String property = getProperty(str);
        if (property == null) {
            return z;
        }
        if (property.trim().equalsIgnoreCase("true")) {
            return true;
        }
        if (property.trim().equalsIgnoreCase("false")) {
            return false;
        }
        return z;
    }

    public void a(Surface surface) {
        this.L = surface;
        if (this.aj) {
            Log.d("NexEditor.java", "prepareSurface wait. image exporting...");
        } else if (!this.ai) {
            if (O) {
                prepareSurface(null);
            }
            if (surface != null) {
                setPreviewScaleFactor(this.aH);
            }
            prepareSurface(surface);
        }
    }

    public static String b(String str) {
        try {
            return getSystemProperty(str);
        } catch (UnsatisfiedLinkError e) {
            ae = true;
            return "";
        }
    }

    public ErrorCode a(String str, String str2, int i, int i2, int i3, int i4, int i5, long j, int i6, int i7, String str3) {
        if (this.af) {
            return ErrorCode.TRANSCODING_BUSY;
        }
        ErrorCode fromValue = ErrorCode.fromValue(transcodingStart(str, str2, i, i2, i3, i4, i5, j, i6, i7, str3));
        if (fromValue.isError()) {
            return fromValue;
        }
        this.af = true;
        return fromValue;
    }

    public ErrorCode p() {
        if (!this.af) {
            return ErrorCode.NO_ACTION;
        }
        ErrorCode fromValue = ErrorCode.fromValue(transcodingStop());
        if (!fromValue.isError()) {
        }
        return fromValue;
    }

    public void a(FastPreviewOption fastPreviewOption, int i) {
        a(fastPreviewOption, i, true);
    }

    public b q() {
        return new b() {
            private Map<FastPreviewOption, Integer> b = new EnumMap(FastPreviewOption.class);

            public b a(FastPreviewOption fastPreviewOption, int i) {
                this.b.put(fastPreviewOption, Integer.valueOf(i));
                return this;
            }

            public b a(Rect rect) {
                return a(FastPreviewOption.left, rect.left).a(FastPreviewOption.top, rect.bottom).a(FastPreviewOption.right, rect.right).a(FastPreviewOption.bottom, rect.top);
            }

            public b a(boolean z) {
                return a(FastPreviewOption.swapv, z ? 1 : 0);
            }

            public b a(int i) {
                return a(FastPreviewOption.cts, i);
            }

            public b a(int i, int i2) {
                return a(FastPreviewOption.video360flag, 1).a(FastPreviewOption.video360_horizontal, i).a(FastPreviewOption.video360_vertical, i2);
            }

            public void a() {
                b(true);
            }

            private void b(boolean z) {
                StringBuilder stringBuilder = new StringBuilder();
                for (Entry entry : this.b.entrySet()) {
                    if (stringBuilder.length() > 0) {
                        stringBuilder.append(' ');
                    }
                    stringBuilder.append(((FastPreviewOption) entry.getKey()).name());
                    stringBuilder.append('=');
                    stringBuilder.append(entry.getValue());
                }
                NexEditor.this.c(stringBuilder.toString(), z ? 1 : 0);
            }
        };
    }

    public void a(FastPreviewOption fastPreviewOption, int i, boolean z) {
        if (!this.aj) {
            c(fastPreviewOption.name() + "=" + i, z ? 1 : 0);
        }
    }

    private void b(FastPreviewOption fastPreviewOption, int i, boolean z) {
        c(fastPreviewOption.name() + "=" + i, z ? 1 : 0);
    }

    private int c(String str, int i) {
        if (this.I >= 2) {
            this.J = str;
            this.K = i;
            return 0;
        }
        int fastOptionPreview = fastOptionPreview(str, i);
        if (fastOptionPreview != 0) {
            return fastOptionPreview;
        }
        this.I++;
        return fastOptionPreview;
    }

    public int r() {
        return clearScreen(1);
    }

    public ErrorCode a(e eVar) {
        return a(2147418113, eVar);
    }

    private int b(e eVar) {
        int captureCurrentFrame = captureCurrentFrame();
        if (captureCurrentFrame == 0) {
            this.v.add(eVar);
        }
        return captureCurrentFrame;
    }

    public ErrorCode a(int i, final e eVar) {
        int i2;
        if (i == 2147418113) {
            Log.d("NexEditor.java", "Capture request : captureTime=CAPTURE_CURRENT t=" + this.A + " " + (this.aj ? "in-progress " : "ok ") + (this.ak ? "completing " : "new "));
            i2 = (this.az || this.ay) ? this.aA : this.A;
            i = i2;
        } else if (i == 2147418114) {
            Log.d("NexEditor.java", "Capture request : captureTime=CAPTURE_CURRENT_NOFX " + (this.aj ? "in-progress " : "ok ") + (this.ak ? "completing " : "new "));
        } else {
            Log.d("NexEditor.java", "Capture request : captureTime=" + i + " " + (this.aj ? "in-progress " : "ok ") + (this.ak ? "completing " : "new "));
        }
        if (this.aj) {
            return ErrorCode.INVALID_STATE;
        }
        this.aj = true;
        if (!this.ak) {
            i2 = (this.az || this.ay) ? this.aA : this.A;
            this.al = i2;
        }
        Log.d("NexEditor.java", "  Capture mCaptureOriginalTime=" + this.al);
        final e anonymousClass14 = new e() {
            void a(ErrorCode errorCode, Bitmap bitmap) {
                NexEditor.this.ak = true;
                if (bitmap == null) {
                    Log.e("NexEditor.java", "  Capture failed; error=" + errorCode.getValue() + " (" + errorCode.name() + ")");
                    NexEditor.this.aj = false;
                    eVar.a(errorCode);
                } else {
                    Log.d("NexEditor.java", "  Capture success; notify listener");
                    NexEditor.this.aj = false;
                    eVar.a(bitmap);
                }
                NexEditor.this.ak = false;
                if (NexEditor.this.aj) {
                    Log.d("NexEditor.java", "  Capture done; SKIP SEEK");
                    return;
                }
                NexEditor.this.aj = true;
                Log.d("NexEditor.java", "  Capture done; seek to original location");
                NexEditor.this.a(NexEditor.this.al, false, new p() {
                    public void a(ErrorCode errorCode) {
                        NexEditor.this.aj = false;
                    }

                    public void a(int i, int i2) {
                        NexEditor.this.aj = false;
                    }

                    public String a() {
                        return "seekToOriginalTimeAfterCapture";
                    }
                });
            }

            public void a(ErrorCode errorCode) {
                Log.d("NexEditor.java", "  Capture onCaptureFail=" + errorCode.name());
                a(errorCode, null);
            }

            public void a(Bitmap bitmap) {
                Log.d("NexEditor.java", "  Capture onCapture=" + bitmap);
                a(ErrorCode.NONE, bitmap);
            }
        };
        if (i == 2147418114) {
            Log.d("NexEditor.java", "  Capture CAPTURE_CURRENT_NOFX fastPreview");
            b(FastPreviewOption.nofx, 1, false);
            Log.d("NexEditor.java", "  Capture CAPTURE_CURRENT_NOFX captureCurrentFrame");
            b(anonymousClass14);
            Log.d("NexEditor.java", "  Capture CAPTURE_CURRENT_NOFX out");
        } else {
            a(i, false, new p() {
                public String a() {
                    return "CAPTURE(" + i + ")";
                }

                public void a(ErrorCode errorCode) {
                    Log.d("NexEditor.java", "  Capture onSetTimeFail=" + errorCode.name());
                    NexEditor.this.aj = false;
                    eVar.a(errorCode);
                }

                public void a(int i, int i2) {
                    Log.d("NexEditor.java", "  Capture onSetTimeDone=" + i);
                    NexEditor.this.b(anonymousClass14);
                }
            });
        }
        return ErrorCode.NONE;
    }

    public void s() {
        a(new f() {
            public void a(ErrorCode errorCode) {
            }
        });
    }

    public void t() {
        a(0, new o() {
            public void a(ErrorCode errorCode) {
            }

            public void a() {
            }
        });
    }

    private void a(final int i, final o oVar) {
        this.am++;
        this.an = true;
        this.j = false;
        final int i2 = this.am;
        b(new f() {
            public void a(ErrorCode errorCode) {
                if (NexEditor.this.an) {
                    NexEditor.this.an = false;
                    if (NexEditor.this.am == i2) {
                        NexEditor.this.ao = true;
                        int a = NexEditor.this.startPlay(i);
                        if (a == 0) {
                            NexEditor.this.q.add(oVar);
                        } else {
                            oVar.a(ErrorCode.fromValue(a));
                        }
                    }
                }
            }
        });
    }

    public Task a(String str, int i, int i2, int i3, long j, int i4, boolean z, int i5, int i6) {
        Task task = new Task();
        if (this.aq != null) {
            task.sendFailure(ErrorCode.ALREADY_EXPORTING);
            return task;
        }
        this.ar = i4;
        int encodeProject = encodeProject(str, i, i2, i3, j, z ? i4 : 0, 3000, 1920, 1080, i5, nexEngine.ExportHEVCHighTierLevel51, 0, 0, nexEngine.ExportCodec_AVC, i6);
        if (encodeProject != 0) {
            task.sendFailure(ErrorCode.fromValue(encodeProject));
            return task;
        }
        this.ap = null;
        this.aq = task;
        return this.aq;
    }

    public Task a(String str, int i, int i2, int i3, long j, int i4, boolean z, int i5, int i6, int i7, int i8, int i9, int i10) {
        Task task = new Task();
        if (this.aq != null) {
            task.sendFailure(ErrorCode.ALREADY_EXPORTING);
            return task;
        }
        this.ar = i4;
        int encodeProject = encodeProject(str, i, i2, i3, j, z ? i4 : 0, i8, 1920, 1080, i5, nexEngine.ExportHEVCHighTierLevel51, i6, i7, i9, i10);
        if (encodeProject != 0) {
            task.sendFailure(ErrorCode.fromValue(encodeProject));
            return task;
        }
        this.ap = null;
        this.aq = task;
        return this.aq;
    }

    public void a(f fVar) {
        a(2, fVar);
    }

    public void a(int i, f fVar) {
        if (this.an) {
            for (f a : this.t) {
                a.a(ErrorCode.PLAY_SUPERCEEDED);
            }
            this.t.clear();
        }
        this.an = false;
        this.ao = false;
        if (this.b || this.aq != null) {
            Log.d("NexEditor.java", "stop flags(" + i + ") : " + fVar.toString());
            this.r.clear();
            this.p.add(fVar);
            int stopPlay = stopPlay(i);
            if (this.aq != null) {
                this.aq.signalEvent(Event.CANCEL);
                this.aq = null;
            }
            if (stopPlay != 0) {
                this.p.remove(fVar);
                fVar.a(ErrorCode.fromValue(stopPlay));
                return;
            }
            return;
        }
        stopPlay(i);
        fVar.a(ErrorCode.NONE);
    }

    public ErrorCode a(int i, int i2, int i3, final e eVar) {
        if (this.aj) {
            return ErrorCode.INVALID_STATE;
        }
        this.aj = true;
        if (!this.ak) {
            int i4 = (this.az || this.ay) ? this.aA : this.A;
            this.al = i4;
        }
        Log.d("NexEditor.java", "image Capture mCaptureOriginalTime=" + this.al);
        AnonymousClass4 anonymousClass4 = new e() {
            void a(ErrorCode errorCode, Bitmap bitmap) {
                if (NexEditor.this.as != null) {
                    NexEditor.this.as.close();
                    NexEditor.this.as = null;
                }
                NexEditor.this.ak = true;
                if (bitmap == null) {
                    Log.e("NexEditor.java", "image Capture failed; error=" + errorCode.getValue() + " (" + errorCode.name() + ")");
                    NexEditor.this.aj = false;
                    eVar.a(errorCode);
                } else {
                    Log.d("NexEditor.java", "image Capture success; notify listener");
                    NexEditor.this.aj = false;
                    eVar.a(bitmap);
                }
                NexEditor.this.ak = false;
            }

            public void a(ErrorCode errorCode) {
                Log.d("NexEditor.java", "image Capture onCaptureFail=" + errorCode.name());
                NexEditor.this.prepareSurface(NexEditor.this.L);
                if (NexEditor.this.as != null) {
                    NexEditor.this.as.close();
                    NexEditor.this.as = null;
                }
                a(errorCode, null);
            }

            public void a(Bitmap bitmap) {
                Log.d("NexEditor.java", "image Capture onCapture=" + bitmap);
                a(ErrorCode.NONE, bitmap);
            }
        };
        if (this.as == null) {
            Log.d("NexEditor", "image Capture create ImageReader");
            this.as = ImageReader.newInstance(i, i2, 1, 2);
        }
        this.as.setOnImageAvailableListener(new OnImageAvailableListener() {
            /* JADX WARNING: Removed duplicated region for block: B:30:0x00ef  */
            /* JADX WARNING: Removed duplicated region for block: B:30:0x00ef  */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public void onImageAvailable(ImageReader imageReader) {
                Exception e;
                Image image;
                Throwable th;
                Log.d("NexEditor", "image Capture setOnImageAvailableListener jpeg == ");
                Image acquireLatestImage;
                try {
                    acquireLatestImage = imageReader.acquireLatestImage();
                    if (acquireLatestImage != null) {
                        try {
                            Plane[] planes = acquireLatestImage.getPlanes();
                            if (planes[0].getBuffer() == null) {
                                NexEditor.this.e(ErrorCode.UNKNOWN);
                                if (acquireLatestImage != null) {
                                    acquireLatestImage.close();
                                }
                                imageReader.close();
                                NexEditor.this.as = null;
                                return;
                            }
                            int width = acquireLatestImage.getWidth();
                            int height = acquireLatestImage.getHeight();
                            int rowStride = planes[0].getRowStride();
                            int i = rowStride - (width * 4);
                            byte[] bArr = new byte[((width * height) * 4)];
                            ByteBuffer buffer = planes[0].getBuffer();
                            for (int i2 = 0; i2 < height; i2++) {
                                buffer.get(bArr, (width * i2) * 4, width * 4);
                                buffer.position((i2 + 1) * rowStride);
                            }
                            Log.d("NexEditor", "image Capture prepareSurface = " + NexEditor.this.L);
                            NexEditor.this.prepareSurface(NexEditor.this.L);
                            NexEditor.this.a(width, height, bArr.length, bArr, false);
                            acquireLatestImage.close();
                            acquireLatestImage = null;
                        } catch (Exception e2) {
                            e = e2;
                            image = acquireLatestImage;
                            try {
                                e.printStackTrace();
                                Log.d("NexEditor", "image Capture prepareSurface(exception) = " + NexEditor.this.L);
                                NexEditor.this.prepareSurface(NexEditor.this.L);
                                NexEditor.this.e(ErrorCode.UNKNOWN);
                                if (image != null) {
                                    image.close();
                                }
                                imageReader.close();
                                NexEditor.this.as = null;
                                return;
                            } catch (Throwable th2) {
                                th = th2;
                                acquireLatestImage = image;
                                if (acquireLatestImage != null) {
                                }
                                imageReader.close();
                                NexEditor.this.as = null;
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            if (acquireLatestImage != null) {
                            }
                            imageReader.close();
                            NexEditor.this.as = null;
                            throw th;
                        }
                    }
                    if (acquireLatestImage != null) {
                        acquireLatestImage.close();
                    }
                    imageReader.close();
                    NexEditor.this.as = null;
                } catch (Exception e3) {
                    e = e3;
                    image = null;
                } catch (Throwable th4) {
                    th = th4;
                    acquireLatestImage = null;
                    if (acquireLatestImage != null) {
                        acquireLatestImage.close();
                    }
                    imageReader.close();
                    NexEditor.this.as = null;
                    throw th;
                }
            }
        }, null);
        if (encodeProjectJpeg(this.as.getSurface(), " ", i, i2, 0, i3) == 0) {
            this.v.add(anonymousClass4);
        }
        return ErrorCode.NONE;
    }

    public void u() {
        if (this.aj && !this.av) {
            this.av = true;
            Log.d("NexEditor.java", "  exportImageFormatCancel...");
        }
    }

    /* JADX WARNING: Missing block: B:9:0x0018, code:
            if (r11 != null) goto L_0x0029;
     */
    /* JADX WARNING: Missing block: B:10:0x001a, code:
            android.util.Log.d("NexEditor.java", "exportImageFormat ExportImageCollback is null ");
            r5.aj = false;
     */
    /* JADX WARNING: Missing block: B:15:0x0029, code:
            r5.aw = r11;
     */
    /* JADX WARNING: Missing block: B:16:0x002d, code:
            if (r5.ak != false) goto L_0x003b;
     */
    /* JADX WARNING: Missing block: B:18:0x0031, code:
            if (r5.az != false) goto L_0x0037;
     */
    /* JADX WARNING: Missing block: B:20:0x0035, code:
            if (r5.ay == false) goto L_0x00b1;
     */
    /* JADX WARNING: Missing block: B:21:0x0037, code:
            r0 = r5.aA;
     */
    /* JADX WARNING: Missing block: B:22:0x0039, code:
            r5.al = r0;
     */
    /* JADX WARNING: Missing block: B:23:0x003b, code:
            android.util.Log.d("NexEditor.java", "  exportImageFormat mCaptureOriginalTime=" + r5.al);
            r5.au.poll();
            r5.au.poll();
            r5.au.poll();
     */
    /* JADX WARNING: Missing block: B:24:0x0066, code:
            if (r5.as != null) goto L_0x006f;
     */
    /* JADX WARNING: Missing block: B:25:0x0068, code:
            r5.as = android.media.ImageReader.newInstance(r6, r7, 1, 2);
     */
    /* JADX WARNING: Missing block: B:26:0x006f, code:
            r0 = new android.os.HandlerThread("exportImageFormat");
            r0.start();
            r1 = new android.os.Handler(r0.getLooper());
            android.util.Log.d("NexEditor.java", "  exportImageFormat 1");
            r5.as.setOnImageAvailableListener(new com.nexstreaming.kminternal.nexvideoeditor.NexEditor.AnonymousClass6(r5), r1);
            android.util.Log.d("NexEditor.java", "  exportImageFormat 2");
            new com.nexstreaming.kminternal.nexvideoeditor.NexEditor.AnonymousClass7(r5).executeOnExecutor(at, new java.lang.Void[0]);
            android.util.Log.d("NexEditor.java", "  exportImageFormat 3");
     */
    /* JADX WARNING: Missing block: B:27:0x00b1, code:
            r0 = r5.A;
     */
    /* JADX WARNING: Missing block: B:32:?, code:
            return com.nexstreaming.kminternal.nexvideoeditor.NexEditor.ErrorCode.INVALID_STATE;
     */
    /* JADX WARNING: Missing block: B:33:?, code:
            return com.nexstreaming.kminternal.nexvideoeditor.NexEditor.ErrorCode.NONE;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public ErrorCode a(int i, int i2, final int i3, final int i4, final int i5, v vVar) {
        synchronized (this.ax) {
            if (this.aj) {
                Log.d("NexEditor.java", "exportImageFormat already exporting");
                ErrorCode errorCode = ErrorCode.INVALID_STATE;
                return errorCode;
            }
            this.aj = true;
        }
    }

    public void j(int i) {
        c(i, null);
    }

    private void b(f fVar) {
        Log.d("NexEditor.java", "setTimeCancel m_isPendingSeek: " + this.az + " -> false");
        this.az = false;
        this.aC = false;
        if (!this.ay) {
            fVar.a(ErrorCode.NONE);
        } else if (fVar != null) {
            this.t.add(fVar);
        }
    }

    public void a(final int i, final p pVar) {
        b(new f() {
            public void a(ErrorCode errorCode) {
                NexEditor.this.b(i, pVar);
            }
        });
    }

    public void b(int i, p pVar) {
        a(i, true, 4, pVar);
    }

    public void c(int i, p pVar) {
        a(i, true, 0, pVar);
    }

    public void d(int i, p pVar) {
        a(i, true, 1, pVar);
    }

    public void e(int i, p pVar) {
        a(i, true, 2, pVar);
    }

    public void a(int i, boolean z, p pVar) {
        a(i, z, 0, pVar);
    }

    private void a(int i, boolean z, int i2, p pVar) {
        Object obj;
        String str = "NexEditor.java";
        StringBuilder append = new StringBuilder().append("in seek(display=").append(z).append(",").append(i).append(",").append(i2).append(",");
        if (pVar == null) {
            obj = "null";
        } else {
            p obj2 = pVar;
        }
        Log.d(str, append.append(obj2).append(") m_seekSerial=").append(this.aE).append(" seeking=").append(this.ay).append("; pendingSeek=").append(this.az).append("; pendingSeekLocation=").append(this.aA).toString());
        if (pVar != null) {
            pVar.a = i;
            pVar.b = this.aE;
        }
        if (!this.ay) {
            this.j = true;
            f(true);
            int time = setTime(i, z ? 1 : 0, i2);
            if (time != 0) {
                Log.d("NexEditor.java", "setTime ERROR RETURN: " + time);
                f(false);
                if (pVar != null) {
                    pVar.a(ErrorCode.fromValue(time));
                    return;
                }
                return;
            }
            Log.d("NexEditor.java", "setTime SEEK STARTED: " + time);
            this.aA = i;
            if (z) {
                Log.d("NexEditor.java", "seek_internal[display]: m_isPendingSeek=" + this.az + " -> false");
                this.az = false;
            } else {
                this.aC = false;
            }
            this.aE++;
        } else if (z) {
            Log.d("NexEditor.java", "seek_internal: m_isPendingSeek=" + this.az + " -> true, flag=" + i2);
            this.az = true;
            this.aA = i;
            this.aB = i2;
        } else {
            this.aC = true;
            this.aD = i;
        }
        if (pVar != null) {
            this.o.add(pVar);
            Log.d("NexEditor.java", "m_setTimeDoneListeners - Added listener");
            D();
        }
    }

    private void D() {
        int i = 0;
        Iterator it = this.o.iterator();
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                p pVar = (p) it.next();
                Log.d("NexEditor.java", "     " + i2 + ": t=" + pVar.a + " sn=" + pVar.b + " " + pVar.a() + "    " + pVar);
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    protected void d(int i, int i2) {
        a(i, i2, ErrorCode.NONE);
    }

    protected void k(int i) {
        if (this.aq != null) {
            this.aq.setProgress(Math.min(this.ar, i), this.ar);
        }
        this.A = i;
    }

    protected void a(int i, int i2, ErrorCode errorCode) {
        this.A = i;
        this.B = i2;
        Log.d("NexEditor.java", "in onSetTimeDone(" + i + "," + i2 + ") " + B() + " " + C());
        Collection<p> linkedList = new LinkedList();
        for (p pVar : this.o) {
            if (pVar.b < this.aE) {
                linkedList.add(pVar);
            }
        }
        for (p pVar2 : linkedList) {
            Log.d("NexEditor.java", "  - START notify listener : " + pVar2 + pVar2.a() + pVar2);
            if (errorCode == ErrorCode.NONE) {
                pVar2.a(i, i2);
            } else {
                pVar2.a(errorCode);
            }
            Log.d("NexEditor.java", "  - DONE notify listener : " + pVar2.a() + " " + pVar2);
        }
        Log.d("NexEditor.java", "(removing " + linkedList.size() + " listeners)");
        this.o.removeAll(linkedList);
        D();
        f(false);
        Log.d("NexEditor.java", "(seek state set to FALSE)");
        if (this.t.size() > 0) {
            Log.d("NexEditor.java", "onSetTimeDone [m_onSetTimeCancelListeners>0]: m_isPendingSeek=" + this.az + " -> false");
            this.az = false;
            this.aC = false;
            while (this.t.size() > 0) {
                ((f) this.t.remove()).a(ErrorCode.NONE);
            }
        }
        if (this.aC) {
            Log.d("NexEditor.java", "execute pending non-display seek : " + this.aD);
            this.aC = false;
            a(this.aD, false, 0, null);
        } else if (this.az) {
            Log.d("NexEditor.java", "execute pending seek : " + this.aA + ", m_pendingSeekIDR=" + this.aB);
            this.az = false;
            if (this.aB == 0) {
                j(this.aA);
            } else if (this.aB == 1) {
                d(this.aA, null);
            } else if (this.aB == 4) {
                b(this.aA, null);
            } else {
                e(this.aA, null);
            }
        }
        Log.d("NexEditor.java", "out onSetTimeDone(" + i + "," + i2 + ") " + B() + " " + this.o.size());
    }

    protected void v() {
        a(0, 0, ErrorCode.SET_TIME_IGNORED);
    }

    private void f(boolean z) {
        if (z != this.ay) {
            this.ay = z;
            if (this.f != null) {
                this.f.a(this.ay);
            }
        }
    }

    public int a(int i, g gVar) {
        Object gVar2;
        if (gVar2 == null) {
            gVar2 = new g() {
                public void a() {
                }

                public void a(ErrorCode errorCode) {
                }
            };
        }
        int deleteClipID = deleteClipID(i);
        if (deleteClipID == 0) {
            this.m.add(gVar2);
        }
        return deleteClipID;
    }

    public void b(String str, boolean z) {
        int i;
        if (z) {
            i = 0;
        } else {
            i = 1;
        }
        loadTheme(String.format("", new Object[0]), str, i);
    }

    public void a(boolean z) {
        int i = 0;
        if (!z) {
            i = 1;
        }
        clearRenderItems(i);
    }

    public void a(String str, String str2, boolean z) {
        int i = 0;
        if (!z) {
            i = 1;
        }
        loadRenderItem(str, str2, i);
    }

    public ErrorCode a(String str, NexClipInfo nexClipInfo, boolean z, int i) {
        return ErrorCode.fromValue(getClipInfoSync(str, nexClipInfo, z ? 1 : 0, i));
    }

    public ErrorCode a(String str, NexClipInfo nexClipInfo, int i, int i2) {
        return ErrorCode.fromValue(getClipInfoSync(str, nexClipInfo, i, i2));
    }

    public void a(j jVar) {
        this.aG = jVar;
    }

    public void c(ErrorCode errorCode, int i) {
        Log.d("NexEditor.java", "onGetClipInfoDone onGetClipInfoDone=" + errorCode + " tag=" + i);
        if (this.aG != null) {
            this.aG.a(errorCode, i);
        }
    }

    public void a(q qVar) {
        this.x = qVar;
    }

    public void w() {
        if (this.x != null) {
            this.x.a();
        }
    }

    public ErrorCode a(String str, File file, int i, int i2, int i3, int i4, int i5, int i6, int i7) throws IOException {
        return ErrorCode.fromValue(getClipVideoThumb(str, file.getAbsolutePath(), i, i2, i3, i4, i5, i6, i7));
    }

    public ErrorCode a(String str, File file, int i, int i2, int i3, int[] iArr, int i4, int i5) throws IOException {
        return ErrorCode.fromValue(getClipVideoThumbWithTimeTable(str, file.getAbsolutePath(), i, i2, i3, iArr, i4, i5));
    }

    public ErrorCode a(String str, File file, int i) {
        return ErrorCode.fromValue(getClipAudioThumb(str, file.getAbsolutePath(), i));
    }

    public ErrorCode l(int i) {
        return ErrorCode.fromValue(getClipStopThumb(i));
    }

    public int a(NexVisualClip[] nexVisualClipArr, NexAudioClip[] nexAudioClipArr, int i) {
        int i2;
        int length;
        int i3 = 0;
        if (nexVisualClipArr != null) {
            i2 = 0;
            for (NexVisualClip nexVisualClip : nexVisualClipArr) {
                if (nexVisualClip != null && nexVisualClip.mClipID > r0) {
                    i2 = nexVisualClip.mClipID;
                }
            }
        } else {
            i2 = 0;
        }
        if (nexAudioClipArr != null) {
            length = nexAudioClipArr.length;
            while (i3 < length) {
                NexAudioClip nexAudioClip = nexAudioClipArr[i3];
                if (nexAudioClip != null && nexAudioClip.mClipID > r0) {
                    i2 = nexAudioClip.mClipID;
                }
                i3++;
            }
        }
        this.a = i2 + 1;
        return loadList(nexVisualClipArr, nexAudioClipArr, i);
    }

    public int b(NexVisualClip[] nexVisualClipArr, NexAudioClip[] nexAudioClipArr, int i) {
        int i2;
        int length;
        int i3 = 0;
        if (nexVisualClipArr != null) {
            i2 = 0;
            for (NexVisualClip nexVisualClip : nexVisualClipArr) {
                if (nexVisualClip != null && nexVisualClip.mClipID > r0) {
                    i2 = nexVisualClip.mClipID;
                }
            }
        } else {
            i2 = 0;
        }
        if (nexAudioClipArr != null) {
            length = nexAudioClipArr.length;
            while (i3 < length) {
                NexAudioClip nexAudioClip = nexAudioClipArr[i3];
                if (nexAudioClip != null && nexAudioClip.mClipID > r0) {
                    i2 = nexAudioClip.mClipID;
                }
                i3++;
            }
        }
        this.a = i2 + 1;
        return asyncLoadList(nexVisualClipArr, nexAudioClipArr, i);
    }

    public boolean x() {
        return this.ay;
    }

    public void b(boolean z) {
        if (this.d != null) {
            this.d.setSyncMode(z);
        }
    }

    public int y() {
        return getNativeSDKInfoWM();
    }

    public static void c(String str) {
        setPacakgeName4Protection(str);
    }

    public static void a(String[] strArr) {
        setEncInfo(strArr);
    }

    public int a(String str, int i, int i2, int i3, int i4, int i5, int i6) {
        return highlightStart(str, i, i2, i3, 0, "dummy", 0, 0, 0, Long.MAX_VALUE, i4, i5, i6);
    }

    public int z() {
        return highlightStop();
    }

    private void E() {
        if (this.ap != null && this.ap.contains("writefd://")) {
            closeOutputFile(Integer.parseInt(this.ap.substring("writefd://".length())));
            this.ap = null;
        }
    }

    public void a(int i, byte[] bArr) {
        setVideoTrackUUID(i, bArr);
    }

    public void a(i iVar) {
        if (iVar == null) {
            this.w.clear();
        } else {
            this.w.add(iVar);
        }
    }

    public static void c(boolean z) {
        O = z;
    }

    public int d(boolean z) {
        return getAudioSessionID();
    }

    public boolean e(int i, int i2) {
        set360VideoTrackPosition(i, i2, 1);
        return true;
    }

    public boolean A() {
        set360VideoTrackPosition(0, 0, 0);
        return true;
    }

    public int m(int i) {
        return releaseLUTTexture(i);
    }

    public int[] a(byte[] bArr, int i, int i2) {
        return createLGLUT(bArr);
    }

    public int[] b(byte[] bArr, int i, int i2) {
        return createCubeLUT(bArr);
    }

    public void e(boolean z) {
        if (this.d != null) {
            this.d.setWatermark(z);
        }
    }

    public boolean a(float f) {
        if (f <= 0.0f || f > 1.0f) {
            return false;
        }
        this.aH = f;
        return true;
    }

    public int[] c(byte[] bArr, int i, int i2) {
        int i3 = i * i2;
        int[] iArr = new int[(i * i2)];
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int i6 = i4;
            if (i6 >= i2) {
                return iArr;
            }
            int i7 = i3 + ((i6 >> 1) * i);
            int i8 = 0;
            int i9 = 0;
            int i10 = i5;
            i4 = 0;
            while (i9 < i) {
                int i11;
                int i12;
                int i13 = (bArr[i10] & 255) - 16;
                if (i13 < 0) {
                    i11 = 0;
                } else {
                    i11 = i13;
                }
                if ((i9 & 1) == 0) {
                    i4 = i7 + 1;
                    i8 = (bArr[i7] & 255) - 128;
                    i13 = (bArr[i4] & 255) - 128;
                    i5 = i8;
                    i12 = i4 + 1;
                } else {
                    i13 = i4;
                    i5 = i8;
                    i12 = i7;
                }
                i4 = i11 * 1192;
                i7 = i4 + (i13 * 1634);
                i8 = (i4 - (i13 * 833)) - (i5 * 400);
                i4 += i5 * 2066;
                if (i7 < 0) {
                    i7 = 0;
                } else if (i7 > 262143) {
                    i7 = 262143;
                }
                if (i8 < 0) {
                    i8 = 0;
                } else if (i8 > 262143) {
                    i8 = 262143;
                }
                if (i4 < 0) {
                    i4 = 0;
                } else if (i4 > 262143) {
                    i4 = 262143;
                }
                i4 = (i4 >> 10) & 255;
                iArr[i10] = i4 | (((i8 >> 2) & 65280) | (((i7 << 6) & 16711680) | -16777216));
                i9++;
                i7 = i12;
                i10++;
                i4 = i13;
                i8 = i5;
            }
            i4 = i6 + 1;
            i5 = i10;
        }
    }

    public Bitmap n(int i) {
        byte[] timeThumbData = getTimeThumbData(i);
        if (timeThumbData == null || timeThumbData.length == 0) {
            return null;
        }
        return Bitmap.createBitmap(c(timeThumbData, 320, 240), 320, 240, Config.ARGB_8888);
    }

    public int o(int i) {
        return setThumbnailRoutine(i);
    }
}
