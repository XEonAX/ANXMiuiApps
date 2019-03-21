package com.miui.gallery.video.editor;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.media.MediaCodecInfo;
import android.media.MediaCodecInfo.VideoCapabilities;
import android.media.MediaCodecList;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.UriUtils;
import com.miui.gallery.video.editor.VideoEditor.EnocdeStateInterface;
import com.miui.gallery.video.editor.VideoEditor.NotSupportVideoException;
import com.miui.gallery.video.editor.VideoEditor.OnCompletedListener;
import com.miui.gallery.video.editor.VideoEditor.OnGetVideoThumbnailListener;
import com.miui.gallery.video.editor.VideoEditor.TrimStateInterface;
import com.miui.gallery.video.editor.manager.NexAssetTemplateManager;
import com.miui.gallery.video.editor.util.FileHelper;
import com.miui.gallery.video.editor.util.IntentUtil;
import com.nexstreaming.nexeditorsdk.exception.ExpiredTimeException;
import com.nexstreaming.nexeditorsdk.nexAnimate;
import com.nexstreaming.nexeditorsdk.nexApplicationConfig;
import com.nexstreaming.nexeditorsdk.nexAspectProfile;
import com.nexstreaming.nexeditorsdk.nexClip;
import com.nexstreaming.nexeditorsdk.nexColorEffect;
import com.nexstreaming.nexeditorsdk.nexCrop.CropMode;
import com.nexstreaming.nexeditorsdk.nexEngine;
import com.nexstreaming.nexeditorsdk.nexEngine.FastPreviewOption;
import com.nexstreaming.nexeditorsdk.nexEngine.OnAutoTrimResultListener;
import com.nexstreaming.nexeditorsdk.nexEngine.OnCompletionListener;
import com.nexstreaming.nexeditorsdk.nexEngineListener;
import com.nexstreaming.nexeditorsdk.nexEngineView;
import com.nexstreaming.nexeditorsdk.nexOverlayImage;
import com.nexstreaming.nexeditorsdk.nexOverlayItem;
import com.nexstreaming.nexeditorsdk.nexOverlayKineMasterText;
import com.nexstreaming.nexeditorsdk.nexOverlayPreset;
import com.nexstreaming.nexeditorsdk.nexProject;
import com.nexstreaming.nexeditorsdk.nexTemplateManager.Template;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme;
import com.nostra13.universalimageloader.core.listener.ImageLoadingListener;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map.Entry;

public class NexVideoEditor extends VideoEditor implements nexEngineListener {
    private HashMap<String, Change> mApplyedEditValue = new HashMap();
    private nexProject mCloneProject;
    private Context mContext;
    private EnocdeStateInterface mCurrentEnocdeStateInterface;
    private TextClip mEndClip;
    private nexEngine mEngin;
    private int mEngineState = -1;
    private Handler mHandler = new Handler(Looper.getMainLooper());
    private boolean mHasApplyedSmartEffect = false;
    private boolean mHasUsingAutoTrim = false;
    private boolean mIsDestroy;
    private nexClip mMainVideoClip;
    private nexProject mNexProject;
    private TextClip mOpenClip;
    private OnCompletedListener mPauseOnCompletedListener;
    private float mRatio;
    private HashMap<String, Change> mSavedEditValue = new HashMap();
    private int mSeekTarget = -1;
    private HashMap<String, Change> mTempEditValue = new HashMap();
    private int mThumbnailPickCursor = 0;
    private TrimStateInterface mTrimStateInterface;
    private int mVideoBitrate;
    private int mVideoFrames;
    private int mVideoHeight;
    private String mVideoPath;
    private int mVideoRotation;
    private int mVideoWidth;
    private List<VideoThumbnail> preLoadVideoThumbnails = new ArrayList();
    private OnCompletedListener seekOnCompletedListener;
    private boolean setTimeSuccess = false;

    private interface Change {
        void applyChange();
    }

    private class ApplyTask extends AsyncTask<Change, Void, Boolean> {
        private OnCompletedListener mOnCompletedListener;

        public ApplyTask(OnCompletedListener onCompletedListener) {
            this.mOnCompletedListener = onCompletedListener;
        }

        protected Boolean doInBackground(Change... changes) {
            if (changes != null) {
                for (Change change : changes) {
                    change.applyChange();
                }
            }
            NexVideoEditor.this.mEngin.updateProject();
            return Boolean.valueOf(true);
        }

        protected void onPostExecute(Boolean result) {
            super.onPostExecute(result);
            NexVideoEditor.this.mTempEditValue.clear();
            NexVideoEditor.this.setEngineState(0);
            if (this.mOnCompletedListener != null) {
                this.mOnCompletedListener.onCompleted();
                this.mOnCompletedListener = null;
            }
        }
    }

    private class BGMEdit implements Change {
        private String mBGMUri;

        public BGMEdit(String mBGMUri) {
            this.mBGMUri = mBGMUri;
        }

        public void applyChange() {
            if (TextUtils.isEmpty(this.mBGMUri)) {
                if (!NexVideoEditor.this.mHasApplyedSmartEffect || NexVideoEditor.this.mCloneProject == null) {
                    NexVideoEditor.this.mNexProject.setBackgroundMusicPath(this.mBGMUri);
                } else {
                    SmartEffectTemplate smartEffectTemplate = (SmartEffectTemplate) NexVideoEditor.this.mApplyedEditValue.get("edit_type_smart_effect_template");
                    if (smartEffectTemplate != null) {
                        smartEffectTemplate.applyChange();
                    }
                }
                NexVideoEditor.this.mApplyedEditValue.remove("bg_audio");
                return;
            }
            String filePath = "";
            switch (Scheme.ofUri(this.mBGMUri)) {
                case FILE:
                    filePath = Scheme.FILE.crop(this.mBGMUri);
                    break;
                default:
                    filePath = this.mBGMUri;
                    break;
            }
            if (!NexVideoEditor.this.mHasApplyedSmartEffect || NexVideoEditor.this.mCloneProject == null) {
                NexVideoEditor.this.mNexProject.setBackgroundMusicPath(filePath);
            } else {
                NexVideoEditor.this.mCloneProject.setBackgroundMusicPath(filePath);
            }
            NexVideoEditor.this.mApplyedEditValue.put("bg_audio", this);
            if (!new File(this.mBGMUri).exists()) {
                HashMap<String, String> params = new HashMap();
                params.put("manufacturer", Build.MANUFACTURER);
                params.put("model", Build.MODEL);
                BaseSamplingStatHelper.recordCountEvent("video_editor", "video_editor_bgm_empty_file_error", params);
            }
        }
    }

    private class FilterEffect implements Change {
        private Filter mFilter;

        public FilterEffect(Filter filter) {
            this.mFilter = filter;
        }

        public void applyChange() {
            if (this.mFilter != null) {
                if (!NexVideoEditor.this.mHasApplyedSmartEffect || NexVideoEditor.this.mCloneProject == null) {
                    NexVideoEditor.this.mMainVideoClip.setColorEffect(NexVideoEditor.this.finEffect(this.mFilter.getFilterId()));
                } else {
                    int count = NexVideoEditor.this.mCloneProject.getTotalClipCount(true);
                    nexColorEffect effect = NexVideoEditor.this.finEffect(this.mFilter.getFilterId());
                    for (int i = 0; i < count; i++) {
                        NexVideoEditor.this.mCloneProject.getClip(i, true).setColorEffect(effect);
                    }
                }
                if ("NONE".equals(this.mFilter.getFilterId())) {
                    NexVideoEditor.this.mApplyedEditValue.remove("filter");
                    return;
                } else {
                    NexVideoEditor.this.mApplyedEditValue.put("filter", this);
                    return;
                }
            }
            NexVideoEditor.this.mMainVideoClip.setColorEffect(null);
            NexVideoEditor.this.mApplyedEditValue.remove("filter");
        }
    }

    class SmartEffectTemplate implements Change {
        private int mLimitTime;
        private Template template;

        public SmartEffectTemplate(SmartEffect smartEffect) {
            if (smartEffect != null) {
                this.template = smartEffect.getTemplate();
                this.mLimitTime = smartEffect.getLongTime();
            }
        }

        private String checkTemplate() {
            String str = "";
            if (NexVideoEditor.this.mNexProject.getTotalTime() <= 0) {
                return "Project is empty";
            }
            if (this.template == null) {
                return "Template did not selected";
            }
            if (NexVideoEditor.this.mCloneProject != null) {
                NexVideoEditor.this.mCloneProject.allClear(true);
            }
            NexVideoEditor.this.mCloneProject = nexProject.clone(NexVideoEditor.this.mNexProject);
            if (this.mLimitTime > 0 && this.mLimitTime < NexVideoEditor.this.getVideoTotalTime()) {
                int clipCount = NexVideoEditor.this.mCloneProject.getTotalClipCount(true);
                for (int i = 0; i < clipCount; i++) {
                    NexVideoEditor.this.mCloneProject.getClip(i, true).getVideoClipEdit().setTrim(0, this.mLimitTime);
                }
            }
            NexVideoEditor.this.mEngin.setProject(NexVideoEditor.this.mCloneProject);
            try {
                if (!NexAssetTemplateManager.getInstance().getKmTemplateManager().applyTemplateToProjectById(NexVideoEditor.this.mCloneProject, this.template.id())) {
                    str = "Fail to apply template on project";
                }
            } catch (ExpiredTimeException e) {
                str = "This is expired asset!";
            } catch (Exception e2) {
                str = e2.getMessage();
            }
            Log.d("NexVideoEditor", "check template info : %s ", (Object) str);
            return str;
        }

        public void applyChange() {
            if (this.template == null || !TextUtils.isEmpty(checkTemplate())) {
                NexVideoEditor.this.mCloneProject = null;
                NexVideoEditor.this.mEngin.setProject(NexVideoEditor.this.mNexProject);
                delete();
                return;
            }
            delete();
            NexVideoEditor.this.mApplyedEditValue.put("edit_type_smart_effect_template", this);
            NexVideoEditor.this.mHasApplyedSmartEffect = true;
        }

        private void delete() {
            NexVideoEditor.this.mHasApplyedSmartEffect = false;
            NexVideoEditor.this.mApplyedEditValue.remove("edit_type_smart_effect_template");
        }
    }

    private class SourceAudioChange implements Change {
        private boolean mEnable;

        public SourceAudioChange(boolean enable) {
            this.mEnable = enable;
        }

        public void applyChange() {
            if (NexVideoEditor.this.mMainVideoClip == null) {
                return;
            }
            if (this.mEnable) {
                NexVideoEditor.this.mMainVideoClip.setClipVolume(100);
                NexVideoEditor.this.mApplyedEditValue.remove("source_audio");
                return;
            }
            NexVideoEditor.this.mMainVideoClip.setClipVolume(0);
            NexVideoEditor.this.mApplyedEditValue.put("source_audio", this);
        }
    }

    private class TextClip implements Change {
        private int mShowTime;
        private nexOverlayItem mTextOverLayItem;
        private int x;
        private int y;

        /* synthetic */ TextClip(NexVideoEditor x0, AnonymousClass1 x1) {
            this();
        }

        /* synthetic */ TextClip(NexVideoEditor x0, String x1, int x2, AnonymousClass1 x3) {
            this(x1, x2);
        }

        private TextClip() {
            this.mShowTime = 0;
        }

        private TextClip(String text, int showTime) {
            this.mShowTime = 0;
            if (!TextUtils.isEmpty(text)) {
                this.mShowTime = showTime;
                initXY();
                this.mTextOverLayItem = createTextNexOverLayItem(text);
            }
        }

        private nexOverlayItem getTextOverLayItem() {
            return this.mTextOverLayItem;
        }

        private void initXY() {
            int width = NexVideoEditor.this.mVideoRotation % nexClip.kClip_Rotate_180 == 0 ? NexVideoEditor.this.mVideoWidth : NexVideoEditor.this.mVideoHeight;
            int height = NexVideoEditor.this.mVideoRotation % nexClip.kClip_Rotate_180 == 0 ? NexVideoEditor.this.mVideoHeight : NexVideoEditor.this.mVideoWidth;
            if (width > height) {
                this.x = Math.round(720.0f * (((float) width) / ((float) height))) / 2;
                this.y = 360;
            } else if (width == height) {
                this.x = 360;
                this.y = 360;
            } else {
                height = Math.round(720.0f * (((float) height) / ((float) width)));
                this.x = 360;
                this.y = height / 2;
            }
        }

        private nexOverlayItem createTextNexOverLayItem(String text) {
            nexOverlayKineMasterText textOverLay = new nexOverlayKineMasterText(NexVideoEditor.this.mContext, text, 59);
            textOverLay.setTextColor(-1);
            textOverLay.setFontId(null);
            int endTime = NexVideoEditor.this.getProjectTotalTime();
            nexOverlayItem nexOverlayItem;
            if (this.mShowTime == 0) {
                nexOverlayItem = new nexOverlayItem(textOverLay, this.x, this.y, 0, endTime);
                nexOverlayItem.addAnimate(nexAnimate.getAlpha(nexProject.kAutoThemeTransitionDuration, 400, 1.0f, 0.0f));
                return nexOverlayItem;
            } else if (this.mShowTime == 1) {
                nexOverlayItem = new nexOverlayItem(textOverLay, this.x, this.y, (endTime - 2000) - 400, endTime);
                nexOverlayItem.addAnimate(nexAnimate.getAlpha(nexProject.kAutoThemeTransitionDuration, 400, 1.0f, 0.0f));
                return nexOverlayItem;
            } else if (this.mShowTime == 2) {
                return new nexOverlayItem(textOverLay, this.x, this.y, 0, endTime);
            } else {
                return null;
            }
        }

        public void applyChange() {
            delete((TextClip) NexVideoEditor.this.mApplyedEditValue.get("edit_type_auto_water_mark_text"));
            if (this.mTextOverLayItem != null) {
                NexVideoEditor.this.mApplyedEditValue.put("edit_type_auto_water_mark_text", this);
                NexVideoEditor.this.mNexProject.addOverlay(this.mTextOverLayItem);
            }
            SmartEffectTemplate smartEffectTemplate = (SmartEffectTemplate) NexVideoEditor.this.mApplyedEditValue.get("edit_type_smart_effect_template");
            if (smartEffectTemplate != null) {
                smartEffectTemplate.applyChange();
            }
        }

        private void delete(TextClip textClip) {
            if (textClip != null && textClip.getTextOverLayItem() != null) {
                NexVideoEditor.this.mNexProject.removeOverlay(textClip.getTextOverLayItem().getId());
                NexVideoEditor.this.mApplyedEditValue.remove("edit_type_auto_water_mark_text");
            }
        }
    }

    private class TrimInfo implements Change {
        private int end;
        private int start;

        TrimInfo(int start, int end) {
            this.start = start;
            this.end = end;
        }

        public void applyChange() {
            if (NexVideoEditor.this.mMainVideoClip != null) {
                if (this.start >= this.end || this.end > NexVideoEditor.this.getVideoTotalTime()) {
                    Log.d("NexVideoEditor", "TrimInfo: end time is lower than start time ");
                    return;
                }
                NexVideoEditor.this.mMainVideoClip.getVideoClipEdit().setTrim(this.start, this.end);
                if (this.start == 0 && this.end == NexVideoEditor.this.getVideoTotalTime()) {
                    NexVideoEditor.this.mApplyedEditValue.remove("trim");
                } else {
                    NexVideoEditor.this.mApplyedEditValue.put("trim", this);
                }
                if (NexVideoEditor.this.mEndClip != null) {
                    NexVideoEditor.this.mEndClip.applyChange();
                }
            }
            SmartEffectTemplate smartEffectTemplate = (SmartEffectTemplate) NexVideoEditor.this.mApplyedEditValue.get("edit_type_smart_effect_template");
            if (smartEffectTemplate != null) {
                smartEffectTemplate.applyChange();
            }
        }
    }

    class VideoEditorAdjust implements Change {
        boolean mAdjust;

        public VideoEditorAdjust(boolean adjust) {
            this.mAdjust = adjust;
        }

        public void applyChange() {
            if (!this.mAdjust) {
                delete();
            }
        }

        private void delete() {
            NexVideoEditor.this.mApplyedEditValue.remove("edit_type_adjust");
        }
    }

    class WaterMark implements Change {
        private int anchorPoint = 0;
        private int mAlphaDurationTime = 400;
        private int mEndTime = 0;
        private int mStartTime = 0;
        private String mTemplateId;
        private nexOverlayImage mWaterMarkOverlay;
        private nexOverlayItem mWaterMarkOverlayItem;
        private float scale = 0.0f;
        private int timeType = 0;
        private int x;
        private int y;

        public WaterMark(int timeType, String templateId) {
            this.timeType = timeType;
            this.mTemplateId = templateId;
            initOverLayItemParams();
            initOverLayItem();
        }

        private void initOverLayItemParams() {
            int width = NexVideoEditor.this.mVideoRotation % nexClip.kClip_Rotate_180 == 0 ? NexVideoEditor.this.mVideoWidth : NexVideoEditor.this.mVideoHeight;
            int height = NexVideoEditor.this.mVideoRotation % nexClip.kClip_Rotate_180 == 0 ? NexVideoEditor.this.mVideoHeight : NexVideoEditor.this.mVideoWidth;
            if (width > height) {
                width = Math.round(720.0f * (((float) width) / ((float) height)));
                this.x = width / 2;
                this.y = 360;
                this.scale = 970.0f / ((float) width);
            } else if (width == height) {
                this.x = 360;
                this.y = 360;
                this.scale = 0.576f;
            } else {
                height = Math.round(720.0f * (((float) height) / ((float) width)));
                this.x = 360;
                this.y = height / 2;
                this.scale = 0.576f;
            }
        }

        private void initOverLayItem() {
            this.mEndTime = NexVideoEditor.this.getProjectTotalTime();
            if (!TextUtils.isEmpty(this.mTemplateId) && this.mEndTime > 0) {
                if (this.timeType == 0) {
                    this.mStartTime = 0;
                    this.mWaterMarkOverlay = nexOverlayPreset.getOverlayPreset(NexVideoEditor.this.mContext.getApplicationContext()).getOverlayImage(this.mTemplateId);
                    this.mWaterMarkOverlayItem = new nexOverlayItem(this.mWaterMarkOverlay, this.anchorPoint, false, (float) this.x, (float) this.y, this.mStartTime, this.mEndTime);
                    if (this.mWaterMarkOverlay != null) {
                        this.mWaterMarkOverlayItem.addAnimate(nexAnimate.getAlpha(this.mWaterMarkOverlay.getDefaultDuration() + 1500, this.mAlphaDurationTime, 1.0f, 0.0f));
                    }
                } else if (this.timeType == 2) {
                    this.mStartTime = 0;
                    this.mWaterMarkOverlay = nexOverlayPreset.getOverlayPreset(NexVideoEditor.this.mContext.getApplicationContext()).getOverlayImage(this.mTemplateId);
                    this.mWaterMarkOverlayItem = new nexOverlayItem(this.mWaterMarkOverlay, this.anchorPoint, false, (float) this.x, (float) this.y, this.mStartTime, this.mEndTime);
                } else if (this.timeType == 1) {
                    this.mWaterMarkOverlay = nexOverlayPreset.getOverlayPreset(NexVideoEditor.this.mContext.getApplicationContext()).getOverlayImage(this.mTemplateId);
                    this.mStartTime = ((this.mEndTime - 800) - this.mWaterMarkOverlay.getDefaultDuration()) - 1000;
                    this.mWaterMarkOverlayItem = new nexOverlayItem(this.mWaterMarkOverlay, this.anchorPoint, false, (float) this.x, (float) this.y, this.mStartTime, this.mEndTime);
                    this.mWaterMarkOverlayItem.addAnimate(nexAnimate.getAlpha(this.mWaterMarkOverlay.getDefaultDuration() + 500, 800, 1.0f, 0.0f));
                }
                this.mWaterMarkOverlayItem.setScale(this.scale, this.scale);
            }
        }

        public void applyChange() {
            delete((WaterMark) NexVideoEditor.this.mApplyedEditValue.get("edit_type_water_mark"));
            if (this.mWaterMarkOverlayItem != null) {
                NexVideoEditor.this.mApplyedEditValue.put("edit_type_water_mark", this);
                NexVideoEditor.this.mNexProject.addOverlay(this.mWaterMarkOverlayItem);
            }
            SmartEffectTemplate smartEffectTemplate = (SmartEffectTemplate) NexVideoEditor.this.mApplyedEditValue.get("edit_type_smart_effect_template");
            if (smartEffectTemplate != null) {
                smartEffectTemplate.applyChange();
                Log.d("NexVideoEditor", "WaterMark change: have  smartEffect;");
            }
            BGMEdit bgmEdit = (BGMEdit) NexVideoEditor.this.mApplyedEditValue.get("bg_audio");
            if (bgmEdit != null) {
                bgmEdit.applyChange();
                Log.d("NexVideoEditor", "WaterMark change: have  audio;");
            }
            FilterEffect filterEffect = (FilterEffect) NexVideoEditor.this.mApplyedEditValue.get("filter");
            if (filterEffect != null) {
                filterEffect.applyChange();
                Log.d("NexVideoEditor", "WaterMark change: have  filter;");
            }
        }

        private void delete(WaterMark waterMark) {
            if (waterMark != null && waterMark.mWaterMarkOverlayItem != null) {
                NexVideoEditor.this.mNexProject.removeOverlay(waterMark.mWaterMarkOverlayItem.getId());
                NexVideoEditor.this.mApplyedEditValue.remove("edit_type_water_mark");
            }
        }
    }

    public NexVideoEditor(Context context) {
        this.mContext = context;
    }

    public void keepScreenOn(boolean screenOn) {
        if (this.mDisplayWrapper != null) {
            this.mDisplayWrapper.setKeepScreenOn(screenOn);
        }
    }

    public boolean checkIDRSupport() {
        long start = System.currentTimeMillis();
        boolean support = this.mMainVideoClip != null && this.mMainVideoClip.getSeekPointCount() > 0 && this.mMainVideoClip.getSeekPointInterval() <= 4000;
        Log.d("NexVideoEditor", "get interval costs %dms", Long.valueOf(System.currentTimeMillis() - start));
        return support;
    }

    private void loadMainThumbnail(String path) {
        ImageLoader.getInstance().loadImage(UriUtils.toSafeString(Uri.fromFile(new File(path))), new ImageLoadingListener() {
            public void onLoadingStarted(String imageUri, View view) {
            }

            public void onLoadingFailed(String imageUri, View view, FailReason failReason) {
            }

            public void onLoadingComplete(String imageUri, View view, Bitmap loadedImage) {
                if (loadedImage != null) {
                    NexVideoEditor.this.mDisplayWrapper.showThumbnail(loadedImage);
                    if (NexVideoEditor.this.preLoadVideoThumbnails.size() == 0) {
                        if (NexVideoEditor.this.mVideoRotation % nexClip.kClip_Rotate_180 == 0) {
                            NexVideoEditor.this.preLoadVideoThumbnails.add(new VideoThumbnail(0, 0, 0, Bitmap.createScaledBitmap(loadedImage, 160, 90, false)));
                        } else {
                            NexVideoEditor.this.preLoadVideoThumbnails.add(new VideoThumbnail(0, 0, 0, Bitmap.createScaledBitmap(loadedImage, 90, 160, false)));
                        }
                        NexVideoEditor.this.notifyThumbnailChanged();
                    }
                }
            }

            public void onLoadingCancelled(String imageUri, View view) {
            }
        });
    }

    public void load(String path, OnCompletedListener listener) {
        this.mVideoPath = path;
        loadMainThumbnail(path);
        final long startTime = System.currentTimeMillis();
        setEngineState(100);
        final String str = path;
        final OnCompletedListener onCompletedListener = listener;
        NexEngine.init(this.mContext, 1, new Runnable() {
            public void run() {
                long sdkinitTime = System.currentTimeMillis();
                Log.d("NexVideoEditor", "sdk init using :" + (sdkinitTime - startTime) + "ms");
                NexVideoEditor.this.mIsInit = true;
                try {
                    NexVideoEditor.this.mEngin = NexEngine.getEngine(NexVideoEditor.this.mContext);
                    NexVideoEditor.this.mEngin.setEventHandler(NexVideoEditor.this);
                    Log.d("NexVideoEditor", "engine create time :" + (System.currentTimeMillis() - sdkinitTime) + "ms");
                    new AsyncTask<Void, Void, Boolean>() {
                        protected Boolean doInBackground(Void... params) {
                            try {
                                long startTime = System.currentTimeMillis();
                                NexVideoEditor.this.loadVideo(str);
                                NexVideoEditor.this.handleHardwareSupport();
                                NexVideoEditor.this.configEngine();
                                NexVideoEditor.this.loadProject();
                                Log.d("NexVideoEditor", "load project using :" + (System.currentTimeMillis() - startTime) + "ms");
                                return Boolean.valueOf(true);
                            } catch (Exception e) {
                                Log.d("NexVideoEditor", "doInBackground: e" + e.toString());
                                return Boolean.valueOf(false);
                            }
                        }

                        protected void onPostExecute(Boolean success) {
                            super.onPostExecute(success);
                            if (!NexVideoEditor.this.mIsDestroy) {
                                NexVideoEditor.this.mDisplayWrapper.getDisplayView().requestLayout();
                                NexVideoEditor.this.mDisplayWrapper.setAspectRatio(NexVideoEditor.this.mRatio);
                                if (success.booleanValue()) {
                                    NexVideoEditor.this.loadThumbnail(onCompletedListener);
                                    NexVideoEditor.this.mEngin.updateScreenMode();
                                    return;
                                }
                                NexVideoEditor.this.setEngineState(500);
                            }
                        }
                    }.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                } catch (Exception e) {
                    Log.e("NexVideoEditor", "sdk init error");
                    NexVideoEditor.this.setEngineState(-500);
                    Log.e("NexVideoEditor", "build manufacturer :" + Build.MANUFACTURER);
                    Log.e("NexVideoEditor", "build model :" + Build.MODEL);
                    HashMap<String, String> params = new HashMap();
                    params.put("manufacturer", Build.MANUFACTURER);
                    params.put("model", Build.MODEL);
                    BaseSamplingStatHelper.recordCountEvent("video_editor", "video_editor_sdk_init_error", params);
                }
            }
        });
    }

    private void loadThumbnail(final OnCompletedListener listener) {
        int thumbnailWidth;
        int thumbnailHeight;
        if (this.mVideoRotation % nexClip.kClip_Rotate_180 == 0) {
            thumbnailWidth = 160;
        } else {
            thumbnailWidth = 90;
        }
        if (this.mVideoRotation % nexClip.kClip_Rotate_180 == 0) {
            thumbnailHeight = 90;
        } else {
            thumbnailHeight = 160;
        }
        this.mMainVideoClip.getVideoClipDetailThumbnails(thumbnailWidth, thumbnailHeight, 0, this.mMainVideoClip.getTotalTime(), 50, this.mVideoRotation, new NexOnGetVideoClipDetailThumbnailsListener(new OnGetVideoThumbnailListener() {
            public void onGetVideoThumbnailCompleted(List<VideoThumbnail> thumbnails) {
                if (!NexVideoEditor.this.mIsDestroy) {
                    if (thumbnails != null && thumbnails.size() > 0) {
                        NexVideoEditor.this.preLoadVideoThumbnails.clear();
                        NexVideoEditor.this.preLoadVideoThumbnails.addAll(thumbnails);
                        NexVideoEditor.this.notifyThumbnailChanged();
                    }
                    NexVideoEditor.this.setDisplayView(NexVideoEditor.this.mDisplayWrapper.getDisplayView());
                    NexVideoEditor.this.setEngineState(0);
                    listener.onCompleted();
                }
            }
        }));
    }

    private void loadProject() {
        this.mNexProject = createProject(this.mMainVideoClip);
        this.mNexProject.getLastPrimaryClip().setRotateDegree(this.mMainVideoClip.getRotateInMeta());
        this.mNexProject.getLastPrimaryClip().getCrop().randomizeStartEndPosition(false, CropMode.FIT);
        this.mEngin.setProject(this.mNexProject);
        this.mEngin.updateProject();
    }

    private void configEngine() {
        nexAspectProfile nexAspectProfile;
        if (this.mVideoRotation % nexClip.kClip_Rotate_180 == 0) {
            nexAspectProfile = new nexAspectProfile(this.mVideoWidth, this.mVideoHeight);
        } else {
            nexAspectProfile = new nexAspectProfile(this.mVideoHeight, this.mVideoWidth);
        }
        nexApplicationConfig.setAspectProfile(nexAspectProfile);
    }

    private void loadVideo(String path) throws NotSupportVideoException {
        nexClip clip = nexClip.getSupportedClip(path, true);
        if (clip != null) {
            this.mVideoWidth = clip.getWidth();
            this.mVideoHeight = clip.getHeight();
            this.mVideoRotation = clip.getRotateInMeta();
            this.mVideoBitrate = clip.getVideoBitrate();
            this.mVideoFrames = clip.getFramesPerSecond();
            this.mMainVideoClip = clip;
            if (this.mVideoRotation % nexClip.kClip_Rotate_180 == 0) {
                this.mRatio = ((float) this.mVideoWidth) / ((float) this.mVideoHeight);
                return;
            } else {
                this.mRatio = ((float) this.mVideoHeight) / ((float) this.mVideoWidth);
                return;
            }
        }
        throw new NotSupportVideoException();
    }

    private void handleHardwareSupport() throws NotSupportVideoException {
        if (Build.DEVICE.equals("riva") && VERSION.SDK_INT >= 21) {
            int width = this.mVideoRotation % nexClip.kClip_Rotate_180 == 0 ? this.mMainVideoClip.getWidth() : this.mMainVideoClip.getHeight();
            int height = this.mVideoRotation % nexClip.kClip_Rotate_180 == 0 ? this.mMainVideoClip.getHeight() : this.mMainVideoClip.getWidth();
            Object videoCodecType = this.mMainVideoClip.getVideoCodecType();
            Log.d("NexVideoEditor", "videoCodecType: %s", videoCodecType);
            for (MediaCodecInfo codecInfo : new MediaCodecList(0).getCodecInfos()) {
                if (!codecInfo.isEncoder()) {
                    String[] types = codecInfo.getSupportedTypes();
                    int i = 0;
                    while (types != null && i < types.length) {
                        if (!TextUtils.isEmpty(types[i]) && types[i].contains("video/") && (types[i].contains(videoCodecType) || ((videoCodecType.equalsIgnoreCase("video/h264") && types[i].equalsIgnoreCase("video/avc")) || (videoCodecType.equalsIgnoreCase("video/avc") && types[i].equalsIgnoreCase("video/h264"))))) {
                            VideoCapabilities videoCapabilities = codecInfo.getCapabilitiesForType(types[i]).getVideoCapabilities();
                            if (videoCapabilities != null && videoCapabilities.areSizeAndRateSupported(width, height, (double) this.mMainVideoClip.getFramesPerSecond())) {
                                Log.d("NexVideoEditor", String.format("the MediaCodecInfo name is: %s, and the  phone is supported to edit:  %s", new Object[]{codecInfo.getName(), "true"}));
                                return;
                            }
                        }
                        i++;
                    }
                }
            }
            Log.e("NexVideoEditor", "the device can not support to edit the video.");
            throw new NotSupportVideoException();
        }
    }

    public void saveEditState() {
        this.mSavedEditValue.clear();
        this.mSavedEditValue.putAll(this.mApplyedEditValue);
    }

    public void restoreEditState() {
        if (haveChange("filter")) {
            FilterEffect filterEffect = (FilterEffect) this.mSavedEditValue.get("filter");
            if (filterEffect == null) {
                filterEffect = new FilterEffect(null);
            }
            this.mTempEditValue.put("filter", filterEffect);
        }
        if (haveChange("bg_audio")) {
            BGMEdit bgmEdit = (BGMEdit) this.mSavedEditValue.get("bg_audio");
            if (bgmEdit == null) {
                bgmEdit = new BGMEdit(null);
            }
            this.mTempEditValue.put("bg_audio", bgmEdit);
        }
        if (haveChange("source_audio")) {
            SourceAudioChange change = (SourceAudioChange) this.mSavedEditValue.get("source_audio");
            if (change == null) {
                change = new SourceAudioChange(true);
            }
            this.mTempEditValue.put("source_audio", change);
        }
        if (haveChange("edit_type_water_mark")) {
            WaterMark waterMark = (WaterMark) this.mSavedEditValue.get("edit_type_water_mark");
            if (waterMark == null) {
                waterMark = new WaterMark();
            }
            this.mTempEditValue.put("edit_type_water_mark", waterMark);
        }
        if (haveChange("edit_type_auto_water_mark_text")) {
            TextClip textClip = (TextClip) this.mSavedEditValue.get("edit_type_auto_water_mark_text");
            if (textClip == null) {
                textClip = new TextClip(this, null);
            }
            this.mTempEditValue.put("edit_type_auto_water_mark_text", textClip);
        }
        if (haveChange("edit_type_adjust")) {
            VideoEditorAdjust videoEditorAdjust = (VideoEditorAdjust) this.mSavedEditValue.get("edit_type_adjust");
            if (videoEditorAdjust == null) {
                videoEditorAdjust = new VideoEditorAdjust(false);
            }
            this.mTempEditValue.put("edit_type_adjust", videoEditorAdjust);
        }
        if (haveChange("edit_type_smart_effect_template")) {
            SmartEffectTemplate smartEffectTemplate = (SmartEffectTemplate) this.mSavedEditValue.get("edit_type_smart_effect_template");
            if (smartEffectTemplate == null) {
                smartEffectTemplate = new SmartEffectTemplate(null);
            }
            this.mTempEditValue.put("edit_type_smart_effect_template", smartEffectTemplate);
        }
    }

    public int getVideoStartTime() {
        if (this.mMainVideoClip != null) {
            return this.mMainVideoClip.getProjectStartTime();
        }
        return 0;
    }

    private void setTrimInfo(TrimInfo info) {
        this.mTempEditValue.put("trim", info);
    }

    public boolean isSupportAutoTrim() {
        return (this.mMainVideoClip == null || getProjectTotalTime() <= 30000 || this.mHasApplyedSmartEffect) ? false : true;
    }

    public void toThirdEditor(Context context) {
        if (this.mEngineState == 1 || this.mEngineState == 2 || this.mEngineState == 0) {
            try {
                if (this.mNexProject != null) {
                    try {
                        Intent intent = this.mNexProject.makeKineMasterIntent();
                        if (intent != null) {
                            context.startActivity(intent);
                            BaseSamplingStatHelper.recordCountEvent("video_editor", "video_editor_to_3rd_exitor");
                        }
                    } catch (Exception e) {
                    }
                }
            } catch (ActivityNotFoundException e2) {
                try {
                    context.startActivity(IntentUtil.makeMarketIntent("com.nexstreaming.app.kinemasterfree", true));
                    BaseSamplingStatHelper.recordCountEvent("video_editor", "video_editor_to_market");
                } catch (ActivityNotFoundException e3) {
                    Log.e("NexVideoEditor", "no market found !!!!");
                }
            }
        }
    }

    public void cancelExport(final OnCompletedListener listener) {
        if (this.mEngineState == BaiduSceneResult.TEMPLE) {
            this.mEngin.stop(new OnCompletionListener() {
                public void onComplete(int i) {
                    NexVideoEditor.this.setEngineState(0);
                    if (listener != null) {
                        listener.onCompleted();
                    }
                }
            });
        }
    }

    public String getVideoPath() {
        if (TextUtils.isEmpty(this.mVideoPath)) {
            return "";
        }
        return this.mVideoPath;
    }

    private boolean haveChange(String editType) {
        Object savedValue = this.mSavedEditValue.get(editType);
        Object currentValue = this.mApplyedEditValue.get(editType);
        if (savedValue == null && currentValue == null) {
            return false;
        }
        if (savedValue == null || !savedValue.equals(currentValue)) {
            return true;
        }
        return false;
    }

    public void release() {
        destroy();
        NexEngine.releaseEngine();
    }

    public void resume() {
        switch (this.mEngineState) {
            case 2:
                if (this.mEngin != null) {
                    setEngineState(BaiduSceneResult.GARDEN);
                    this.mEngin.resume();
                    return;
                }
                return;
            default:
                Log.e("NexVideoEditor", "resume is not allowed at EngineState :" + this.mEngineState);
                return;
        }
    }

    public void play() {
        switch (this.mEngineState) {
            case 0:
                if (this.mEngin != null) {
                    setEngineState(BaiduSceneResult.MOUNTAINEERING);
                    this.mEngin.play();
                    return;
                }
                return;
            default:
                Log.d("NexVideoEditor", "play is not allowed at EngineState :" + this.mEngineState);
                return;
        }
    }

    public void pause() {
        pause(null);
    }

    private void pause(OnCompletedListener onCompletedListener) {
        if (this.mEngineState != 1 || this.mEngin == null) {
            Log.e("NexVideoEditor", "pause is not allowed at EngineState :" + this.mEngineState);
            return;
        }
        this.mPauseOnCompletedListener = onCompletedListener;
        setEngineState(BaiduSceneResult.TAEKWONDO);
        this.mEngin.pause();
    }

    public void seek(final int time, OnCompletedListener listener) {
        this.seekOnCompletedListener = listener;
        switch (this.mEngineState) {
            case 0:
            case 2:
            case BaiduSceneResult.SPORTS_OTHER /*104*/:
                doSeek(time);
                return;
            case 1:
                pause(new OnCompletedListener() {
                    public void onCompleted() {
                        NexVideoEditor.this.doSeek(time);
                    }
                });
                return;
            default:
                Log.e("NexVideoEditor", "seek is not allowed at EngineState :" + this.mEngineState);
                return;
        }
    }

    public boolean isSourceAudioEnable() {
        return this.mMainVideoClip == null || this.mMainVideoClip.getClipVolume() == 100;
    }

    public boolean resetProject(OnCompletedListener listener) {
        return addChange(new Change() {
            public void applyChange() {
                NexVideoEditor.this.mMainVideoClip = nexClip.dup(NexVideoEditor.this.mMainVideoClip);
                NexVideoEditor.this.mMainVideoClip.setRotateDegree(NexVideoEditor.this.mVideoRotation);
                NexVideoEditor.this.mNexProject = new nexProject();
                NexVideoEditor.this.mNexProject.add(NexVideoEditor.this.mMainVideoClip);
                NexVideoEditor.this.mEngin.setProject(NexVideoEditor.this.mNexProject);
                NexVideoEditor.this.mApplyedEditValue.clear();
                NexVideoEditor.this.mOpenClip = null;
                NexVideoEditor.this.mEndClip = null;
            }
        }, listener);
    }

    public int getVideoFrames() {
        return this.mVideoFrames;
    }

    public float getCurrentDisplayRatio() {
        return this.mRatio;
    }

    private void doSeek(int time) {
        switch (this.mEngineState) {
            case 0:
            case 2:
                this.setTimeSuccess = false;
                setEngineState(BaiduSceneResult.SPORTS_OTHER);
                this.mEngin.seek(time);
                return;
            case BaiduSceneResult.SPORTS_OTHER /*104*/:
                this.mSeekTarget = time;
                updataSeek();
                return;
            default:
                Log.e("NexVideoEditor", "setFilter is not allowed at EngineState :" + this.mEngineState);
                return;
        }
    }

    private void updataSeek() {
        if (this.mEngineState != BaiduSceneResult.SPORTS_OTHER) {
            return;
        }
        if (this.mSeekTarget != -1) {
            if (Math.abs(this.mEngin.getCurrentPlayTimeTime() - this.mSeekTarget) > 150) {
                this.mEngin.seekIDROnly(this.mSeekTarget);
                Log.d("NexVideoEditor", "SEEK IDR progress :" + this.mSeekTarget);
            } else {
                this.mEngin.seek(this.mSeekTarget);
                Log.d("NexVideoEditor", "progress :" + this.mSeekTarget);
            }
            this.mSeekTarget = -1;
            return;
        }
        if (this.setTimeSuccess) {
            setEngineState(2);
        } else {
            setEngineState(0);
        }
        if (this.seekOnCompletedListener != null) {
            this.seekOnCompletedListener.onCompleted();
        }
    }

    private void setEngineState(int state) {
        switch (state) {
            case -500:
                setState(-500);
                break;
            case 0:
                setState(0);
                keepScreenOn(false);
                break;
            case 1:
                setState(1);
                keepScreenOn(true);
                this.mDisplayWrapper.hideThumbnail();
                break;
            case 2:
                setState(2);
                keepScreenOn(false);
                break;
            case 100:
            case BaiduSceneResult.SHOOTING /*101*/:
            case BaiduSceneResult.TAEKWONDO /*102*/:
            case BaiduSceneResult.MOUNTAINEERING /*103*/:
            case BaiduSceneResult.GARDEN /*107*/:
                setState(200);
                break;
            case BaiduSceneResult.SPORTS_OTHER /*104*/:
                setState(3);
                this.mDisplayWrapper.hideThumbnail();
                break;
            case BaiduSceneResult.TEMPLE /*105*/:
            case BaiduSceneResult.PALACE /*106*/:
                keepScreenOn(true);
                setState(200);
                break;
            case 500:
                setState(500);
                keepScreenOn(false);
                break;
        }
        this.mEngineState = state;
    }

    protected void setDisplayView(View view) {
        this.mEngin.setView((nexEngineView) view);
    }

    private nexColorEffect finEffect(String filterId) {
        if (filterId != null) {
            for (nexColorEffect colorEffect : nexColorEffect.getPresetList()) {
                if (filterId.equals(colorEffect.getPresetName())) {
                    return colorEffect;
                }
            }
        }
        return null;
    }

    public boolean apply(OnCompletedListener listener) {
        return applyAsync(listener);
    }

    public boolean applyAsync(final OnCompletedListener listener) {
        if (this.mTempEditValue.size() == 0) {
            listener.onCompleted();
            return true;
        }
        final Change[] changes = new Change[this.mTempEditValue.size()];
        this.mTempEditValue.values().toArray(changes);
        this.mTempEditValue.clear();
        switch (this.mEngineState) {
            case 0:
            case 2:
                setEngineState(100);
                new ApplyTask(listener).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, changes);
                return true;
            case 1:
                setEngineState(BaiduSceneResult.SHOOTING);
                this.mEngin.stop(new OnCompletionListener() {
                    public void onComplete(int i) {
                        NexVideoEditor.this.setEngineState(100);
                        new ApplyTask(listener).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, changes);
                    }
                });
                return true;
            default:
                return false;
        }
    }

    public Bitmap pickThumbnail(int time) {
        this.mThumbnailPickCursor = 0;
        return pickThumbnailSerial(time);
    }

    public Bitmap pickThumbnailSerial(int time) {
        Bitmap result = null;
        if (this.preLoadVideoThumbnails != null && this.preLoadVideoThumbnails.size() > 0) {
            int count = this.preLoadVideoThumbnails.size();
            int differenceValue = Integer.MAX_VALUE;
            for (int i = this.mThumbnailPickCursor; i < count; i++) {
                VideoThumbnail temp = (VideoThumbnail) this.preLoadVideoThumbnails.get(i);
                if (Math.abs(temp.getIntrinsicTime() - time) >= differenceValue) {
                    break;
                }
                differenceValue = Math.abs(temp.getIntrinsicTime() - time);
                this.mThumbnailPickCursor = i;
                result = temp.getThumbnail();
            }
        }
        return result;
    }

    public void setBackgroundMusic(String filePath) {
        this.mTempEditValue.put("bg_audio", new BGMEdit(filePath));
    }

    public void setFilter(Filter filter) {
        this.mTempEditValue.put("filter", new FilterEffect(filter));
    }

    public void setSourceAudioEnable(Boolean enable) {
        this.mTempEditValue.put("source_audio", new SourceAudioChange(enable.booleanValue()));
    }

    public boolean setWarterMark(int timeType, String templateid) {
        this.mTempEditValue.put("edit_type_water_mark", new WaterMark(timeType, templateid));
        return false;
    }

    public boolean setAutoWaterMark(String text, int showTime) {
        this.mTempEditValue.put("edit_type_auto_water_mark_text", new TextClip(this, text, showTime, null));
        return false;
    }

    public void setTrimInfo(int start, int end) {
        setTrimInfo(new TrimInfo(start, end));
    }

    public void autoTrim(final int time, TrimStateInterface tsi) {
        if (this.mEngineState == 0 && isSupportAutoTrim() && time < this.mMainVideoClip.getTotalTime()) {
            this.mTrimStateInterface = tsi;
            setEngineState(BaiduSceneResult.PALACE);
            this.mEngin.autoTrim(this.mMainVideoClip.getPath(), true, time / 5, 5, 0, new OnAutoTrimResultListener() {
                public void onAutoTrimResult(int k, int[] arrayData) {
                    if (arrayData != null && arrayData.length != 0) {
                        NexVideoEditor.this.mNexProject.allClear(true);
                        int totalTime = NexVideoEditor.this.mMainVideoClip.getTotalTime();
                        for (int i = 0; i < arrayData.length; i++) {
                            int endTime;
                            nexClip clip = nexClip.dup(NexVideoEditor.this.mMainVideoClip);
                            NexVideoEditor.this.mNexProject.add(clip);
                            int startTime = arrayData[i];
                            if (startTime >= totalTime) {
                                endTime = arrayData[i] + (time / 5);
                            } else {
                                endTime = Math.min(arrayData[i] + (time / 5), totalTime);
                            }
                            clip.getVideoClipEdit().setTrim(startTime, endTime);
                            clip.setRotateDegree(NexVideoEditor.this.mVideoRotation);
                            NexVideoEditor.this.mEngin.setProject(NexVideoEditor.this.mNexProject);
                        }
                        final String outPutFilePath = FileHelper.generateOutputFilePath(NexVideoEditor.this.mMainVideoClip.getPath(), true);
                        if (NexVideoEditor.this.mTrimStateInterface != null) {
                            NexVideoEditor.this.mTrimStateInterface.onTrimEnd(outPutFilePath);
                        }
                        NexVideoEditor.this.setEngineState(0);
                        NexVideoEditor.this.mHandler.post(new Runnable() {
                            public void run() {
                                NexVideoEditor.this.export(outPutFilePath, new EnocdeStateInterface() {
                                    public void onEncodeStart() {
                                        if (NexVideoEditor.this.mTrimStateInterface != null) {
                                            NexVideoEditor.this.mTrimStateInterface.onEncodeStart();
                                        }
                                    }

                                    public void onEncodeProgress(int progress) {
                                        if (NexVideoEditor.this.mTrimStateInterface != null) {
                                            NexVideoEditor.this.mTrimStateInterface.onEncodeProgress(progress);
                                        }
                                    }

                                    public void onEncodeEnd(boolean success, int errorCode, int state) {
                                        if (success) {
                                            NexVideoEditor.this.mHasUsingAutoTrim = true;
                                        }
                                        if (NexVideoEditor.this.mTrimStateInterface != null) {
                                            NexVideoEditor.this.mTrimStateInterface.onEncodeEnd(success, errorCode, state);
                                        }
                                    }
                                });
                            }
                        });
                    }
                }
            });
            if (this.mTrimStateInterface != null) {
                this.mTrimStateInterface.onTrimStart();
            }
        }
    }

    public void export(final String outputFileURI, final EnocdeStateInterface esi) {
        Log.d("NexVideoEditor", "export engine state: %d ", Integer.valueOf(this.mEngineState));
        switch (this.mEngineState) {
            case 0:
            case 2:
                int i;
                setEngineState(BaiduSceneResult.TEMPLE);
                this.mCurrentEnocdeStateInterface = esi;
                nexEngine nexengine = this.mEngin;
                int i2 = this.mVideoRotation % nexClip.kClip_Rotate_180 == 0 ? this.mVideoWidth : this.mVideoHeight;
                if (this.mVideoRotation % nexClip.kClip_Rotate_180 == 0) {
                    i = this.mVideoHeight;
                } else {
                    i = this.mVideoWidth;
                }
                nexengine.export(outputFileURI, i2, i, this.mVideoBitrate, Long.MAX_VALUE, 0);
                esi.onEncodeStart();
                return;
            case 1:
                setEngineState(BaiduSceneResult.SHOOTING);
                this.mEngin.stop(new OnCompletionListener() {
                    public void onComplete(int i) {
                        NexVideoEditor.this.setEngineState(0);
                        NexVideoEditor.this.mHandler.post(new Runnable() {
                            public void run() {
                                NexVideoEditor.this.export(outputFileURI, esi);
                            }
                        });
                    }
                });
                return;
            default:
                Log.e("NexVideoEditor", "export is not allowed at EngineState :" + this.mEngineState);
                esi.onEncodeEnd(false, -1, -1);
                return;
        }
    }

    public boolean hasEdit() {
        return this.mApplyedEditValue.size() > 0 || this.mHasUsingAutoTrim;
    }

    public void destroy() {
        if (this.mEngin != null) {
            this.mEngin.removeEditorListener();
            this.mEngin.stop();
            nexApplicationConfig.releaseNativeEngine(this.mEngin);
            keepScreenOn(false);
        }
        this.mIsDestroy = true;
    }

    public void startPreview() {
        startPreview(null);
    }

    public void startPreview(OnCompletedListener onCompletedListener) {
        switch (this.mEngineState) {
            case 0:
            case 2:
                if (this.mEngin != null) {
                    int currentTime = this.mEngin.getCurrentPlayTimeTime();
                    if (currentTime == 0) {
                        currentTime = 100;
                    }
                    seek(currentTime, onCompletedListener);
                    return;
                }
                return;
            default:
                return;
        }
    }

    public int getProjectTotalTime() {
        if (this.mEngin != null) {
            nexProject project = this.mEngin.getProject();
            if (project != null) {
                return project.getTotalTime();
            }
        }
        return 0;
    }

    public int getVideoTotalTime() {
        if (this.mMainVideoClip != null) {
            return this.mMainVideoClip.getTotalTime();
        }
        if (this.mNexProject != null) {
            return this.mNexProject.getTotalTime();
        }
        return 0;
    }

    public boolean haveSavedEditState() {
        return !this.mSavedEditValue.isEmpty();
    }

    private nexProject createProject(nexClip clip) {
        if (this.mNexProject != null) {
            this.mNexProject.allClear(true);
            this.mNexProject = null;
        }
        if (clip == null) {
            return null;
        }
        clip.setRotateDegree(this.mVideoRotation);
        nexProject project = new nexProject();
        project.add(clip);
        clip.getCrop().randomizeStartEndPosition(true, CropMode.FIT);
        return project;
    }

    public void onStateChange(int i, int i1) {
        if (i == 2 && i1 == 1 && this.mEngineState == BaiduSceneResult.TAEKWONDO) {
            setEngineState(2);
            if (this.mPauseOnCompletedListener != null) {
                this.mPauseOnCompletedListener.onCompleted();
                this.mPauseOnCompletedListener = null;
            }
        }
        Log.d("NexVideoEditor", "nexEngineState : old state :" + i + " new state :" + i1);
    }

    private boolean addChange(final Change change, final OnCompletedListener listener) {
        switch (this.mEngineState) {
            case 0:
            case 2:
                change.applyChange();
                this.mEngin.updateProject();
                setEngineState(0);
                if (listener == null) {
                    return true;
                }
                listener.onCompleted();
                return true;
            case 1:
                setEngineState(BaiduSceneResult.SHOOTING);
                if (this.mEngin == null) {
                    return true;
                }
                this.mEngin.stop(new OnCompletionListener() {
                    public void onComplete(int i) {
                        change.applyChange();
                        if (NexVideoEditor.this.mEngin != null) {
                            NexVideoEditor.this.mEngin.updateProject();
                        }
                        NexVideoEditor.this.setEngineState(0);
                        if (listener != null) {
                            listener.onCompleted();
                        }
                    }
                });
                return true;
            default:
                Log.e("NexVideoEditor", "addChange is not allowed at EngineState :" + this.mEngineState);
                return false;
        }
    }

    public void onTimeChange(int time) {
        if (this.mEngineState == 1) {
            onTimeChanged(time);
        }
    }

    public void onSetTimeDone(int i) {
        this.setTimeSuccess = true;
        updataSeek();
        Log.d("NexVideoEditor", "onSetTimeDone : " + i);
    }

    public void onSetTimeFail(int i) {
        updataSeek();
        Log.d("NexVideoEditor", "onSetTimeFail");
    }

    public void onSetTimeIgnored() {
        updataSeek();
        Log.d("NexVideoEditor", "onSetTimeIgnored");
    }

    public void onEncodingDone(boolean b, int i) {
        if (this.mCurrentEnocdeStateInterface != null) {
            boolean z;
            EnocdeStateInterface enocdeStateInterface = this.mCurrentEnocdeStateInterface;
            if (b) {
                z = false;
            } else {
                z = true;
            }
            enocdeStateInterface.onEncodeEnd(z, i, 0);
        }
        setEngineState(0);
        Log.i("NexVideoEditor", "onEncodingDone errorCode : %s", Integer.valueOf(i));
        if (this.mApplyedEditValue.size() > 0) {
            HashMap<String, String> params = new HashMap();
            for (Entry<String, Change> entry : this.mApplyedEditValue.entrySet()) {
                String key = (String) entry.getKey();
                if ("bg_audio".equals(key)) {
                    params.put("usingBGM", String.valueOf(((BGMEdit) entry.getValue()).mBGMUri));
                } else if ("filter".equals(key)) {
                    params.put("usingFilter", String.valueOf(((FilterEffect) entry.getValue()).mFilter.getFilterId()));
                } else if ("source_audio".equals(key)) {
                    params.put("disable_source_audio", "true");
                } else if ("trim".equals(key)) {
                    params.put("usingTRIM", "trim");
                } else if ("edit_type_auto_water_mark_text".equals(key)) {
                    params.put("usingText", "text");
                }
            }
            BaseSamplingStatHelper.recordCountEvent("video_editor", "video_editor_using_effect", params);
        }
    }

    public void onPlayEnd() {
        if (this.mEngineState != BaiduSceneResult.TEMPLE) {
            setEngineState(0);
            seek(0, null);
            Log.i("NexVideoEditor", "onPlayEnd");
        }
    }

    public void onPlayFail(int err, int iClipID) {
        Log.e("NexVideoEditor", "onPlayFail : error code :" + err, "clipId" + iClipID);
        HashMap<String, String> params = new HashMap();
        params.put("errorcofr", String.valueOf(err));
        params.put("state", String.valueOf(this.mEngineState));
        BaseSamplingStatHelper.recordCountEvent("video_editor", "video_editor_play_failed", params);
        switch (this.mEngineState) {
            case BaiduSceneResult.TEMPLE /*105*/:
                if (this.mCurrentEnocdeStateInterface != null) {
                    this.mCurrentEnocdeStateInterface.onEncodeEnd(false, -1, 0);
                    break;
                }
                break;
        }
        setEngineState(0);
    }

    public void onPlayStart() {
        if (this.mEngineState != BaiduSceneResult.TEMPLE) {
            setEngineState(1);
            Log.i("NexVideoEditor", "onPlayStart");
        }
    }

    public void onClipInfoDone() {
    }

    public void onSeekStateChanged(boolean b) {
        Log.e("NexVideoEditor", "onSeekStateChanged " + b);
    }

    public void onEncodingProgress(int i) {
        if (this.mCurrentEnocdeStateInterface != null) {
            this.mCurrentEnocdeStateInterface.onEncodeProgress(i);
        }
        Log.i("NexVideoEditor", "engine encoding : " + i);
    }

    public void onCheckDirectExport(int i) {
    }

    public void onProgressThumbnailCaching(int progress, int maxValue) {
        if (this.mTrimStateInterface != null) {
            this.mTrimStateInterface.onTrimProgress(progress);
        }
        Log.i("NexVideoEditor", "engine onProgressThumbnailCaching : " + progress + "/" + maxValue);
    }

    public void onFastPreviewStartDone(int i, int i1, int i2) {
    }

    public void onFastPreviewStopDone(int i) {
    }

    public void onFastPreviewTimeDone(int i) {
    }

    public void onPreviewPeakMeter(int i, int i1) {
    }

    public void setVideoEditorAdjust(boolean adjust) {
        this.mApplyedEditValue.put("edit_type_adjust", new VideoEditorAdjust(adjust));
    }

    public void adjustBrightness(int bright) {
        if (this.mEngineState == 0 || this.mEngineState == 2) {
            apply(new OnCompletedListener() {
                public void onCompleted() {
                    NexVideoEditor.this.play();
                }
            });
        }
        this.mEngin.setBrightness(bright);
        this.mEngin.fastPreview(FastPreviewOption.adj_brightness, bright);
    }

    public void adjustSaturation(int saturation) {
        if (this.mEngineState == 0 || this.mEngineState == 2) {
            apply(new OnCompletedListener() {
                public void onCompleted() {
                    NexVideoEditor.this.play();
                }
            });
        }
        this.mEngin.setSaturation(saturation);
        this.mEngin.fastPreview(FastPreviewOption.adj_saturation, saturation);
    }

    public void adjustContrast(int contrast) {
        if (this.mEngineState == 0 || this.mEngineState == 2) {
            apply(new OnCompletedListener() {
                public void onCompleted() {
                    NexVideoEditor.this.play();
                }
            });
        }
        this.mEngin.setContrast(contrast);
        this.mEngin.fastPreview(FastPreviewOption.adj_contrast, contrast);
    }

    public void adjustVignetteRange(int vignetteRange) {
        if (this.mEngineState == 0 || this.mEngineState == 2) {
            apply(new OnCompletedListener() {
                public void onCompleted() {
                    NexVideoEditor.this.play();
                }
            });
        }
        this.mEngin.setVignetteRange(vignetteRange);
        this.mEngin.fastPreview(FastPreviewOption.adj_vignetteRange, vignetteRange);
    }

    public void adjustSharpness(int sharpness) {
        if (this.mEngineState == 0 || this.mEngineState == 2) {
            apply(new OnCompletedListener() {
                public void onCompleted() {
                    NexVideoEditor.this.play();
                }
            });
        }
        this.mEngin.setSharpness(sharpness);
        this.mEngin.fastPreview(FastPreviewOption.adj_sharpness, sharpness);
    }

    public boolean setSmartEffectTemplate(SmartEffect smartEffect) {
        this.mTempEditValue.put("edit_type_smart_effect_template", new SmartEffectTemplate(smartEffect));
        return false;
    }
}
