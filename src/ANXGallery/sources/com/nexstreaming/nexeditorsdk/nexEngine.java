package com.nexstreaming.nexeditorsdk;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.media.MediaCodecInfo;
import android.media.MediaCodecInfo.CodecCapabilities;
import android.media.MediaCodecInfo.CodecProfileLevel;
import android.media.MediaCodecList;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.nexstreaming.app.common.task.Task;
import com.nexstreaming.app.common.task.Task.Event;
import com.nexstreaming.app.common.task.Task.OnFailListener;
import com.nexstreaming.app.common.task.Task.OnTaskEventListener;
import com.nexstreaming.app.common.task.Task.TaskError;
import com.nexstreaming.kminternal.kinemaster.config.EditorGlobal;
import com.nexstreaming.kminternal.kinemaster.mediainfo.MediaInfo;
import com.nexstreaming.kminternal.nexvideoeditor.LayerRenderer;
import com.nexstreaming.kminternal.nexvideoeditor.NexAudioClip;
import com.nexstreaming.kminternal.nexvideoeditor.NexDrawInfo;
import com.nexstreaming.kminternal.nexvideoeditor.NexEditor;
import com.nexstreaming.kminternal.nexvideoeditor.NexEditor.ErrorCode;
import com.nexstreaming.kminternal.nexvideoeditor.NexEditor.PlayState;
import com.nexstreaming.kminternal.nexvideoeditor.NexEditor.e;
import com.nexstreaming.kminternal.nexvideoeditor.NexEditor.f;
import com.nexstreaming.kminternal.nexvideoeditor.NexEditor.i;
import com.nexstreaming.kminternal.nexvideoeditor.NexEditor.l;
import com.nexstreaming.kminternal.nexvideoeditor.NexEditor.p;
import com.nexstreaming.kminternal.nexvideoeditor.NexEditor.q;
import com.nexstreaming.kminternal.nexvideoeditor.NexEditor.s;
import com.nexstreaming.kminternal.nexvideoeditor.NexEditor.v;
import com.nexstreaming.kminternal.nexvideoeditor.NexRectangle;
import com.nexstreaming.kminternal.nexvideoeditor.NexThemeView;
import com.nexstreaming.kminternal.nexvideoeditor.NexVisualClip;
import com.nexstreaming.kminternal.nexvideoeditor.b;
import com.nexstreaming.kminternal.nexvideoeditor.c;
import com.nexstreaming.nexeditorsdk.exception.InvalidRangeException;
import com.nexstreaming.nexeditorsdk.exception.ProjectNotAttachedException;
import com.nexstreaming.nexeditorsdk.module.nexExternalExportProvider;
import com.nexstreaming.nexeditorsdk.module.nexFaceDetectionProvider;
import com.nexstreaming.nexeditorsdk.nexOverlayItem.HitPoint;
import com.nexstreaming.nexeditorsdk.nexTranscode.Option;
import com.nexstreaming.nexeditorsdk.nexTranscode.Rotate;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.keyczar.Keyczar;

public final class nexEngine implements Callback {
    public static final int DirectExportOption_AudioEncode = 1;
    public static final int DirectExportOption_None = 0;
    public static final int ExportAVCLevel1 = 1;
    public static final int ExportAVCLevel11 = 4;
    public static final int ExportAVCLevel12 = 8;
    public static final int ExportAVCLevel13 = 16;
    public static final int ExportAVCLevel1b = 2;
    public static final int ExportAVCLevel2 = 32;
    public static final int ExportAVCLevel21 = 64;
    public static final int ExportAVCLevel22 = 128;
    public static final int ExportAVCLevel3 = 256;
    public static final int ExportAVCLevel31 = 512;
    public static final int ExportAVCLevel32 = 1024;
    public static final int ExportAVCLevel4 = 2048;
    public static final int ExportAVCLevel41 = 4096;
    public static final int ExportAVCLevel42 = 8192;
    public static final int ExportAVCLevel5 = 16384;
    public static final int ExportAVCLevel51 = 32768;
    public static final int ExportAVCLevel52 = 65536;
    public static final int ExportCodec_AVC = 268501760;
    public static final int ExportCodec_HEVC = 268502016;
    public static final int ExportCodec_MPEG4V = 268566784;
    public static final int ExportCropMode_Enhanced = 1;
    public static final int ExportCropMode_Fill = 2;
    public static final int ExportCropMode_None = 0;
    public static final int ExportHEVCHighTierLevel1 = 2;
    public static final int ExportHEVCHighTierLevel2 = 8;
    public static final int ExportHEVCHighTierLevel21 = 32;
    public static final int ExportHEVCHighTierLevel3 = 128;
    public static final int ExportHEVCHighTierLevel31 = 512;
    public static final int ExportHEVCHighTierLevel4 = 2048;
    public static final int ExportHEVCHighTierLevel41 = 8192;
    public static final int ExportHEVCHighTierLevel5 = 32768;
    public static final int ExportHEVCHighTierLevel51 = 131072;
    public static final int ExportHEVCHighTierLevel52 = 524288;
    public static final int ExportHEVCHighTierLevel6 = 2097152;
    public static final int ExportHEVCHighTierLevel61 = 8388608;
    public static final int ExportHEVCHighTierLevel62 = 33554432;
    public static final int ExportHEVCMainTierLevel1 = 1;
    public static final int ExportHEVCMainTierLevel2 = 4;
    public static final int ExportHEVCMainTierLevel21 = 16;
    public static final int ExportHEVCMainTierLevel3 = 64;
    public static final int ExportHEVCMainTierLevel31 = 256;
    public static final int ExportHEVCMainTierLevel4 = 1024;
    public static final int ExportHEVCMainTierLevel41 = 4096;
    public static final int ExportHEVCMainTierLevel5 = 16384;
    public static final int ExportHEVCMainTierLevel51 = 65536;
    public static final int ExportHEVCMainTierLevel52 = 262144;
    public static final int ExportHEVCMainTierLevel6 = 1048576;
    public static final int ExportHEVCMainTierLevel61 = 4194304;
    public static final int ExportHEVCMainTierLevel62 = 16777216;
    public static final int ExportMPEG4Level0 = 1;
    public static final int ExportMPEG4Level0b = 2;
    public static final int ExportMPEG4Level1 = 4;
    public static final int ExportMPEG4Level2 = 8;
    public static final int ExportMPEG4Level3 = 16;
    public static final int ExportMPEG4Level4 = 32;
    public static final int ExportMPEG4Level4a = 64;
    public static final int ExportMPEG4Level5 = 128;
    public static final int ExportProfile_AVCBaseline = 1;
    public static final int ExportProfile_AVCExtended = 3;
    public static final int ExportProfile_AVCHigh = 4;
    public static final int ExportProfile_AVCHigh10 = 5;
    public static final int ExportProfile_AVCHigh422 = 6;
    public static final int ExportProfile_AVCHigh444 = 7;
    public static final int ExportProfile_AVCMain = 2;
    public static final int ExportProfile_HEVCMain = 1;
    public static final int ExportProfile_HEVCMain10 = 2;
    public static final int ExportProfile_MPEG4VASP = 32768;
    public static final int ExportProfile_MPEG4VSimple = 1;
    private static final int PERSIST_INTERVAL = 500;
    private static final int PREWAKE_INTERVAL = 2000;
    private static final String TAG = "nexEngine";
    private static final int export_audio_sampling_rate = 44100;
    private static final int export_fps = 3000;
    private static final int kState_export = 2;
    private static final int kState_idle = 0;
    private static final int kState_load = 1;
    private static Comparator<nexOverlayItem> layerZOrderComparator = new Comparator<nexOverlayItem>() {
        /* renamed from: a */
        public int compare(nexOverlayItem nexoverlayitem, nexOverlayItem nexoverlayitem2) {
            int zOrder = nexoverlayitem.getZOrder() - nexoverlayitem2.getZOrder();
            if (zOrder < 0) {
                return -1;
            }
            if (zOrder > 0) {
                return 1;
            }
            return 0;
        }
    };
    public static final int retCheckDirectExport_ClipCountZero = 3;
    public static final int retCheckDirectExport_EncoderDSIMismatch = 11;
    public static final int retCheckDirectExport_FilterApplied = 15;
    public static final int retCheckDirectExport_HasImageClip = 7;
    public static final int retCheckDirectExport_HasSpeedControl = 12;
    public static final int retCheckDirectExport_HasVideoLayer = 8;
    public static final int retCheckDirectExport_InvalidClipList = 2;
    public static final int retCheckDirectExport_InvalidHandle = 1;
    public static final int retCheckDirectExport_InvalidRotate = 14;
    public static final int retCheckDirectExport_InvalidVideoInfo = 4;
    public static final int retCheckDirectExport_NotStartIFrame = 6;
    public static final int retCheckDirectExport_OK = 0;
    public static final int retCheckDirectExport_SetClipEffect = 10;
    public static final int retCheckDirectExport_SetTransitionEffect = 9;
    public static final int retCheckDirectExport_UnmatchedVideoCodec = 5;
    public static final int retCheckDirectExport_UnsupportedCodec = 13;
    private static int sExportVideoTrackUUIDMode = 0;
    private static boolean sLoadListAsync = true;
    private static int sNextId = 1;
    private static nexEngineListener sTranscodeListener = null;
    private static boolean sTranscodeMode = false;
    private static nexProject sTranscodeProject = null;
    private static ExportProfile[] s_exportProfiles;
    ArrayList<AsyncTask<String, Void, com.nexstreaming.kminternal.kinemaster.utils.facedetect.a>> async_facedetect_worker_list_ = new ArrayList();
    private boolean bLetterBox = false;
    boolean bNeedScaling = false;
    private boolean cacheSeekMode = false;
    private boolean externalImageExportProcessing = false;
    private boolean facedetect_asyncmode = true;
    private int facedetect_syncclip_count = 1;
    private int facedetect_undetected_clip_cropping_mode = 0;
    private int lastCheckDirectExportOption = 0;
    private int lastSeekTime = 0;
    private Set<nexOverlayItem> mActiveRenderLayers = new HashSet();
    private Context mAppContext;
    private List<NexAudioClip> mCachedNexAudioClips;
    private List<NexVisualClip> mCachedNexVisualClips;
    private int mCurrentPlayTime;
    private c mEditorListener = null;
    private int mEncodeBitrate;
    private int mEncodeHeight;
    private long mEncodeMaxFileSize;
    private int mEncodeWidth;
    private int mEnhancedCropMode;
    private int mEnhancedCropOutputHeight;
    private int mEnhancedCropOutputWidth;
    private nexEngineListener mEventListener = null;
    private String mExportFilePath;
    private int mExportTotalTime;
    private boolean mForceMixExportMode;
    private int mId;
    private int mLastManualVolCtl = -1;
    private int mLastProjectFadeIn = -1;
    private int mLastProjectFadeOut = -1;
    private int mLastProjectVolume = -1;
    private PlayState mPlayState = PlayState.IDLE;
    private nexProject mProject = null;
    private List<nexOverlayItem> mRenderInCurrentPass = new ArrayList();
    private int mState = 0;
    private Surface mSurface;
    private SurfaceView mSurfaceView;
    private NexEditor mVideoEditor;
    private boolean m_layerLock = false;
    private NexEditor.c m_layerRenderCallback = new NexEditor.c() {
        public void a(LayerRenderer layerRenderer) {
            synchronized (nexEngine.this.m_layerRenderLock) {
                if (nexEngine.this.m_layerLock) {
                    return;
                }
                nexEngine.this.mRenderInCurrentPass.clear();
                if (nexEngine.this.mProject == null) {
                } else if (nexEngine.this.mProject.getOverlayItems() == null) {
                } else {
                    int i;
                    int i2;
                    if (nexEngine.this.mProject.getOverlayItems().size() > 0) {
                        int g = layerRenderer.g();
                        i = 0;
                        i2 = 0;
                        for (nexOverlayItem nexoverlayitem : nexEngine.this.mProject.getOverlayItems()) {
                            int i3;
                            int startTime = nexoverlayitem.getStartTime();
                            int endTime = nexoverlayitem.getEndTime();
                            boolean contains = nexEngine.this.mActiveRenderLayers.contains(nexoverlayitem);
                            if (startTime <= g && endTime > g) {
                                if (!contains) {
                                    nexEngine.this.mActiveRenderLayers.add(nexoverlayitem);
                                    nexoverlayitem.onRenderAwake(layerRenderer);
                                    i2++;
                                }
                                nexEngine.this.mRenderInCurrentPass.add(nexoverlayitem);
                                i3 = i;
                            } else if (contains) {
                                nexEngine.this.mActiveRenderLayers.remove(nexoverlayitem);
                                nexoverlayitem.onRenderAsleep(layerRenderer);
                                i3 = i + 1;
                            } else {
                                i3 = i;
                            }
                            i2 = i2;
                            i = i3;
                        }
                    }
                    Collections.sort(nexEngine.this.mRenderInCurrentPass, nexEngine.layerZOrderComparator);
                    i2 = nexEngine.this.mRenderInCurrentPass.size();
                    for (i = 0; i < i2; i++) {
                        ((nexOverlayItem) nexEngine.this.mRenderInCurrentPass.get(i)).onRender(layerRenderer);
                    }
                }
            }
        }
    };
    private Object m_layerRenderLock = new Object();
    private OnSurfaceChangeListener m_onSurfaceChangeListener = null;

    public static abstract class OnAutoTrimResultListener {
        public abstract void onAutoTrimResult(int i, int[] iArr);
    }

    public static abstract class OnCompletionListener {
        public abstract void onComplete(int i);
    }

    public static class ExportProfile {
        private int mimeType;
        private ProfileAndLevel[] proFileAndLevel;

        public int getMimeType() {
            return this.mimeType;
        }

        public ProfileAndLevel[] getProFileAndLevel() {
            return (ProfileAndLevel[]) this.proFileAndLevel.clone();
        }

        public boolean isSupported(int i, int i2) {
            for (ProfileAndLevel profileAndLevel : this.proFileAndLevel) {
                if (profileAndLevel.getProfile() == i && profileAndLevel.getLevel() <= i2) {
                    return true;
                }
            }
            return false;
        }

        public String toString() {
            return "ExportProfile{mimeType=" + this.mimeType + ", proFileAndLevel=" + Arrays.toString(this.proFileAndLevel) + '}';
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
        cts,
        adj_vignette,
        adj_vignetteRange,
        adj_sharpness,
        customlut_clip,
        customlut_power
    }

    public static abstract class OnAutoTrimRatioResultListener {
        public abstract void onAutoTrimRatioResult(int i, int[] iArr, int[] iArr2);
    }

    public static abstract class OnCaptureListener {
        public abstract void onCapture(Bitmap bitmap);

        public abstract void onCaptureFail(nexErrorCode nexerrorcode);
    }

    public static abstract class OnSeekCompletionListener {
        public abstract void onSeekComplete(int i, int i2, int i3);
    }

    public static abstract class OnSurfaceChangeListener {
        public abstract void onSurfaceChanged();
    }

    private enum OverlayCommand {
        clear,
        upload,
        lock,
        unlock
    }

    public class OverlayPreviewBuilder {
        private nexOverlayItem mItem;

        /* synthetic */ OverlayPreviewBuilder(nexEngine nexengine, int i, AnonymousClass1 anonymousClass1) {
            this(i);
        }

        private OverlayPreviewBuilder(int i) {
            for (nexOverlayItem nexoverlayitem : nexEngine.this.mProject.getOverlayItems()) {
                if (nexoverlayitem.getId() == i) {
                    this.mItem = nexoverlayitem;
                }
            }
        }

        public OverlayPreviewBuilder setOutline(boolean z) {
            if (this.mItem != null) {
                this.mItem.showOutline(z);
            }
            return this;
        }

        public OverlayPreviewBuilder setPositionX(int i) {
            if (this.mItem != null) {
                this.mItem.setPosition(i, this.mItem.getPositionY());
            }
            return this;
        }

        public OverlayPreviewBuilder setPositionY(int i) {
            if (this.mItem != null) {
                this.mItem.setPosition(this.mItem.getPositionX(), i);
            }
            return this;
        }

        public OverlayPreviewBuilder setRotateX(int i) {
            if (this.mItem != null) {
                this.mItem.setRotate(i, this.mItem.getRotateY(), this.mItem.getRotateZ());
            }
            return this;
        }

        public OverlayPreviewBuilder setRotateY(int i) {
            if (this.mItem != null) {
                this.mItem.setRotate(this.mItem.getRotateX(), i, this.mItem.getRotateZ());
            }
            return this;
        }

        public OverlayPreviewBuilder setRotateZ(int i) {
            if (this.mItem != null) {
                this.mItem.setRotate(this.mItem.getRotateX(), this.mItem.getRotateY(), i);
            }
            return this;
        }

        public OverlayPreviewBuilder setScaleX(float f) {
            if (this.mItem != null) {
                this.mItem.setScale(f, this.mItem.getScaledY());
            }
            return this;
        }

        public OverlayPreviewBuilder setScaleY(float f) {
            if (this.mItem != null) {
                this.mItem.setScale(this.mItem.getScaledX(), f);
            }
            return this;
        }

        public OverlayPreviewBuilder setAlpha(float f) {
            if (this.mItem != null) {
                this.mItem.setAlpha(f);
            }
            return this;
        }

        public void display() {
            if (this.mItem != null) {
                nexEngine.this.fastPreview(FastPreviewOption.normal, 0);
            }
        }

        public void clear() {
            if (this.mItem != null) {
                this.mItem = null;
            }
        }
    }

    public static class ProfileAndLevel implements Cloneable {
        private int level;
        private int profile;

        /* synthetic */ ProfileAndLevel(int i, int i2, AnonymousClass1 anonymousClass1) {
            this(i, i2);
        }

        private ProfileAndLevel(int i, int i2) {
            this.profile = i;
            this.level = i2;
        }

        public int getProfile() {
            return this.profile;
        }

        public int getLevel() {
            return this.level;
        }

        protected Object clone() throws CloneNotSupportedException {
            return super.clone();
        }

        public String toString() {
            return "ProfileAndLevel{level=" + this.level + ", profile=" + this.profile + '}';
        }
    }

    private class a extends v {
        private nexExternalExportProvider b;
        private nexExportListener c;

        public a(nexExternalExportProvider nexexternalexportprovider, nexExportListener nexexportlistener) {
            this.b = nexexternalexportprovider;
            this.c = nexexportlistener;
        }

        public boolean a(byte[] bArr, int i) {
            return this.b.OnPushData(i, bArr);
        }

        public void a() {
            this.b.OnLastProcess();
        }

        public boolean a(int i) {
            nexErrorCode nexerrorcode = nexErrorCode.EXPORT_WRITER_START_FAIL;
            switch (i) {
                case -3:
                    nexerrorcode = nexErrorCode.EXPORT_WRITER_INIT_FAIL;
                    break;
                case -2:
                    nexerrorcode = nexErrorCode.EXPORT_USER_CANCEL;
                    break;
                case -1:
                    nexerrorcode = nexErrorCode.INVALID_STATE;
                    break;
                case 0:
                    nexerrorcode = nexErrorCode.NONE;
                    break;
            }
            boolean OnEnd = this.b.OnEnd(i);
            if (i < 0 && this.c != null) {
                this.c.onExportFail(nexerrorcode);
            }
            if (this.c != null) {
                this.c.onExportDone(null);
            } else if (nexEngine.this.mEventListener != null) {
                nexEngine.this.mEventListener.onEncodingDone(i != 0, nexerrorcode.getValue());
            }
            nexEngine.this.externalImageExportProcessing = false;
            nexEngine.this.mState = 1;
            return OnEnd;
        }

        public void b(int i) {
            if (this.c != null) {
                this.c.onExportProgress(i);
            } else if (nexEngine.this.mEventListener != null) {
                nexEngine.this.mEventListener.onEncodingProgress(i);
            }
        }

        public int b() {
            return nexEngine.this.async_facedetect_worker_list_.size();
        }
    }

    public enum nexErrorCode {
        NONE(0),
        GENERAL(1),
        UNKNOWN(2),
        NO_ACTION(3),
        INVALID_INFO(4),
        INVALID_STATE(5),
        VERSION_MISMATCH(6),
        CREATE_FAILED(7),
        MEMALLOC_FAILED(8),
        ARGUMENT_FAILED(9),
        NOT_ENOUGH_NEMORY(10),
        EVENTHANDLER(11),
        FILE_IO_FAILED(12),
        FILE_INVALID_SYNTAX(13),
        FILEREADER_CREATE_FAIL(14),
        FILEWRITER_CREATE_FAIL(15),
        AUDIORESAMPLER_CREATE_FAIL(16),
        UNSUPPORT_FORMAT(17),
        FILEREADER_FAILED(18),
        PLAYSTART_FAILED(19),
        PLAYSTOP_FAILED(20),
        PROJECT_NOT_CREATE(21),
        PROJECT_NOT_OPEN(22),
        CODEC_INIT(23),
        RENDERER_INIT(24),
        THEMESET_CREATE_FAIL(25),
        ADD_CLIP_FAIL(26),
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
        EXPORT_NOT_ENOUGHT_DISK_SPACE(48),
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
        CODEC_DECODE(93),
        RENDERER_AUDIO(94);
        
        private final int errno;

        private nexErrorCode(int i) {
            this.errno = i;
        }

        public int getValue() {
            return this.errno;
        }

        public static nexErrorCode fromValue(int i) {
            for (nexErrorCode nexerrorcode : values()) {
                if (nexerrorcode.getValue() == i) {
                    return nexerrorcode;
                }
            }
            return null;
        }
    }

    public enum nexPlayState {
        NONE(0),
        IDLE(1),
        RUN(2),
        RECORD(3);
        
        private int mValue;

        private nexPlayState(int i) {
            this.mValue = i;
        }

        public int getValue() {
            return this.mValue;
        }

        public static nexPlayState fromValue(int i) {
            for (nexPlayState nexplaystate : values()) {
                if (nexplaystate.getValue() == i) {
                    return nexplaystate;
                }
            }
            return null;
        }
    }

    public enum nexUndetectedFaceCrop {
        NONE(0),
        ZOOM(1);
        
        private int mValue;

        private nexUndetectedFaceCrop(int i) {
            this.mValue = i;
        }

        public int getValue() {
            return this.mValue;
        }

        public static nexUndetectedFaceCrop fromValue(int i) {
            for (nexUndetectedFaceCrop nexundetectedfacecrop : values()) {
                if (nexundetectedfacecrop.getValue() == i) {
                    return nexundetectedfacecrop;
                }
            }
            return null;
        }
    }

    public void setBrightness(int i) {
        if (this.mVideoEditor != null) {
            this.mVideoEditor.setBrightness(i);
        }
    }

    public void setContrast(int i) {
        if (this.mVideoEditor != null) {
            this.mVideoEditor.setContrast(i);
        }
    }

    public void setSaturation(int i) {
        if (this.mVideoEditor != null) {
            this.mVideoEditor.setSaturation(i);
        }
    }

    public int getBrightness() {
        if (this.mVideoEditor != null) {
            return this.mVideoEditor.getBrightness();
        }
        return 0;
    }

    public int getContrast() {
        if (this.mVideoEditor != null) {
            return this.mVideoEditor.getContrast();
        }
        return 0;
    }

    public int getSaturation() {
        if (this.mVideoEditor != null) {
            return this.mVideoEditor.getSaturation();
        }
        return 0;
    }

    public void setVignette(int i) {
        if (this.mVideoEditor != null) {
            this.mVideoEditor.setVignette(i);
        }
    }

    public int getVignette() {
        if (this.mVideoEditor != null) {
            return this.mVideoEditor.getVignette();
        }
        return 0;
    }

    public int getVignetteRange() {
        if (this.mVideoEditor != null) {
            return this.mVideoEditor.getVignetteRange();
        }
        return 0;
    }

    public void setVignetteRange(int i) {
        if (this.mVideoEditor != null) {
            this.mVideoEditor.setVignetteRange(i);
        }
    }

    public void setSharpness(int i) {
        if (this.mVideoEditor != null) {
            this.mVideoEditor.setSharpness(i);
        }
    }

    public int getSharpness() {
        if (this.mVideoEditor != null) {
            return this.mVideoEditor.getSharpness();
        }
        return 0;
    }

    public void setDeviceLightLevel(int i) {
        if (this.mVideoEditor != null) {
            this.mVideoEditor.setDeviceLightLevel(i);
        }
    }

    public void setDeviceGamma(float f) {
        if (this.mVideoEditor != null) {
            this.mVideoEditor.setDeviceGamma(f);
        }
    }

    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        Log.v(TAG, "surfaceCreated called()");
        if (this.mSurfaceView != null) {
            this.mSurface = surfaceHolder.getSurface();
            if (this.mVideoEditor != null) {
                this.mVideoEditor.a(this.mSurface);
                this.mVideoEditor.w();
            }
        }
    }

    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        Log.v(TAG, "surfaceChanged called(" + i2 + "," + i3 + ")");
        if (i2 == 0 || i3 == 0) {
            Log.e(TAG, "invalid video width(" + i2 + ") or height(" + i3 + ")");
            return;
        }
        int i4;
        int i5;
        float aspectRatio = nexApplicationConfig.getAspectRatio();
        if (aspectRatio <= 0.0f) {
            i4 = i3;
            i5 = i2;
        } else if (((float) i3) * aspectRatio > ((float) i2)) {
            i4 = Math.round(((float) i2) / aspectRatio);
            i5 = i2;
        } else {
            i5 = Math.round(aspectRatio * ((float) i3));
            i4 = i3;
        }
        Log.d(TAG, "surfaceChanged aspect view size " + i5 + "x" + i4);
        if (i5 == i2 && i4 == i3) {
            this.mSurface = surfaceHolder.getSurface();
            if (this.mVideoEditor != null) {
                this.mVideoEditor.a(this.mSurface);
                this.mVideoEditor.w();
                return;
            }
            return;
        }
        Log.d(TAG, "surfaceChanged new view size " + i5 + "x" + i4);
        surfaceHolder.setFixedSize(i5, i4);
    }

    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        Log.v(TAG, "surfaceDestroyed called()");
        if (surfaceHolder != null && this.mSurface == surfaceHolder.getSurface()) {
            this.mSurface = null;
        }
        if (this.mVideoEditor != null) {
            this.mVideoEditor.a(null);
        }
    }

    public nexEngine(Context context) {
        int i = sNextId;
        sNextId = i + 1;
        this.mId = i;
        Log.d(TAG, "[" + this.mId + "] nexEngine create");
        this.mAppContext = context;
        this.mVideoEditor = EditorGlobal.a();
        NexEditor.a(nexApplicationConfig.getAspectProfile().getWidth(), nexApplicationConfig.getAspectProfile().getHeight(), nexApplicationConfig.getOverlayCoordinateMode());
        this.mVideoEditor.a(nexApplicationConfig.getScreenMode());
        this.mVideoEditor.a(this.m_layerRenderCallback);
        if (this.mVideoEditor.y() == 1) {
            this.mVideoEditor.e(true);
        } else {
            this.mVideoEditor.e(false);
        }
    }

    nexEngine(Context context, boolean z) {
        int i = sNextId;
        sNextId = i + 1;
        this.mId = i;
        Log.d(TAG, "[" + this.mId + "] nexEngine create internal");
        this.mAppContext = context;
        this.mVideoEditor = EditorGlobal.a();
        NexEditor.a(nexApplicationConfig.getAspectProfile().getWidth(), nexApplicationConfig.getAspectProfile().getHeight(), nexApplicationConfig.getOverlayCoordinateMode());
        this.mVideoEditor.a(nexApplicationConfig.getScreenMode());
        this.mVideoEditor.a(this.m_layerRenderCallback);
        if (z) {
            setMark();
        }
    }

    void setMark() {
        if (this.mVideoEditor.y() == 1) {
            this.mVideoEditor.e(true);
        } else {
            this.mVideoEditor.e(false);
        }
    }

    public void setEventHandler(nexEngineListener nexenginelistener) {
        Log.d(TAG, "[" + this.mId + "] setEventHandler =" + nexenginelistener);
        this.mEventListener = nexenginelistener;
        setEditorListener();
    }

    public static void setLoadListAsync(boolean z) {
        sLoadListAsync = z;
    }

    public void removeEditorListener() {
        if (this.mEditorListener != null) {
            this.mEditorListener = null;
        }
    }

    private void setEditorListener() {
        if (this.mEditorListener == null) {
            this.mEditorListener = new c() {
                public void a(PlayState playState, PlayState playState2) {
                    Log.i(nexEngine.TAG, "[" + nexEngine.this.mId + "]onStateChange() oldState=" + playState + ", newState=" + playState2 + ",curState=" + nexEngine.this.mState + ", trans=" + nexEngine.sTranscodeMode);
                    if (playState == PlayState.NONE && playState2 == PlayState.IDLE) {
                        nexEngine.this.mState = 1;
                    } else {
                        nexEngine.this.cacheSeekMode = false;
                    }
                    if (!nexEngine.sTranscodeMode) {
                        nexEngine.this.mPlayState = playState2;
                        if (nexEngine.this.mState == 2 && playState == PlayState.RECORD && playState2 != PlayState.RECORD) {
                            if (playState2 == PlayState.PAUSE) {
                                Log.d(nexEngine.TAG, "[" + nexEngine.this.mId + "]new State is " + playState2);
                            } else if (playState2 == PlayState.RESUME) {
                                Log.d(nexEngine.TAG, "[" + nexEngine.this.mId + "]new State is " + playState2);
                            } else {
                                nexEngine.this.mState = 1;
                            }
                        }
                        if (nexEngine.this.mEventListener != null) {
                            nexEngine.this.mEventListener.onStateChange(playState.getValue(), playState2.getValue());
                        }
                    } else if (nexEngine.this.mState == 2 && playState == PlayState.RECORD && playState2 != PlayState.RECORD && nexEngine.sTranscodeListener != null) {
                        nexEngine.sTranscodeListener.onStateChange(playState.getValue(), playState2.getValue());
                    }
                }

                public void a(int i) {
                    if (!nexEngine.this.externalImageExportProcessing) {
                        int access$800;
                        if (!nexEngine.sTranscodeMode) {
                            nexEngine.this.mCurrentPlayTime = i;
                            if (nexEngine.this.mEventListener == null) {
                                return;
                            }
                            if (nexEngine.this.mState == 2 || nexEngine.this.mPlayState == PlayState.RECORD) {
                                int totalTime;
                                access$800 = nexEngine.this.mExportTotalTime;
                                if (access$800 <= 0) {
                                    totalTime = nexEngine.this.mProject.getTotalTime();
                                } else {
                                    totalTime = access$800;
                                }
                                if (totalTime <= 0) {
                                    access$800 = 0;
                                } else {
                                    access$800 = (i * 100) / totalTime;
                                }
                                Log.d(nexEngine.TAG, "[" + nexEngine.this.mId + "]export progress = " + access$800 + ", duration=" + totalTime + ", currentTime=" + i);
                                if (access$800 >= 0 && access$800 <= 100) {
                                    nexEngine.this.mEventListener.onEncodingProgress(access$800);
                                    return;
                                }
                                return;
                            }
                            nexEngine.this.mEventListener.onTimeChange(i);
                        } else if (nexEngine.sTranscodeListener != null) {
                            access$800 = nexEngine.this.mExportTotalTime;
                            if (access$800 <= 0) {
                                access$800 = nexEngine.sTranscodeProject.getTotalTime();
                            }
                            if (access$800 <= 0) {
                                access$800 = i / 10;
                            } else {
                                access$800 = (i * 100) / access$800;
                            }
                            if (access$800 >= 0 && access$800 <= 100) {
                                nexEngine.sTranscodeListener.onEncodingProgress(access$800);
                            }
                        }
                    }
                }

                public void b(int i) {
                    if (!nexEngine.this.externalImageExportProcessing) {
                        if (!(nexEngine.this.mState == 2 || nexEngine.this.mEventListener == null)) {
                            nexEngine.this.mEventListener.onSetTimeDone(i);
                        }
                        nexEngine.this.mCurrentPlayTime = i;
                    }
                }

                public void a(ErrorCode errorCode) {
                    if (!nexEngine.this.externalImageExportProcessing && nexEngine.this.mEventListener != null) {
                        nexEngine.this.mEventListener.onSetTimeFail(errorCode.getValue());
                    }
                }

                public void a() {
                    if (!nexEngine.this.externalImageExportProcessing && nexEngine.this.mEventListener != null) {
                        nexEngine.this.mEventListener.onSetTimeIgnored();
                    }
                }

                public void b(ErrorCode errorCode) {
                    nexEngine.this.mState = 1;
                    Log.i(nexEngine.TAG, "[" + nexEngine.this.mId + "]onEncodingDone() =" + errorCode + ", trans=" + nexEngine.sTranscodeMode + ", forceMix=" + nexEngine.this.mForceMixExportMode);
                    if (nexEngine.sTranscodeMode) {
                        if (nexEngine.sTranscodeListener != null) {
                            if (!errorCode.isError()) {
                                nexEngine.sTranscodeListener.onEncodingProgress(100);
                            }
                            nexEngine.sTranscodeListener.onEncodingDone(errorCode.isError(), errorCode.getValue());
                        }
                        nexEngine.sTranscodeMode = false;
                        nexEngine.this.resolveProject(true, true);
                    } else if (nexEngine.this.mEventListener != null) {
                        if (!errorCode.isError()) {
                            nexEngine.this.mEventListener.onEncodingProgress(100);
                        }
                        nexEngine.this.mEventListener.onEncodingDone(errorCode.isError(), errorCode.getValue());
                    }
                    nexEngine.this.mExportTotalTime = 0;
                }

                public void b() {
                    nexEngine.this.mState = 1;
                    if (nexEngine.this.mEventListener != null) {
                        nexEngine.this.mEventListener.onPlayEnd();
                    }
                }

                public void a(ErrorCode errorCode, int i) {
                    if (nexEngine.this.mEventListener != null) {
                        nexEngine.this.mEventListener.onPlayFail(errorCode.getValue(), i);
                    }
                }

                public void c() {
                    if (nexEngine.this.mEventListener != null) {
                        nexEngine.this.mEventListener.onPlayStart();
                    }
                }

                public void d() {
                    if (nexEngine.this.mEventListener != null) {
                        nexEngine.this.mEventListener.onClipInfoDone();
                    }
                }

                public void a(boolean z) {
                    if (nexEngine.this.mEventListener != null) {
                        nexEngine.this.mEventListener.onSeekStateChanged(z);
                    }
                }

                public void b(ErrorCode errorCode, int i) {
                    if (nexEngine.this.mEventListener != null) {
                        nexEngine.this.mEventListener.onCheckDirectExport(i);
                    }
                }

                public void a(int i, int i2) {
                    if (nexEngine.this.mEventListener != null) {
                        if (i > i2) {
                            i = 100;
                        }
                        nexEngine.this.mEventListener.onProgressThumbnailCaching(i, i2);
                    }
                }

                public void b(int i, int i2) {
                    if (nexEngine.this.mEventListener != null) {
                        if (i > i2) {
                            i = 100;
                        }
                        nexEngine.this.mEventListener.onEncodingProgress(i);
                    }
                }

                public void c(ErrorCode errorCode) {
                    if (nexEngine.this.mEventListener != null) {
                        nexEngine.this.mEventListener.onEncodingDone(errorCode.isError(), errorCode.getValue());
                    }
                }

                public void a(ErrorCode errorCode, int i, int i2) {
                    if (nexEngine.this.mEventListener != null) {
                        nexEngine.this.mEventListener.onFastPreviewStartDone(errorCode.getValue(), i, i2);
                    }
                }

                public void d(ErrorCode errorCode) {
                    if (nexEngine.this.mEventListener != null) {
                        nexEngine.this.mEventListener.onFastPreviewStopDone(errorCode.getValue());
                    }
                }

                public void e(ErrorCode errorCode) {
                    if (nexEngine.this.mEventListener != null) {
                        nexEngine.this.mEventListener.onFastPreviewTimeDone(errorCode.getValue());
                    }
                }

                public void c(int i, int i2) {
                    if (nexEngine.this.mEventListener != null) {
                        nexEngine.this.mEventListener.onPreviewPeakMeter(i, i2);
                    }
                }
            };
            this.mVideoEditor.a(this.mEditorListener);
        }
    }

    public void setOnSurfaceChangeListener(OnSurfaceChangeListener onSurfaceChangeListener) {
        this.m_onSurfaceChangeListener = onSurfaceChangeListener;
        this.mVideoEditor.a(new q() {
            public void a() {
                if (nexEngine.this.m_onSurfaceChangeListener != null) {
                    nexEngine.this.m_onSurfaceChangeListener.onSurfaceChanged();
                }
            }
        });
    }

    public int setView(nexEngineView nexengineview) {
        Log.d(TAG, "[" + this.mId + "] setView nexEngineView=" + nexengineview);
        if (this.mSurfaceView != null) {
            this.mSurfaceView.getHolder().removeCallback(this);
            this.mSurfaceView = null;
        }
        this.mVideoEditor.a((NexThemeView) nexengineview);
        return 0;
    }

    public int setView(SurfaceView surfaceView) {
        Log.d(TAG, "[" + this.mId + "] setView SurfaceView=" + surfaceView);
        this.mVideoEditor.a(null);
        if (!(surfaceView == this.mSurfaceView || this.mSurfaceView == null)) {
            this.mSurfaceView.getHolder().removeCallback(this);
        }
        this.mSurfaceView = surfaceView;
        if (this.mSurfaceView != null) {
            this.mSurfaceView.getHolder().addCallback(this);
        }
        return 0;
    }

    public nexEngineView getView() {
        return (nexEngineView) this.mVideoEditor.k();
    }

    public void setProject(nexProject nexproject) {
        Log.d(TAG, "[" + this.mId + "] setProject");
        this.mProject = nexproject;
        defaultFaceDetectSetting();
    }

    public void clearFaceDetectInfo() {
        if (this.mProject != null) {
            this.mProject.clearFaceDetectInfo();
        }
    }

    public nexProject getProject() {
        return this.mProject;
    }

    private boolean isSetProject(boolean z) {
        if (this.mProject != null && this.mProject.getTotalClipCount(true) > 0) {
            return true;
        }
        if (sTranscodeMode && sTranscodeProject != null && sTranscodeProject.getTotalClipCount(true) > 0) {
            return true;
        }
        if (!z) {
            return false;
        }
        throw new ProjectNotAttachedException();
    }

    public void play() {
        this.cacheSeekMode = false;
        if (!isSetProject(false)) {
            return;
        }
        if (this.mState == 2) {
            Log.w(TAG, "[" + this.mId + "]export state");
            return;
        }
        stopAsyncFaceDetect();
        setOverlays(OverlayCommand.upload);
        resolveProject(sLoadListAsync, true);
        faceDetect_internal(this.facedetect_asyncmode, this.facedetect_syncclip_count, this.facedetect_undetected_clip_cropping_mode);
        loadEffectsInEditor(false);
        setEditorListener();
        this.mVideoEditor.t();
    }

    public boolean play(boolean z) {
        this.cacheSeekMode = false;
        if (z) {
            try {
                play();
            } catch (Exception e) {
                return false;
            }
        }
        play();
        return true;
    }

    public void stop() {
        if (this.externalImageExportProcessing) {
            this.mVideoEditor.u();
            this.mState = 1;
            return;
        }
        this.cacheSeekMode = false;
        if (!isSetProject(false)) {
            return;
        }
        if (this.mState == 2) {
            this.mState = 1;
            this.mVideoEditor.s();
            return;
        }
        this.mState = 1;
        this.mVideoEditor.s();
    }

    public void exportSaveStop(final OnCompletionListener onCompletionListener) {
        if (!this.externalImageExportProcessing) {
            if (isSetProject(false)) {
                this.mState = 1;
                this.mVideoEditor.a(1, new f() {
                    public void a(ErrorCode errorCode) {
                        onCompletionListener.onComplete(errorCode.getValue());
                        nexEngine.this.mState = 1;
                    }
                });
                return;
            }
            onCompletionListener.onComplete(21);
        }
    }

    public void stop(final OnCompletionListener onCompletionListener) {
        if (this.externalImageExportProcessing) {
            this.mVideoEditor.u();
            if (onCompletionListener != null) {
                onCompletionListener.onComplete(0);
            }
            this.mState = 1;
            return;
        }
        this.cacheSeekMode = false;
        if (isSetProject(false)) {
            this.mState = 1;
            this.mVideoEditor.a(new f() {
                public void a(ErrorCode errorCode) {
                    onCompletionListener.onComplete(errorCode.getValue());
                }
            });
            return;
        }
        onCompletionListener.onComplete(21);
    }

    @Deprecated
    public void stopSync() {
        if (isSetProject(false)) {
            Log.i(TAG, "[" + this.mId + "]stopSync start");
            if (this.mPlayState == PlayState.NONE || this.mPlayState == PlayState.IDLE) {
                Log.i(TAG, "[" + this.mId + "]stopSync IDLE state");
                this.mState = 1;
                return;
            }
            this.mVideoEditor.b(true);
            this.mVideoEditor.s();
            while (this.mPlayState != PlayState.IDLE) {
                try {
                    Thread.sleep(10);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
            this.mState = 1;
            this.mVideoEditor.b(false);
            Log.i(TAG, "[" + this.mId + "]stopSync End!");
        }
    }

    public void pause() {
        if (isSetProject(false)) {
            this.mVideoEditor.s();
        }
    }

    public void resume() {
        this.cacheSeekMode = false;
        if (isSetProject(false)) {
            undoForceMixProject();
            setEditorListener();
            setOverlays(OverlayCommand.upload);
            faceDetect_internal(this.facedetect_asyncmode, this.facedetect_syncclip_count, this.facedetect_undetected_clip_cropping_mode);
            this.mVideoEditor.t();
        }
    }

    public void seek(int i) {
        if (this.cacheSeekMode) {
            Log.d(TAG, "[" + this.mId + "] seek fail! cacheSeekMode");
        } else if (isSetProject(false)) {
            undoForceMixProject();
            setEditorListener();
            setOverlays(OverlayCommand.upload);
            stopAsyncFaceDetect();
            faceDetect_for_seek(i, this.facedetect_undetected_clip_cropping_mode);
            this.lastSeekTime = i;
            this.mVideoEditor.j(i);
        }
    }

    public void seekIDRorI(int i) {
        if (this.cacheSeekMode) {
            Log.d(TAG, "[" + this.mId + "] seekIDRorI fail! cacheSeekMode");
        } else if (isSetProject(false)) {
            undoForceMixProject();
            setEditorListener();
            setOverlays(OverlayCommand.upload);
            this.lastSeekTime = i;
            this.mVideoEditor.d(i, null);
        }
    }

    public void seekIDROnly(int i) {
        if (this.cacheSeekMode) {
            Log.d(TAG, "[" + this.mId + "] seekIDROnly fail! cacheSeekMode");
        } else if (isSetProject(false)) {
            undoForceMixProject();
            setEditorListener();
            setOverlays(OverlayCommand.upload);
            this.lastSeekTime = i;
            this.mVideoEditor.e(i, null);
        }
    }

    public void seekIDROnly(int i, final OnSeekCompletionListener onSeekCompletionListener) {
        if (this.cacheSeekMode) {
            Log.d(TAG, "[" + this.mId + "] seekIDROnly fail! cacheSeekMode");
        } else if (isSetProject(false)) {
            undoForceMixProject();
            setEditorListener();
            setOverlays(OverlayCommand.upload);
            this.lastSeekTime = i;
            this.mVideoEditor.e(i, new p() {
                public void a(int i, int i2) {
                    if (onSeekCompletionListener != null) {
                        onSeekCompletionListener.onSeekComplete(0, i, i2);
                    }
                }

                public void a(ErrorCode errorCode) {
                    if (onSeekCompletionListener != null) {
                        onSeekCompletionListener.onSeekComplete(errorCode.getValue(), 0, 0);
                    }
                }

                public String a() {
                    return "seekIDROnly";
                }
            });
        }
    }

    public boolean isCacheSeekMode() {
        return this.cacheSeekMode;
    }

    public boolean startCollectCache(int i, final OnCompletionListener onCompletionListener) {
        if (!isSetProject(false)) {
            return false;
        }
        if (!MediaInfo.k()) {
            this.cacheSeekMode = true;
            undoForceMixProject();
            setEditorListener();
            setOverlays(OverlayCommand.upload);
            this.mVideoEditor.a(i, new p() {
                public void a(int i, int i2) {
                    if (onCompletionListener != null) {
                        onCompletionListener.onComplete(0);
                    }
                }

                public void a(ErrorCode errorCode) {
                    nexEngine.this.cacheSeekMode = false;
                    if (onCompletionListener != null) {
                        onCompletionListener.onComplete(errorCode.getValue());
                    }
                }

                public String a() {
                    return null;
                }
            });
            return true;
        } else if (onCompletionListener == null) {
            return false;
        } else {
            onCompletionListener.onComplete(ErrorCode.THUMBNAIL_BUSY.getValue());
            return false;
        }
    }

    public boolean seekFromCache(int i) {
        if (!this.cacheSeekMode || !isSetProject(false)) {
            return false;
        }
        undoForceMixProject();
        setEditorListener();
        setOverlays(OverlayCommand.upload);
        this.mVideoEditor.b(i, null);
        return true;
    }

    public Bitmap getThumbnailCache(int i, int i2) {
        if (!this.cacheSeekMode) {
            return null;
        }
        Bitmap n = this.mVideoEditor.n(i);
        if (n == null) {
            return null;
        }
        int width = n.getWidth();
        int height = n.getHeight();
        Rect rect = new Rect(0, 0, width, height);
        Bitmap createBitmap;
        Canvas canvas;
        if (i2 == nexClip.kClip_Rotate_180) {
            createBitmap = Bitmap.createBitmap(width, height, Config.RGB_565);
            canvas = new Canvas(createBitmap);
            canvas.rotate(180.0f, (float) (width / 2), (float) (height / 2));
            canvas.drawBitmap(n, rect, new Rect(0, 0, width, height), null);
            return createBitmap;
        } else if (i2 == 0) {
            createBitmap = Bitmap.createBitmap(width, height, Config.RGB_565);
            new Canvas(createBitmap).drawBitmap(n, rect, new Rect(0, 0, width, height), null);
            return createBitmap;
        } else if (i2 == nexClip.kClip_Rotate_270) {
            createBitmap = Bitmap.createBitmap(height, width, Config.RGB_565);
            canvas = new Canvas(createBitmap);
            canvas.rotate(90.0f, 0.0f, 0.0f);
            canvas.drawBitmap(n, rect, new Rect(0, -height, width, 0), null);
            return createBitmap;
        } else if (i2 != 90) {
            return null;
        } else {
            createBitmap = Bitmap.createBitmap(height, width, Config.RGB_565);
            canvas = new Canvas(createBitmap);
            canvas.rotate(270.0f, 0.0f, 0.0f);
            canvas.drawBitmap(n, rect, new Rect(-width, 0, 0, height), null);
            return createBitmap;
        }
    }

    public void stopCollectCache(int i) {
        this.cacheSeekMode = false;
        seek(i);
    }

    public int export(String str, int i, int i2, int i3, long j, int i4, int i5) {
        return export(str, i, i2, i3, j, i4, i5, 0, 0, export_fps, ExportCodec_AVC);
    }

    public int export(String str, int i, int i2, int i3, long j, int i4, int i5, int i6) {
        return export(str, i, i2, i3, j, i4, i5, 0, 0, i6, ExportCodec_AVC);
    }

    public int export(String str, int i, int i2, int i3, long j, int i4, int i5, int i6, int i7, int i8, int i9) {
        if (this.mState == 2) {
            Log.w(TAG, "[" + this.mId + "]already export state");
            return -1;
        } else if (!isSetProject(true)) {
            return -1;
        } else {
            stopAsyncFaceDetect();
            setOverlays(OverlayCommand.upload);
            resolveProject(sLoadListAsync, true);
            faceDetect_internal(this.facedetect_asyncmode, this.facedetect_syncclip_count, this.facedetect_undetected_clip_cropping_mode);
            this.mState = 2;
            setThumbnailRoutine(2);
            this.mExportTotalTime = this.mProject.getTotalTime();
            this.mExportFilePath = str;
            this.mEncodeWidth = i;
            this.mEncodeHeight = i2;
            this.mEncodeBitrate = i3;
            this.mEncodeMaxFileSize = j;
            final int i10 = i4;
            final int i11 = i5;
            final int i12 = i6;
            final int i13 = i7;
            final int i14 = i8;
            final int i15 = i9;
            this.mVideoEditor.a(this.mAppContext).onComplete(new OnTaskEventListener() {
                public void onTaskEvent(Task task, Event event) {
                    int i;
                    nexEngine.this.loadEffectsInEditor(true);
                    nexEngine.this.setEditorListener();
                    int i2 = 0;
                    switch (i10) {
                        case 90:
                            i2 = 16;
                            break;
                        case nexClip.kClip_Rotate_180 /*180*/:
                            i2 = 32;
                            break;
                        case nexClip.kClip_Rotate_270 /*270*/:
                            i2 = 64;
                            break;
                    }
                    if (nexEngine.this.bNeedScaling) {
                        nexEngine.this.bNeedScaling = false;
                        i = i2 | nexEngine.ExportHEVCMainTierLevel6;
                    } else {
                        i = i2;
                    }
                    nexEngine.this.mVideoEditor.a(null);
                    nexEngine.this.mVideoEditor.a(nexEngine.sExportVideoTrackUUIDMode, null);
                    nexEngine.this.mVideoEditor.a(nexEngine.this.mExportFilePath, nexEngine.this.mEncodeWidth, nexEngine.this.mEncodeHeight, nexEngine.this.mEncodeBitrate, nexEngine.this.mEncodeMaxFileSize, 0, false, i11, i12, i13, i14, i15, i).onFailure(new OnFailListener() {
                        public void onFail(Task task, Event event, TaskError taskError) {
                            Log.e(nexEngine.TAG, "[" + nexEngine.this.mId + "]export fail!=" + taskError);
                        }
                    });
                }
            });
            return 0;
        }
    }

    public int exportNoException(String str, int i, int i2, int i3, long j, int i4, int i5, int i6, int i7, int i8, int i9) {
        try {
            return export(str, i, i2, i3, j, i4, i5, i6, i7, i8, i9);
        } catch (Exception e) {
            return -2;
        }
    }

    public int exportNoException(String str, int i, int i2, int i3, long j, int i4, int i5, int i6, int i7, int i8) {
        try {
            return export(str, i, i2, i3, j, i4, i5, i6, i7, i8, ExportCodec_AVC);
        } catch (Exception e) {
            return -2;
        }
    }

    public int export(String str, int i, int i2, int i3, long j, int i4) {
        return export(str, i, i2, i3, j, i4, export_audio_sampling_rate, 0, 0, export_fps, ExportCodec_AVC);
    }

    public nexErrorCode exportJpeg(String str, int i, int i2, int i3, final OnCaptureListener onCaptureListener) {
        if (onCaptureListener == null) {
            return nexErrorCode.ARGUMENT_FAILED;
        }
        return nexErrorCode.fromValue(this.mVideoEditor.a(i, i2, 0, new e() {
            public void a(Bitmap bitmap) {
                onCaptureListener.onCapture(bitmap);
            }

            public void a(ErrorCode errorCode) {
                onCaptureListener.onCaptureFail(nexErrorCode.fromValue(errorCode.getValue()));
            }
        }).getValue());
    }

    private v getExternalExport(nexExportFormat nexexportformat, String str, String str2, nexExportListener nexexportlistener) {
        if (str2 != null) {
            Object module = nexExternalModuleManager.getInstance().getModule(str2);
            if (module != null && nexExternalExportProvider.class.isInstance(module) && ((nexExternalExportProvider) module).OnPrepare(nexexportformat)) {
                return new a((nexExternalExportProvider) module, nexexportlistener);
            }
            return null;
        }
        nexExternalExportProvider nexexternalexportprovider = (nexExternalExportProvider) nexExternalModuleManager.getInstance().getModule(str, nexExternalExportProvider.class);
        return (nexexternalexportprovider == null || !nexexternalexportprovider.OnPrepare(nexexportformat)) ? null : new a(nexexternalexportprovider, nexexportlistener);
    }

    public nexErrorCode export(nexExportFormat nexexportformat, nexExportListener nexexportlistener) {
        String string = nexexportformat.getString(nexExportFormat.TAG_FORMAT_TYPE);
        if (string == null) {
            return nexErrorCode.ARGUMENT_FAILED;
        }
        int parseInt;
        int parseInt2;
        int parseInt3;
        int parseInt4;
        int parseInt5;
        if (string.startsWith("external-")) {
            if (this.mState == 2) {
                Log.w(TAG, "[" + this.mId + "]already external export state");
                return nexErrorCode.INVALID_STATE;
            }
            parseInt = Integer.parseInt((String) nexexportformat.formats.get(nexExportFormat.TAG_FORMAT_WIDTH));
            parseInt2 = Integer.parseInt((String) nexexportformat.formats.get(nexExportFormat.TAG_FORMAT_HEIGHT));
            parseInt3 = Integer.parseInt((String) nexexportformat.formats.get(nexExportFormat.TAG_FORMAT_INTERVAL_TIME));
            parseInt4 = Integer.parseInt((String) nexexportformat.formats.get(nexExportFormat.TAG_FORMAT_START_TIME));
            parseInt5 = Integer.parseInt((String) nexexportformat.formats.get(nexExportFormat.TAG_FORMAT_END_TIME));
            if (parseInt5 > this.mProject.getTotalTime()) {
                parseInt5 = this.mProject.getTotalTime();
            }
            if (parseInt4 > parseInt5) {
                return nexErrorCode.ARGUMENT_FAILED;
            }
            nexExportFormat nexexportformat2 = nexexportformat;
            v externalExport = getExternalExport(nexexportformat2, string.substring(9), (String) nexexportformat.formats.get(nexExportFormat.TAG_FORMAT_UUID), nexexportlistener);
            if (externalExport == null) {
                return nexErrorCode.DIRECTEXPORT_ENC_ENCODE_ERROR;
            }
            this.externalImageExportProcessing = true;
            if (ErrorCode.NONE == this.mVideoEditor.a(parseInt, parseInt2, parseInt3, parseInt4, parseInt5, externalExport)) {
                this.mState = 2;
                return nexErrorCode.NONE;
            }
            this.externalImageExportProcessing = false;
            externalExport.a();
            externalExport.a(-1);
            if (nexexportlistener != null) {
                nexexportlistener.onExportFail(nexErrorCode.INVALID_STATE);
            }
        }
        final nexExportListener nexexportlistener2;
        if (string.compareTo("bitmap") == 0) {
            parseInt = Integer.parseInt((String) nexexportformat.formats.get(nexExportFormat.TAG_FORMAT_WIDTH));
            parseInt2 = Integer.parseInt((String) nexexportformat.formats.get(nexExportFormat.TAG_FORMAT_HEIGHT));
            int parseInt6 = Integer.parseInt((String) nexexportformat.formats.get(nexExportFormat.TAG_FORMAT_TAG));
            if (nexexportlistener == null) {
                return nexErrorCode.ARGUMENT_FAILED;
            }
            nexexportlistener2 = nexexportlistener;
            return nexErrorCode.fromValue(this.mVideoEditor.a(parseInt, parseInt2, parseInt6, new e() {
                public void a(Bitmap bitmap) {
                    nexexportlistener2.onExportDone(bitmap);
                }

                public void a(ErrorCode errorCode) {
                    nexexportlistener2.onExportFail(nexErrorCode.fromValue(errorCode.getValue()));
                }
            }).getValue());
        } else if (string.compareTo("jpeg") == 0) {
            final String str = (String) nexexportformat.formats.get(nexExportFormat.TAG_FORMAT_PATH);
            parseInt2 = Integer.parseInt((String) nexexportformat.formats.get(nexExportFormat.TAG_FORMAT_WIDTH));
            parseInt3 = Integer.parseInt((String) nexexportformat.formats.get(nexExportFormat.TAG_FORMAT_HEIGHT));
            parseInt = Integer.parseInt((String) nexexportformat.formats.get(nexExportFormat.TAG_FORMAT_QUALITY));
            if (str == null || str.length() <= 0 || parseInt2 <= 0 || parseInt3 <= 0 || parseInt <= 0 || parseInt > 100) {
                return nexErrorCode.ARGUMENT_FAILED;
            }
            nexexportlistener2 = nexexportlistener;
            return nexErrorCode.fromValue(this.mVideoEditor.a(parseInt2, parseInt3, 0, new e() {
                public void a(Bitmap bitmap) {
                    ErrorCode errorCode = ErrorCode.NONE;
                    File file = new File(str);
                    if (file.exists()) {
                        file.delete();
                    }
                    try {
                        OutputStream fileOutputStream = new FileOutputStream(file);
                        bitmap.compress(CompressFormat.JPEG, parseInt, fileOutputStream);
                        fileOutputStream.flush();
                        fileOutputStream.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                        errorCode = ErrorCode.EXPORT_WRITER_INIT_FAIL;
                    }
                    if (nexexportlistener2 != null) {
                        nexexportlistener2.onExportDone(null);
                    } else if (nexEngine.this.mEditorListener != null) {
                        nexEngine.this.mEditorListener.b(errorCode);
                    }
                }

                public void a(ErrorCode errorCode) {
                    if (nexexportlistener2 != null) {
                        nexexportlistener2.onExportFail(nexErrorCode.fromValue(errorCode.getValue()));
                    } else if (nexEngine.this.mEditorListener != null) {
                        nexEngine.this.mEditorListener.b(errorCode);
                    }
                }
            }).getValue());
        } else if (string.compareTo("mp4") != 0) {
            return nexErrorCode.UNSUPPORT_FORMAT;
        } else {
            try {
                String str2 = (String) nexexportformat.formats.get(nexExportFormat.TAG_FORMAT_PATH);
                parseInt3 = Integer.parseInt((String) nexexportformat.formats.get(nexExportFormat.TAG_FORMAT_WIDTH));
                parseInt4 = Integer.parseInt((String) nexexportformat.formats.get(nexExportFormat.TAG_FORMAT_HEIGHT));
                int parseInt7 = Integer.parseInt((String) nexexportformat.formats.get(nexExportFormat.TAG_FORMAT_VIDEO_CODEC));
                parseInt5 = Integer.parseInt((String) nexexportformat.formats.get(nexExportFormat.TAG_FORMAT_VIDEO_BITRATE));
                int parseInt8 = Integer.parseInt((String) nexexportformat.formats.get(nexExportFormat.TAG_FORMAT_VIDEO_PROFILE));
                int parseInt9 = Integer.parseInt((String) nexexportformat.formats.get(nexExportFormat.TAG_FORMAT_VIDEO_LEVEL));
                int parseInt10 = Integer.parseInt((String) nexexportformat.formats.get(nexExportFormat.TAG_FORMAT_VIDEO_ROTATE));
                int parseInt11 = Integer.parseInt((String) nexexportformat.formats.get(nexExportFormat.TAG_FORMAT_VIDEO_FPS));
                try {
                    if (export(str2, parseInt3, parseInt4, parseInt5, Long.parseLong((String) nexexportformat.formats.get(nexExportFormat.TAG_FORMAT_MAX_FILESIZE)), parseInt10, Integer.parseInt((String) nexexportformat.formats.get(nexExportFormat.TAG_FORMAT_AUDIO_SAMPLERATE)), parseInt8, parseInt9, parseInt11, parseInt7) != 0) {
                        return nexErrorCode.UNKNOWN;
                    }
                    nexexportlistener2 = nexexportlistener;
                    this.mVideoEditor.a(new i() {
                        public void a(ErrorCode errorCode) {
                            nexexportlistener2.onExportFail(nexErrorCode.fromValue(errorCode.getValue()));
                        }

                        public void a(int i) {
                            nexexportlistener2.onExportProgress((i * 100) / nexEngine.this.mProject.getTotalTime());
                        }

                        public void a() {
                            nexexportlistener2.onExportDone(null);
                        }
                    });
                    return nexErrorCode.NONE;
                } catch (Exception e) {
                    return nexErrorCode.UNKNOWN;
                }
            } catch (Exception e2) {
                return nexErrorCode.ARGUMENT_FAILED;
            }
        }
    }

    private int transcode(String str, int i, int i2, int i3, long j, final int i4, final int i5) {
        if (this.mState == 2) {
            Log.w(TAG, "[" + this.mId + "]already export state");
            return -1;
        } else if (!isSetProject(true)) {
            return -1;
        } else {
            setOverlays(OverlayCommand.upload);
            resolveProject(sLoadListAsync, true);
            this.mState = 2;
            this.mExportTotalTime = sTranscodeProject.getTotalTime();
            this.mExportFilePath = str;
            this.mEncodeWidth = i;
            this.mEncodeHeight = i2;
            this.mEncodeBitrate = i3;
            this.mEncodeMaxFileSize = j;
            this.mVideoEditor.a(this.mAppContext).onComplete(new OnTaskEventListener() {
                public void onTaskEvent(Task task, Event event) {
                    int i;
                    nexEngine.this.loadEffectsInEditor(true);
                    nexEngine.this.setEditorListener();
                    switch (i5) {
                        case 90:
                            i = 16;
                            break;
                        case nexClip.kClip_Rotate_180 /*180*/:
                            i = 32;
                            break;
                        case nexClip.kClip_Rotate_270 /*270*/:
                            i = 64;
                            break;
                        default:
                            i = 0;
                            break;
                    }
                    if (nexEngine.this.bNeedScaling) {
                        nexEngine.this.bNeedScaling = false;
                        i |= nexEngine.ExportHEVCMainTierLevel6;
                    }
                    int i2 = i | 4096;
                    nexEngine.this.mVideoEditor.a(nexEngine.sExportVideoTrackUUIDMode, null);
                    nexEngine.this.mVideoEditor.a(nexEngine.this.mExportFilePath, nexEngine.this.mEncodeWidth, nexEngine.this.mEncodeHeight, nexEngine.this.mEncodeBitrate, nexEngine.this.mEncodeMaxFileSize, 0, false, i4, i2).onFailure(new OnFailListener() {
                        public void onFail(Task task, Event event, TaskError taskError) {
                            Log.e(nexEngine.TAG, "[" + nexEngine.this.mId + "]transcode fail!=" + taskError);
                        }
                    });
                }
            });
            return 0;
        }
    }

    public void setScalingFlag2Export(boolean z) {
        this.bNeedScaling = z;
    }

    public int exportPause() {
        if (this.externalImageExportProcessing) {
            return -1;
        }
        return this.mVideoEditor.encodePause();
    }

    public int exportResume() {
        if (this.externalImageExportProcessing) {
            return -1;
        }
        return this.mVideoEditor.encodeResume();
    }

    public int checkDirectExport(int i) {
        if (!this.mProject.getOverlayItems().isEmpty()) {
            return 8;
        }
        setEditorListener();
        this.lastCheckDirectExportOption = i;
        return this.mVideoEditor.checkDirectExport(i);
    }

    public int checkDirectExport() {
        return checkDirectExport(0);
    }

    public boolean directExport(String str, long j, long j2, int i) {
        if (!isSetProject(true)) {
            return false;
        }
        this.mState = 2;
        if (str == null) {
            return false;
        }
        this.mExportTotalTime = this.mProject.getTotalTime();
        this.mExportFilePath = str;
        this.mEncodeMaxFileSize = j;
        setEditorListener();
        this.mVideoEditor.a(sExportVideoTrackUUIDMode, null);
        this.mVideoEditor.directExport(this.mExportFilePath, this.mEncodeMaxFileSize, j2, EditorGlobal.b("up"), i);
        return true;
    }

    public boolean directExport(String str, long j, long j2) {
        return directExport(str, j, j2, this.lastCheckDirectExportOption);
    }

    public boolean checkPFrameDirectExportSync(String str) {
        if (this.mVideoEditor.checkPFrameDirectExportSync(str) == 0) {
            return true;
        }
        return false;
    }

    @Deprecated
    private boolean fastPreviewStart(int i, int i2, int i3, int i4) {
        this.mVideoEditor.fastPreviewStart(i, i2, i3, i4);
        return true;
    }

    @Deprecated
    private boolean fastPreviewTime(int i) {
        this.mVideoEditor.fastPreviewTime(i);
        return true;
    }

    @Deprecated
    private boolean fastPreviewStop() {
        this.mVideoEditor.fastPreviewStop();
        return true;
    }

    public boolean reverseStart(String str, String str2, String str3, int i, int i2, int i3, long j, int i4, int i5, int i6) {
        if (i5 - i4 < PERSIST_INTERVAL) {
            throw new InvalidRangeException((int) PERSIST_INTERVAL, i5 - i4, true);
        } else if (this.mVideoEditor.reverseStart(str, str2, str3, i, i2, i3, j, i4, i5, i6) == 0) {
            return true;
        } else {
            return false;
        }
    }

    public boolean reverseStop() {
        if (this.mVideoEditor.reverseStop() == 0) {
            return true;
        }
        return false;
    }

    public boolean transcodingStart(String str, String str2, int i, int i2, int i3, int i4, int i5, long j, int i6, int i7) {
        if (this.mVideoEditor.a(str, str2, i, i2, i3, i4, i5, j, i6, i7, EditorGlobal.b("up")).isError()) {
            return false;
        }
        return true;
    }

    public boolean transcodingStop() {
        if (this.mVideoEditor.p().isError()) {
            return false;
        }
        return true;
    }

    public boolean setTotalAudioVolumeWhilePlay(int i, int i2) {
        if (i == 100) {
            i = BaiduSceneResult.SHOOTING;
        }
        if (i2 == 100) {
            i2 = BaiduSceneResult.SHOOTING;
        }
        if (i < 0 || i > 200 || i2 < 0 || i2 > 200 || this.mVideoEditor.setVolumeWhilePlay(i, i2) != 0) {
            return false;
        }
        return true;
    }

    public boolean setTotalAudioVolumeResetWhilePlay() {
        if (this.mVideoEditor.setVolumeWhilePlay(100, 100) == 0) {
            return true;
        }
        return false;
    }

    public void setTotalAudioVolumeProject(int i, int i2) {
        for (nexClip clipVolume : this.mProject.getPrimaryItems()) {
            clipVolume.setClipVolume(i);
        }
        for (nexAudioItem clip : this.mProject.getAudioItems()) {
            clip.getClip().setClipVolume(i2);
        }
        this.mProject.setBGMMasterVolumeScale(((float) i2) / 200.0f);
    }

    private static int bsearch(int[] iArr, int i) {
        int length = iArr.length - 1;
        int i2 = 0;
        while (i2 <= length) {
            int i3 = (i2 + length) / 2;
            if (iArr[i3] == i) {
                return i3;
            }
            if (iArr[i3] < i) {
                i2 = i3 + 1;
            } else {
                length = i3 - 1;
            }
        }
        if (i2 > 0) {
            return i2 - 1;
        }
        return 0;
    }

    public boolean forceMixExport(String str) {
        if (!isSetProject(true)) {
            return false;
        }
        if (this.mProject.getClip(0, true).getClipType() != 4) {
            Log.d(TAG, "[" + this.mId + "]forceMixExport: no video clip.");
            return false;
        }
        nexProject nexproject = new nexProject();
        if (!this.mProject.getClip(0, true).hasAudio() || this.mProject.getClip(0, true).getAudioCodecType().contains("aac")) {
            String realPath = this.mProject.getClip(0, true).getRealPath();
            if (this.mVideoEditor.checkIDRStart(realPath) != 0) {
                Log.d(TAG, "[" + this.mId + "]forceMixExport: idr finder start fail!");
                return false;
            }
            int i = 0;
            int i2 = 0;
            while (i < this.mProject.getTotalClipCount(true)) {
                if (realPath.compareTo(this.mProject.getClip(i, true).getRealPath()) == 0) {
                    nexproject.add(nexClip.dup(this.mProject.getClip(i, true)));
                    int startTrimTime = this.mProject.getClip(i, true).getVideoClipEdit().getStartTrimTime();
                    int endTrimTime = this.mProject.getClip(i, true).getVideoClipEdit().getEndTrimTime();
                    if (this.mProject.getClip(i, true).getVideoClipEdit().getSpeedControl() != 100) {
                        Log.d(TAG, "[" + this.mId + "]forceMixExport: set speed clip index=" + i);
                        i2 = 1;
                    }
                    int checkIDRTime = this.mVideoEditor.checkIDRTime(startTrimTime);
                    if (checkIDRTime == -1) {
                        Log.d(TAG, "[" + this.mId + "]forceMixExport: idr finder fail startTrimTime=" + startTrimTime);
                        this.mVideoEditor.checkIDREnd();
                        return false;
                    }
                    Log.d(TAG, "[" + this.mId + "]forceMixExport: startTrimTime=" + startTrimTime + ", endTrimTime=" + endTrimTime + ", new idrTime=" + checkIDRTime);
                    nexproject.getClip(i, true).getVideoClipEdit().setTrim(checkIDRTime, endTrimTime);
                    i++;
                } else {
                    Log.d(TAG, "[" + this.mId + "]forceMixExport: [" + i + "] clip invaild path=" + realPath);
                    this.mVideoEditor.checkIDREnd();
                    return false;
                }
            }
            this.mVideoEditor.checkIDREnd();
            nexProject nexproject2 = this.mProject;
            this.mProject = nexproject;
            try {
                resolveProject(sLoadListAsync, true);
                this.mForceMixExportMode = true;
                this.mExportTotalTime = nexproject.getTotalTime();
                this.mState = 2;
                this.mExportFilePath = str;
                this.mEncodeMaxFileSize = Long.MAX_VALUE;
                setEditorListener();
                this.mVideoEditor.a(sExportVideoTrackUUIDMode, null);
                this.mVideoEditor.directExport(this.mExportFilePath, this.mEncodeMaxFileSize, (long) this.mProject.getTotalTime(), EditorGlobal.b("up"), i2);
                this.mProject = nexproject2;
                return true;
            } catch (Exception e) {
                this.mProject = nexproject2;
                return false;
            }
        }
        Log.d(TAG, "[" + this.mId + "]forceMixExport: audio is not aac");
        return false;
    }

    @Deprecated
    public boolean checkKineMixExport(String str, String str2) {
        return false;
    }

    @Deprecated
    public int checkKineMixExport(boolean z) {
        return 2;
    }

    @Deprecated
    public boolean checkKineMixExport() {
        return false;
    }

    @Deprecated
    public boolean KineMixExport(String str) {
        return false;
    }

    @Deprecated
    public void cancelKineMixExport() {
    }

    public int getDuration() {
        if (isSetProject(false)) {
            return this.mVideoEditor.getDuration() * 1000;
        }
        return 0;
    }

    public int getCurrentPlayTimeTime() {
        return this.mCurrentPlayTime;
    }

    public void updateProject() {
        if (this.mProject != null) {
            setOverlays(OverlayCommand.upload);
            int resolveProject = resolveProject(sLoadListAsync, false);
            if (this.mState != 2 && resolveProject == 1 && this.mProject.getTotalClipCount(true) > 0) {
                loadEffectsInEditor(false);
            }
        }
    }

    public boolean updateProject(boolean z) {
        if (z) {
            try {
                updateProject();
            } catch (Exception e) {
                return false;
            }
        }
        updateProject();
        return true;
    }

    private void clearList() {
        Log.i(TAG, "[" + this.mId + "]clearList()");
        if (sLoadListAsync) {
            this.mVideoEditor.b(null, null, 0);
            this.mVideoEditor.asyncDrawInfoList(null, null);
            return;
        }
        this.mVideoEditor.a(null, null, 0);
        this.mVideoEditor.asyncDrawInfoList(null, null);
    }

    private void encodeEffectOptions(StringBuilder stringBuilder, Map<String, String> map) {
        Object obj = 1;
        try {
            for (Entry entry : map.entrySet()) {
                if (obj != null) {
                    obj = null;
                } else {
                    stringBuilder.append('&');
                }
                Object obj2 = obj;
                stringBuilder.append(URLEncoder.encode((String) entry.getKey(), Keyczar.DEFAULT_ENCODING));
                stringBuilder.append("=");
                stringBuilder.append(URLEncoder.encode((String) entry.getValue(), Keyczar.DEFAULT_ENCODING));
                obj = obj2;
            }
        } catch (Throwable e) {
            throw new IllegalStateException(e);
        }
    }

    String getEncodedEffectOptions(nexClip nexclip, String str) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(nexclip.getClipEffect(true).getShowStartTime());
        stringBuilder.append(',');
        stringBuilder.append(nexclip.getClipEffect(true).getShowEndTime());
        stringBuilder.append('?');
        encodeEffectOptions(stringBuilder, nexclip.getTransitionEffect(true).getEffectOptions(str));
        stringBuilder.append('?');
        encodeEffectOptions(stringBuilder, nexclip.getClipEffect(true).getEffectOptions(str));
        return stringBuilder.toString();
    }

    public void clearProject() {
        clearList();
        this.mProject = null;
    }

    public int clearScreen() {
        if (this.mVideoEditor == null) {
            return 1;
        }
        this.mVideoEditor.r();
        return 0;
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x0067  */
    /* JADX WARNING: Missing block: B:31:0x0090, code:
            if (r8.size() <= 0) goto L_0x0092;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean checkUpdateProject(List<NexVisualClip> list, List<NexAudioClip> list2) {
        int size;
        boolean z;
        int i = 0;
        boolean z2 = true;
        if (this.mCachedNexVisualClips != null) {
            if (this.mCachedNexVisualClips.size() == list.size()) {
                boolean z3;
                size = list.size();
                for (int i2 = 0; i2 < size; i2++) {
                    if (!((NexVisualClip) this.mCachedNexVisualClips.get(i2)).equals(list.get(i2))) {
                        Log.d(TAG, "checkUpdateProject video not equals");
                        z3 = true;
                        break;
                    }
                }
                z3 = false;
                z = z3;
            } else {
                Log.d(TAG, "checkUpdateProject video diff size");
                z = true;
            }
        } else if (list.size() > 0) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            if (this.mCachedNexAudioClips != null) {
                if (this.mCachedNexAudioClips.size() == list2.size()) {
                    size = list2.size();
                    while (i < size) {
                        if (!((NexAudioClip) this.mCachedNexAudioClips.get(i)).equals(list2.get(i))) {
                            Log.d(TAG, "checkUpdateProject audio not equals");
                            break;
                        }
                        i++;
                    }
                } else {
                    Log.d(TAG, "checkUpdateProject audio diff size");
                }
                if (z2) {
                    this.mCachedNexVisualClips = list;
                    this.mCachedNexAudioClips = list2;
                }
                return z2;
            }
        }
        z2 = z;
        if (z2) {
        }
        return z2;
    }

    private boolean loadClipToEngine(List<NexVisualClip> list, List<NexAudioClip> list2, boolean z, boolean z2, int i) {
        boolean z3;
        if (z2) {
            this.mCachedNexVisualClips = list;
            this.mCachedNexAudioClips = list2;
            Log.d(TAG, "loadClipToEngine update force");
            z3 = true;
        } else if (checkUpdateProject(list, list2)) {
            Log.d(TAG, "loadClipToEngine update loadlist call");
            z3 = true;
        } else {
            Log.d(TAG, "loadClipToEngine No update");
            z3 = false;
        }
        if (z3) {
            NexVisualClip[] nexVisualClipArr = new NexVisualClip[this.mCachedNexVisualClips.size()];
            int size = this.mCachedNexAudioClips.size();
            if (size != 0) {
                NexAudioClip[] nexAudioClipArr = new NexAudioClip[size];
                if (z) {
                    this.mVideoEditor.b((NexVisualClip[]) this.mCachedNexVisualClips.toArray(nexVisualClipArr), (NexAudioClip[]) this.mCachedNexAudioClips.toArray(nexAudioClipArr), i);
                } else {
                    this.mVideoEditor.a((NexVisualClip[]) this.mCachedNexVisualClips.toArray(nexVisualClipArr), (NexAudioClip[]) this.mCachedNexAudioClips.toArray(nexAudioClipArr), i);
                }
            } else if (z) {
                this.mVideoEditor.b((NexVisualClip[]) this.mCachedNexVisualClips.toArray(nexVisualClipArr), null, i);
            } else {
                this.mVideoEditor.a((NexVisualClip[]) this.mCachedNexVisualClips.toArray(nexVisualClipArr), null, i);
            }
        } else {
            this.mVideoEditor.clearProject();
        }
        return z3;
    }

    private int resolveProject(boolean z, boolean z2) {
        nexProject nexproject;
        nexProject nexproject2 = this.mProject;
        if (sTranscodeMode) {
            nexproject = sTranscodeProject;
        } else {
            nexproject = nexproject2;
        }
        if (this.mForceMixExportMode) {
            this.mForceMixExportMode = false;
        }
        if (nexproject == null) {
            Log.i(TAG, "[" + this.mId + "]resolveProject() Project is null");
            clearList();
            this.mCachedNexVisualClips = null;
            this.mCachedNexAudioClips = null;
            return 0;
        }
        nexproject.updateProject();
        this.mVideoEditor.setBaseFilterRenderItem(nexproject.getLetterboxEffect());
        List primaryItems = nexproject.getPrimaryItems();
        int size = primaryItems.size();
        int i = 1;
        if (size == 0) {
            Log.i(TAG, "[" + this.mId + "]resolveProject() Project[" + nexproject.getId() + "] clip is zero");
            clearList();
            this.mCachedNexVisualClips = null;
            this.mCachedNexAudioClips = null;
            return 0;
        }
        int i2;
        int i3;
        int i4;
        Log.i(TAG, "[" + this.mId + "]resolveProject() Project[" + nexproject.getId() + "]");
        int overlayVideoCount = getOverlayVideoCount();
        int i5 = 0;
        List<NexAudioClip> arrayList = new ArrayList();
        List arrayList2 = new ArrayList();
        List arrayList3 = new ArrayList();
        int i6 = 30001;
        List arrayList4 = new ArrayList();
        int i7 = 0;
        while (i7 < size) {
            int i8;
            String openingTitle;
            nexClip nexclip = (nexClip) primaryItems.get(i7);
            if (i7 == 0) {
                i8 = 1;
                openingTitle = nexproject.getOpeningTitle();
            } else if (i7 == size - 1) {
                i8 = 2;
                openingTitle = nexproject.getEndingTitle();
            } else {
                i8 = 0;
                openingTitle = null;
            }
            NexVisualClip nexVisualClip = new NexVisualClip();
            for (nexDrawInfo nexdrawinfo : nexclip.getDrawInfos()) {
                nexdrawinfo.setClipID(i);
                arrayList4.add(nexdrawinfo);
            }
            nexVisualClip.mClipPath = nexclip.getRealPath();
            nexVisualClip.mClipID = i;
            nexVisualClip.mWidth = nexclip.getWidth();
            nexVisualClip.mHeight = nexclip.getHeight();
            nexVisualClip.mAudioOnOff = nexclip.getAudioOnOff() ? 1 : 0;
            nexVisualClip.mBGMVolume = nexclip.getBGMVolume();
            nexVisualClip.mClipEffectID = nexclip.getTransitionEffect(true).getId();
            if (i8 == 2) {
                nexVisualClip.mClipEffectID = "none";
                nexVisualClip.mEffectDuration = 0;
            } else {
                nexVisualClip.mClipEffectID = nexclip.getTransitionEffect(true).getId();
                if (nexVisualClip.mClipEffectID.compareTo("none") == 0) {
                    nexVisualClip.mEffectDuration = 0;
                } else {
                    nexVisualClip.mEffectDuration = nexclip.getTransitionEffect(true).getDuration();
                }
            }
            nexVisualClip.mEffectOffset = nexclip.getTransitionEffect(true).getOffset();
            nexVisualClip.mEffectOverlap = nexclip.getTransitionEffect(true).getOverlap();
            nexVisualClip.mTitleEffectID = nexclip.getClipEffect(true).getId();
            if (nexVisualClip.mTitleEffectID.compareTo("none") == 0) {
                nexVisualClip.mTitleEffectID = null;
            }
            nexVisualClip.mTitleStartTime = nexclip.mTitleEffectStartTime;
            nexVisualClip.mTitleEndTime = nexclip.mTitleEffectEndTime;
            switch (nexclip.getClipType()) {
                case 1:
                    nexVisualClip.mStartTime = nexclip.mStartTime;
                    nexVisualClip.mEndTime = nexclip.mEndTime;
                    nexVisualClip.mClipType = 1;
                    nexVisualClip.mTotalTime = nexclip.getImageClipDuration();
                    nexVisualClip.mSpeedControl = 100;
                    break;
                case 4:
                    nexVisualClip.mClipType = 4;
                    nexVisualClip.mExistAudio = nexclip.hasAudio() ? 1 : 0;
                    nexVisualClip.mExistVideo = nexclip.hasVideo() ? 1 : 0;
                    nexVisualClip.mTotalTime = nexclip.getTotalTime();
                    nexVisualClip.mTotalVideoTime = nexclip.getTotalTime();
                    nexVisualClip.mClipVolume = nexclip.getClipVolume();
                    if (!(nexclip.getVideoClipEdit().mTrimStartDuration == 0 && nexclip.getVideoClipEdit().mTrimEndDuration == 0)) {
                        nexVisualClip.mStartTrimTime = nexclip.getVideoClipEdit().mTrimStartDuration;
                        nexVisualClip.mEndTrimTime = nexclip.getVideoClipEdit().mTrimEndDuration;
                    }
                    nexVisualClip.mFreezeDuration = nexclip.getVideoClipEdit().mFreezeDuration;
                    nexVisualClip.mStartTime = nexclip.mStartTime;
                    nexVisualClip.mEndTime = nexclip.mEndTime;
                    nexVisualClip.mSpeedControl = nexclip.getVideoClipEdit().getSpeedControl();
                    nexVisualClip.mVoiceChanger = nexclip.getAudioEdit().getVoiceChangerFactor();
                    nexVisualClip.mCompressor = nexclip.getAudioEdit().getCompressor();
                    nexVisualClip.mPitchFactor = nexclip.getAudioEdit().getPitch();
                    nexVisualClip.mMusicEffector = nexclip.getAudioEdit().getMusicEffect();
                    nexVisualClip.mPanLeft = nexclip.getAudioEdit().getPanLeft();
                    nexVisualClip.mPanRight = nexclip.getAudioEdit().getPanRight();
                    nexVisualClip.mProcessorStrength = nexclip.getAudioEdit().getProcessorStrength();
                    nexVisualClip.mBassStrength = nexclip.getAudioEdit().getBassStrength();
                    nexVisualClip.mEnhancedAudioFilter = nexclip.getAudioEdit().getEnhancedAudioFilter();
                    if (nexclip.mPropertySlowVideoMode) {
                        i2 = 1;
                    } else {
                        i2 = 0;
                    }
                    nexVisualClip.mSlowMotion = i2;
                    break;
            }
            i++;
            i5 = nexVisualClip.mEndTime;
            nexVisualClip.mRotateState = nexclip.getRotateDegree();
            nexVisualClip.mTitle = getEncodedEffectOptions(nexclip, openingTitle);
            nexVisualClip.mVignette = nexclip.getVignetteEffect() ? 1 : 0;
            if (this.mEnhancedCropMode == 1) {
                Rect rect = new Rect();
                Rect rect2 = new Rect();
                nexclip.getCrop().getStartPositionRaw(rect);
                nexclip.getCrop().getEndPositionRaw(rect2);
                nexCrop.enhancedCrop(rect, nexclip.getWidth(), nexclip.getHeight(), (float) this.mEnhancedCropOutputWidth, (float) this.mEnhancedCropOutputHeight);
                nexCrop.enhancedCrop(rect2, nexclip.getWidth(), nexclip.getHeight(), (float) this.mEnhancedCropOutputWidth, (float) this.mEnhancedCropOutputHeight);
                nexVisualClip.mStartRect = new NexRectangle(rect.left, rect.top, rect.right, rect.bottom);
                nexVisualClip.mEndRect = new NexRectangle(rect2.left, rect2.top, rect2.right, rect2.bottom);
            } else if (this.mEnhancedCropMode == 2) {
                nexVisualClip.mStartRect = new NexRectangle(0, 0, nexCrop.ABSTRACT_DIMENSION, nexCrop.ABSTRACT_DIMENSION);
                nexVisualClip.mEndRect = new NexRectangle(0, 0, nexCrop.ABSTRACT_DIMENSION, nexCrop.ABSTRACT_DIMENSION);
            } else if (nexclip.getCrop().m_rotation == 90 || nexclip.getCrop().m_rotation == nexClip.kClip_Rotate_270) {
                nexVisualClip.mStartRect = new NexRectangle(nexclip.getCrop().m_rotatedStartPositionLeft, nexclip.getCrop().m_rotatedStartPositionTop, nexclip.getCrop().m_rotatedStartPositionRight, nexclip.getCrop().m_rotatedStartPositionBottom);
                nexVisualClip.mEndRect = new NexRectangle(nexclip.getCrop().m_rotatedEndPositionLeft, nexclip.getCrop().m_rotatedEndPositionTop, nexclip.getCrop().m_rotatedEndPositionRight, nexclip.getCrop().m_rotatedEndPositionBottom);
            } else {
                nexVisualClip.mStartRect = new NexRectangle(nexclip.getCrop().m_startPositionLeft, nexclip.getCrop().m_startPositionTop, nexclip.getCrop().m_startPositionRight, nexclip.getCrop().m_startPositionBottom);
                nexVisualClip.mEndRect = new NexRectangle(nexclip.getCrop().m_endPositionLeft, nexclip.getCrop().m_endPositionTop, nexclip.getCrop().m_endPositionRight, nexclip.getCrop().m_endPositionBottom);
            }
            nexVisualClip.mBrightness = nexclip.getCombinedBrightness();
            nexVisualClip.mSaturation = nexclip.getCombinedSaturation();
            nexVisualClip.mContrast = nexclip.getCombinedContrast();
            nexVisualClip.mTintcolor = nexclip.getTintColor();
            nexVisualClip.mLUT = nexclip.getLUTId();
            nexVisualClip.mCustomLUT_A = nexclip.getCustomLUTA();
            nexVisualClip.mCustomLUT_B = nexclip.getCustomLUTB();
            nexVisualClip.mCustomLUT_Power = nexclip.getCustomLUTPower();
            if (nexclip.getAudioEnvelop().getVolumeEnvelopeTimeList() != null) {
                nexVisualClip.mVolumeEnvelopeTime = nexclip.getAudioEnvelop().getVolumeEnvelopeTimeList();
            } else {
                nexVisualClip.mVolumeEnvelopeTime = new int[]{0, nexVisualClip.mEndTime - nexVisualClip.mStartTime};
            }
            if (nexclip.getAudioEnvelop().getVolumeEnvelopeLevelList() != null) {
                nexVisualClip.mVolumeEnvelopeLevel = nexclip.getAudioEnvelop().getVolumeEnvelopeLevelList();
            } else {
                nexVisualClip.mVolumeEnvelopeLevel = new int[]{100, 100};
            }
            nexVisualClip.mMotionTracked = nexclip.isMotionTrackedVideo() ? 1 : 0;
            arrayList3.add(nexVisualClip);
            i2 = nexclip.getAVSyncTime();
            if (i2 != 0) {
                NexAudioClip nexAudioClip = new NexAudioClip();
                i3 = i6 + 1;
                nexAudioClip.mClipID = i6;
                nexAudioClip.mVisualClipID = nexVisualClip.mClipID;
                nexAudioClip.mTotalTime = nexVisualClip.mTotalTime;
                nexAudioClip.mClipPath = nexVisualClip.mClipPath;
                nexAudioClip.mAudioOnOff = nexVisualClip.mAudioOnOff;
                nexVisualClip.mAudioOnOff = 0;
                nexAudioClip.mClipType = 3;
                nexAudioClip.mClipVolume = nexVisualClip.mClipVolume;
                nexVisualClip.mClipVolume = 0;
                nexAudioClip.mAutoEnvelop = 0;
                nexAudioClip.mSpeedControl = nexVisualClip.mSpeedControl;
                i8 = (int) ((((float) i2) * ((float) nexAudioClip.mSpeedControl)) / 100.0f);
                if (i2 <= 0) {
                    nexAudioClip.mStartTime = nexVisualClip.mStartTime;
                    nexAudioClip.mStartTrimTime = nexVisualClip.mStartTrimTime - i2;
                } else if (nexVisualClip.mStartTime == 0) {
                    nexAudioClip.mStartTime = nexVisualClip.mStartTime + i8;
                    nexAudioClip.mStartTrimTime = nexVisualClip.mStartTrimTime;
                } else {
                    nexAudioClip.mStartTime = nexVisualClip.mStartTime;
                    if (nexVisualClip.mStartTrimTime == 0) {
                        nexAudioClip.mStartTime = nexVisualClip.mStartTime + i8;
                        nexAudioClip.mStartTrimTime = 0;
                    } else {
                        nexAudioClip.mStartTrimTime = nexVisualClip.mStartTrimTime - i2;
                        if (nexAudioClip.mStartTrimTime < 0) {
                            nexAudioClip.mStartTrimTime = 0;
                        }
                    }
                }
                nexAudioClip.mEndTrimTime = 0;
                nexAudioClip.mEndTime = nexVisualClip.mEndTime;
                nexAudioClip.mEndTrimTime = nexAudioClip.mTotalTime - (((int) ((((float) (nexAudioClip.mEndTime - nexAudioClip.mStartTime)) * ((float) nexVisualClip.mSpeedControl)) / 100.0f)) + nexAudioClip.mStartTrimTime);
                if (nexAudioClip.mEndTrimTime < 0) {
                    nexAudioClip.mEndTrimTime = 0;
                }
                arrayList.add(nexAudioClip);
            } else {
                i3 = i6;
            }
            i7++;
            i6 = i3;
        }
        if (!sTranscodeMode) {
            Iterator it;
            NexDrawInfo[] nexDrawInfoArr;
            int i9;
            nexDrawInfo nexdrawinfo2;
            NexDrawInfo[] nexDrawInfoArr2;
            if (overlayVideoCount > 0 && this.mProject != null) {
                i2 = i;
                for (nexOverlayItem nexoverlayitem : this.mProject.getOverlayItems()) {
                    if (nexoverlayitem.isVideo()) {
                        NexVisualClip nexVisualClip2 = new NexVisualClip();
                        nexVisualClip2.mClipID = i2;
                        nexoverlayitem.mVideoEngineId = i2;
                        nexVisualClip2.mClipType = 7;
                        nexVisualClip2.mTotalTime = nexoverlayitem.getOverlayImage().getVideoClipInfo().getTotalTime();
                        nexVisualClip2.mStartTime = nexoverlayitem.getStartTime();
                        nexVisualClip2.mEndTime = nexoverlayitem.getEndTime();
                        if (nexoverlayitem.getStartTrimTime() == 0 && nexoverlayitem.getEndTrimTime() == 0) {
                            nexVisualClip2.mStartTrimTime = 0;
                            nexVisualClip2.mEndTrimTime = 0;
                        } else {
                            nexVisualClip2.mStartTrimTime = nexoverlayitem.getStartTrimTime();
                            nexVisualClip2.mEndTrimTime = nexoverlayitem.getEndTrimTime();
                        }
                        nexVisualClip2.mWidth = nexoverlayitem.getOverlayImage().getVideoClipInfo().getWidth();
                        nexVisualClip2.mHeight = nexoverlayitem.getOverlayImage().getVideoClipInfo().getHeight();
                        nexVisualClip2.mExistVideo = nexoverlayitem.getOverlayImage().getVideoClipInfo().hasVideo() ? 1 : 0;
                        nexVisualClip2.mExistAudio = nexoverlayitem.getOverlayImage().getVideoClipInfo().hasAudio() ? 1 : 0;
                        nexVisualClip2.mTitleStartTime = nexoverlayitem.getStartTime();
                        nexVisualClip2.mTitleEndTime = nexoverlayitem.getEndTime();
                        nexVisualClip2.mBGMVolume = 100;
                        nexVisualClip2.mAudioOnOff = nexoverlayitem.getAudioOnOff() ? 1 : 0;
                        nexVisualClip2.mClipVolume = nexoverlayitem.getVolume();
                        nexVisualClip2.mEffectDuration = 0;
                        nexVisualClip2.mClipEffectID = "none";
                        nexVisualClip2.mTitleEffectID = null;
                        nexVisualClip2.mStartRect = new NexRectangle(0, 0, nexCrop.ABSTRACT_DIMENSION, nexCrop.ABSTRACT_DIMENSION);
                        nexVisualClip2.mEndRect = new NexRectangle(0, 0, nexCrop.ABSTRACT_DIMENSION, nexCrop.ABSTRACT_DIMENSION);
                        nexVisualClip2.mClipPath = nexoverlayitem.getOverlayImage().getVideoClipInfo().getPath();
                        nexVisualClip2.mThumbnailPath = null;
                        nexVisualClip2.mRotateState = 0;
                        nexVisualClip2.mEffectOffset = 0;
                        nexVisualClip2.mEffectOverlap = 0;
                        nexVisualClip2.mSpeedControl = nexoverlayitem.getSpeedControl();
                        arrayList3.add(nexVisualClip2);
                        i3 = i2 + 1;
                    } else {
                        i3 = i2;
                    }
                    i2 = i3;
                }
            }
            nexClip backgroundMusic = nexproject.getBackgroundMusic();
            if (backgroundMusic != null) {
                NexAudioClip nexAudioClip2 = new NexAudioClip();
                i2 = 10002;
                nexAudioClip2.mClipID = 10001;
                nexAudioClip2.mTotalTime = backgroundMusic.getTotalTime();
                nexAudioClip2.mClipPath = backgroundMusic.getRealPath();
                nexAudioClip2.mAudioOnOff = backgroundMusic.getAudioOnOff() ? 1 : 0;
                nexAudioClip2.mClipType = 3;
                nexAudioClip2.mClipVolume = (int) (nexproject.getBGMMasterVolumeScale() * 200.0f);
                nexAudioClip2.mAutoEnvelop = 1;
                nexAudioClip2.mStartTime = nexproject.mStartTimeBGM;
                nexAudioClip2.mStartTrimTime = nexproject.mBGMTrimStartTime;
                if (nexproject.mBGMTrimEndTime == 0) {
                    nexAudioClip2.mEndTrimTime = 0;
                } else {
                    nexAudioClip2.mEndTrimTime = nexAudioClip2.mTotalTime - nexproject.mBGMTrimEndTime;
                    if (nexAudioClip2.mEndTrimTime < 0) {
                        nexAudioClip2.mEndTrimTime = 0;
                    }
                }
                i3 = nexproject.mBGMTrimEndTime - nexproject.mBGMTrimStartTime;
                if (i3 <= 0) {
                    i3 = backgroundMusic.getTotalTime();
                }
                if (nexproject.mLoopBGM) {
                    i3 = nexproject.getTotalTime() + nexAudioClip2.mStartTime;
                } else {
                    i3 += nexAudioClip2.mStartTime;
                }
                nexAudioClip2.mEndTime = i3;
                nexAudioClip2.mVolumeEnvelopeTime = backgroundMusic.getAudioEnvelop().getVolumeEnvelopeTimeList();
                nexAudioClip2.mVolumeEnvelopeLevel = backgroundMusic.getAudioEnvelop().getVolumeEnvelopeLevelList();
                arrayList2.add(nexAudioClip2);
            } else {
                i2 = 10001;
            }
            for (NexAudioClip add : arrayList) {
                arrayList2.add(add);
            }
            for (nexAudioItem nexaudioitem : nexproject.getAudioItems()) {
                NexAudioClip nexAudioClip3 = new NexAudioClip();
                nexClip nexclip2 = nexaudioitem.mClip;
                nexAudioClip3.mClipID = i2;
                nexAudioClip3.mTotalTime = nexclip2.getTotalTime();
                nexAudioClip3.mClipPath = nexclip2.getRealPath();
                nexAudioClip3.mAudioOnOff = nexclip2.getAudioOnOff() ? 1 : 0;
                nexAudioClip3.mClipType = 3;
                nexAudioClip3.mClipVolume = nexclip2.getClipVolume();
                nexAudioClip3.mStartTime = nexclip2.mStartTime;
                nexAudioClip3.mEndTime = nexclip2.mEndTime;
                nexAudioClip3.mStartTrimTime = nexaudioitem.mTrimStartDuration;
                nexAudioClip3.mEndTrimTime = nexaudioitem.mTrimEndDuration;
                nexAudioClip3.mSpeedControl = nexaudioitem.getSpeedControl();
                nexAudioClip3.mVolumeEnvelopeTime = nexclip2.getAudioEnvelop().getVolumeEnvelopeTimeList();
                nexAudioClip3.mVolumeEnvelopeLevel = nexclip2.getAudioEnvelop().getVolumeEnvelopeLevelList();
                nexAudioClip3.mVoiceChanger = nexclip2.getAudioEdit().getVoiceChangerFactor();
                nexAudioClip3.mCompressor = nexclip2.getAudioEdit().getCompressor();
                nexAudioClip3.mPitchFactor = nexclip2.getAudioEdit().getPitch();
                nexAudioClip3.mMusicEffector = nexclip2.getAudioEdit().getMusicEffect();
                nexAudioClip3.mPanLeft = nexclip2.getAudioEdit().getPanLeft();
                nexAudioClip3.mPanRight = nexclip2.getAudioEdit().getPanRight();
                nexAudioClip3.mProcessorStrength = nexclip2.getAudioEdit().getProcessorStrength();
                nexAudioClip3.mBassStrength = nexclip2.getAudioEdit().getBassStrength();
                nexAudioClip3.mEnhancedAudioFilter = nexclip2.getAudioEdit().getEnhancedAudioFilter();
                arrayList2.add(nexAudioClip3);
                i2++;
            }
            if (nexproject.getTemplateApplyMode() == 3) {
                if (loadClipToEngine(arrayList3, arrayList2, z, true, 257)) {
                    i4 = 1;
                }
                i4 = 0;
            } else {
                if (loadClipToEngine(arrayList3, arrayList2, z, z2, 0)) {
                    i4 = 1;
                }
                i4 = 0;
            }
            List<nexDrawInfo> topDrawInfo = nexproject.getTopDrawInfo();
            if (topDrawInfo == null || topDrawInfo.size() <= 0) {
                nexDrawInfoArr = null;
            } else {
                Log.d(TAG, String.format("resolve Project for top drawInfo(%d) ++++++++++++++++++++", new Object[]{Integer.valueOf(topDrawInfo.size())}));
                nexDrawInfoArr = new NexDrawInfo[topDrawInfo.size()];
                i9 = 0;
                i3 = i5;
                for (nexDrawInfo nexdrawinfo22 : topDrawInfo) {
                    NexDrawInfo nexDrawInfo = new NexDrawInfo();
                    nexDrawInfo.mID = nexdrawinfo22.getID();
                    nexDrawInfo.mTrackID = nexdrawinfo22.getClipID();
                    nexDrawInfo.mSubEffectID = nexdrawinfo22.getSubEffectID();
                    nexDrawInfo.mEffectID = nexdrawinfo22.getEffectID();
                    nexDrawInfo.mTitle = nexdrawinfo22.getTitle();
                    nexDrawInfo.mIsTransition = nexdrawinfo22.getIsTransition();
                    nexDrawInfo.mStartTime = nexdrawinfo22.getStartTime();
                    nexDrawInfo.mEndTime = nexdrawinfo22.getEndTime();
                    nexDrawInfoArr[i9] = nexDrawInfo;
                    i9++;
                    i3 = nexdrawinfo22.getEndTime();
                }
                Log.d(TAG, String.format("resolve Project for top drawInfo(%d) --------------------", new Object[]{Integer.valueOf(topDrawInfo.size())}));
                i5 = i3;
            }
            if (nexDrawInfoArr == null || arrayList4 == null || arrayList4.size() <= 0) {
                nexDrawInfoArr2 = null;
            } else {
                Log.d(TAG, String.format("resolve Project for sub drawInfo(%d) ++++++++++++++++++++", new Object[]{Integer.valueOf(arrayList4.size())}));
                NexDrawInfo[] nexDrawInfoArr3 = new NexDrawInfo[arrayList4.size()];
                i3 = 0;
                it = arrayList4.iterator();
                while (true) {
                    i9 = i3;
                    if (it.hasNext()) {
                        nexdrawinfo22 = (nexDrawInfo) it.next();
                        NexDrawInfo nexDrawInfo2 = new NexDrawInfo();
                        nexDrawInfo2.mID = nexdrawinfo22.getID();
                        nexDrawInfo2.mTrackID = nexdrawinfo22.getClipID();
                        nexDrawInfo2.mSubEffectID = nexdrawinfo22.getSubEffectID();
                        nexDrawInfo2.mEffectID = nexdrawinfo22.getEffectID();
                        nexDrawInfo2.mTitle = nexdrawinfo22.getTitle();
                        nexDrawInfo2.mStartTime = nexdrawinfo22.getStartTime();
                        nexDrawInfo2.mEndTime = nexdrawinfo22.getEndTime();
                        nexDrawInfo2.mRotateState = nexdrawinfo22.getRotateState();
                        nexDrawInfo2.mUserRotateState = nexdrawinfo22.getUserRotateState();
                        nexDrawInfo2.mTranslateX = nexdrawinfo22.getUserTranslateX();
                        nexDrawInfo2.mTranslateY = nexdrawinfo22.getUserTranslateY();
                        nexDrawInfo2.mBrightness = nexdrawinfo22.getBrightness();
                        nexDrawInfo2.mContrast = nexdrawinfo22.getContrast();
                        nexDrawInfo2.mSaturation = nexdrawinfo22.getSaturation();
                        nexDrawInfo2.mTintcolor = nexdrawinfo22.getTintcolor();
                        nexDrawInfo2.mLUT = nexdrawinfo22.getLUT();
                        nexDrawInfo2.mCustomLUT_A = nexdrawinfo22.getCustomLUTA();
                        nexDrawInfo2.mCustomLUT_B = nexdrawinfo22.getCustomLUTB();
                        nexDrawInfo2.mCustomLUT_Power = nexdrawinfo22.getCustomLUTPower();
                        nexDrawInfo2.mStartRect.setRect(nexdrawinfo22.getStartRect().left, nexdrawinfo22.getStartRect().top, nexdrawinfo22.getStartRect().right, nexdrawinfo22.getStartRect().bottom);
                        nexDrawInfo2.mEndRect.setRect(nexdrawinfo22.getEndRect().left, nexdrawinfo22.getEndRect().top, nexdrawinfo22.getEndRect().right, nexdrawinfo22.getEndRect().bottom);
                        nexDrawInfo2.mFaceRect.setRect(nexdrawinfo22.getFaceRect().left, nexdrawinfo22.getFaceRect().top, nexdrawinfo22.getFaceRect().right, nexdrawinfo22.getFaceRect().bottom);
                        nexDrawInfoArr3[i9] = nexDrawInfo2;
                        i3 = i9 + 1;
                    } else {
                        Log.d(TAG, String.format("resolve Project for sub drawInfo(%d) --------------------", new Object[]{Integer.valueOf(arrayList4.size())}));
                        nexDrawInfoArr2 = nexDrawInfoArr3;
                    }
                }
            }
            this.mVideoEditor.asyncDrawInfoList(nexDrawInfoArr, nexDrawInfoArr2);
            long projectAudioFadeInTime = (long) nexproject.getProjectAudioFadeInTime();
            long projectAudioFadeOutTime = (long) nexproject.getProjectAudioFadeOutTime();
            if (projectAudioFadeInTime + projectAudioFadeOutTime > ((long) i5)) {
                projectAudioFadeInTime = (((long) i5) * projectAudioFadeInTime) / (projectAudioFadeOutTime + projectAudioFadeInTime);
                projectAudioFadeOutTime = ((long) i5) - projectAudioFadeInTime;
            }
            if (!(((long) this.mLastProjectFadeIn) == projectAudioFadeInTime && ((long) this.mLastProjectFadeOut) == projectAudioFadeOutTime)) {
                this.mLastProjectFadeIn = (int) projectAudioFadeInTime;
                this.mLastProjectFadeOut = (int) projectAudioFadeOutTime;
                this.mVideoEditor.setProjectVolumeFade((int) projectAudioFadeInTime, (int) projectAudioFadeOutTime);
            }
            i3 = nexproject.getProjectVolume();
            if (this.mLastProjectVolume != i3) {
                this.mLastProjectVolume = i3;
                this.mVideoEditor.setProjectVolume(i3);
            }
            i3 = nexproject.getManualVolumeControl();
            if (this.mLastManualVolCtl != i3) {
                this.mLastManualVolCtl = i3;
                this.mVideoEditor.setProjectManualVolumeControl(i3);
            }
        } else if (loadClipToEngine(arrayList3, arrayList2, z, z2, 0)) {
            i4 = 1;
        } else {
            i4 = 0;
        }
        this.mState = 1;
        return i4;
    }

    public void overlayLock(boolean z) {
        if (z) {
            setOverlays(OverlayCommand.lock);
        } else {
            setOverlays(OverlayCommand.unlock);
        }
    }

    public boolean getOverlayHitPoint(HitPoint hitPoint) {
        for (nexOverlayItem nexoverlayitem : this.mProject.getOverlayItems()) {
            if (nexoverlayitem.getStartTime() <= hitPoint.mTime && nexoverlayitem.getEndTime() > hitPoint.mTime) {
                return nexoverlayitem.isPointInOverlayItem(hitPoint);
            }
        }
        return false;
    }

    public OverlayPreviewBuilder buildOverlayPreview(int i) {
        return new OverlayPreviewBuilder(this, i, null);
    }

    /* JADX WARNING: Missing block: B:17:?, code:
            return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void setOverlays(OverlayCommand overlayCommand) {
        synchronized (this.m_layerRenderLock) {
            switch (overlayCommand) {
                case clear:
                    this.mActiveRenderLayers.clear();
                    b.a().b();
                    break;
                case upload:
                    if (this.mProject != null) {
                        this.mActiveRenderLayers.clear();
                        break;
                    } else {
                        return;
                    }
                case lock:
                    this.m_layerLock = true;
                    break;
                case unlock:
                    this.m_layerLock = false;
                    break;
            }
        }
    }

    private int getOverlayVideoCount() {
        int i = 0;
        if (this.mProject == null) {
            return 0;
        }
        Iterator it = this.mProject.getOverlayItems().iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                return i2;
            }
            if (((nexOverlayItem) it.next()).isVideo()) {
                i = i2 + 1;
            } else {
                i = i2;
            }
        }
    }

    public void fastPreview(FastPreviewOption fastPreviewOption, int i) {
        com.nexstreaming.kminternal.nexvideoeditor.NexEditor.FastPreviewOption fastPreviewOption2 = com.nexstreaming.kminternal.nexvideoeditor.NexEditor.FastPreviewOption.normal;
        switch (fastPreviewOption) {
            case normal:
                fastPreviewOption2 = com.nexstreaming.kminternal.nexvideoeditor.NexEditor.FastPreviewOption.normal;
                break;
            case brightness:
                fastPreviewOption2 = com.nexstreaming.kminternal.nexvideoeditor.NexEditor.FastPreviewOption.brightness;
                break;
            case contrast:
                fastPreviewOption2 = com.nexstreaming.kminternal.nexvideoeditor.NexEditor.FastPreviewOption.contrast;
                break;
            case saturation:
                fastPreviewOption2 = com.nexstreaming.kminternal.nexvideoeditor.NexEditor.FastPreviewOption.saturation;
                break;
            case adj_brightness:
                fastPreviewOption2 = com.nexstreaming.kminternal.nexvideoeditor.NexEditor.FastPreviewOption.adj_brightness;
                break;
            case adj_contrast:
                fastPreviewOption2 = com.nexstreaming.kminternal.nexvideoeditor.NexEditor.FastPreviewOption.adj_contrast;
                break;
            case adj_saturation:
                fastPreviewOption2 = com.nexstreaming.kminternal.nexvideoeditor.NexEditor.FastPreviewOption.adj_saturation;
                break;
            case tintColor:
                fastPreviewOption2 = com.nexstreaming.kminternal.nexvideoeditor.NexEditor.FastPreviewOption.tintColor;
                break;
            case cts:
                fastPreviewOption2 = com.nexstreaming.kminternal.nexvideoeditor.NexEditor.FastPreviewOption.cts;
                break;
            case adj_vignette:
                fastPreviewOption2 = com.nexstreaming.kminternal.nexvideoeditor.NexEditor.FastPreviewOption.adj_vignette;
                break;
            case adj_vignetteRange:
                fastPreviewOption2 = com.nexstreaming.kminternal.nexvideoeditor.NexEditor.FastPreviewOption.adj_vignetteRange;
                break;
            case adj_sharpness:
                fastPreviewOption2 = com.nexstreaming.kminternal.nexvideoeditor.NexEditor.FastPreviewOption.adj_sharpness;
                break;
            case customlut_clip:
                fastPreviewOption2 = com.nexstreaming.kminternal.nexvideoeditor.NexEditor.FastPreviewOption.customlut_clip;
                break;
            case customlut_power:
                fastPreviewOption2 = com.nexstreaming.kminternal.nexvideoeditor.NexEditor.FastPreviewOption.customlut_power;
                break;
        }
        this.mVideoEditor.a(fastPreviewOption2, i);
    }

    public void fastPreviewCustomlut(int i) {
        if (this.mProject != null) {
            fastPreviewCustomlut(this.mProject.getClipPosition(this.mCurrentPlayTime) + 1, i);
        }
    }

    public void fastPreviewCustomlut(int i, int i2) {
        this.mVideoEditor.q().a(com.nexstreaming.kminternal.nexvideoeditor.NexEditor.FastPreviewOption.customlut_clip, i).a(com.nexstreaming.kminternal.nexvideoeditor.NexEditor.FastPreviewOption.customlut_power, i2).a();
    }

    public void fastPreviewCrop(Rect rect) {
        this.mVideoEditor.q().a(com.nexstreaming.kminternal.nexvideoeditor.NexEditor.FastPreviewOption.nofx, 1).a(rect).a();
    }

    public void fastPreviewEffect(int i, boolean z) {
        this.mVideoEditor.q().a(i).a(z).a();
    }

    private void loadEffectsInEditor(boolean z) {
        loadEffectsInEditor_usingAssetPackageManager(z);
    }

    private void loadEffectsInEditor_usingAssetPackageManager(boolean z) {
        boolean z2;
        int i = false;
        Iterable hashSet = new HashSet();
        Log.d(TAG, "TranscoderMode =" + sTranscodeMode);
        if (sTranscodeMode) {
            if (this.mProject == null) {
            }
        } else if (this.mProject.getTemplateApplyMode() == 3) {
            List<nexDrawInfo> topDrawInfo = this.mProject.getTopDrawInfo();
            if (topDrawInfo != null && topDrawInfo.size() > 0) {
                for (nexDrawInfo effectID : topDrawInfo) {
                    hashSet.add(effectID.getEffectID());
                }
            }
        } else {
            boolean templageOverlappedTransitionMode = this.mProject.getTemplageOverlappedTransitionMode();
            List primaryItems = this.mProject.getPrimaryItems();
            while (i < this.mProject.getTotalClipCount(true)) {
                String id = ((nexClip) primaryItems.get(i)).getClipEffect(true).getId();
                if (!(id == null || id.compareToIgnoreCase("none") == 0 || hashSet.contains(id))) {
                    hashSet.add(id);
                }
                id = ((nexClip) primaryItems.get(i)).getTransitionEffect(true).getId();
                if (!(id == null || id.compareToIgnoreCase("none") == 0 || hashSet.contains(id))) {
                    hashSet.add(id);
                }
                i++;
            }
            z2 = templageOverlappedTransitionMode;
        }
        com.nexstreaming.app.common.nexasset.assetpackage.c.a().a(hashSet, this.mVideoEditor, z, z2);
        com.nexstreaming.app.common.nexasset.assetpackage.c.a().a(hashSet, this.mVideoEditor, z);
    }

    public void clearTrackCache() {
        if (this.mVideoEditor != null) {
            this.mVideoEditor.clearTrackCache();
            setOverlays(OverlayCommand.clear);
        }
    }

    public void clearOverlayCache() {
        setOverlays(OverlayCommand.clear);
    }

    public void setProperty(String str, String str2) {
        if (this.mVideoEditor != null) {
            this.mVideoEditor.setProperty(str, str2);
        }
    }

    public void updateDrawInfo(nexDrawInfo nexdrawinfo) {
        if (this.mVideoEditor != null) {
            NexDrawInfo nexDrawInfo = new NexDrawInfo();
            nexDrawInfo.mID = nexdrawinfo.getID();
            nexDrawInfo.mTrackID = nexdrawinfo.getClipID();
            nexDrawInfo.mSubEffectID = nexdrawinfo.getSubEffectID();
            nexDrawInfo.mEffectID = nexdrawinfo.getEffectID();
            nexDrawInfo.mTitle = nexdrawinfo.getTitle();
            nexDrawInfo.mIsTransition = nexdrawinfo.getIsTransition();
            nexDrawInfo.mStartTime = nexdrawinfo.getStartTime();
            nexDrawInfo.mEndTime = nexdrawinfo.getEndTime();
            nexDrawInfo.mRotateState = nexdrawinfo.getRotateState();
            nexDrawInfo.mUserRotateState = nexdrawinfo.getUserRotateState();
            nexDrawInfo.mTranslateX = nexdrawinfo.getUserTranslateX();
            nexDrawInfo.mTranslateY = nexdrawinfo.getUserTranslateY();
            nexDrawInfo.mLUT = nexdrawinfo.getLUT();
            nexDrawInfo.mCustomLUT_A = nexdrawinfo.getCustomLUTA();
            nexDrawInfo.mCustomLUT_B = nexdrawinfo.getCustomLUTB();
            nexDrawInfo.mCustomLUT_Power = nexdrawinfo.getCustomLUTPower();
            nexDrawInfo.mBrightness = nexdrawinfo.getBrightness();
            nexDrawInfo.mContrast = nexdrawinfo.getContrast();
            nexDrawInfo.mSaturation = nexdrawinfo.getSaturation();
            nexDrawInfo.mTintcolor = nexdrawinfo.getTintcolor();
            nexDrawInfo.mStartRect.setRect(nexdrawinfo.getStartRect().left, nexdrawinfo.getStartRect().top, nexdrawinfo.getStartRect().right, nexdrawinfo.getStartRect().bottom);
            nexDrawInfo.mEndRect.setRect(nexdrawinfo.getEndRect().left, nexdrawinfo.getEndRect().top, nexdrawinfo.getEndRect().right, nexdrawinfo.getEndRect().bottom);
            nexDrawInfo.mFaceRect.setRect(nexdrawinfo.getFaceRect().left, nexdrawinfo.getFaceRect().top, nexdrawinfo.getFaceRect().right, nexdrawinfo.getFaceRect().bottom);
            this.mVideoEditor.updateDrawInfo(nexDrawInfo);
        }
    }

    protected void removeClip(int i) {
        if (this.mVideoEditor != null) {
            this.mVideoEditor.a(i, null);
        }
    }

    public int[] getIDRSeekTabSync(nexClip nexclip) {
        int i = 0;
        List arrayList = new ArrayList();
        MediaInfo mediaInfo = nexclip.getMediaInfo();
        if (mediaInfo == null) {
            Log.d(TAG, "[" + this.mId + "]getIDRSeekTabSync() getinfo fail!");
            return null;
        }
        int[] d = mediaInfo.d();
        if (this.mVideoEditor.checkIDRStart(nexclip.getRealPath()) != 0) {
            Log.d(TAG, "[" + this.mId + "]getIDRSeekTabSync() checkIDRStart fail!");
            return null;
        }
        int i2 = -1;
        for (int i3 = 0; i3 < d.length; i3++) {
            int checkIDRTime = this.mVideoEditor.checkIDRTime(d[i3]);
            Log.d(TAG, "[" + this.mId + "]getIDRSeekTabSync() : seektab=" + d[i3] + ", idrTime=" + checkIDRTime);
            if (checkIDRTime < 0) {
                Log.d(TAG, "[" + this.mId + "]getIDRSeekTabSync() idrTime fail! seekTime=" + d[i3]);
                this.mVideoEditor.checkIDREnd();
                return null;
            }
            if (i2 != checkIDRTime) {
                arrayList.add(Integer.valueOf(checkIDRTime));
                i2 = checkIDRTime;
            }
        }
        this.mVideoEditor.checkIDREnd();
        int[] iArr = new int[arrayList.size()];
        while (i < arrayList.size()) {
            iArr[i] = ((Integer) arrayList.get(i)).intValue();
            Log.d(TAG, "[" + this.mId + "]getIDRSeekTabSync() : new seektab=" + iArr[i]);
            i++;
        }
        return iArr;
    }

    public int addUdta(int i, String str) {
        return this.mVideoEditor.addUDTA(i, str);
    }

    public int clearUdta() {
        return this.mVideoEditor.clearUDTA();
    }

    public void updateScreenMode() {
        if (this.mVideoEditor != null) {
            NexEditor.a(nexApplicationConfig.getAspectProfile().getWidth(), nexApplicationConfig.getAspectProfile().getHeight(), nexApplicationConfig.getOverlayCoordinateMode());
            this.mVideoEditor.a(nexApplicationConfig.getScreenMode());
            NexThemeView.setAspectRatio(nexApplicationConfig.getAspectRatio());
            setMark();
        }
    }

    public int autoTrim(String str, boolean z, int i, int i2, int i3, final OnAutoTrimResultListener onAutoTrimResultListener) {
        int i4;
        if (onAutoTrimResultListener != null) {
            this.mVideoEditor.a(new l() {
                public int a(int i, int[] iArr) {
                    onAutoTrimResultListener.onAutoTrimResult(0, iArr);
                    return 0;
                }

                public int a(int i) {
                    onAutoTrimResultListener.onAutoTrimResult(i, null);
                    return 0;
                }
            });
        }
        NexEditor nexEditor = this.mVideoEditor;
        if (z) {
            i4 = 1;
        } else {
            i4 = 0;
        }
        nexEditor.a(str, i4, i, i2, i3, 0, 0);
        return 0;
    }

    public int autoTrim(String str, int i, int i2, final OnAutoTrimRatioResultListener onAutoTrimRatioResultListener) {
        if (onAutoTrimRatioResultListener != null) {
            this.mVideoEditor.a(new s() {
                public int a(int i, int[] iArr, int[] iArr2) {
                    onAutoTrimRatioResultListener.onAutoTrimRatioResult(0, iArr, iArr2);
                    return 0;
                }

                public int a(int i) {
                    onAutoTrimRatioResultListener.onAutoTrimRatioResult(i, null, null);
                    return 0;
                }
            });
        }
        this.mVideoEditor.a(str, 1, i, 1, 0, i2, 1);
        return 0;
    }

    public int autoTrimStop() {
        return this.mVideoEditor.z();
    }

    public static void setExportVideoTrackUUID(boolean z) {
        Log.i(TAG, "setExportVideoTrackUUID()=" + z);
        if (z) {
            sExportVideoTrackUUIDMode = 1;
        } else {
            sExportVideoTrackUUIDMode = 0;
        }
    }

    Context getAppContext() {
        return this.mAppContext;
    }

    void runTranscodeMode(Option option, String str, nexEngineListener nexenginelistener) {
        int i = 0;
        if (sTranscodeMode) {
            nexenginelistener.onEncodingDone(true, nexErrorCode.TRANSCODING_BUSY.getValue());
        } else if (this.mState == 2) {
            nexenginelistener.onEncodingDone(true, nexErrorCode.TRANSCODING_BUSY.getValue());
        } else {
            nexClip supportedClip = nexClip.getSupportedClip(str);
            if (supportedClip == null) {
                nexenginelistener.onEncodingDone(true, nexErrorCode.TRANSCODING_NOT_SUPPORTED_FORMAT.getValue());
                return;
            }
            int i2;
            sTranscodeMode = true;
            sTranscodeProject = new nexProject();
            sTranscodeProject.add(supportedClip);
            sTranscodeListener = nexenginelistener;
            if (option.outputRotate == Rotate.CW_0) {
                i2 = 0;
            } else if (option.outputRotate == Rotate.CW_90) {
                i2 = nexClip.kClip_Rotate_270;
            } else if (option.outputRotate == Rotate.CW_180) {
                i2 = nexClip.kClip_Rotate_180;
            } else if (option.outputRotate == Rotate.CW_270) {
                i2 = 90;
            } else {
                i2 = 0;
            }
            if (i2 != 0) {
                sTranscodeProject.getClip(0, true).setRotateDegree(i2);
            }
            if (option.outputFitMode == 0) {
                sTranscodeProject.getClip(0, true).getCrop().resetStartEndPosition();
            } else {
                sTranscodeProject.getClip(0, true).getCrop().fitStartEndPosition(option.outputWidth, option.outputHeight);
            }
            resolveProject(true, true);
            if (option.outputRotateMeta == Rotate.BYPASS) {
                int rotateInMeta = 360 - supportedClip.getRotateInMeta();
                if (rotateInMeta != 360) {
                    i = rotateInMeta;
                }
            } else if (option.outputRotateMeta != Rotate.CW_0) {
                if (option.outputRotateMeta == Rotate.CW_90) {
                    i = 90;
                } else if (option.outputRotateMeta == Rotate.CW_180) {
                    i = nexClip.kClip_Rotate_180;
                } else if (option.outputRotateMeta == Rotate.CW_270) {
                    i = nexClip.kClip_Rotate_270;
                }
            }
            transcode(option.outputFile.getAbsolutePath(), option.outputWidth, option.outputHeight, option.outputBitRate, Long.MAX_VALUE, option.outputSamplingRate, i);
        }
    }

    void stopTranscode() {
        if (!sTranscodeMode) {
            return;
        }
        if (this.mState == 2) {
            stop();
            return;
        }
        sTranscodeMode = false;
        resolveProject(true, true);
    }

    @Deprecated
    public static void prepareSurfaceSetToNull(boolean z) {
        NexEditor.c(z);
    }

    @Deprecated
    public int getAudioSessionID() {
        return this.mVideoEditor.d(true);
    }

    public boolean set360VideoViewPosition(int i, int i2) {
        return this.mVideoEditor.e(i, i2);
    }

    public void set360VideoViewStopPosition(int i, int i2) {
        this.mVideoEditor.q().a(com.nexstreaming.kminternal.nexvideoeditor.NexEditor.FastPreviewOption.nofx, 1).a(i, i2).a();
    }

    public void set360VideoForceNormalView() {
        this.mVideoEditor.A();
    }

    public int getLayerWidth() {
        return nexApplicationConfig.getAspectProfile().getWidth();
    }

    public int getLayerHeight() {
        return nexApplicationConfig.getAspectProfile().getHeight();
    }

    public void setExportCrop(int i, int i2, int i3) {
        Log.d(TAG, "[" + this.mId + "] setExportCrop mode=" + i + ", (" + i2 + "X" + i3 + ")");
        this.mEnhancedCropMode = i;
        this.mEnhancedCropOutputWidth = i2;
        this.mEnhancedCropOutputHeight = i3;
    }

    public void setTaskSleep(boolean z) {
        this.mVideoEditor.setTaskSleep(z ? 1 : 0);
    }

    public boolean setPreviewScaleFactor(float f) {
        return this.mVideoEditor.a(f);
    }

    public nexErrorCode captureCurrentFrame(final OnCaptureListener onCaptureListener) {
        if (onCaptureListener == null) {
            return nexErrorCode.ARGUMENT_FAILED;
        }
        if (this.mVideoEditor.x()) {
            return nexErrorCode.fromValue(this.mVideoEditor.a(this.lastSeekTime, new e() {
                public void a(Bitmap bitmap) {
                    onCaptureListener.onCapture(bitmap);
                }

                public void a(ErrorCode errorCode) {
                    onCaptureListener.onCaptureFail(nexErrorCode.fromValue(errorCode.getValue()));
                }
            }).getValue());
        }
        return nexErrorCode.fromValue(this.mVideoEditor.a(new e() {
            public void a(Bitmap bitmap) {
                onCaptureListener.onCapture(bitmap);
            }

            public void a(ErrorCode errorCode) {
                onCaptureListener.onCaptureFail(nexErrorCode.fromValue(errorCode.getValue()));
            }
        }).getValue());
    }

    private void defaultFaceDetectSetting() {
        this.facedetect_asyncmode = true;
        this.facedetect_syncclip_count = 1;
        this.facedetect_undetected_clip_cropping_mode = 0;
    }

    public void stopAsyncFaceDetect() {
        Iterator it = this.async_facedetect_worker_list_.iterator();
        while (it.hasNext()) {
            ((AsyncTask) it.next()).cancel(true);
        }
        this.async_facedetect_worker_list_.clear();
    }

    @Deprecated
    public int faceDetect(boolean z, int i, nexUndetectedFaceCrop nexundetectedfacecrop) {
        this.facedetect_asyncmode = true;
        this.facedetect_syncclip_count = 0;
        this.facedetect_undetected_clip_cropping_mode = nexundetectedfacecrop.getValue();
        if (com.nexstreaming.kminternal.kinemaster.utils.facedetect.a.a() == null || this.facedetect_undetected_clip_cropping_mode == 0) {
            return 0;
        }
        return 1;
    }

    public void setFaceModule(String str) {
        stopAsyncFaceDetect();
        if (str == null) {
            com.nexstreaming.kminternal.kinemaster.utils.facedetect.a.a(null);
            return;
        }
        nexFaceDetectionProvider a = com.nexstreaming.kminternal.kinemaster.utils.facedetect.a.a();
        if (a == null || a.uuid().compareTo(str) != 0) {
            if (this.mProject != null) {
                for (int i = 0; i < this.mProject.getTotalClipCount(true); i++) {
                    nexClip clip = this.mProject.getClip(i, true);
                    if (clip.getClipType() == 1) {
                        clip.resetFaceDetectProcessed();
                    }
                }
            }
            Object module = nexApplicationConfig.getExternalModuleManager().getModule(str);
            if (module == null) {
                com.nexstreaming.kminternal.kinemaster.utils.facedetect.a.a(null);
            } else if (nexFaceDetectionProvider.class.isInstance(module)) {
                com.nexstreaming.kminternal.kinemaster.utils.facedetect.a.a((nexFaceDetectionProvider) module);
            }
        }
    }

    public void setLetterBox(boolean z) {
        this.bLetterBox = z;
    }

    public boolean getLetterBox() {
        return this.bLetterBox;
    }

    private void updateFaceInfo2Clip(nexClip nexclip, int i, RectF rectF, int i2) {
        boolean z;
        Rect rect = new Rect();
        Rect rect2 = new Rect();
        Rect rect3 = new Rect();
        int width = nexclip.getCrop().getWidth();
        int height = nexclip.getCrop().getHeight();
        int faceDetectSpeed = nexclip.getCrop().getFaceDetectSpeed();
        Log.d(TAG, "Face Detection speed: " + faceDetectSpeed);
        rect3.set(0, 0, width, height);
        rect2.set((int) (rectF.left * ((float) width)), (int) (rectF.top * ((float) height)), (int) (rectF.right * ((float) width)), (int) (rectF.bottom * ((float) height)));
        rect.set((int) (rectF.left * ((float) width)), (int) (rectF.top * ((float) height)), (int) (rectF.right * ((float) width)), (int) (rectF.bottom * ((float) height)));
        if (rect2.isEmpty()) {
            rect2.set(0, 0, width, height);
            rect2.offset((int) ((((double) width) * Math.random()) / 4.0d), (int) ((((double) height) * Math.random()) / 4.0d));
            Log.d(TAG, "Face Detection Empty ");
            z = false;
        } else {
            int width2 = width - rect2.width();
            if (width2 >= 2) {
                rect2.left -= width2 / 8;
                rect2.right = (width2 / 8) + rect2.right;
                Log.d(TAG, "Face Detection width addSpace > 0");
            }
            width2 = height - rect2.height();
            if (width2 >= 2) {
                rect2.top -= width2 / 8;
                rect2.bottom = (width2 / 8) + rect2.bottom;
                Log.d(TAG, "Face Detection height addSpace>0");
            }
            z = true;
        }
        Rect rect4;
        Rect rect5;
        if (nexclip.getDrawInfos() == null || nexclip.getDrawInfos().size() <= 0) {
            rect4 = new Rect(rect);
            rect5 = new Rect(rect2);
            Rect rect6 = new Rect(rect3);
            if (rectF.isEmpty() || nexclip.getCrop().getEndPosionLock()) {
                nexclip.getCrop().getStartPositionRaw(rect2);
                nexclip.getCrop().getEndPositionRaw(rect3);
                this.mVideoEditor.a(i, nexclip.isFaceDetected() ? 1 : 0, rect2, rect3, rect3);
                nexclip.setFaceDetectProcessed(false, rect3);
                return;
            }
            nexclip.getCrop().growToAspect(rect5, nexApplicationConfig.getAspectRatio());
            nexclip.getCrop().applyCropSpeed(rect6, rect5, width, height, faceDetectSpeed, nexclip.getProjectDuration());
            if (z) {
                int i3;
                nexclip.getCrop().shrinkToAspect(rect5, nexApplicationConfig.getAspectRatio());
                nexclip.getCrop().shrinkToAspect(rect6, nexApplicationConfig.getAspectRatio());
                Log.d(TAG, "Face Detection true");
                if (rect4.top < rect6.top) {
                    i3 = rect6.top - rect4.top;
                    rect6.top -= i3;
                    rect6.bottom -= i3;
                }
                if (this.bLetterBox) {
                    i3 = rect5.right - rect5.left;
                    rect5.left -= i3 / 4;
                    rect5.right = (i3 / 4) + rect5.right;
                    i3 = rect5.bottom - rect5.top;
                    rect5.top -= i3 / 4;
                    rect5.bottom = (i3 / 4) + rect5.bottom;
                    nexclip.getCrop().growToAspect(rect5, nexApplicationConfig.getAspectRatio());
                }
                nexclip.getCrop().setStartPosition(rect6);
                nexclip.getCrop().setEndPosition(rect5);
                nexclip.getCrop().setFacePosition(rect4);
                nexclip.getCrop().getStartPositionRaw(rect6);
                nexclip.getCrop().getEndPositionRaw(rect5);
                nexclip.getCrop().getFacePositionRaw(rect4);
            } else {
                if (i2 == 2) {
                    nexclip.getCrop().shrinkToAspect(rect5, nexApplicationConfig.getAspectRatio());
                    nexclip.getCrop().growToAspect(rect6, nexApplicationConfig.getAspectRatio());
                    nexclip.getCrop().setStartPosition(rect6);
                    nexclip.getCrop().setEndPosition(rect5);
                    nexclip.getCrop().setFacePosition(rect4);
                    nexclip.getCrop().getStartPositionRaw(rect6);
                    nexclip.getCrop().getEndPositionRaw(rect5);
                    nexclip.getCrop().getFacePositionRaw(rect4);
                } else {
                    nexclip.getCrop().shrinkToAspect(rect5, nexApplicationConfig.getAspectRatio());
                    nexclip.getCrop().shrinkToAspect(rect6, nexApplicationConfig.getAspectRatio());
                    nexclip.getCrop().setStartPosition(rect5);
                    nexclip.getCrop().setEndPosition(rect6);
                    nexclip.getCrop().setFacePosition(rect4);
                    nexclip.getCrop().getStartPositionRaw(rect5);
                    nexclip.getCrop().getEndPositionRaw(rect6);
                    nexclip.getCrop().getFacePositionRaw(rect4);
                }
                Log.d(TAG, "Face Detection false  ");
            }
            NexEditor nexEditor = this.mVideoEditor;
            if (z) {
                faceDetectSpeed = 1;
            } else {
                faceDetectSpeed = 0;
            }
            nexEditor.a(i, faceDetectSpeed, rect6, rect5, rect4);
        } else {
            for (nexDrawInfo nexdrawinfo : nexclip.getDrawInfos()) {
                if (nexdrawinfo.getFaceRect().isEmpty()) {
                    rect5 = new Rect(rect);
                    rect4 = new Rect(rect2);
                    Rect rect7 = new Rect(rect3);
                    if (rectF.isEmpty() || nexclip.getCrop().getEndPosionLock()) {
                        nexclip.getCrop().getStartPositionRaw(rect2);
                        nexclip.getCrop().getEndPositionRaw(rect3);
                        nexdrawinfo.setStartRect(rect2);
                        nexdrawinfo.setEndRect(rect3);
                        nexdrawinfo.setFaceRect(rect3);
                        updateDrawInfo(nexdrawinfo);
                        nexclip.setFaceDetectProcessed(false, rect3);
                    } else {
                        nexclip.getCrop().growToAspect(rect4, nexdrawinfo.getRatio());
                        nexclip.getCrop().applyCropSpeed(rect7, rect4, width, height, faceDetectSpeed, nexclip.getProjectDuration());
                        if (z) {
                            int i4;
                            nexclip.getCrop().shrinkToAspect(rect4, nexdrawinfo.getRatio());
                            nexclip.getCrop().shrinkToAspect(rect7, nexdrawinfo.getRatio());
                            Log.d(TAG, "Face Detection true");
                            if (rect5.top < rect7.top) {
                                i4 = rect7.top - rect5.top;
                                rect7.top -= i4;
                                rect7.bottom -= i4;
                            }
                            if (this.bLetterBox) {
                                i4 = rect4.right - rect4.left;
                                rect4.left -= i4 / 4;
                                rect4.right = (i4 / 4) + rect4.right;
                                i4 = rect4.bottom - rect4.top;
                                rect4.top -= i4 / 4;
                                rect4.bottom = (i4 / 4) + rect4.bottom;
                                nexclip.getCrop().growToAspect(rect4, nexdrawinfo.getRatio());
                            }
                            nexclip.getCrop().setStartPosition(rect7);
                            nexclip.getCrop().setEndPosition(rect4);
                            nexclip.getCrop().setFacePosition(rect5);
                            nexclip.getCrop().getStartPositionRaw(rect7);
                            nexclip.getCrop().getEndPositionRaw(rect4);
                            nexclip.getCrop().getFacePositionRaw(rect5);
                        } else {
                            if (i2 == 2) {
                                nexclip.getCrop().shrinkToAspect(rect4, nexdrawinfo.getRatio());
                                nexclip.getCrop().growToAspect(rect7, nexdrawinfo.getRatio());
                                nexclip.getCrop().setStartPosition(rect7);
                                nexclip.getCrop().setEndPosition(rect4);
                                nexclip.getCrop().setFacePosition(rect5);
                                nexclip.getCrop().getStartPositionRaw(rect7);
                                nexclip.getCrop().getEndPositionRaw(rect4);
                                nexclip.getCrop().getFacePositionRaw(rect5);
                            } else {
                                nexclip.getCrop().shrinkToAspect(rect4, nexdrawinfo.getRatio());
                                nexclip.getCrop().shrinkToAspect(rect7, nexdrawinfo.getRatio());
                                nexclip.getCrop().setStartPosition(rect4);
                                nexclip.getCrop().setEndPosition(rect7);
                                nexclip.getCrop().setFacePosition(rect5);
                                nexclip.getCrop().getStartPositionRaw(rect4);
                                nexclip.getCrop().getEndPositionRaw(rect7);
                                nexclip.getCrop().getFacePositionRaw(rect5);
                            }
                            rect5.set(0, 0, 1, 1);
                            Log.d(TAG, "Face Detection false  ");
                        }
                        nexdrawinfo.setStartRect(rect4);
                        nexdrawinfo.setEndRect(rect7);
                        nexdrawinfo.setFaceRect(rect5);
                        updateDrawInfo(nexdrawinfo);
                    }
                }
            }
            nexclip.getCrop().setFacePosition(rect);
            nexclip.getCrop().getFacePositionRaw(rect);
        }
        nexclip.setFaceDetectProcessed(z, rect);
    }

    public int faceDetect_for_seek(int i, int i2) {
        Log.d(TAG, String.format("Face Detection Mode = %d", new Object[]{Integer.valueOf(i2)}));
        if (i2 == 0) {
            return -1;
        }
        int totalClipCount = this.mProject.getTotalClipCount(true);
        for (int i3 = 0; i3 < totalClipCount; i3++) {
            nexClip clip = this.mProject.getClip(i3, true);
            if (clip.getClipType() == 1 && clip.mStartTime <= i && i <= clip.mEndTime && !clip.isAssetResource()) {
                com.nexstreaming.kminternal.kinemaster.utils.facedetect.a a = com.nexstreaming.kminternal.kinemaster.utils.facedetect.a.a(clip.getPath());
                if (a == null) {
                    a = new com.nexstreaming.kminternal.kinemaster.utils.facedetect.a(new File(clip.getPath()), true, getAppContext());
                    com.nexstreaming.kminternal.kinemaster.utils.facedetect.a.a(clip.getPath(), a);
                }
                RectF rectF = new RectF();
                a.a(rectF);
                updateFaceInfo2Clip(clip, i3 + 1, rectF, i2);
            }
        }
        return 0;
    }

    public int faceDetect_internal(boolean z, int i, int i2) {
        int i3 = 0;
        Log.d(TAG, String.format("Face Detection Mode = %d", new Object[]{Integer.valueOf(i2)}));
        if (i2 == 0) {
            return -1;
        }
        nexClip clip;
        Rect rect;
        Rect rect2;
        Rect rect3;
        int totalClipCount = this.mProject.getTotalClipCount(true);
        int i4 = 0;
        for (int i5 = 0; i5 < totalClipCount; i5++) {
            if (this.mProject.getClip(i5, true).getClipType() == 1) {
                i4++;
            }
        }
        if (true != z) {
            i = i4;
        }
        for (i4 = 0; i4 < totalClipCount; i4++) {
            Log.d(TAG, String.format("Face Detection ResetInfo clip ID = %d", new Object[]{Integer.valueOf(i4 + 1)}));
            if (this.mProject.getClip(i4, true).getClipType() == 1) {
                this.mVideoEditor.b(i4 + 1);
            }
        }
        int i6 = 0;
        while (i6 < totalClipCount) {
            RectF rectF = new RectF();
            Log.d(TAG, String.format("Face Detection sync clip ID = %d", new Object[]{Integer.valueOf(i6 + 1)}));
            clip = this.mProject.getClip(i6, true);
            if (clip.getClipType() == 1 && !clip.isFaceDetectProcessed() && !clip.isAssetResource()) {
                com.nexstreaming.kminternal.kinemaster.utils.facedetect.a a = com.nexstreaming.kminternal.kinemaster.utils.facedetect.a.a(clip.getPath());
                Log.d(TAG, "Face Detection sync total num =" + i + " continueClip num= " + i3);
                if (a == null) {
                    if (i6 > i - 1) {
                        break;
                    }
                    a = new com.nexstreaming.kminternal.kinemaster.utils.facedetect.a(new File(clip.getPath()), true, getAppContext());
                    com.nexstreaming.kminternal.kinemaster.utils.facedetect.a.a(clip.getPath(), a);
                }
                a.a(rectF);
                updateFaceInfo2Clip(clip, i6 + 1, rectF, i2);
                i4 = i3 + 1;
            } else if (clip.getClipType() == 1) {
                rect = new Rect();
                rect2 = new Rect();
                rect3 = new Rect();
                Log.d(TAG, String.format("Face Detection skip clip ID = %d", new Object[]{Integer.valueOf(i6 + 1)}));
                if (clip.getDrawInfos() == null || clip.getDrawInfos().size() <= 0) {
                    clip.getCrop().getStartPositionRaw(rect);
                    clip.getCrop().getEndPositionRaw(rect3);
                    clip.getCrop().getFacePositionRaw(rect2);
                    this.mVideoEditor.a(i6 + 1, clip.isFaceDetected() ? 1 : 0, rect, rect3, rect2);
                } else {
                    for (nexDrawInfo nexdrawinfo : clip.getDrawInfos()) {
                        if (nexdrawinfo.getFaceRect().isEmpty()) {
                            clip.getCrop().getStartPositionRaw(rect);
                            clip.getCrop().getEndPositionRaw(rect3);
                            clip.getCrop().getFacePositionRaw(rect2);
                            nexdrawinfo.setStartRect(rect);
                            nexdrawinfo.setEndRect(rect3);
                            nexdrawinfo.setFaceRect(rect2);
                            updateDrawInfo(nexdrawinfo);
                            Log.d(TAG, String.format("Face Detection info update for draw info(clip ID = %d)", new Object[]{Integer.valueOf(i6 + 1)}));
                        }
                    }
                }
                i4 = i3 + 1;
            } else {
                i4 = i3;
            }
            i6++;
            i3 = i4;
        }
        i6 = i3;
        while (i6 < totalClipCount) {
            clip = this.mProject.getClip(i6, true);
            if (clip.getClipType() != 1 || clip.isFaceDetectProcessed() || clip.isAssetResource()) {
                if (clip.getClipType() == 1) {
                    rect = new Rect();
                    rect3 = new Rect();
                    rect2 = new Rect();
                    Log.d(TAG, String.format("Face Detection skip clip ID = %d", new Object[]{Integer.valueOf(i6 + 1)}));
                    if (clip.getDrawInfos() == null || clip.getDrawInfos().size() <= 0) {
                        clip.getCrop().getStartPositionRaw(rect);
                        clip.getCrop().getEndPositionRaw(rect3);
                        clip.getCrop().getFacePositionRaw(rect2);
                        this.mVideoEditor.a(i6 + 1, clip.isFaceDetected() ? 1 : 0, rect, rect3, rect2);
                    } else {
                        for (nexDrawInfo nexdrawinfo2 : clip.getDrawInfos()) {
                            if (nexdrawinfo2.getFaceRect().isEmpty()) {
                                clip.getCrop().getStartPositionRaw(rect);
                                clip.getCrop().getEndPositionRaw(rect3);
                                clip.getCrop().getFacePositionRaw(rect2);
                                nexdrawinfo2.setStartRect(rect);
                                nexdrawinfo2.setEndRect(rect3);
                                nexdrawinfo2.setFaceRect(rect2);
                                updateDrawInfo(nexdrawinfo2);
                            }
                        }
                    }
                    i4 = i3 + 1;
                }
                i4 = i3;
            } else {
                Log.d(TAG, String.format("Face Detection async clip ID = %d", new Object[]{Integer.valueOf(i6 + 1)}));
                final int i7 = i2;
                AsyncTask anonymousClass11 = new AsyncTask<String, Void, com.nexstreaming.kminternal.kinemaster.utils.facedetect.a>() {
                    TaskError a = null;

                    protected void onCancelled() {
                        Log.d(nexEngine.TAG, "Face Detection was cancelled");
                    }

                    /* renamed from: a */
                    protected com.nexstreaming.kminternal.kinemaster.utils.facedetect.a doInBackground(String... strArr) {
                        Log.d(nexEngine.TAG, "Face Detection async thread start =" + strArr[0]);
                        if (i6 == 0) {
                            nexEngine.this.mVideoEditor.e();
                        }
                        com.nexstreaming.kminternal.kinemaster.utils.facedetect.a a = com.nexstreaming.kminternal.kinemaster.utils.facedetect.a.a(strArr[0]);
                        if (a != null) {
                            return a;
                        }
                        a = new com.nexstreaming.kminternal.kinemaster.utils.facedetect.a(new File(strArr[0]), 1, nexEngine.this.getAppContext());
                        com.nexstreaming.kminternal.kinemaster.utils.facedetect.a.a(strArr[0], a);
                        return a;
                    }

                    /* renamed from: a */
                    protected void onPostExecute(com.nexstreaming.kminternal.kinemaster.utils.facedetect.a aVar) {
                        nexEngine.this.async_facedetect_worker_list_.remove(this);
                        Log.d(nexEngine.TAG, "Face Detection worker list size:" + nexEngine.this.async_facedetect_worker_list_.size());
                        RectF rectF = new RectF();
                        aVar.a(rectF);
                        nexEngine.this.updateFaceInfo2Clip(clip, i6 + 1, rectF, i7);
                        Log.d(nexEngine.TAG, "Face Detection aync thread end =" + clip.getPath());
                    }
                };
                this.async_facedetect_worker_list_.add(anonymousClass11);
                anonymousClass11.executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, new String[]{clip.getPath()});
                i4 = i3;
            }
            i6++;
            i3 = i4;
        }
        return 0;
    }

    private void applyCropSpeed() {
    }

    private void undoForceMixProject() {
        if (this.mForceMixExportMode) {
            if (isSetProject(false)) {
                Log.d(TAG, "[" + this.mId + "]undoForceMixProject");
                resolveProject(true, true);
            }
            this.mForceMixExportMode = false;
        }
    }

    public static ExportProfile[] getExportProfile() {
        if (VERSION.SDK_INT < 21) {
            return new ExportProfile[0];
        }
        if (s_exportProfiles == null) {
            int i;
            int i2;
            MediaCodecList mediaCodecList = new MediaCodecList(0);
            ArrayList arrayList = new ArrayList();
            for (MediaCodecInfo mediaCodecInfo : mediaCodecList.getCodecInfos()) {
                if (mediaCodecInfo.isEncoder()) {
                    String[] supportedTypes = mediaCodecInfo.getSupportedTypes();
                    i = 0;
                    while (i < supportedTypes.length) {
                        if (supportedTypes[i].equalsIgnoreCase("video/avc") || supportedTypes[i].equalsIgnoreCase("video/hevc") || supportedTypes[i].equalsIgnoreCase("video/mp4v-es")) {
                            ExportProfile exportProfile = new ExportProfile();
                            if (supportedTypes[i].equalsIgnoreCase("video/avc")) {
                                exportProfile.mimeType = ExportCodec_AVC;
                            } else if (supportedTypes[i].equalsIgnoreCase("video/hevc")) {
                                exportProfile.mimeType = ExportCodec_HEVC;
                            } else if (supportedTypes[i].equalsIgnoreCase("video/mp4v-es")) {
                                exportProfile.mimeType = ExportCodec_MPEG4V;
                            }
                            Log.d(TAG, "codec name=" + mediaCodecInfo.getName());
                            try {
                                CodecCapabilities capabilitiesForType = mediaCodecInfo.getCapabilitiesForType(supportedTypes[i]);
                                SparseIntArray sparseIntArray = new SparseIntArray();
                                for (CodecProfileLevel codecProfileLevel : capabilitiesForType.profileLevels) {
                                    if (exportProfile.mimeType == ExportCodec_AVC) {
                                        i2 = 0;
                                        switch (codecProfileLevel.profile) {
                                            case 1:
                                                i2 = 1;
                                                break;
                                            case 2:
                                                i2 = 2;
                                                break;
                                            case 8:
                                            case 16:
                                            case 32:
                                            case 64:
                                                i2 = 4;
                                                break;
                                        }
                                        if (i2 != 0) {
                                            Log.d(TAG, "codec profile=" + i2 + ", level=" + codecProfileLevel.level);
                                            if (sparseIntArray.get(i2) < codecProfileLevel.level) {
                                                sparseIntArray.put(i2, codecProfileLevel.level);
                                            }
                                        }
                                    } else if (exportProfile.mimeType == ExportCodec_HEVC) {
                                        i2 = codecProfileLevel.profile;
                                        if (i2 != 0) {
                                            Log.d(TAG, "codec profile=" + i2 + ", level=" + codecProfileLevel.level);
                                            if (sparseIntArray.get(i2) < codecProfileLevel.level) {
                                                sparseIntArray.put(i2, codecProfileLevel.level);
                                            }
                                        }
                                    } else if (exportProfile.mimeType == ExportCodec_MPEG4V) {
                                        i2 = codecProfileLevel.profile;
                                        if (i2 != 0) {
                                            Log.d(TAG, "codec profile=" + i2 + ", level=" + codecProfileLevel.level);
                                            if (sparseIntArray.get(i2) < codecProfileLevel.level) {
                                                sparseIntArray.put(i2, codecProfileLevel.level);
                                            }
                                        }
                                    }
                                }
                                exportProfile.proFileAndLevel = new ProfileAndLevel[sparseIntArray.size()];
                                for (i2 = 0; i2 < sparseIntArray.size(); i2++) {
                                    exportProfile.proFileAndLevel[i2] = new ProfileAndLevel(sparseIntArray.keyAt(i2), sparseIntArray.valueAt(i2), null);
                                }
                                arrayList.add(exportProfile);
                            } catch (Throwable e) {
                                Log.wtf(TAG, e);
                            }
                        }
                        i++;
                    }
                }
            }
            s_exportProfiles = new ExportProfile[arrayList.size()];
            i = 0;
            while (true) {
                i2 = i;
                if (i2 < arrayList.size()) {
                    s_exportProfiles[i2] = (ExportProfile) arrayList.get(i2);
                    i = i2 + 1;
                }
            }
        }
        return s_exportProfiles;
    }

    public void setHDRtoSDR(boolean z) {
        this.mVideoEditor.setProperty("HDR2SDR", z ? "1" : "0");
    }

    public void setThumbnailRoutine(int i) {
        this.mVideoEditor.o(i);
    }
}
