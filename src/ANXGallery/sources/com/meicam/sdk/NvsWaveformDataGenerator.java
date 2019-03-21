package com.meicam.sdk;

import android.os.Handler;
import android.os.Looper;
import java.util.HashMap;
import java.util.Map.Entry;

public class NvsWaveformDataGenerator {
    private final String TAG = "Meicam";
    private boolean m_fetchingWaveformData = false;
    private long m_nextTaskId = 1;
    private HashMap<Long, Task> m_taskMap = new HashMap();
    private float[] m_tmpLeftWaveformData;
    private float[] m_tmpRightWaveformData;
    private long m_tmpSamplesPerGroup = 0;
    private WaveformDataCallback m_waveformDataCallback;
    private long m_waveformDataGenerator = 0;

    private static class Task {
        public String m_audioFilePath;
        public long m_audioFileSampleCount;
        private float[] m_leftWaveformData;
        private float[] m_rightWaveformData;
        private long m_samplesPerGroup;
        long taskId;
        long waveformTaskId;

        private Task() {
        }

        /* synthetic */ Task(AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public interface WaveformDataCallback {
        void onWaveformDataGenerationFailed(long j, String str, long j2);

        void onWaveformDataReady(long j, String str, long j2, long j3, float[] fArr, float[] fArr2);
    }

    private native void nativeCancelTask(long j);

    private native void nativeClose(long j);

    private native long nativeFetchWaveformData(long j, String str, long j2);

    private native long nativeGetAudioFileDuration(String str);

    private native long nativeGetAudioFileSampleCount(String str);

    private native long nativeInit();

    public NvsWaveformDataGenerator() {
        NvsUtils.checkFunctionInMainThread();
        this.m_waveformDataGenerator = nativeInit();
    }

    public void release() {
        NvsUtils.checkFunctionInMainThread();
        if (!isReleased()) {
            for (Entry value : this.m_taskMap.entrySet()) {
                nativeCancelTask(((Task) value.getValue()).waveformTaskId);
            }
            this.m_taskMap.clear();
            this.m_waveformDataCallback = null;
            nativeClose(this.m_waveformDataGenerator);
            this.m_waveformDataGenerator = 0;
        }
    }

    public boolean isReleased() {
        NvsUtils.checkFunctionInMainThread();
        return this.m_waveformDataGenerator == 0;
    }

    public void setWaveformDataCallback(WaveformDataCallback waveformDataCallback) {
        NvsUtils.checkFunctionInMainThread();
        this.m_waveformDataCallback = waveformDataCallback;
    }

    public long getAudioFileDuration(String str) {
        NvsUtils.checkFunctionInMainThread();
        if (str == null) {
            return 0;
        }
        return nativeGetAudioFileDuration(str);
    }

    public long getAudioFileSampleCount(String str) {
        NvsUtils.checkFunctionInMainThread();
        if (str == null) {
            return 0;
        }
        return nativeGetAudioFileSampleCount(str);
    }

    public long generateWaveformData(String str, long j, int i) {
        NvsUtils.checkFunctionInMainThread();
        if (isReleased()) {
            return 0;
        }
        if (str == null || j <= 0) {
            return 0;
        }
        long nativeGetAudioFileSampleCount = nativeGetAudioFileSampleCount(str);
        if (nativeGetAudioFileSampleCount <= 0) {
            return 0;
        }
        this.m_fetchingWaveformData = true;
        long nativeFetchWaveformData = nativeFetchWaveformData(this.m_waveformDataGenerator, str, j);
        this.m_fetchingWaveformData = false;
        if (nativeFetchWaveformData == 0) {
            return 0;
        }
        Task task = new Task();
        long j2 = this.m_nextTaskId;
        this.m_nextTaskId = 1 + j2;
        task.taskId = j2;
        task.waveformTaskId = nativeFetchWaveformData;
        task.m_audioFilePath = str;
        task.m_audioFileSampleCount = nativeGetAudioFileSampleCount;
        task.m_samplesPerGroup = j;
        if (this.m_tmpSamplesPerGroup > 0) {
            task.m_leftWaveformData = this.m_tmpLeftWaveformData;
            task.m_rightWaveformData = this.m_tmpRightWaveformData;
            task.m_samplesPerGroup = this.m_tmpSamplesPerGroup;
            this.m_tmpLeftWaveformData = null;
            this.m_tmpRightWaveformData = null;
            this.m_tmpSamplesPerGroup = 0;
        }
        this.m_taskMap.put(Long.valueOf(task.taskId), task);
        if (task.m_leftWaveformData != null) {
            finishWaveformDataFetchingTask(task.taskId, true);
        }
        return task.taskId;
    }

    public void cancelTask(long j) {
        NvsUtils.checkFunctionInMainThread();
        Task task = (Task) this.m_taskMap.get(Long.valueOf(j));
        if (task != null) {
            if (!isReleased()) {
                nativeCancelTask(task.waveformTaskId);
            }
            this.m_taskMap.remove(Long.valueOf(j));
        }
    }

    protected void notifyWaveformDataReady(long j, long j2, float[] fArr, float[] fArr2) {
        if (this.m_fetchingWaveformData) {
            this.m_tmpSamplesPerGroup = j2;
            this.m_tmpLeftWaveformData = fArr;
            this.m_tmpRightWaveformData = fArr2;
            return;
        }
        long j3;
        for (Entry value : this.m_taskMap.entrySet()) {
            Task task = (Task) value.getValue();
            if (task.waveformTaskId == j) {
                task.m_samplesPerGroup = j2;
                task.m_leftWaveformData = fArr;
                task.m_rightWaveformData = fArr2;
                j3 = task.taskId;
                break;
            }
        }
        j3 = 0;
        if (j3 != 0) {
            finishWaveformDataFetchingTask(j3, false);
        }
    }

    private void finishWaveformDataFetchingTask(long j, boolean z) {
        Task task = (Task) this.m_taskMap.get(Long.valueOf(j));
        this.m_taskMap.remove(Long.valueOf(j));
        if (task != null) {
            WaveformDataCallback waveformDataCallback = this.m_waveformDataCallback;
            if (waveformDataCallback != null) {
                String str = task.m_audioFilePath;
                long j2 = task.m_audioFileSampleCount;
                long access$100 = task.m_samplesPerGroup;
                float[] access$200 = task.m_leftWaveformData;
                float[] access$300 = task.m_rightWaveformData;
                if (z) {
                    final WaveformDataCallback waveformDataCallback2 = waveformDataCallback;
                    final long j3 = j;
                    final String str2 = str;
                    final long j4 = j2;
                    final long j5 = access$100;
                    final float[] fArr = access$200;
                    final float[] fArr2 = access$300;
                    new Handler(Looper.getMainLooper()).post(new Runnable() {
                        public void run() {
                            waveformDataCallback2.onWaveformDataReady(j3, str2, j4, j5, fArr, fArr2);
                        }
                    });
                    return;
                }
                waveformDataCallback.onWaveformDataReady(j, str, j2, access$100, access$200, access$300);
            }
        }
    }
}
