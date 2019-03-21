package com.cdv.io;

import android.media.AudioRecord;
import android.util.Log;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicInteger;

public class NvAndroidAudioRecorder {
    private static final String TAG = "NvAndroidAudioRecorder";
    private static final int m_audioFormat = 2;
    private static final int m_channelConfig = 16;
    private static final int m_chunkSizeInBytes = 2048;
    private static final int m_sampleCountInChunk = 1024;
    private static final int m_sampleRateInHz = 44100;
    private static final int m_sampleSizeInBytes = 2;
    private static final boolean m_verbose = false;
    private ByteBuffer m_chunkBuffer = null;
    private AtomicInteger m_exitingRecordingThread = new AtomicInteger(0);
    private boolean m_isRecording = false;
    private RecordDataCallback m_recordDataCallback = null;
    private AudioRecord m_recorder;
    private Thread m_recordingThread = null;

    public interface RecordDataCallback {
        void onAudioRecordDataArrived(ByteBuffer byteBuffer, int i);
    }

    public NvAndroidAudioRecorder() {
        int minBufferSize = AudioRecord.getMinBufferSize(m_sampleRateInHz, 16, 2);
        if (32768 >= minBufferSize) {
            minBufferSize = 32768;
        }
        try {
            this.m_chunkBuffer = ByteBuffer.allocateDirect(2048);
            this.m_recorder = new AudioRecord(1, m_sampleRateInHz, 16, 2, minBufferSize);
            if (this.m_recorder.getState() == 0) {
                Log.e(TAG, "Failed to initialize AudioRecord object!");
                this.m_recorder.release();
                this.m_recorder = null;
            }
        } catch (Exception e) {
            Log.e(TAG, "" + e.getMessage());
            e.printStackTrace();
        }
    }

    public void releaseAudioRecorder() {
        if (this.m_recorder != null) {
            this.m_recorder.release();
            this.m_recorder = null;
        }
    }

    public boolean startRecord(RecordDataCallback recordDataCallback) {
        if (this.m_isRecording) {
            return false;
        }
        try {
            this.m_recorder.startRecording();
            this.m_isRecording = true;
            this.m_recordDataCallback = recordDataCallback;
            this.m_recordingThread = new Thread(new Runnable() {
                public void run() {
                    NvAndroidAudioRecorder.this.readAudioData();
                }
            }, "Audio Recorder");
            this.m_recordingThread.start();
            return true;
        } catch (Exception e) {
            Log.e(TAG, "" + e.getMessage());
            e.printStackTrace();
            if (this.m_isRecording) {
                this.m_recorder.stop();
                this.m_isRecording = false;
            }
            this.m_recordDataCallback = null;
            return false;
        }
    }

    public boolean stopRecord() {
        if (!this.m_isRecording) {
            return false;
        }
        try {
            this.m_exitingRecordingThread.set(1);
            this.m_recordingThread.join();
            this.m_exitingRecordingThread.set(0);
            this.m_recordingThread = null;
            this.m_recordDataCallback = null;
            this.m_recorder.stop();
            this.m_isRecording = false;
            return true;
        } catch (Exception e) {
            Log.e(TAG, "" + e.getMessage());
            e.printStackTrace();
            return false;
        }
    }

    private void readAudioData() {
        while (true) {
            try {
                this.m_chunkBuffer.position(0);
                int i = 0;
                while (this.m_exitingRecordingThread.get() == 0) {
                    int i2 = 2048 - i;
                    int read = this.m_recorder.read(this.m_chunkBuffer, i2);
                    if (read < 0) {
                        Log.e(TAG, "read() failed! errno=" + read);
                        Thread.sleep(4);
                    } else {
                        if (read != 0) {
                            this.m_chunkBuffer.position(i + read);
                            i += read;
                        }
                        if (read != i2) {
                            Thread.sleep(4);
                        } else if (this.m_recordDataCallback != null) {
                            this.m_recordDataCallback.onAudioRecordDataArrived(this.m_chunkBuffer, 1024);
                        }
                    }
                }
                return;
            } catch (Exception e) {
                Log.e(TAG, "" + e.getMessage());
                e.printStackTrace();
                return;
            }
        }
    }
}
