package com.meicam.themehelper;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build.VERSION;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.Log;
import com.meicam.sdk.NvsAVFileInfo;
import com.meicam.sdk.NvsAudioTrack;
import com.meicam.sdk.NvsMultiThumbnailSequenceView.ThumbnailSequenceDesc;
import com.meicam.sdk.NvsSize;
import com.meicam.sdk.NvsStreamingContext;
import com.meicam.sdk.NvsTimeline;
import com.meicam.sdk.NvsTimelineAnimatedSticker;
import com.meicam.sdk.NvsTimelineVideoFx;
import com.meicam.sdk.NvsVideoClip;
import com.meicam.sdk.NvsVideoFx;
import com.meicam.sdk.NvsVideoResolution;
import com.meicam.sdk.NvsVideoTrack;
import com.meicam.sdk.NvsVideoTransition;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class NvsThemeHelper {
    private static final int DEFAULT_FONT1_SIZE = 71;
    private static final int DEFAULT_FONT2_SIZE = 33;
    private static final int DEFAULT_FONT_COLOR = -1;
    private static final String FONT_MAX_LENGTH = "一二三四五六七八九十";
    private static final int NVS_MAX_IMAGE_FILE_COUNT = 20;
    private static final long NVS_MAX_TIME_LINE_LENGTH = 90000000;
    private static final int NVS_MIN_IMAGE_FILE_COUNT = 3;
    private static final int NVS_USE_ALL_PHOTO = -2;
    private static final int NVS_USE_CURRENT_DURATION = -1;
    private static final String TAG = "NvsThemeHelper";
    public static float m_timelineRatio = 0.5625f;
    public static Random rand = new Random(1000);
    private long clipMaxLen = (10 * this.timeBase);
    private RectF coverEndROI = null;
    private RectF coverStartROI = null;
    private ArrayList<NvsMusicFileDesc> mMusicFileList = new ArrayList();
    private Map<String, NvsThemeAsset> mThemeAssetMap = new HashMap();
    private NvsTimelineAnimatedSticker m_cafSticker = null;
    private StringBuilder m_cafStickerId = new StringBuilder();
    private NvsTimelineAnimatedSticker m_caption1 = null;
    private String m_caption1Text = new String();
    private NvsTimelineAnimatedSticker m_caption2 = null;
    private String m_caption2Text = new String();
    private String m_captionBitmapPath1 = new String();
    private String m_captionBitmapPath2 = new String();
    private Context m_context;
    private String m_defaultRhythm10sPath;
    private String m_defaultRhythmPath;
    private int m_fxTransClipCount = 0;
    private ArrayList<NvsImageFileDesc> m_inputIamgeInfo;
    private boolean m_is10sMode = false;
    private long m_maxTotalTime = NVS_MAX_TIME_LINE_LENGTH;
    private float m_musicVolumeGain = 1.0f;
    private int m_selectedExtMusicIdx = -1;
    private String m_selectedLocalMusic = null;
    private long m_selectedLocalMusicEnd = -1;
    private long m_selectedLocalMusicStart = -1;
    private int m_selectedMusicType = -1;
    private boolean m_showCaption = false;
    private String m_stickerId1;
    private String m_stickerId2;
    private NvsStreamingContext m_streamingContext = null;
    private String m_themeAssetID;
    private NvsTimeline m_timeline;
    private long seed = 1000;
    private long timeBase = 1000000;

    public class NvsThemeAsset {
        public boolean isDownload = false;
        public StringBuilder m_blurFxId;
        public ArrayList<String> m_blurWidthFxTransList = new ArrayList();
        public StringBuilder m_cafSticker10sId;
        public StringBuilder m_cafStickerId;
        public long m_endingFx10sLen;
        public String m_endingFxId;
        public String m_endingFxId10s;
        public String m_endingFxImgPath;
        public ArrayList<String> m_fhFx9v16List = new ArrayList();
        public ArrayList<String> m_fhFx9v18List = new ArrayList();
        public ArrayList<String> m_fhFx9v19List = new ArrayList();
        public ArrayList<String> m_fhFx9vx73List = new ArrayList();
        public ArrayList<String> m_fullFx9v16List = new ArrayList();
        public ArrayList<String> m_fullFx9v18List = new ArrayList();
        public ArrayList<String> m_fullFx9v19List = new ArrayList();
        public ArrayList<String> m_fullFx9vx73List = new ArrayList();
        public ArrayList<String> m_halfFx9v16List = new ArrayList();
        public ArrayList<String> m_halfFx9v18List = new ArrayList();
        public ArrayList<String> m_halfFx9v19List = new ArrayList();
        public ArrayList<String> m_halfFx9vx73List = new ArrayList();
        public boolean m_hasFxTrans = false;
        public ArrayList<String> m_hfFx9v16List = new ArrayList();
        public ArrayList<String> m_hfFx9v18List = new ArrayList();
        public ArrayList<String> m_hfFx9v19List = new ArrayList();
        public ArrayList<String> m_hfFx9vx73List = new ArrayList();
        public long m_musicLen;
        public long m_musicLen10s;
        public ArrayList<NvsMusicPointDesc> m_musicPoints = new ArrayList();
        public ArrayList<NvsMusicPointDesc> m_musicPoints10s = new ArrayList();
        public StringBuilder m_stickerId1;
        public StringBuilder m_stickerId2;
        public StringBuilder m_theme10sId;
        public StringBuilder m_themeId;
        public NvsTransDesc m_transDesc = new NvsTransDesc();
        public ArrayList<StringBuilder> m_transIDList = new ArrayList();
        public int m_transOffset;
    }

    public boolean initHelper(Context context, NvsTimeline timeline, ArrayList<NvsImageFileDesc> files) {
        this.m_context = context;
        if (this.m_context == null) {
            Log.d(TAG, "Context can not be NULL");
            return false;
        } else if (timeline == null) {
            Log.d(TAG, "timeline can not be NULL");
            return false;
        } else if (files == null || files.size() < 1) {
            Log.d(TAG, "file list is empty");
            return false;
        } else {
            this.m_inputIamgeInfo = new ArrayList();
            for (int i = 0; i < files.size(); i++) {
                this.m_inputIamgeInfo.add(((NvsImageFileDesc) files.get(i)).copy());
            }
            this.m_timeline = timeline;
            NvsVideoResolution videoResolution = this.m_timeline.getVideoRes();
            m_timelineRatio = (((float) videoResolution.imageWidth) * 1.0f) / ((float) videoResolution.imageHeight);
            return true;
        }
    }

    public void randomFx() {
        this.seed = System.nanoTime();
    }

    public boolean setDefaultRhythmPath(String defaultRhythmPath, String defaultRhythmPath_10s) {
        this.m_defaultRhythmPath = defaultRhythmPath;
        this.m_defaultRhythm10sPath = defaultRhythmPath_10s;
        if (this.m_defaultRhythmPath == null || this.m_defaultRhythm10sPath == null) {
            return false;
        }
        this.m_defaultRhythmPath = this.m_defaultRhythmPath.replace("assets:/", "");
        this.m_defaultRhythm10sPath = this.m_defaultRhythm10sPath.replace("assets:/", "");
        return true;
    }

    public boolean applyTimelineTheme(String themeID, boolean isDownloadFile, boolean showCaption) {
        if (this.m_context == null || this.m_inputIamgeInfo.isEmpty() || themeID == null) {
            Log.d(TAG, "helper need init");
            return false;
        } else if (themeID.isEmpty()) {
            return false;
        } else {
            if (installThemeAsset(isDownloadFile ? null : this.m_context, themeID, (NvsThemeAsset) this.mThemeAssetMap.get(themeID))) {
                NvsThemeAsset themeAsset = (NvsThemeAsset) this.mThemeAssetMap.get(themeID);
                if (themeAsset == null) {
                    return false;
                }
                NvsStreamingContext streamingContext = NvsStreamingContext.getInstance();
                if (streamingContext != null) {
                    streamingContext.stop();
                }
                this.m_themeAssetID = themeID;
                this.m_showCaption = showCaption;
                this.m_selectedMusicType = 0;
                this.m_selectedExtMusicIdx = -1;
                this.m_musicVolumeGain = 1.0f;
                this.m_selectedLocalMusic = null;
                this.m_selectedLocalMusicStart = -1;
                this.m_selectedLocalMusicEnd = -1;
                reBuildTimeLine(this.m_timeline, themeAsset, this.m_inputIamgeInfo, -1, null, true);
                return true;
            }
            Log.d(TAG, "install theme asset error!, id:" + themeID);
            return false;
        }
    }

    public boolean changeTimelineDuration(boolean is10sMode) {
        if (is10sMode) {
            reBuildTimeLineExt(10 * this.timeBase, true);
        } else {
            reBuildTimeLineExt(-2, true);
        }
        return true;
    }

    public long getTimelinePosition(int clipIndex) {
        if (clipIndex < 0) {
            return 0;
        }
        ArrayList<ThumbnailSequenceDesc> list = getThumbnailImages();
        if (list == null || clipIndex >= list.size()) {
            return 0;
        }
        ThumbnailSequenceDesc desc = (ThumbnailSequenceDesc) list.get(clipIndex);
        if (desc != null) {
            return (desc.inPoint + desc.outPoint) / 2;
        }
        return 0;
    }

    public boolean changeCaptionText(String newText, int index) {
        if (newText == null) {
            return false;
        }
        switch (index) {
            case 0:
                this.m_caption1Text = newText;
                break;
            case 1:
                this.m_caption2Text = newText;
                break;
            default:
                return false;
        }
        addCaption(this.m_timeline);
        return true;
    }

    public String getCaptionText(int index) {
        String text = "";
        if (index == 0) {
            if (this.m_caption1 != null) {
                text = this.m_caption1Text;
            }
        } else if (this.m_caption2 != null) {
            text = this.m_caption2Text;
        }
        return text.replace("\n", "");
    }

    /* JADX WARNING: Removed duplicated region for block: B:26:0x009a  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x009d  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00e7  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00d8  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean changeMusic(String musicId, int musicType) {
        NvsStreamingContext streamingContext = NvsStreamingContext.getInstance();
        if (streamingContext != null) {
            streamingContext.stop();
        }
        if (musicId == null) {
            this.m_musicVolumeGain = 0.0f;
            if (this.m_selectedMusicType == 0) {
                this.m_timeline.setThemeMusicVolumeGain(this.m_musicVolumeGain, this.m_musicVolumeGain);
            } else {
                NvsAudioTrack audioTrack = this.m_timeline.getAudioTrackByIndex(0);
                if (audioTrack != null) {
                    audioTrack.setVolumeGain(this.m_musicVolumeGain, this.m_musicVolumeGain);
                }
            }
            return true;
        }
        this.m_selectedMusicType = musicType;
        this.m_musicVolumeGain = 1.0f;
        switch (musicType) {
            case 1:
                NvsAVFileInfo info = streamingContext.getAVFileInfo(musicId);
                if (info == null) {
                    Log.d(TAG, "loacl music format is not suported!");
                    return false;
                }
                changeLocalMusic(musicId, 0, info.getAudioStreamDuration(0));
                return true;
            case 2:
                boolean isDownloadFile;
                NvsMusicFileDesc currentSelected = null;
                for (int i = 0; i < this.mMusicFileList.size(); i++) {
                    NvsMusicFileDesc entry = (NvsMusicFileDesc) this.mMusicFileList.get(i);
                    if (entry.id.equals(musicId)) {
                        currentSelected = entry;
                        this.m_selectedExtMusicIdx = i;
                        isDownloadFile = false;
                        if (currentSelected == null) {
                            isDownloadFile = true;
                        }
                        if (isDownloadFile) {
                            String musicInfo = Utils.readFile(musicId + "/info.json", null);
                            if (musicInfo == null) {
                                Log.d(TAG, "read music info json error!");
                                return false;
                            }
                            try {
                                currentSelected = NvsParseHelper.GetMusicFileFromJsonObject(new JSONObject(musicInfo), musicId);
                                currentSelected.isDownloadFile = true;
                            } catch (JSONException e) {
                                e.printStackTrace();
                            }
                        }
                        if (currentSelected != null) {
                            Log.d(TAG, "currentSelected music item is null!");
                            return false;
                        }
                        if (currentSelected.pointsDesc.size() <= 0) {
                            AssetManager assetManager;
                            String musicjson = Utils.readFile(currentSelected.jsonFile, isDownloadFile ? null : this.m_context.getAssets());
                            if (musicjson != null) {
                                currentSelected.musicLen = NvsParseHelper.readMusicPoint(musicjson, currentSelected.pointsDesc, currentSelected.transDesc);
                            }
                            String str = currentSelected.jsonFile10s;
                            if (isDownloadFile) {
                                assetManager = null;
                            } else {
                                assetManager = this.m_context.getAssets();
                            }
                            musicjson = Utils.readFile(str, assetManager);
                            if (musicjson != null) {
                                currentSelected.musicLen10s = NvsParseHelper.readMusicPoint(musicjson, currentSelected.pointsDesc10s, null);
                            }
                        }
                        if (isDownloadFile) {
                            this.mMusicFileList.add(currentSelected);
                            this.m_selectedExtMusicIdx = this.mMusicFileList.size() - 1;
                        }
                        this.m_selectedLocalMusic = null;
                        this.m_selectedLocalMusicStart = -1;
                        this.m_selectedLocalMusicEnd = -1;
                        reBuildTimeLineExt(-1, true);
                        return true;
                    }
                }
                isDownloadFile = false;
                if (currentSelected == null) {
                }
                if (isDownloadFile) {
                }
                if (currentSelected != null) {
                }
            default:
                return false;
        }
    }

    public boolean moveClip(int clipIndex, int destClipIndex) {
        if (clipIndex >= this.m_inputIamgeInfo.size() || destClipIndex >= this.m_inputIamgeInfo.size() || clipIndex < 0 || destClipIndex < 0 || this.m_timeline == null || this.m_inputIamgeInfo == null) {
            return false;
        }
        NvsImageFileDesc src = ((NvsImageFileDesc) this.m_inputIamgeInfo.get(clipIndex)).copy();
        this.m_inputIamgeInfo.remove(clipIndex);
        this.m_inputIamgeInfo.add(destClipIndex, src);
        randomFx();
        reBuildTimeLineExt(-1, true);
        return true;
    }

    public boolean resetClip(ArrayList<NvsImageFileDesc> newClips) {
        if (this.m_inputIamgeInfo == null || newClips == null || newClips.size() == 0) {
            Log.d(TAG, "invalid clip!");
            return false;
        }
        this.m_inputIamgeInfo.clear();
        return insertClip(newClips);
    }

    public boolean insertClip(ArrayList<NvsImageFileDesc> newClips) {
        if (this.m_inputIamgeInfo == null || newClips == null || newClips.size() == 0) {
            Log.d(TAG, "invalid clip!");
            return false;
        }
        ArrayList<NvsImageFileDesc> insertClips = new ArrayList();
        for (int i = 0; i < newClips.size(); i++) {
            NvsImageFileDesc file = (NvsImageFileDesc) newClips.get(i);
            NvsImageFileDesc filecopy;
            if (file.alternative) {
                boolean exist = false;
                for (int j = 0; j < this.m_inputIamgeInfo.size(); j++) {
                    NvsImageFileDesc desc = (NvsImageFileDesc) this.m_inputIamgeInfo.get(j);
                    if (desc.filePath.contains(file.filePath)) {
                        exist = true;
                        Log.d(TAG, "exist file!");
                        desc.show = true;
                        break;
                    }
                }
                if (!exist) {
                    filecopy = file.copy();
                    filecopy.show = true;
                    insertClips.add(filecopy);
                }
            } else {
                filecopy = file.copy();
                filecopy.show = true;
                insertClips.add(filecopy);
            }
        }
        this.m_inputIamgeInfo.addAll(insertClips);
        randomFx();
        reBuildTimeLineExt(-1, true);
        return true;
    }

    public boolean deleteClip(int clipIndex) {
        if (this.m_inputIamgeInfo == null) {
            Log.d(TAG, "invalid file!");
            return false;
        } else if (this.m_inputIamgeInfo.size() <= getMinImgCount()) {
            Log.d(TAG, "less than min clip count!");
            return false;
        } else if (this.m_inputIamgeInfo.size() <= clipIndex) {
            Log.d(TAG, "invalid clip index!");
            return false;
        } else {
            this.m_inputIamgeInfo.remove(clipIndex);
            randomFx();
            reBuildTimeLineExt(-1, true);
            return true;
        }
    }

    public String getCurrentThemeName() {
        return this.m_themeAssetID;
    }

    public boolean changeMusicVolumeGain(float volumeGain) {
        switch (this.m_selectedMusicType) {
            case 0:
                this.m_timeline.setThemeMusicVolumeGain(volumeGain, volumeGain);
                break;
            case 1:
            case 2:
                NvsAudioTrack audioTrack = this.m_timeline.getAudioTrackByIndex(0);
                if (audioTrack != null) {
                    audioTrack.setVolumeGain(volumeGain, volumeGain);
                    break;
                }
                break;
            default:
                return false;
        }
        this.m_musicVolumeGain = volumeGain;
        return true;
    }

    public void setThemeEnabled(boolean enabled) {
        if (this.m_timeline != null && this.mThemeAssetMap != null && this.m_themeAssetID != null) {
            if (enabled) {
                reBuildTimeLineExt(-1, true);
            } else {
                reBuildTimeLineExt(-1, false);
            }
        }
    }

    public ArrayList<ThumbnailSequenceDesc> getThumbnailImages() {
        if (this.m_timeline == null) {
            return null;
        }
        NvsVideoTrack videoTrack = this.m_timeline.getVideoTrackByIndex(0);
        if (videoTrack == null) {
            return null;
        }
        ArrayList<ThumbnailSequenceDesc> sequenceDescsArray = new ArrayList();
        for (int index = 0; index < videoTrack.getClipCount(); index++) {
            NvsVideoClip videoClip = videoTrack.getClipByIndex(index);
            if (videoClip != null) {
                ThumbnailSequenceDesc sequenceDescs = new ThumbnailSequenceDesc();
                sequenceDescs.mediaFilePath = videoClip.getFilePath();
                sequenceDescs.trimIn = videoClip.getTrimIn();
                sequenceDescs.trimOut = videoClip.getTrimOut();
                sequenceDescs.inPoint = videoClip.getInPoint();
                sequenceDescs.outPoint = videoClip.getOutPoint();
                sequenceDescs.stillImageHint = true;
                String hasFxTrans = null;
                if (videoClip.getAttachment("hasFxTrans") != null) {
                    hasFxTrans = videoClip.getAttachment("hasFxTrans").toString();
                }
                if (hasFxTrans == null || !hasFxTrans.equalsIgnoreCase("true")) {
                    sequenceDescsArray.add(sequenceDescs);
                } else {
                    String fxFilePath = videoClip.getAttachment("fxFilePath").toString();
                    long fxInpoint = Integer.valueOf(videoClip.getAttachment("fxInpoint").toString()).longValue() * 1000;
                    sequenceDescs.trimOut = sequenceDescs.trimIn + fxInpoint;
                    sequenceDescs.outPoint = sequenceDescs.inPoint + fxInpoint;
                    sequenceDescsArray.add(sequenceDescs);
                    ThumbnailSequenceDesc sequenceDescsFx = new ThumbnailSequenceDesc();
                    sequenceDescsFx.mediaFilePath = fxFilePath;
                    sequenceDescsFx.inPoint = sequenceDescs.outPoint;
                    sequenceDescsFx.outPoint = videoClip.getOutPoint();
                    sequenceDescsFx.trimIn = 0;
                    sequenceDescsFx.trimOut = sequenceDescsFx.outPoint - sequenceDescsFx.inPoint;
                    sequenceDescsFx.stillImageHint = true;
                    if (videoClip.getAttachment("fxFileV3Path") != null) {
                        String fxFilePathV3 = videoClip.getAttachment("fxFileV3Path").toString();
                        long fxInpointV3 = Integer.valueOf(videoClip.getAttachment("fxV3Inpoint").toString()).longValue() * 1000;
                        sequenceDescsFx.trimOut = sequenceDescsFx.trimIn + fxInpointV3;
                        sequenceDescsFx.outPoint = sequenceDescsFx.inPoint + fxInpointV3;
                        sequenceDescsArray.add(sequenceDescsFx);
                        ThumbnailSequenceDesc sequenceDescsV3 = new ThumbnailSequenceDesc();
                        sequenceDescsV3.mediaFilePath = fxFilePathV3;
                        sequenceDescsV3.inPoint = sequenceDescsFx.outPoint;
                        sequenceDescsV3.outPoint = videoClip.getOutPoint();
                        sequenceDescsV3.trimIn = 0;
                        sequenceDescsV3.trimOut = sequenceDescsV3.outPoint - sequenceDescsV3.inPoint;
                        sequenceDescsV3.stillImageHint = true;
                        sequenceDescsArray.add(sequenceDescsV3);
                    } else {
                        sequenceDescsArray.add(sequenceDescsFx);
                    }
                }
            }
        }
        return sequenceDescsArray;
    }

    private void changeLocalMusic(String filePath, long startTime, long endTime) {
        this.m_selectedExtMusicIdx = -1;
        this.m_selectedLocalMusic = filePath;
        this.m_selectedLocalMusicStart = startTime;
        this.m_selectedLocalMusicEnd = endTime;
        reBuildTimeLineExt(-1, true);
    }

    private void setImageMotion(NvsVideoClip clip, NvsImageFileDesc info) {
        if (clip != null) {
            if (info.imgRatio == 0.0f) {
                NvsAVFileInfo fileInfo = this.m_streamingContext.getAVFileInfo(clip.getFilePath());
                info.imgRatio = Utils.getImgRatio(fileInfo);
                info.isLargeImg = isLargeImg(fileInfo.getVideoStreamDimension(0));
            }
            RectF rect = null;
            if (info.hasFace && info.faceRect != null) {
                rect = info.faceRect;
            }
            if (!info.isCover || this.coverStartROI == null || this.coverEndROI == null) {
                Utils.setImageMotion(clip, info.imgRatio, info.isLargeImg, rect);
            } else {
                clip.setImageMotionROI(this.coverStartROI, this.coverEndROI);
                clip.setImageMotionMode(2);
            }
            clip.setSourceBackgroundMode(1);
            if (clip.getOutPoint() - clip.getInPoint() < this.timeBase) {
                clip.setImageMotionAnimationEnabled(false);
            }
        }
    }

    private boolean isLargeImg(NvsSize oriImgSize) {
        NvsSize imgSize = new NvsSize(oriImgSize.width, oriImgSize.height);
        if (imgSize.width >= imgSize.height) {
            imgSize.width = oriImgSize.height;
            imgSize.height = oriImgSize.width;
        }
        NvsVideoResolution resolution = this.m_timeline.getVideoRes();
        double scale = Math.min(Math.max(((double) resolution.imageWidth) / ((double) imgSize.width), ((double) resolution.imageHeight) / ((double) imgSize.height)), 1.0d);
        int w = imgSize.width;
        int h = imgSize.height;
        if (scale < 1.0d) {
            w = (int) ((((double) imgSize.width) * scale) + 0.5d);
            h = (int) ((((double) imgSize.height) * scale) + 0.5d);
        }
        if (w > 8192 || h > 8192) {
            return true;
        }
        return false;
    }

    private int getClipCountInDuation(ArrayList<NvsMusicPointDesc> points, long newDuation) {
        int needClipCount = points.size();
        if (needClipCount < 1) {
            return getMinImgCount();
        }
        if (newDuation > ((long) (((NvsMusicPointDesc) points.get(needClipCount - 1)).cutPoint * 1000))) {
            return points.size() + 1;
        }
        for (int i = points.size() - 1; i >= 0; i--) {
            if (((long) (((NvsMusicPointDesc) points.get(i)).cutPoint * 1000)) <= (this.timeBase + newDuation) - 1) {
                needClipCount = i + 1;
                break;
            }
        }
        return needClipCount;
    }

    private void cleanUpTimeLine(NvsTimeline timeline) {
        int i;
        timeline.removeCurrentTheme();
        NvsTimelineVideoFx fx = timeline.getFirstTimelineVideoFx();
        while (fx != null) {
            fx = timeline.removeTimelineVideoFx(fx);
        }
        NvsTimelineAnimatedSticker sticker = timeline.getFirstAnimatedSticker();
        while (sticker != null) {
            sticker = timeline.removeAnimatedSticker(sticker);
        }
        this.m_cafSticker = null;
        this.m_caption1 = null;
        this.m_caption2 = null;
        int trackCount = timeline.videoTrackCount();
        for (i = 0; i < trackCount; i++) {
            timeline.removeVideoTrack(i);
        }
        trackCount = timeline.audioTrackCount();
        for (i = 0; i < trackCount; i++) {
            timeline.removeAudioTrack(i);
        }
        timeline.setThemeMusicVolumeGain(1.0f, 1.0f);
    }

    private void reBuildTimeLineExt(long newDuration, boolean needFx) {
        NvsThemeAsset themeAsset = (NvsThemeAsset) this.mThemeAssetMap.get(this.m_themeAssetID);
        if (themeAsset != null) {
            NvsMusicFileDesc extMusicfile = null;
            if (this.m_selectedExtMusicIdx >= 0 && this.m_selectedExtMusicIdx < this.mMusicFileList.size()) {
                extMusicfile = (NvsMusicFileDesc) this.mMusicFileList.get(this.m_selectedExtMusicIdx);
            } else if (this.m_selectedLocalMusic != null) {
                extMusicfile = new NvsMusicFileDesc();
                extMusicfile.musicFile = this.m_selectedLocalMusic;
                extMusicfile.musicFile10s = this.m_selectedLocalMusic;
                String musicjson = Utils.readFile(this.m_defaultRhythmPath, this.m_context.getAssets());
                if (musicjson != null) {
                    extMusicfile.musicLen = NvsParseHelper.readMusicPoint(musicjson, extMusicfile.pointsDesc, extMusicfile.transDesc);
                }
                musicjson = Utils.readFile(this.m_defaultRhythm10sPath, this.m_context.getAssets());
                if (musicjson != null) {
                    extMusicfile.musicLen10s = NvsParseHelper.readMusicPoint(musicjson, extMusicfile.pointsDesc10s, null);
                }
                extMusicfile.jsonFile = null;
                extMusicfile.jsonFile10s = null;
            }
            reBuildTimeLine(this.m_timeline, themeAsset, this.m_inputIamgeInfo, newDuration, extMusicfile, needFx);
        }
    }

    private void reBuildTimeLine(NvsTimeline timeline, NvsThemeAsset themeAsset, ArrayList<NvsImageFileDesc> files, long newDuration, NvsMusicFileDesc selectMusicfile, boolean needFx) {
        rand = new Random(this.seed);
        NvsStreamingContext streamingContext = NvsStreamingContext.getInstance();
        if (streamingContext != null && timeline != null && themeAsset != null && files != null) {
            streamingContext.clearCachedResources(false);
            int nClipCount = files.size();
            boolean bUsedSlectedMusc = false;
            boolean bUsedLocalMusc = false;
            NvsTransDesc transDesc = themeAsset.m_transDesc;
            long musicLen = themeAsset.m_musicLen;
            ArrayList<NvsMusicPointDesc> musicPoints = themeAsset.m_musicPoints;
            if (selectMusicfile != null) {
                if (!(selectMusicfile.pointsDesc == null || selectMusicfile.pointsDesc.size() <= 0 || selectMusicfile.musicFile == null)) {
                    musicPoints = selectMusicfile.pointsDesc;
                }
                if (selectMusicfile.transDesc != null) {
                    transDesc = selectMusicfile.transDesc;
                }
                if (this.m_selectedMusicType == 1) {
                    bUsedLocalMusc = true;
                }
                musicLen = selectMusicfile.musicLen;
                bUsedSlectedMusc = true;
            }
            this.m_is10sMode = false;
            if (newDuration > 0) {
                this.m_is10sMode = true;
                if (bUsedSlectedMusc) {
                    musicPoints = selectMusicfile.pointsDesc10s;
                } else {
                    musicPoints = themeAsset.m_musicPoints10s;
                }
            }
            if (newDuration <= 0 || musicPoints.size() <= 0) {
                nClipCount = (int) newDuration;
            } else {
                nClipCount = getClipCountInDuation(musicPoints, newDuration);
            }
            ArrayList<NvsImageFileDesc> showList = getRebuildFileList(files, musicPoints, nClipCount);
            if (showList.size() < 1) {
                Log.e(TAG, "not any show file!");
                return;
            }
            if (showList.size() <= 5) {
                this.m_is10sMode = true;
                if (bUsedSlectedMusc) {
                    musicPoints = selectMusicfile.pointsDesc10s;
                } else {
                    musicPoints = themeAsset.m_musicPoints10s;
                }
            }
            cleanUpTimeLine(timeline);
            NvsVideoTrack videoTrack = timeline.appendVideoTrack();
            if (videoTrack == null) {
                Log.e(TAG, "appendVideoTrack failed!");
                return;
            }
            Map<Integer, NvsMusicPointDesc> transListInfo = buildVideoTrack(showList, videoTrack, musicPoints, musicLen, newDuration, this.m_is10sMode);
            int i;
            if (needFx) {
                StringBuilder stringBuilder;
                timeline.applyTheme(this.m_is10sMode ? themeAsset.m_theme10sId.toString() : themeAsset.m_themeId.toString());
                if (this.m_is10sMode) {
                    stringBuilder = themeAsset.m_cafSticker10sId;
                } else {
                    stringBuilder = themeAsset.m_cafStickerId;
                }
                this.m_cafStickerId = stringBuilder;
                if (this.m_cafStickerId != null) {
                    boolean showCaf = true;
                    if (this.m_showCaption && !(this.m_caption1Text.isEmpty() && this.m_caption2Text.isEmpty())) {
                        showCaf = false;
                    }
                    if (showCaf) {
                        this.m_cafSticker = timeline.addAnimatedSticker(0, (long) (3.48d * ((double) this.timeBase)), this.m_cafStickerId.toString());
                    }
                }
                this.m_fxTransClipCount = 0;
                for (i = 0; i < videoTrack.getClipCount() - 1; i++) {
                    videoTrack.setBuiltinTransition(i, null);
                    int transLen;
                    if (transListInfo.containsKey(Integer.valueOf(this.m_fxTransClipCount + i))) {
                        NvsMusicPointDesc pointDesc = (NvsMusicPointDesc) transListInfo.get(Integer.valueOf(this.m_fxTransClipCount + i));
                        if (!pointDesc.transNames.isEmpty()) {
                            setTrans(videoTrack, i, themeAsset.m_transIDList, pointDesc);
                        } else if (!pointDesc.fxNames.isEmpty()) {
                            String fxTransXml = getFxXml(i, videoTrack, themeAsset, pointDesc);
                            String trans = "";
                            transLen = 1000;
                            NvsMusicPointDesc pointDescNext;
                            if (fxTransXml.contains("fxV3")) {
                                if ((this.m_fxTransClipCount + i) + 2 < musicPoints.size()) {
                                    pointDescNext = (NvsMusicPointDesc) musicPoints.get((this.m_fxTransClipCount + i) + 2);
                                    transLen = pointDescNext.transLen;
                                    if (!pointDescNext.transNames.isEmpty()) {
                                        trans = (String) pointDescNext.transNames.get(0);
                                    }
                                }
                                applyFxTransV3(videoTrack, i, fxTransXml, trans, (long) transLen, themeAsset);
                            } else {
                                if ((this.m_fxTransClipCount + i) + 1 < musicPoints.size()) {
                                    pointDescNext = (NvsMusicPointDesc) musicPoints.get((this.m_fxTransClipCount + i) + 1);
                                    transLen = pointDescNext.transLen;
                                    if (!pointDescNext.transNames.isEmpty()) {
                                        trans = (String) pointDescNext.transNames.get(0);
                                    }
                                }
                                applyFxTransV2(videoTrack, i, fxTransXml, trans, (long) transLen, themeAsset);
                            }
                        }
                    } else {
                        transLen = 1000;
                        if (i < musicPoints.size()) {
                            transLen = ((NvsMusicPointDesc) musicPoints.get(i)).transLen;
                        }
                        if (themeAsset.m_hasFxTrans) {
                            setFxTrans(videoTrack, transLen, transDesc, themeAsset, i);
                        } else {
                            setTrans(videoTrack, transLen, transDesc, themeAsset.m_transIDList, i);
                        }
                    }
                }
                if (bUsedSlectedMusc) {
                    String musicPath = "assets:/" + (this.m_is10sMode ? selectMusicfile.musicFile10s : selectMusicfile.musicFile);
                    if (bUsedLocalMusc || selectMusicfile.isDownloadFile) {
                        if (this.m_is10sMode) {
                            musicPath = selectMusicfile.musicFile10s;
                        } else {
                            musicPath = selectMusicfile.musicFile;
                        }
                    }
                    addMusicFile(timeline, musicPath, bUsedLocalMusc);
                }
                addCaption(timeline);
                addEndingFx(timeline, themeAsset, this.m_is10sMode);
                if (this.m_selectedMusicType == 0) {
                    this.m_timeline.setThemeMusicVolumeGain(this.m_musicVolumeGain, this.m_musicVolumeGain);
                } else {
                    NvsAudioTrack audioTrack = this.m_timeline.getAudioTrackByIndex(0);
                    if (audioTrack != null) {
                        audioTrack.setVolumeGain(this.m_musicVolumeGain, this.m_musicVolumeGain);
                    }
                }
                long audioFadeLen = 5 * this.timeBase;
                if (this.m_is10sMode) {
                    audioFadeLen = (long) (1.5d * ((double) this.timeBase));
                }
                timeline.setAudioFadeOutDuration(audioFadeLen);
                return;
            }
            for (i = 0; i < videoTrack.getClipCount() - 1; i++) {
                videoTrack.setBuiltinTransition(i, null);
            }
        }
    }

    private String getFxXml(int transIdx, NvsVideoTrack videoTrack, NvsThemeAsset themeAsset, NvsMusicPointDesc pointDesc) {
        String fxTransXml = "";
        ArrayList<String> fxTransXmlList = new ArrayList();
        if (((String) pointDesc.fxNames.get(0)).equalsIgnoreCase("")) {
            return "";
        }
        String transType = getTransType(transIdx, videoTrack);
        if (transType.equalsIgnoreCase("full")) {
            if (((double) m_timelineRatio) >= 0.5625d) {
                fxTransXmlList = themeAsset.m_fullFx9v16List;
            } else if (m_timelineRatio >= 0.5f) {
                fxTransXmlList = themeAsset.m_fullFx9v18List;
            } else if (((double) m_timelineRatio) >= 0.4804270462633452d) {
                fxTransXmlList = themeAsset.m_fullFx9vx73List;
            } else {
                fxTransXmlList = themeAsset.m_fullFx9v19List;
            }
        } else if (transType.equalsIgnoreCase("half")) {
            if (((double) m_timelineRatio) >= 0.5625d) {
                fxTransXmlList = themeAsset.m_halfFx9v16List;
            } else if (m_timelineRatio >= 0.5f) {
                fxTransXmlList = themeAsset.m_halfFx9v18List;
            } else if (((double) m_timelineRatio) >= 0.4804270462633452d) {
                fxTransXmlList = themeAsset.m_halfFx9vx73List;
            } else {
                fxTransXmlList = themeAsset.m_halfFx9v19List;
            }
        } else if (transType.equalsIgnoreCase("hf")) {
            if (((double) m_timelineRatio) >= 0.5625d) {
                fxTransXmlList = themeAsset.m_hfFx9v16List;
            } else if (m_timelineRatio >= 0.5f) {
                fxTransXmlList = themeAsset.m_hfFx9v18List;
            } else if (((double) m_timelineRatio) >= 0.4804270462633452d) {
                fxTransXmlList = themeAsset.m_hfFx9vx73List;
            } else {
                fxTransXmlList = themeAsset.m_hfFx9v19List;
            }
        } else if (transType.equalsIgnoreCase("fh")) {
            if (((double) m_timelineRatio) >= 0.5625d) {
                fxTransXmlList = themeAsset.m_fhFx9v16List;
            } else if (m_timelineRatio >= 0.5f) {
                fxTransXmlList = themeAsset.m_fhFx9v18List;
            } else if (((double) m_timelineRatio) >= 0.4804270462633452d) {
                fxTransXmlList = themeAsset.m_fhFx9vx73List;
            } else {
                fxTransXmlList = themeAsset.m_fhFx9v19List;
            }
        }
        for (int j = 0; j < fxTransXmlList.size(); j++) {
            if (((String) fxTransXmlList.get(j)).contains((CharSequence) pointDesc.fxNames.get(0))) {
                fxTransXml = (String) fxTransXmlList.get(j);
                break;
            }
        }
        return fxTransXml;
    }

    private ArrayList<NvsImageFileDesc> getRebuildFileList(ArrayList<NvsImageFileDesc> files, ArrayList<NvsMusicPointDesc> musicPoints, int nNewCount) {
        int i;
        if (nNewCount > musicPoints.size()) {
            nNewCount = musicPoints.size() + 1;
        }
        if (nNewCount > getMaxImgCount()) {
            nNewCount = getMaxImgCount();
        }
        ArrayList<NvsImageFileDesc> usedFileList = new ArrayList();
        NvsImageFileDesc desc;
        if (nNewCount == -1) {
            for (i = 0; i < files.size(); i++) {
                desc = (NvsImageFileDesc) files.get(i);
                if (desc.show) {
                    usedFileList.add(desc);
                }
            }
        } else if (nNewCount == NVS_USE_ALL_PHOTO) {
            for (i = 0; i < files.size(); i++) {
                desc = (NvsImageFileDesc) files.get(i);
                desc.show = true;
                usedFileList.add(desc);
            }
        } else {
            for (i = 0; i < files.size(); i++) {
                desc = (NvsImageFileDesc) files.get(i);
                if (i >= nNewCount) {
                    desc.show = false;
                } else {
                    desc.show = true;
                    usedFileList.add(desc);
                }
            }
        }
        if (usedFileList.size() <= 20) {
            return usedFileList;
        }
        ArrayList<NvsImageFileDesc> list = new ArrayList();
        for (i = 0; i < 20; i++) {
            list.add(usedFileList.get(i));
        }
        return list;
    }

    private void addCaption(NvsTimeline timeline) {
        File file;
        timeline.removeAnimatedSticker(this.m_caption1);
        timeline.removeAnimatedSticker(this.m_caption2);
        if (!(this.m_caption1Text.isEmpty() && this.m_caption2Text.isEmpty()) && this.m_showCaption) {
            timeline.removeAnimatedSticker(this.m_cafSticker);
            this.m_cafSticker = null;
        } else if (this.m_cafSticker == null && this.m_cafStickerId != null) {
            this.m_cafSticker = timeline.addAnimatedSticker(0, (long) (3.48d * ((double) this.timeBase)), this.m_cafStickerId.toString());
        }
        if (!(this.m_captionBitmapPath1 == null || this.m_captionBitmapPath1.isEmpty())) {
            file = new File(this.m_captionBitmapPath1);
            if (file.exists()) {
                file.delete();
            }
        }
        if (!(this.m_captionBitmapPath2 == null || this.m_captionBitmapPath2.isEmpty())) {
            file = new File(this.m_captionBitmapPath2);
            if (file.exists()) {
                file.delete();
            }
        }
        if (this.m_stickerId1 == null || this.m_stickerId2 == null) {
            Log.e("meicam", "m_stickerId is null");
        } else if (this.m_showCaption) {
            String sticker1ID = this.m_stickerId1.toString();
            String sticker2ID = this.m_stickerId2.toString();
            if (!this.m_caption1Text.isEmpty()) {
                this.m_captionBitmapPath1 = createCaptionBitmap(manageStringLength(this.m_caption1Text, 71), 71);
                if (this.m_captionBitmapPath1 == null || this.m_captionBitmapPath1.isEmpty()) {
                    Log.e("meicam", "caption1_path is null");
                } else if (new File(this.m_captionBitmapPath1).exists()) {
                    this.m_caption1 = timeline.addCustomAnimatedSticker(0, (long) (3.48d * ((double) this.timeBase)), sticker1ID, this.m_captionBitmapPath1);
                } else {
                    Log.e("meicam", "bitmap_file1 not exist");
                }
            }
            if (!this.m_caption2Text.isEmpty()) {
                this.m_captionBitmapPath2 = createCaptionBitmap(manageString2Length(this.m_caption2Text, 33), 33);
                if (this.m_captionBitmapPath2 == null || this.m_captionBitmapPath2.isEmpty()) {
                    Log.e("meicam", "caption2_path is null");
                } else if (new File(this.m_captionBitmapPath2).exists()) {
                    this.m_caption2 = timeline.addCustomAnimatedSticker(0, (long) (3.48d * ((double) this.timeBase)), sticker2ID, this.m_captionBitmapPath2);
                } else {
                    Log.e("meicam", "bitmap_file2 not exist");
                }
            }
        }
    }

    private String createCaptionBitmap(String caption_text, int fontSize) {
        if (caption_text == null || caption_text.isEmpty()) {
            return null;
        }
        TextPaint textPaint = new TextPaint();
        textPaint.setAntiAlias(true);
        textPaint.setStyle(Style.FILL);
        textPaint.setTypeface(Typeface.DEFAULT);
        textPaint.setTextSize((float) fontSize);
        textPaint.setColor(-1);
        if (VERSION.SDK_INT >= 21) {
            textPaint.setLetterSpacing(0.03f);
        }
        StaticLayout staticLayout = new StaticLayout(caption_text, textPaint, Utils.getScreenWidth(this.m_context), Alignment.ALIGN_CENTER, 1.0f, 0.0f, true);
        Bitmap canvasBitmap = Bitmap.createBitmap(staticLayout.getWidth(), staticLayout.getHeight(), Config.ARGB_8888);
        staticLayout.draw(new Canvas(canvasBitmap));
        return saveBitmapToSD(canvasBitmap);
    }

    private String saveBitmapToSD(Bitmap bt) {
        if (this.m_context == null) {
            Log.e("meicam", "m_context is null,can not make path!");
            return null;
        }
        File captureDir = new File(this.m_context.getCacheDir(), "caption_bitmap");
        if (captureDir.exists() || captureDir.mkdirs()) {
            File tmpFile = new File(captureDir, String.valueOf(System.nanoTime()) + ".png");
            if (tmpFile.exists()) {
                tmpFile.delete();
            }
            String target_path = tmpFile.getAbsolutePath();
            if (bt == null || target_path.isEmpty()) {
                Log.e("meicam", "bt == null " + (bt == null) + " target_path.isEmpty(): " + target_path.isEmpty());
                return null;
            }
            try {
                FileOutputStream out = new FileOutputStream(new File(target_path));
                bt.compress(CompressFormat.PNG, 100, out);
                out.flush();
                out.close();
                return target_path;
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        } else {
            Log.e("meicam", "Failed to make caption bitmap directory");
            return null;
        }
        return null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x0092  */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x006f  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private String manageStringLength(String source_text, int fontSize) {
        if (source_text == null || source_text.isEmpty()) {
            return null;
        }
        source_text = source_text.trim();
        Paint textPaint = new Paint();
        textPaint.setTextSize((float) fontSize);
        float max_length = textPaint.measureText(FONT_MAX_LENGTH);
        String emoji = "😀";
        float emojiMinLength = textPaint.measureText(emoji) - textPaint.measureText(emoji.substring(0, 1));
        int sub_index = 0;
        for (int i = 0; i < source_text.length(); i++) {
            sub_index = i + 1;
            float cur_length = textPaint.measureText(source_text.substring(0, sub_index));
            if (cur_length >= max_length) {
                if (i < source_text.length() - 1) {
                    if (textPaint.measureText(source_text.substring(0, i + 2)) - cur_length <= emojiMinLength) {
                        sub_index = i + 2;
                    }
                } else {
                    sub_index = source_text.length();
                }
                if (sub_index == source_text.length()) {
                    return source_text.substring(0, sub_index) + "...";
                }
                return source_text.substring(0, sub_index);
            }
        }
        if (sub_index == source_text.length()) {
        }
    }

    private String manageString2Length(String source_text, int fontSize) {
        if (source_text == null || source_text.isEmpty()) {
            return null;
        }
        source_text = source_text.trim();
        Paint textPaint = new Paint();
        textPaint.setTextSize((float) fontSize);
        float max_length = ((float) Utils.getScreenWidth(this.m_context)) - 100.0f;
        String emoji = "😀";
        float emojiMinLength = textPaint.measureText(emoji) - textPaint.measureText(emoji.substring(0, 1));
        int sub_index = 0;
        int i = 0;
        while (i < source_text.length()) {
            sub_index = i + 1;
            float cur_length = textPaint.measureText(source_text.substring(0, sub_index));
            if (cur_length >= max_length) {
                sub_index = i;
                if (i <= source_text.length() - 1 && cur_length - textPaint.measureText(source_text.substring(0, i)) <= emojiMinLength) {
                    sub_index = i - 1;
                }
                return source_text.substring(0, sub_index);
            }
            i++;
        }
        return source_text.substring(0, sub_index);
    }

    private Map<Integer, NvsMusicPointDesc> buildVideoTrack(ArrayList<NvsImageFileDesc> showList, NvsVideoTrack videoTrack, ArrayList<NvsMusicPointDesc> musicPoints, long musicLen, long newDuration, boolean is10sMode) {
        int pointIndex = 0;
        Map<Integer, NvsMusicPointDesc> transListInfo = new HashMap();
        int i = 0;
        while (i < showList.size()) {
            int clipDuration = (int) this.clipMaxLen;
            if (musicPoints.size() > 0) {
                if (i <= 0) {
                    clipDuration = ((NvsMusicPointDesc) musicPoints.get(0)).cutPoint * 1000;
                } else if (pointIndex >= musicPoints.size()) {
                    break;
                } else {
                    NvsMusicPointDesc current = (NvsMusicPointDesc) musicPoints.get(pointIndex);
                    if (pointIndex + 1 < musicPoints.size()) {
                        clipDuration = (((NvsMusicPointDesc) musicPoints.get(pointIndex + 1)).cutPoint - current.cutPoint) * 1000;
                    } else {
                        long totalLen = musicLen;
                        if (is10sMode) {
                            totalLen = 10 * this.timeBase;
                        }
                        clipDuration = (int) (totalLen - ((long) (current.cutPoint * 1000)));
                    }
                    if (clipDuration <= 0) {
                        pointIndex++;
                        i++;
                    } else {
                        if (!(current.transNames.isEmpty() && current.fxNames.isEmpty())) {
                            int transIdx = 0;
                            if (videoTrack.getClipCount() > 0) {
                                transIdx = videoTrack.getClipCount() - 1;
                            }
                            transListInfo.put(Integer.valueOf(transIdx), current);
                        }
                        pointIndex++;
                    }
                }
            }
            NvsImageFileDesc fileDesc = (NvsImageFileDesc) showList.get(i);
            NvsVideoClip clip = videoTrack.appendClip(fileDesc.filePath, 0, (long) clipDuration);
            if (clip != null) {
                clip.setAttachment("indexOfShowList", String.valueOf(i));
                setImageMotion(clip, fileDesc);
            } else {
                showList.remove(i);
                i--;
            }
            i++;
        }
        return transListInfo;
    }

    private void addEndingFx(NvsTimeline timeline, NvsThemeAsset themeAsset, boolean is10sMode) {
        if (is10sMode) {
            timeline.setTimelineEndingFilter(themeAsset.m_endingFxId10s, themeAsset.m_endingFxImgPath, themeAsset.m_endingFx10sLen);
        } else {
            timeline.setTimelineEndingFilter(themeAsset.m_endingFxId, themeAsset.m_endingFxImgPath, (long) (1.5d * ((double) this.timeBase)));
        }
    }

    private void setTrans(NvsVideoTrack videTrack, int transIdx, ArrayList<StringBuilder> transIDList, NvsMusicPointDesc info) {
        String transName = null;
        if (!(info.transNames == null || info.transNames.isEmpty())) {
            transName = (String) info.transNames.get(0);
        }
        if (transName == null || transName.equalsIgnoreCase("")) {
            videTrack.setBuiltinTransition(transIdx, null);
            return;
        }
        NvsVideoTransition transition = null;
        for (int n = 0; n < transIDList.size(); n++) {
            String transNa = ((StringBuilder) transIDList.get(n)).toString();
            if (transNa.contains(transName)) {
                transition = videTrack.setPackagedTransition(transIdx, transNa);
                break;
            }
        }
        if (transition == null) {
            transition = videTrack.setBuiltinTransition(transIdx, transName);
        }
        if (transition != null) {
            transition.setVideoTransitionDurationScaleFactor(((float) info.transLen) / 1000.0f);
        }
    }

    private void setTrans(NvsVideoTrack videTrack, int transLen, NvsTransDesc transDesc, ArrayList<StringBuilder> transIDList, int transIdx) {
        String transName;
        String transType = getTransType(transIdx, videTrack);
        NvsVideoTransition transition = null;
        if (transType.equalsIgnoreCase("full")) {
            transName = getTrans(transDesc.m_fulltransList, transIDList);
        } else if (transType.equalsIgnoreCase("half")) {
            transName = getTrans(transDesc.m_halftransList, transIDList);
        } else {
            transName = getTrans(transDesc.m_hftransList, transIDList);
        }
        if (transName.equalsIgnoreCase("")) {
            videTrack.setBuiltinTransition(transIdx, null);
        } else if (transName.length() >= 30) {
            transition = videTrack.setPackagedTransition(transIdx, transName);
        } else {
            transition = videTrack.setBuiltinTransition(transIdx, transName);
        }
        if (transition != null) {
            transition.setVideoTransitionDurationScaleFactor(((float) transLen) / 1000.0f);
        }
    }

    private void setFxTrans(NvsVideoTrack videTrack, int transLen, NvsTransDesc transDesc, NvsThemeAsset themeAsset, int transIdx) {
        String transType = getTransType(transIdx, videTrack);
        NvsVideoTransition transition = null;
        ArrayList<String> transNameList = new ArrayList();
        ArrayList<String> fxTransXmlList = new ArrayList();
        if (transType.equalsIgnoreCase("full")) {
            if (((double) m_timelineRatio) >= 0.5625d) {
                fxTransXmlList = themeAsset.m_fullFx9v16List;
            } else if (m_timelineRatio >= 0.5f) {
                fxTransXmlList = themeAsset.m_fullFx9v18List;
            } else if (((double) m_timelineRatio) >= 0.4804270462633452d) {
                fxTransXmlList = themeAsset.m_fullFx9vx73List;
            } else {
                fxTransXmlList = themeAsset.m_fullFx9v19List;
            }
            transNameList = getTrans(transDesc.m_fulltransList, transDesc.m_fulltransFxList, themeAsset.m_transIDList, fxTransXmlList);
        } else if (transType.equalsIgnoreCase("half")) {
            if (((double) m_timelineRatio) >= 0.5625d) {
                fxTransXmlList = themeAsset.m_halfFx9v16List;
            } else if (m_timelineRatio >= 0.5f) {
                fxTransXmlList = themeAsset.m_halfFx9v18List;
            } else if (((double) m_timelineRatio) >= 0.4804270462633452d) {
                fxTransXmlList = themeAsset.m_halfFx9vx73List;
            } else {
                fxTransXmlList = themeAsset.m_halfFx9v19List;
            }
            transNameList = getTrans(transDesc.m_halftransList, transDesc.m_halftransFxList, themeAsset.m_transIDList, fxTransXmlList);
        } else if (transType.equalsIgnoreCase("fh")) {
            if (((double) m_timelineRatio) >= 0.5625d) {
                fxTransXmlList = themeAsset.m_fhFx9v16List;
            } else if (m_timelineRatio >= 0.5f) {
                fxTransXmlList = themeAsset.m_fhFx9v18List;
            } else if (((double) m_timelineRatio) >= 0.4804270462633452d) {
                fxTransXmlList = themeAsset.m_fhFx9vx73List;
            } else {
                fxTransXmlList = themeAsset.m_fhFx9v19List;
            }
            transNameList = getTrans(transDesc.m_hftransList, transDesc.m_fhtransFxList, themeAsset.m_transIDList, fxTransXmlList);
        } else if (transType.equalsIgnoreCase("hf")) {
            if (((double) m_timelineRatio) >= 0.5625d) {
                fxTransXmlList = themeAsset.m_hfFx9v16List;
            } else if (m_timelineRatio >= 0.5f) {
                fxTransXmlList = themeAsset.m_hfFx9v18List;
            } else if (((double) m_timelineRatio) >= 0.4804270462633452d) {
                fxTransXmlList = themeAsset.m_hfFx9vx73List;
            } else {
                fxTransXmlList = themeAsset.m_hfFx9v19List;
            }
            transNameList = getTrans(transDesc.m_hftransList, transDesc.m_hftransFxList, themeAsset.m_transIDList, fxTransXmlList);
        }
        if (transNameList.size() > 1) {
            String fxTrans = (String) transNameList.get(0);
            String trans = (String) transNameList.get(1);
            if (fxTrans.contains("fxV3")) {
                applyFxTransV3(videTrack, transIdx, fxTrans, trans, (long) transLen, themeAsset);
                return;
            }
            applyFxTransV2(videTrack, transIdx, fxTrans, trans, (long) transLen, themeAsset);
            return;
        }
        String transName = (String) transNameList.get(0);
        if (transName.equalsIgnoreCase("")) {
            videTrack.setBuiltinTransition(transIdx, null);
        } else if (transName.length() >= 30) {
            transition = videTrack.setPackagedTransition(transIdx, transName);
        } else {
            transition = videTrack.setBuiltinTransition(transIdx, transName);
        }
        if (transition != null) {
            transition.setVideoTransitionDurationScaleFactor(((float) transLen) / 1000.0f);
        }
    }

    private void applyFxTransV2(NvsVideoTrack videTrack, int transIdx, String fxTransXml, String trans, long transLen, NvsThemeAsset themeAsset) {
        long blurFxInpoint = applyFxTrans(videTrack, transIdx, fxTransXml, trans, transLen, themeAsset.isDownload, themeAsset.m_transOffset * 1000);
        if (themeAsset.m_blurFxId != null) {
            boolean useBlur = false;
            for (int i = 0; i < themeAsset.m_blurWidthFxTransList.size(); i++) {
                if (fxTransXml.contains((CharSequence) themeAsset.m_blurWidthFxTransList.get(i))) {
                    useBlur = true;
                    break;
                }
            }
            if (useBlur) {
                this.m_timeline.addPackagedTimelineVideoFx(blurFxInpoint - (this.timeBase / 2), this.timeBase, themeAsset.m_blurFxId.toString()).setBooleanVal("No Background", true);
            }
        }
    }

    private void applyFxTransV3(NvsVideoTrack videoTrack, int transIdx, String fxTransXml, String trans, long transLen, NvsThemeAsset themeAsset) {
        if (!fxTransXml.equalsIgnoreCase("") && transIdx + 2 < videoTrack.getClipCount()) {
            NvsVideoTransition transition;
            NvsVideoClip clip0 = videoTrack.getClipByIndex(transIdx);
            NvsVideoClip clip1 = videoTrack.getClipByIndex(transIdx + 1);
            NvsVideoClip clip2 = videoTrack.getClipByIndex(transIdx + 2);
            String file0 = clip0.getFilePath();
            String file1 = clip1.getFilePath();
            String file2 = clip2.getFilePath();
            long len0 = clip0.getOutPoint() - clip0.getInPoint();
            long len1 = clip1.getOutPoint() - clip1.getInPoint();
            long len2 = clip2.getOutPoint() - clip2.getInPoint();
            String mark = clip0.getAttachment("fullscreenMode").toString();
            int idxOfShowList0 = Integer.valueOf(clip0.getAttachment("indexOfShowList").toString()).intValue();
            int idxOfShowList1 = Integer.valueOf(clip1.getAttachment("indexOfShowList").toString()).intValue();
            int idxOfShowList2 = Integer.valueOf(clip2.getAttachment("indexOfShowList").toString()).intValue();
            String preTransName = null;
            if (transIdx - 1 >= 0) {
                transition = videoTrack.getTransitionBySourceClipIndex(transIdx - 1);
                if (transition != null) {
                    preTransName = transition.getVideoTransitionType() == 0 ? transition.getBuiltinVideoTransitionName() : transition.getVideoTransitionPackageId();
                }
            }
            long offset = 0;
            long transOffset = (long) (themeAsset.m_transOffset * 1000);
            if (preTransName != null) {
                offset = transOffset;
            }
            videoTrack.removeClip(transIdx, false);
            videoTrack.removeClip(transIdx, false);
            videoTrack.removeClip(transIdx, false);
            clip0 = videoTrack.insertClip(file0, 0, (len0 + len1) + len2, transIdx);
            clip0.setAttachment("fullscreenMode", mark);
            clip0.setAttachment("hasFxTrans", "true");
            clip0.setAttachment("fxFilePath", file1);
            clip0.setAttachment("fxFileV3Path", file2);
            clip0.setAttachment("fxInpoint", String.valueOf(len0 / 1000));
            clip0.setAttachment("fxV3Inpoint", String.valueOf(len1 / 1000));
            int clipIdx = clip0.getIndex();
            videoTrack.setBuiltinTransition(clipIdx, null);
            if (clipIdx - 1 >= 0) {
                if (preTransName == null) {
                    videoTrack.setBuiltinTransition(clipIdx - 1, null);
                } else if (preTransName.length() > 30) {
                    videoTrack.setPackagedTransition(clipIdx - 1, preTransName);
                } else {
                    videoTrack.setBuiltinTransition(clipIdx - 1, preTransName);
                }
            }
            setImageMotion(clip0, (NvsImageFileDesc) this.m_inputIamgeInfo.get(idxOfShowList0));
            NvsVideoFx fx = clip0.appendBuiltinFx("Storyboard");
            long fxStartTime = (len0 - (transOffset - offset)) / 1000;
            String desc = changeFxDescV3(fxTransXml, file1, file2, fxStartTime, fxStartTime + (len1 / 1000), (((clip0.getOutPoint() - clip0.getInPoint()) + transOffset) / 1000) - fxStartTime, themeAsset.isDownload);
            if (desc != null) {
                if (fxTransXml.contains("hori")) {
                    desc = Utils.changeHoriROIV3(((NvsImageFileDesc) this.m_inputIamgeInfo.get(idxOfShowList2)).imgRatio, ((NvsImageFileDesc) this.m_inputIamgeInfo.get(idxOfShowList2)).faceRect, Utils.changeHoriROIV3(((NvsImageFileDesc) this.m_inputIamgeInfo.get(idxOfShowList1)).imgRatio, ((NvsImageFileDesc) this.m_inputIamgeInfo.get(idxOfShowList1)).faceRect, desc, true), false);
                } else {
                    if (fxTransXml.contains("vert")) {
                        desc = Utils.changeVertROIV3(((NvsImageFileDesc) this.m_inputIamgeInfo.get(idxOfShowList2)).imgRatio, ((NvsImageFileDesc) this.m_inputIamgeInfo.get(idxOfShowList2)).faceRect, Utils.changeVertROIV3(((NvsImageFileDesc) this.m_inputIamgeInfo.get(idxOfShowList1)).imgRatio, ((NvsImageFileDesc) this.m_inputIamgeInfo.get(idxOfShowList1)).faceRect, desc, true), false);
                    } else {
                        desc = Utils.changeROIV3(((NvsImageFileDesc) this.m_inputIamgeInfo.get(idxOfShowList2)).imgRatio, ((NvsImageFileDesc) this.m_inputIamgeInfo.get(idxOfShowList2)).faceRect, Utils.changeROIV3(((NvsImageFileDesc) this.m_inputIamgeInfo.get(idxOfShowList1)).imgRatio, ((NvsImageFileDesc) this.m_inputIamgeInfo.get(idxOfShowList1)).faceRect, desc, true), false);
                    }
                }
                fx.setStringVal("Description String", desc);
                String xmlPath = fxTransXml;
                if (!themeAsset.isDownload) {
                    xmlPath = "assets:/" + xmlPath;
                }
                fx.setStringVal("Resource Dir", xmlPath.substring(0, xmlPath.lastIndexOf("/")));
                fx.setBooleanVal("Compact Preload Resource", true);
                if (videoTrack.getClipByIndex(transIdx + 1) != null) {
                    if (trans.equalsIgnoreCase("")) {
                        videoTrack.setBuiltinTransition(transIdx, null);
                    } else {
                        if (trans.length() > 30) {
                            transition = videoTrack.setPackagedTransition(transIdx, trans);
                        } else {
                            transition = videoTrack.setBuiltinTransition(transIdx, trans);
                        }
                        if (transition != null) {
                            transition.setVideoTransitionDurationScaleFactor(((float) transLen) / 1000.0f);
                        }
                    }
                }
                this.m_fxTransClipCount += 2;
            }
        }
    }

    private long applyFxTrans(NvsVideoTrack videoTrack, int transIdx, String fxTransXml, String trans, long transLen, boolean isDownloadTheme, int transOffset) {
        if (fxTransXml.equalsIgnoreCase("")) {
            return 0;
        }
        NvsVideoTransition transition;
        NvsVideoClip clip0 = videoTrack.getClipByIndex(transIdx);
        NvsVideoClip clip1 = videoTrack.getClipByIndex(transIdx + 1);
        String file0 = clip0.getFilePath();
        String file1 = clip1.getFilePath();
        long len0 = clip0.getOutPoint() - clip0.getInPoint();
        long len1 = clip1.getOutPoint() - clip1.getInPoint();
        String mark = clip0.getAttachment("fullscreenMode").toString();
        int idxOfShowList0 = Integer.valueOf(clip0.getAttachment("indexOfShowList").toString()).intValue();
        int idxOfShowList1 = Integer.valueOf(clip1.getAttachment("indexOfShowList").toString()).intValue();
        String preTransName = null;
        if (transIdx - 1 >= 0) {
            transition = videoTrack.getTransitionBySourceClipIndex(transIdx - 1);
            if (transition != null) {
                preTransName = transition.getVideoTransitionType() == 0 ? transition.getBuiltinVideoTransitionName() : transition.getVideoTransitionPackageId();
            }
        }
        long offset = 0;
        if (preTransName != null) {
            offset = (long) transOffset;
        }
        videoTrack.removeClip(transIdx, false);
        videoTrack.removeClip(transIdx, false);
        clip0 = videoTrack.insertClip(file0, 0, len0 + len1, transIdx);
        clip0.setAttachment("fullscreenMode", mark);
        clip0.setAttachment("hasFxTrans", "true");
        clip0.setAttachment("fxFilePath", file1);
        clip0.setAttachment("fxInpoint", String.valueOf(len0 / 1000));
        int clipIdx = clip0.getIndex();
        videoTrack.setBuiltinTransition(clipIdx, null);
        if (clipIdx - 1 >= 0) {
            if (preTransName == null) {
                videoTrack.setBuiltinTransition(clipIdx - 1, null);
            } else if (preTransName.length() > 30) {
                videoTrack.setPackagedTransition(clipIdx - 1, preTransName);
            } else {
                videoTrack.setBuiltinTransition(clipIdx - 1, preTransName);
            }
        }
        NvsVideoFx fx = clip0.appendBuiltinFx("Storyboard");
        long fxStartTime = (len0 - (((long) transOffset) - offset)) / 1000;
        String desc = changeFxDesc(fxTransXml, file1, fxStartTime, ((((clip0.getOutPoint() - clip0.getInPoint()) + this.timeBase) - ((long) transOffset)) / 1000) - fxStartTime, isDownloadTheme);
        if (desc == null) {
            return 0;
        }
        if (fxTransXml.contains("hori")) {
            desc = Utils.changeHoriROI(((NvsImageFileDesc) this.m_inputIamgeInfo.get(idxOfShowList0)).imgRatio, ((NvsImageFileDesc) this.m_inputIamgeInfo.get(idxOfShowList0)).faceRect, Utils.changeHoriROI(((NvsImageFileDesc) this.m_inputIamgeInfo.get(idxOfShowList1)).imgRatio, ((NvsImageFileDesc) this.m_inputIamgeInfo.get(idxOfShowList1)).faceRect, desc, null), clip0);
        } else {
            if (fxTransXml.contains("vert")) {
                desc = Utils.changeVertROI(((NvsImageFileDesc) this.m_inputIamgeInfo.get(idxOfShowList0)).imgRatio, ((NvsImageFileDesc) this.m_inputIamgeInfo.get(idxOfShowList0)).faceRect, Utils.changeVertROI(((NvsImageFileDesc) this.m_inputIamgeInfo.get(idxOfShowList1)).imgRatio, ((NvsImageFileDesc) this.m_inputIamgeInfo.get(idxOfShowList1)).faceRect, desc, null), clip0);
            } else {
                setImageMotion(clip0, (NvsImageFileDesc) this.m_inputIamgeInfo.get(idxOfShowList0));
                desc = Utils.changeROI(((NvsImageFileDesc) this.m_inputIamgeInfo.get(idxOfShowList1)).imgRatio, ((NvsImageFileDesc) this.m_inputIamgeInfo.get(idxOfShowList1)).faceRect, desc);
            }
        }
        fx.setStringVal("Description String", desc);
        String xmlPath = fxTransXml;
        if (!isDownloadTheme) {
            xmlPath = "assets:/" + xmlPath;
        }
        fx.setStringVal("Resource Dir", xmlPath.substring(0, xmlPath.lastIndexOf("/")));
        if (videoTrack.getClipByIndex(transIdx + 1) != null) {
            if (trans.equalsIgnoreCase("")) {
                videoTrack.setBuiltinTransition(transIdx, null);
            } else {
                if (trans.length() > 30) {
                    transition = videoTrack.setPackagedTransition(transIdx, trans);
                } else {
                    transition = videoTrack.setBuiltinTransition(transIdx, trans);
                }
                if (transition != null) {
                    transition.setVideoTransitionDurationScaleFactor(((float) transLen) / 1000.0f);
                }
            }
        }
        this.m_fxTransClipCount++;
        return clip0.getInPoint() + len0;
    }

    private String changeFxDesc(String fxTrans, String filePath, long startTime, long fxLen, boolean isDownload) {
        String fxDesc = Utils.readFile(fxTrans, isDownload ? null : this.m_context.getAssets());
        if (fxDesc == null) {
            return null;
        }
        return fxDesc.replace("placeholder.jpg", filePath).replace("xiaomiStartTime", String.valueOf(startTime)).replace("xiaomiDurationTime", String.valueOf(fxLen));
    }

    private String changeFxDescV3(String fxTrans, String filePath, String fileV3Path, long startTime, long startTime2, long fxLen, boolean isDownload) {
        String fxDesc = Utils.readFile(fxTrans, isDownload ? null : this.m_context.getAssets());
        if (fxDesc == null) {
            return null;
        }
        return fxDesc.replace("placeholder.jpg", filePath).replace("picture.jpg", fileV3Path).replace("xiaomiStartTime", String.valueOf(startTime)).replace("pictureShowUp", String.valueOf(startTime2)).replace("xiaomiDurationTime", String.valueOf(fxLen)).replace("pictureLoop", String.valueOf(fxLen)).replace("lastMove", String.valueOf(1000 + startTime2));
    }

    private String getTransType(int transIdx, NvsVideoTrack videTrack) {
        NvsVideoClip clip0 = videTrack.getClipByIndex(transIdx);
        NvsVideoClip clip1 = videTrack.getClipByIndex(transIdx + 1);
        String mode0 = clip0.getAttachment("fullscreenMode").toString();
        String mode1 = clip1.getAttachment("fullscreenMode").toString();
        if (mode0.equalsIgnoreCase("true")) {
            if (mode1.equalsIgnoreCase("true")) {
                return "full";
            }
            return "fh";
        } else if (mode1.equalsIgnoreCase("true")) {
            return "hf";
        } else {
            return "half";
        }
    }

    private String getTrans(ArrayList<String> transNameList, ArrayList<StringBuilder> transIDList) {
        if (transNameList.isEmpty()) {
            return "";
        }
        int size = transNameList.size();
        if (hasNullTrans(transNameList)) {
            size *= 2;
        }
        int useIdx = rand.nextInt(size);
        if (useIdx >= transNameList.size() || useIdx < 0) {
            return "";
        }
        String transName = (String) transNameList.get(useIdx);
        if (transIDList == null || transIDList.isEmpty()) {
            return transName;
        }
        for (int i = 0; i < transIDList.size(); i++) {
            if (((StringBuilder) transIDList.get(i)).toString().equalsIgnoreCase(transName)) {
                return ((StringBuilder) transIDList.get(i)).toString();
            }
        }
        return transName;
    }

    private ArrayList<String> getTrans(ArrayList<String> transNameList, ArrayList<String> transFxNameList, ArrayList<StringBuilder> transIDList, ArrayList<String> fxTransXmlList) {
        ArrayList<String> idList = new ArrayList();
        if (transNameList.isEmpty() && transFxNameList.isEmpty()) {
            idList.add("");
        } else {
            int size = transNameList.size() + transFxNameList.size();
            if (hasNullTrans(transNameList)) {
                size *= 2;
            }
            int useIdx = rand.nextInt(size);
            int i;
            if (useIdx < 0) {
                idList.add("");
            } else if (useIdx < transNameList.size()) {
                String transName = (String) transNameList.get(useIdx);
                if (!(transIDList == null || transIDList.isEmpty())) {
                    for (i = 0; i < transIDList.size(); i++) {
                        if (((StringBuilder) transIDList.get(i)).toString().equalsIgnoreCase(transName)) {
                            idList.add(((StringBuilder) transIDList.get(i)).toString());
                            break;
                        }
                    }
                }
                idList.add(transName);
            } else {
                useIdx -= transNameList.size();
                if (useIdx >= transFxNameList.size() || useIdx < 0) {
                    idList.add("");
                } else {
                    String transFxName = (String) transFxNameList.get(useIdx);
                    if (transFxName.equalsIgnoreCase("")) {
                        idList.add("");
                    } else {
                        if (!(fxTransXmlList == null || fxTransXmlList.isEmpty())) {
                            for (i = 0; i < fxTransXmlList.size(); i++) {
                                if (((String) fxTransXmlList.get(i)).toString().contains(transFxName)) {
                                    idList.add(((String) fxTransXmlList.get(i)).toString());
                                    idList.add(getTransFollowFx(transNameList, transIDList));
                                    break;
                                }
                            }
                        }
                        idList.add("");
                    }
                }
            }
        }
        return idList;
    }

    private String getTransFollowFx(ArrayList<String> transNameList, ArrayList<StringBuilder> transIDList) {
        int i;
        ArrayList<String> transList = new ArrayList();
        for (i = 0; i < transNameList.size(); i++) {
            if (((String) transNameList.get(i)).length() >= 30) {
                transList.add(transNameList.get(i));
            }
        }
        if (transList.isEmpty()) {
            return "";
        }
        int useIdx = rand.nextInt(transList.size());
        if (useIdx < 0 || useIdx >= transList.size()) {
            return "";
        }
        String transName = (String) transList.get(useIdx);
        for (i = 0; i < transIDList.size(); i++) {
            if (((StringBuilder) transIDList.get(i)).toString().equalsIgnoreCase(transName)) {
                return ((StringBuilder) transIDList.get(i)).toString();
            }
        }
        return "";
    }

    private boolean hasNullTrans(ArrayList<String> transList) {
        for (int i = 0; i < transList.size(); i++) {
            if (((String) transList.get(i)).equals("")) {
                return true;
            }
        }
        return false;
    }

    private void addMusicFile(NvsTimeline timeline, String musicPath, boolean blocalFile) {
        if (musicPath != null && musicPath != "") {
            Log.d("theme helper", musicPath);
            NvsAVFileInfo fileInfo = this.m_streamingContext.getAVFileInfo(musicPath);
            if (fileInfo != null && fileInfo.getAudioStreamCount() >= 1) {
                long currentLength = timeline.getDuration();
                long fileDuration = (fileInfo.getAudioStreamDuration(0) / this.timeBase) * this.timeBase;
                long startTime = 0;
                long clipDuration = fileDuration;
                if (blocalFile && this.m_selectedLocalMusicStart >= 0 && this.m_selectedLocalMusicEnd > 0) {
                    startTime = (this.m_selectedLocalMusicStart / this.timeBase) * this.timeBase;
                    long endTime = (this.m_selectedLocalMusicEnd / this.timeBase) * this.timeBase;
                    if (endTime - startTime > this.timeBase * 2) {
                        if (endTime > fileDuration) {
                            clipDuration = fileDuration - startTime;
                        } else {
                            clipDuration = endTime - startTime;
                        }
                    }
                    if (clipDuration < this.timeBase * 2) {
                        startTime = 0;
                        clipDuration = fileDuration;
                    }
                }
                timeline.setThemeMusicVolumeGain(0.0f, 0.0f);
                NvsAudioTrack aTrack = timeline.appendAudioTrack();
                int clipCount = (int) (((currentLength + clipDuration) - this.timeBase) / clipDuration);
                for (int i = 0; i < clipCount; i++) {
                    aTrack.appendClip(musicPath, startTime, startTime + clipDuration);
                }
            }
        }
    }

    private void sortFileList(ArrayList<NvsImageFileDesc> files) {
        if (files != null && files.size() >= 1) {
            NvsImageFileDesc coverFile = null;
            int coverIdx = 0;
            for (int i = 0; i < files.size(); i++) {
                if (((NvsImageFileDesc) files.get(i)).isCover) {
                    coverFile = (NvsImageFileDesc) files.get(i);
                    coverIdx = i;
                    break;
                }
            }
            if (coverFile != null) {
                files.remove(coverIdx);
            }
            NvsParseHelper.sortFileByName(files);
            NvsParseHelper.sortFileByModifyTime(files);
            if (coverFile != null) {
                files.add(0, coverFile);
            }
        }
    }

    private String getLicFilePath(String assetPath) {
        String[] str = assetPath.split("\\.");
        if (str.length == 0) {
            return null;
        }
        return new StringBuilder(str[0]).append(".lic").toString();
    }

    private StringBuilder installAssetToContext(String assetPath, boolean update) {
        if (this.m_streamingContext == null || assetPath == null) {
            return null;
        }
        String licFile = getLicFilePath(assetPath);
        int packageType = 4;
        if (assetPath.contains(".captionstyle")) {
            packageType = 2;
        } else if (assetPath.contains(".videofx")) {
            packageType = 0;
        } else if (assetPath.contains(".videotransition")) {
            packageType = 1;
        } else if (assetPath.contains(".animatedsticker")) {
            packageType = 3;
        }
        StringBuilder themeId = new StringBuilder();
        if (!update) {
            int error = this.m_streamingContext.getAssetPackageManager().installAssetPackage(assetPath, licFile, packageType, true, themeId);
            if (error != 0 && error != 2) {
                Log.d(TAG, "Failed to install package!");
                return null;
            } else if (error != 2 || !checkUpdateAsset(themeId.toString(), assetPath, packageType) || this.m_streamingContext.getAssetPackageManager().upgradeAssetPackage(assetPath, licFile, packageType, true, themeId) == 0) {
                return themeId;
            } else {
                Log.d(TAG, "Failed to upgrade package!");
                return null;
            }
        } else if (this.m_streamingContext.getAssetPackageManager().upgradeAssetPackage(assetPath, licFile, packageType, true, themeId) == 0) {
            return themeId;
        } else {
            Log.d(TAG, "Failed to upgrade package!");
            return null;
        }
    }

    private boolean installThemeAsset(Context context, String themeID, NvsThemeAsset curThemeasset) {
        if (this.m_streamingContext == null) {
            this.m_streamingContext = NvsStreamingContext.getInstance();
        }
        if (this.m_streamingContext == null) {
            return false;
        }
        String assetFileInfo = Utils.readFile(themeID + "/info.json", context == null ? null : context.getAssets());
        if (assetFileInfo == null) {
            Log.d(TAG, "read theme info json file error!");
            return false;
        }
        NvsThemeAsset nvsThemeAsset = new NvsThemeAsset();
        nvsThemeAsset.isDownload = context == null;
        try {
            JSONObject fxDescobj = new JSONObject(assetFileInfo);
            if (fxDescobj.has("hasFxTrans")) {
                nvsThemeAsset.m_hasFxTrans = fxDescobj.getBoolean("hasFxTrans");
            }
            if (fxDescobj.has("transOffset")) {
                nvsThemeAsset.m_transOffset = fxDescobj.getInt("transOffset");
            } else {
                nvsThemeAsset.m_transOffset = 500;
            }
            String assetPath = getAssetPath(fxDescobj, "theme", themeID, context == null);
            nvsThemeAsset.m_themeId = installAssetToContext(assetPath, checkUpdateAsset(curThemeasset == null ? null : curThemeasset.m_themeId.toString(), assetPath, 4));
            if (nvsThemeAsset.m_themeId == null) {
                Log.d(TAG, "Failed to install theme package!");
                return false;
            }
            assetPath = getAssetPath(fxDescobj, "theme10s", themeID, context == null);
            nvsThemeAsset.m_theme10sId = installAssetToContext(assetPath, checkUpdateAsset(curThemeasset == null ? null : curThemeasset.m_theme10sId.toString(), assetPath, 4));
            if (nvsThemeAsset.m_theme10sId == null) {
                Log.d(TAG, "Failed to install theme 10s package!");
                return false;
            }
            if (fxDescobj.has("cafSticker")) {
                assetPath = getAssetPath(fxDescobj, "cafSticker", themeID, context == null);
                nvsThemeAsset.m_cafStickerId = installAssetToContext(assetPath, checkUpdateAsset(curThemeasset == null ? null : curThemeasset.m_cafStickerId.toString(), assetPath, 3));
            }
            if (fxDescobj.has("cafSticker10s")) {
                assetPath = getAssetPath(fxDescobj, "cafSticker10s", themeID, context == null);
                nvsThemeAsset.m_cafSticker10sId = installAssetToContext(assetPath, checkUpdateAsset(curThemeasset == null ? null : curThemeasset.m_cafSticker10sId.toString(), assetPath, 3));
            }
            assetPath = getAssetPath(fxDescobj, "sticker1", themeID, context == null);
            nvsThemeAsset.m_stickerId1 = installAssetToContext(assetPath, checkUpdateAsset(curThemeasset == null ? null : curThemeasset.m_stickerId1.toString(), assetPath, 3));
            if (nvsThemeAsset.m_stickerId1 == null) {
                Log.d(TAG, "Failed to install sticker package!");
                return false;
            }
            this.m_stickerId1 = nvsThemeAsset.m_stickerId1.toString();
            assetPath = getAssetPath(fxDescobj, "sticker2", themeID, context == null);
            nvsThemeAsset.m_stickerId2 = installAssetToContext(assetPath, checkUpdateAsset(curThemeasset == null ? null : curThemeasset.m_stickerId2.toString(), assetPath, 3));
            if (nvsThemeAsset.m_stickerId2 == null) {
                Log.d(TAG, "Failed to install sticker2 package!");
                return false;
            }
            JSONArray array;
            int i;
            String transName;
            this.m_stickerId2 = nvsThemeAsset.m_stickerId2.toString();
            if (fxDescobj.has("blurFx")) {
                String str;
                assetPath = getAssetPath(fxDescobj, "blurFx", themeID, context == null);
                if (curThemeasset == null) {
                    str = null;
                } else {
                    str = curThemeasset.m_blurFxId.toString();
                }
                nvsThemeAsset.m_blurFxId = installAssetToContext(assetPath, checkUpdateAsset(str, assetPath, 0));
                if (fxDescobj.has("blurWithFxTrans")) {
                    array = fxDescobj.getJSONArray("blurWithFxTrans");
                    for (i = 0; i < array.length(); i++) {
                        nvsThemeAsset.m_blurWidthFxTransList.add(array.getString(i));
                    }
                }
            }
            try {
                nvsThemeAsset.m_endingFxId = Utils.readFile(themeID + "/" + fxDescobj.getString("endingVideoFX"), context == null ? null : this.m_context.getAssets());
            } catch (JSONException e) {
                e.printStackTrace();
            }
            try {
                nvsThemeAsset.m_endingFxId10s = Utils.readFile(themeID + "/" + fxDescobj.getString("endingVideoFX10s"), context == null ? null : this.m_context.getAssets());
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            nvsThemeAsset.m_endingFx10sLen = fxDescobj.getLong("endingVideoFX10sDuration") * 1000;
            assetPath = "assets:/" + themeID + "/black_block.png";
            if (context == null) {
                assetPath = themeID + "/black_block.png";
            }
            nvsThemeAsset.m_endingFxImgPath = assetPath;
            String musicjson = Utils.readFile(themeID + "/" + fxDescobj.getString("musicrhythm"), context == null ? null : context.getAssets());
            if (musicjson != null) {
                nvsThemeAsset.m_musicLen = NvsParseHelper.readMusicPoint(musicjson, nvsThemeAsset.m_musicPoints, nvsThemeAsset.m_transDesc);
            }
            musicjson = Utils.readFile(themeID + "/" + fxDescobj.getString("musicrhythm10s"), context == null ? null : context.getAssets());
            if (musicjson != null) {
                nvsThemeAsset.m_musicLen10s = NvsParseHelper.readMusicPoint(musicjson, nvsThemeAsset.m_musicPoints10s, null);
            }
            if (fxDescobj.has("transition")) {
                array = fxDescobj.getJSONArray("transition");
                for (i = 0; i < array.length(); i++) {
                    transName = array.getString(i);
                    if (transName != null) {
                        String asset = "assets:/" + themeID + "/" + transName;
                        if (context == null) {
                            asset = themeID + "/" + transName;
                        }
                        boolean needUpdate = false;
                        if (curThemeasset != null) {
                            needUpdate = checkUpdateAsset(getTransId(transName, curThemeasset), asset, 1);
                        }
                        StringBuilder transID = installAssetToContext(asset, needUpdate);
                        if (transID != null) {
                            nvsThemeAsset.m_transIDList.add(transID);
                        }
                    }
                }
            }
            if (fxDescobj.has("transFx")) {
                array = fxDescobj.getJSONArray("transFx");
                for (i = 0; i < array.length(); i++) {
                    transName = array.getString(i);
                    addToFxList(nvsThemeAsset, themeID + "/" + transName, transName);
                }
            }
            if (curThemeasset != null) {
                this.mThemeAssetMap.remove(curThemeasset);
            }
            this.mThemeAssetMap.put(themeID, nvsThemeAsset);
            return true;
        } catch (JSONException e22) {
            e22.printStackTrace();
            return false;
        }
    }

    private void addToFxList(NvsThemeAsset themeasset, String assetPath, String transName) {
        if (transName.contains("9v16")) {
            if (transName.contains("-full")) {
                themeasset.m_fullFx9v16List.add(assetPath);
            } else if (transName.contains("-half")) {
                themeasset.m_halfFx9v16List.add(assetPath);
            } else if (transName.contains("-hf")) {
                themeasset.m_hfFx9v16List.add(assetPath);
            } else if (transName.contains("-fh")) {
                themeasset.m_fhFx9v16List.add(assetPath);
            } else {
                themeasset.m_fullFx9v16List.add(assetPath);
                themeasset.m_halfFx9v16List.add(assetPath);
                themeasset.m_hfFx9v16List.add(assetPath);
                themeasset.m_fhFx9v16List.add(assetPath);
            }
        } else if (transName.contains("9v18")) {
            if (transName.contains("-full")) {
                themeasset.m_fullFx9v18List.add(assetPath);
            } else if (transName.contains("-half")) {
                themeasset.m_halfFx9v18List.add(assetPath);
            } else if (transName.contains("-hf")) {
                themeasset.m_hfFx9v18List.add(assetPath);
            } else if (transName.contains("-fh")) {
                themeasset.m_fhFx9v18List.add(assetPath);
            } else {
                themeasset.m_fullFx9v18List.add(assetPath);
                themeasset.m_halfFx9v18List.add(assetPath);
                themeasset.m_hfFx9v18List.add(assetPath);
                themeasset.m_fhFx9v18List.add(assetPath);
            }
        } else if (transName.contains("9v19")) {
            if (transName.contains("-full")) {
                themeasset.m_fullFx9v19List.add(assetPath);
            } else if (transName.contains("-half")) {
                themeasset.m_halfFx9v19List.add(assetPath);
            } else if (transName.contains("-hf")) {
                themeasset.m_hfFx9v19List.add(assetPath);
            } else if (transName.contains("-fh")) {
                themeasset.m_fhFx9v19List.add(assetPath);
            } else {
                themeasset.m_fullFx9v19List.add(assetPath);
                themeasset.m_halfFx9v19List.add(assetPath);
                themeasset.m_hfFx9v19List.add(assetPath);
                themeasset.m_fhFx9v19List.add(assetPath);
            }
        } else if (!transName.contains("9vx73")) {
        } else {
            if (transName.contains("-full")) {
                themeasset.m_fullFx9vx73List.add(assetPath);
            } else if (transName.contains("-half")) {
                themeasset.m_halfFx9vx73List.add(assetPath);
            } else if (transName.contains("-hf")) {
                themeasset.m_hfFx9vx73List.add(assetPath);
            } else if (transName.contains("-fh")) {
                themeasset.m_fhFx9vx73List.add(assetPath);
            } else {
                themeasset.m_fullFx9vx73List.add(assetPath);
                themeasset.m_halfFx9vx73List.add(assetPath);
                themeasset.m_hfFx9vx73List.add(assetPath);
                themeasset.m_fhFx9vx73List.add(assetPath);
            }
        }
    }

    private String getTransId(String transName, NvsThemeAsset curThemeasset) {
        if (curThemeasset == null) {
            return null;
        }
        if (curThemeasset.m_transIDList == null) {
            return null;
        }
        for (int i = 0; i < curThemeasset.m_transIDList.size(); i++) {
            String trans = ((StringBuilder) curThemeasset.m_transIDList.get(i)).toString();
            if (trans.contains(transName.replace(".videotransition", ""))) {
                return trans;
            }
        }
        return null;
    }

    private boolean checkUpdateAsset(String curAssetId, String assetPath, int assetType) {
        if (curAssetId == null || assetPath == null) {
            return false;
        }
        if (curAssetId == null) {
            return false;
        }
        if (this.m_streamingContext == null) {
            this.m_streamingContext = NvsStreamingContext.getInstance();
        }
        if (this.m_streamingContext == null) {
            return false;
        }
        if (this.m_streamingContext.getAssetPackageManager().getAssetPackageVersionFromAssetPackageFilePath(assetPath) > this.m_streamingContext.getAssetPackageManager().getAssetPackageVersion(curAssetId, assetType)) {
            return true;
        }
        return false;
    }

    private String getAssetPath(JSONObject obj, String name, String filePath, boolean isDownloadFile) {
        String fileName;
        try {
            fileName = obj.getString(name);
        } catch (JSONException e) {
            e.printStackTrace();
            fileName = null;
        }
        if (fileName == null || fileName.isEmpty()) {
            return null;
        }
        String assetPath = "assets:/" + filePath + "/" + fileName;
        if (isDownloadFile) {
            return filePath + "/" + fileName;
        }
        return assetPath;
    }

    private int getMinImgCount() {
        if (this.m_inputIamgeInfo.isEmpty() || !((NvsImageFileDesc) this.m_inputIamgeInfo.get(0)).isCover) {
            return 3;
        }
        return 3 + 1;
    }

    private int getMaxImgCount() {
        return 20;
    }
}
