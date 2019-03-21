package com.nexstreaming.kminternal.kinemaster.codeccolorformat;

import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaFormat;
import android.util.Log;
import java.io.IOException;
import java.nio.ByteBuffer;

/* compiled from: WrapMediaEncoder */
public class c extends a {
    private d a;
    private MediaCodec b = MediaCodec.createEncoderByType("video/avc");
    private byte[] c;
    private byte[] d;
    private ByteBuffer[] e;
    private ByteBuffer[] f;

    public c() throws IOException {
        MediaFormat createVideoFormat = MediaFormat.createVideoFormat("video/avc", 1280, 720);
        createVideoFormat.setInteger("bitrate", 125000);
        createVideoFormat.setInteger("frame-rate", 30);
        createVideoFormat.setInteger("color-format", 21);
        createVideoFormat.setInteger("i-frame-interval", 5);
        this.b.configure(createVideoFormat, null, null, 1);
        this.b.start();
        this.e = this.b.getInputBuffers();
        this.f = this.b.getOutputBuffers();
    }

    public c(int i, int i2) throws IOException {
        MediaFormat createVideoFormat = MediaFormat.createVideoFormat("video/avc", i, i2);
        createVideoFormat.setInteger("bitrate", 125000);
        createVideoFormat.setInteger("frame-rate", 30);
        createVideoFormat.setInteger("color-format", 21);
        createVideoFormat.setInteger("i-frame-interval", 5);
        this.b.configure(createVideoFormat, null, null, 1);
        this.b.start();
        this.e = this.b.getInputBuffers();
        this.f = this.b.getOutputBuffers();
    }

    public void a() throws IOException {
        this.b.stop();
        this.b.release();
    }

    public boolean a(byte[] bArr, long j) {
        if (this.b == null || this.e == null || this.f == null || this.a == null) {
            Log.w("WrapMediaEncoder", "Media codec did not initailize");
            return false;
        }
        ByteBuffer byteBuffer;
        ByteBuffer[] inputBuffers = this.b.getInputBuffers();
        ByteBuffer[] outputBuffers = this.b.getOutputBuffers();
        int dequeueInputBuffer = this.b.dequeueInputBuffer(-1);
        if (dequeueInputBuffer >= 0) {
            byteBuffer = inputBuffers[dequeueInputBuffer];
            byteBuffer.clear();
            if (bArr != null) {
                byteBuffer.put(bArr);
                this.b.queueInputBuffer(dequeueInputBuffer, 0, bArr.length, j, 0);
            } else {
                this.b.queueInputBuffer(dequeueInputBuffer, 0, 0, j, 4);
            }
        }
        BufferInfo bufferInfo = new BufferInfo();
        int dequeueOutputBuffer = this.b.dequeueOutputBuffer(bufferInfo, 10000);
        switch (dequeueOutputBuffer) {
            case -3:
                Log.d("WrapMediaEncoder", "INFO_OUTPUT_BUFFERS_CHANGED");
                this.b.getOutputBuffers();
                this.a.a(1);
                break;
            case -2:
                Log.d("WrapMediaEncoder", "New format " + this.b.getOutputFormat());
                this.a.a(2);
                break;
            case -1:
                Log.d("WrapMediaEncoder", "dequeueOutputBuffer timed out!");
                this.a.a(3);
                break;
            default:
                int i = dequeueOutputBuffer;
                while (i >= 0) {
                    if ((bufferInfo.flags & 4) != 0) {
                        Log.d("WrapMediaEncoder", "OutputBuffer BUFFER_FLAG_END_OF_STREAM");
                        this.a.a(4);
                    }
                    byteBuffer = outputBuffers[i];
                    if (byteBuffer == null) {
                        Log.w("WrapMediaEncoder", "Output buffer is null!");
                        break;
                    } else if (bufferInfo.size <= 0) {
                        Log.w("WrapMediaEncoder", "Output was not available!");
                        break;
                    } else {
                        Log.d("WrapMediaEncoder", String.format("Output was available Falg:%d Size:%d", new Object[]{Integer.valueOf(bufferInfo.flags), Integer.valueOf(bufferInfo.size)}));
                        byteBuffer.position(bufferInfo.offset);
                        byteBuffer.limit(bufferInfo.offset + bufferInfo.size);
                        if ((bufferInfo.flags & 2) != 0) {
                            Log.d("WrapMediaEncoder", "OutputBuffer BUFFER_FLAG_CODEC_CONFIG");
                            Object obj = new byte[bufferInfo.size];
                            byteBuffer.get(obj);
                            byteBuffer = ByteBuffer.wrap(obj);
                            if (byteBuffer.getInt() == 1) {
                                System.out.println("parsing sps/pps");
                            } else {
                                System.out.println("something is amiss?");
                            }
                            while (true) {
                                if (byteBuffer.get() == (byte) 0 && byteBuffer.get() == (byte) 0 && byteBuffer.get() == (byte) 0 && byteBuffer.get() == (byte) 1) {
                                    dequeueOutputBuffer = byteBuffer.position();
                                    this.c = new byte[((dequeueOutputBuffer - 8) + 4)];
                                    this.c[0] = (byte) 0;
                                    this.c[1] = (byte) 0;
                                    this.c[2] = (byte) 0;
                                    this.c[3] = (byte) 1;
                                    System.arraycopy(obj, 4, this.c, 4, this.c.length - 4);
                                    this.d = new byte[((obj.length - dequeueOutputBuffer) + 4)];
                                    this.d[0] = (byte) 0;
                                    this.d[1] = (byte) 0;
                                    this.d[2] = (byte) 0;
                                    this.d[3] = (byte) 1;
                                    System.arraycopy(obj, dequeueOutputBuffer, this.d, 4, this.d.length - 4);
                                    this.a.a(this.c, this.d);
                                    this.b.releaseOutputBuffer(i, false);
                                    i = this.b.dequeueOutputBuffer(bufferInfo, 10000);
                                }
                            }
                        } else {
                            byte[] bArr2 = new byte[bufferInfo.size];
                            byteBuffer.get(bArr2);
                            this.a.a(bArr2, 0, bArr2.length, bufferInfo.presentationTimeUs);
                            this.b.releaseOutputBuffer(i, false);
                            i = this.b.dequeueOutputBuffer(bufferInfo, 10000);
                        }
                    }
                }
                break;
        }
        return true;
    }

    public void a(d dVar) {
        this.a = dVar;
    }
}
