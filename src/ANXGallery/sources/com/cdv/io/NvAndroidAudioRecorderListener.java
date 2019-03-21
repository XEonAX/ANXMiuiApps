package com.cdv.io;

import com.cdv.io.NvAndroidAudioRecorder.RecordDataCallback;
import java.nio.ByteBuffer;

public class NvAndroidAudioRecorderListener implements RecordDataCallback {
    private int m_id = -1;

    private static native void audioRecordDataReady(int i, ByteBuffer byteBuffer, int i2);

    public NvAndroidAudioRecorderListener(int i) {
        this.m_id = i;
    }

    public void onAudioRecordDataArrived(ByteBuffer byteBuffer, int i) {
        audioRecordDataReady(this.m_id, byteBuffer, i);
    }
}
