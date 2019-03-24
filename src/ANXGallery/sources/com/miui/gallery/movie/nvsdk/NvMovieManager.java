package com.miui.gallery.movie.nvsdk;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.meicam.sdk.NvsAudioResolution;
import com.meicam.sdk.NvsLiveWindowExt;
import com.meicam.sdk.NvsMultiThumbnailSequenceView.ThumbnailSequenceDesc;
import com.meicam.sdk.NvsRational;
import com.meicam.sdk.NvsStreamingContext;
import com.meicam.sdk.NvsStreamingContext.CompileCallback;
import com.meicam.sdk.NvsStreamingContext.CompileCallback2;
import com.meicam.sdk.NvsTimeline;
import com.meicam.sdk.NvsVideoResolution;
import com.meicam.themehelper.NvsImageFileDesc;
import com.meicam.themehelper.NvsThemeHelper;
import com.miui.core.SdkHelper;
import com.miui.gallery.movie.core.MovieManager;
import com.miui.gallery.movie.core.MovieManager.EncodeStateInterface;
import com.miui.gallery.movie.core.MovieManager.StateChangeListener;
import com.miui.gallery.movie.entity.AudioResource;
import com.miui.gallery.movie.entity.ImageEntity;
import com.miui.gallery.movie.entity.MovieAspectRatio;
import com.miui.gallery.movie.entity.MovieInfo;
import com.miui.gallery.movie.entity.TemplateResource;
import com.miui.gallery.movie.ui.factory.TemplateFactory;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MovieLibraryLoaderHelper;
import com.miui.gallery.util.ScreenUtils;
import com.miui.os.Rom;
import java.util.ArrayList;
import java.util.List;
import miui.media.Mp3Encoder;

public class NvMovieManager extends MovieManager {
    private static final String[] sCompileRateBlackList = new String[]{"grus"};
    private static boolean sIsPaused;
    private Context mContext;
    private EncodeStateInterface mExportListener;
    private NvsLiveWindowExt mLiveWindow;
    private NvStateController mMovieController;
    private int mSeekIndex;
    private NvsStreamingContext mStreamingContext;
    private boolean mThemeEnable;
    private NvsThemeHelper mThemeHelper = new NvsThemeHelper();
    private NvsTimeline mTimeline;
    private int mVideoHeight;

    public void init(Context context) {
        this.mContext = context.getApplicationContext();
        NvsStreamingContext.setNativeLibraryDirPath(MovieLibraryLoaderHelper.getInstance().getLibraryPath());
        this.mStreamingContext = NvsStreamingContext.init((Activity) context, "assets:/nv/nvsdk.lic", 18);
        this.mLiveWindow = new NvsLiveWindowExt(context);
        this.mDisplayView = this.mLiveWindow;
        if (SdkHelper.IS_MIUI) {
            NvsStreamingContext.setDebugLevel(Rom.IS_STABLE ? 1 : 3);
        } else {
            NvsStreamingContext.setDebugLevel(1);
        }
        initTimeLine(context);
    }

    private void initTimeLine(Context context) {
        if (this.mStreamingContext == null) {
            Log.e("NvMovieManager", "streamingContext is null!");
            return;
        }
        NvsVideoResolution videoEditRes = new NvsVideoResolution();
        videoEditRes.imageWidth = ScreenUtils.getScreenWidth();
        videoEditRes.imageHeight = (int) (((float) videoEditRes.imageWidth) * MovieAspectRatio.getFitRatio((1.0f * ((float) ScreenUtils.getFullScreenHeight((Activity) context))) / ((float) videoEditRes.imageWidth)).getRatio());
        Log.d("NvMovieManager", "initTimeLine in size: %d:%d", Integer.valueOf(videoEditRes.imageHeight), Integer.valueOf(videoEditRes.imageWidth));
        this.mVideoHeight = videoEditRes.imageHeight;
        videoEditRes.imagePAR = new NvsRational(1, 1);
        NvsRational videoFps = new NvsRational(25, 1);
        NvsAudioResolution audioEditRes = new NvsAudioResolution();
        audioEditRes.sampleRate = Mp3Encoder.DEFAULT_SAMPLE_RATE;
        audioEditRes.channelCount = 2;
        this.mTimeline = this.mStreamingContext.createTimeline(videoEditRes, videoFps, audioEditRes);
        if (this.mTimeline == null) {
            Log.e("NvMovieManager", "mTimeline is null!");
            return;
        }
        this.mMovieController = new NvStateController(this.mStreamingContext, this.mTimeline);
        this.mStreamingContext.connectTimelineWithLiveWindowExt(this.mTimeline, this.mLiveWindow);
        this.mStreamingContext.setStreamingEngineCallback(this.mMovieController);
        this.mStreamingContext.setPlaybackCallback(this.mMovieController);
        this.mStreamingContext.setPlaybackCallback2(this.mMovieController);
        sIsPaused = false;
    }

    private ArrayList<NvsImageFileDesc> parseClipFromFile(List<ImageEntity> imageList) {
        ArrayList<NvsImageFileDesc> fileList = new ArrayList();
        for (int i = 0; i < imageList.size(); i++) {
            NvsImageFileDesc imageInfo = new NvsImageFileDesc();
            imageInfo.filePath = ((ImageEntity) imageList.get(i)).image;
            imageInfo.hasFace = false;
            imageInfo.show = true;
            fileList.add(imageInfo);
        }
        return fileList;
    }

    private void applyThemeAsset(String themeAsset) {
        this.mThemeHelper.applyTimelineTheme(themeAsset, false, TextUtils.equals("movieAssetsNormal", themeAsset));
    }

    public void addStateChangeListener(StateChangeListener stateChangeListener) {
        this.mMovieController.addStateChangeListener(stateChangeListener);
    }

    public void setInfo(MovieInfo movieInfo) {
        this.mThemeHelper.initHelper(this.mContext, this.mTimeline, parseClipFromFile(movieInfo.imageList));
        this.mThemeHelper.setDefaultRhythmPath("assets:/nv/defaultRhythm.json", "assets:/nv/defaultRhythm10s.json");
        this.mThemeHelper.changeCaptionText(movieInfo.title, 0);
        this.mThemeHelper.changeCaptionText(movieInfo.subTitle, 1);
        if (TextUtils.isEmpty(movieInfo.template)) {
            movieInfo.template = "movieAssetsNormal";
            applyThemeAsset("movieAssetsNormal");
        } else if (movieInfo.template.contains("Assets")) {
            applyThemeAsset(movieInfo.template);
        } else {
            String dir = TemplateFactory.getTemplateDir(movieInfo.template);
            if (FileUtils.isFileExist(dir)) {
                this.mThemeHelper.applyTimelineTheme(dir, true, false);
            } else {
                movieInfo.template = "movieAssetsNormal";
                applyThemeAsset("movieAssetsNormal");
            }
        }
        if (!movieInfo.isShortVideo) {
            this.mThemeHelper.changeTimelineDuration(movieInfo.isShortVideo);
        }
        replay();
    }

    public void removeImageAtIndex(int index) {
        this.mThemeHelper.deleteClip(index);
        replay();
    }

    public void setIsShortVideo(boolean isShortVideo) {
        this.mThemeHelper.changeTimelineDuration(isShortVideo);
    }

    public void addImage(List<ImageEntity> imageList) {
        this.mThemeHelper.insertClip(parseClipFromFile(imageList));
        replay();
    }

    public void moveImage(int srcIndex, int destIndex) {
        this.mThemeHelper.moveClip(srcIndex, destIndex);
        replay();
    }

    public void resetImage(List<ImageEntity> imageList, boolean isShortVideo) {
        this.mThemeHelper.changeTimelineDuration(isShortVideo);
        this.mThemeHelper.resetClip(parseClipFromFile(imageList));
    }

    public void onResume() {
        if (sIsPaused) {
            this.mLiveWindow.repaintVideoFrame();
        }
        this.mMovieController.onResume();
        super.onResume();
    }

    public void onPause() {
        this.mMovieController.onPause();
        sIsPaused = true;
        super.onPause();
    }

    public void destroy() {
        if (sIsPaused) {
            this.mStreamingContext.removeTimeline(this.mTimeline);
            this.mStreamingContext.clearCachedResources(false);
            NvsStreamingContext.close();
        }
        this.mExportListener = null;
        super.destroy();
    }

    public int getTotalTime() {
        return (int) (this.mTimeline.getDuration() / 1000);
    }

    public boolean isSupportVideo(String path) {
        return this.mStreamingContext.getAVFileInfo(path) != null;
    }

    public void setAudio(AudioResource audio) {
        if (audio == null || audio.getResType() == 1) {
            this.mThemeHelper.changeMusic(null, -1);
        } else if (audio.getResType() == 2) {
            this.mThemeHelper.changeMusic(audio.getDownloadSrcPath(), 1);
        } else {
            this.mThemeHelper.changeMusic(audio.getDownloadSrcPath(), 2);
        }
        replay();
    }

    public void setTemplate(TemplateResource templateResource) {
        String templatePath = templateResource.getSrcPath();
        this.mThemeHelper.applyTimelineTheme(templatePath, !templateResource.isPackageAssets, TextUtils.equals("movieAssetsNormal", templatePath));
        replay();
    }

    public void play() {
        if (this.mThemeEnable) {
            this.mMovieController.play();
            return;
        }
        setThemeEnable(true);
        this.mMovieController.play(this.mThemeHelper.getTimelinePosition(this.mSeekIndex));
    }

    public void replay() {
        if (!this.mThemeEnable) {
            setThemeEnable(true);
        }
        this.mMovieController.replay();
    }

    public void seek(int duration) {
        if (!this.mThemeEnable) {
            setThemeEnable(true);
        }
        this.mMovieController.seek(duration);
    }

    public int seekToIndex(int index) {
        this.mSeekIndex = index;
        setThemeEnable(false);
        int time = (int) (this.mThemeHelper.getTimelinePosition(index) / 1000);
        this.mMovieController.seek(time);
        return time;
    }

    public void setThemeEnable(boolean enable) {
        this.mThemeEnable = enable;
        this.mThemeHelper.setThemeEnabled(enable);
    }

    public void export(String outputFileURI, EncodeStateInterface esi) {
        if (!this.mThemeEnable) {
            long time = this.mStreamingContext.getTimelineCurrentPosition(this.mTimeline);
            setThemeEnable(true);
            this.mMovieController.seek((int) (time / 1000));
        }
        this.mExportListener = esi;
        this.mExportListener.onEncodeStart();
        this.mStreamingContext.setCompileCallback2(new CompileCallback2() {
            public void onCompileCompleted(NvsTimeline nvsTimeline, boolean isCanceled) {
                if (NvMovieManager.this.mExportListener == null) {
                    return;
                }
                if (isCanceled) {
                    NvMovieManager.this.mExportListener.onEncodeEnd(false, true, 0);
                } else {
                    NvMovieManager.this.mExportListener.onEncodeEnd(true, false, 0);
                }
            }
        });
        this.mStreamingContext.setCompileCallback(new CompileCallback() {
            public void onCompileProgress(NvsTimeline nvsTimeline, int i) {
                if (NvMovieManager.this.mExportListener != null) {
                    NvMovieManager.this.mExportListener.onEncodeProgress(i);
                }
            }

            public void onCompileFinished(NvsTimeline nvsTimeline) {
            }

            public void onCompileFailed(NvsTimeline nvsTimeline) {
                if (NvMovieManager.this.mExportListener != null) {
                    NvMovieManager.this.mExportListener.onEncodeEnd(false, false, 0);
                }
            }
        });
        this.mStreamingContext.setCustomCompileVideoHeight(this.mVideoHeight);
        int flag = 4;
        if (isDisableCompileRate()) {
            flag = 4 | 2;
        }
        this.mStreamingContext.compileTimeline(this.mTimeline, 0, this.mTimeline.getDuration(), outputFileURI, 256, 2, flag);
    }

    public void cancelExport() {
        this.mMovieController.cancelExport();
    }

    public void resume() {
        if (this.mThemeEnable) {
            this.mMovieController.resume();
            return;
        }
        setThemeEnable(true);
        this.mMovieController.play(this.mThemeHelper.getTimelinePosition(this.mSeekIndex));
    }

    public void pause() {
        this.mMovieController.pause();
    }

    public void pauseOrResume() {
        if (!this.mMovieController.isResume()) {
            this.mMovieController.pause();
        } else if (this.mThemeEnable) {
            this.mMovieController.resume();
        } else {
            setThemeEnable(true);
            this.mMovieController.play(this.mThemeHelper.getTimelinePosition(this.mSeekIndex));
        }
    }

    public ArrayList<ThumbnailSequenceDesc> getThumbnailImages() {
        return this.mThemeHelper.getThumbnailImages();
    }

    private boolean isDisableCompileRate() {
        for (String product : sCompileRateBlackList) {
            if (product.equals(Build.DEVICE)) {
                return true;
            }
        }
        return false;
    }
}
