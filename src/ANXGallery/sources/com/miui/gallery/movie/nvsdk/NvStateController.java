package com.miui.gallery.movie.nvsdk;

import com.meicam.sdk.NvsRational;
import com.meicam.sdk.NvsStreamingContext;
import com.meicam.sdk.NvsStreamingContext.PlaybackCallback;
import com.meicam.sdk.NvsStreamingContext.PlaybackCallback2;
import com.meicam.sdk.NvsStreamingContext.StreamingEngineCallback;
import com.meicam.sdk.NvsTimeline;
import com.miui.gallery.movie.core.IMovieController;
import com.miui.gallery.movie.core.MovieManager.StateChangeListener;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.util.Log;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

public class NvStateController implements PlaybackCallback, PlaybackCallback2, StreamingEngineCallback, IMovieController {
    private NvsRational mNvsRational = new NvsRational(3, 4);
    private CopyOnWriteArrayList<StateChangeListener> mStateChangeListeners;
    private NvsStreamingContext mStreamingContext;
    private NvsTimeline mTimeline;

    public NvStateController(NvsStreamingContext streamingContext, NvsTimeline timeline) {
        this.mStreamingContext = streamingContext;
        this.mTimeline = timeline;
    }

    public void replay() {
        play(0);
    }

    public void play() {
        play(this.mStreamingContext.getTimelineCurrentPosition(this.mTimeline));
    }

    public void play(long startTime) {
        this.mStreamingContext.playbackTimeline(this.mTimeline, startTime, this.mTimeline.getDuration(), this.mNvsRational, true, 0);
    }

    public void pause() {
        if (getCurrentEngineState() != 5) {
            this.mStreamingContext.stop(2);
        }
    }

    public void resume() {
        if (getCurrentEngineState() != 3) {
            this.mStreamingContext.playbackTimeline(this.mTimeline, this.mStreamingContext.getTimelineCurrentPosition(this.mTimeline), this.mTimeline.getDuration(), this.mNvsRational, true, 0);
        }
    }

    public void onResume() {
    }

    public void onPause() {
        pause();
    }

    public void pauseOrResume() {
        if (getCurrentEngineState() == 4 || getCurrentEngineState() == 0) {
            resume();
        } else {
            pause();
        }
    }

    public boolean isResume() {
        return getCurrentEngineState() == 4 || getCurrentEngineState() == 0;
    }

    public void seek(int duration) {
        seekLong((long) (duration * 1000));
    }

    private void seekLong(long duration) {
        this.mStreamingContext.seekTimeline(this.mTimeline, duration, this.mNvsRational, 0);
    }

    public void cancelExport() {
        Log.d("NvStateController", "cancelExport");
        if (getCurrentEngineState() == 5) {
            this.mStreamingContext.stop(2);
        }
        Log.d("NvStateController", "cancelExport done");
    }

    public void addStateChangeListener(StateChangeListener stateChangeInterface) {
        if (stateChangeInterface != null) {
            if (this.mStateChangeListeners == null) {
                this.mStateChangeListeners = new CopyOnWriteArrayList();
            }
            if (!this.mStateChangeListeners.contains(stateChangeInterface)) {
                this.mStateChangeListeners.add(stateChangeInterface);
            }
        }
    }

    public void onPlaybackPreloadingCompletion(NvsTimeline nvsTimeline) {
    }

    public void onPlaybackStopped(NvsTimeline nvsTimeline) {
    }

    public void onPlaybackEOF(NvsTimeline nvsTimeline) {
        ThreadManager.getMainHandler().post(new Runnable() {
            public void run() {
                Iterator it = NvStateController.this.mStateChangeListeners.iterator();
                while (it.hasNext()) {
                    ((StateChangeListener) it.next()).onPlaybackEOF();
                }
            }
        });
    }

    public void onStreamingEngineStateChanged(int state) {
        Log.d("NvStateController", "state: %d", Integer.valueOf(state));
        int movieState = getStateFromNvEngine(state);
        Iterator it = this.mStateChangeListeners.iterator();
        while (it.hasNext()) {
            ((StateChangeListener) it.next()).onStateChanged(movieState);
        }
    }

    private int getStateFromNvEngine(int nvState) {
        switch (nvState) {
            case 0:
                return 2;
            case 3:
                return 1;
            case 4:
                return 3;
            case 5:
                return 200;
            default:
                return -500;
        }
    }

    private int getCurrentEngineState() {
        return this.mStreamingContext.getStreamingEngineState();
    }

    public void onFirstVideoFramePresented(NvsTimeline nvsTimeline) {
        Iterator it = this.mStateChangeListeners.iterator();
        while (it.hasNext()) {
            ((StateChangeListener) it.next()).onPlaybackPreloadingCompletion();
        }
    }

    public void onPlaybackTimelinePosition(NvsTimeline nvsTimeline, long l) {
        Iterator it = this.mStateChangeListeners.iterator();
        while (it.hasNext()) {
            ((StateChangeListener) it.next()).onPlaybackTimeChanged((int) (l / 1000));
        }
    }
}
