package cn.kuaipan.android.http;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public class ProcessMonitorInputStream extends FilterInputStream {
    private long mCurrent = 0;
    private final IKscTransferListener mListener;
    private long mMarkPos = 0;
    private final KscSpeedMonitor mMonitor;
    private final boolean mSendMode;

    protected ProcessMonitorInputStream(InputStream in, KscSpeedMonitor monitor, IKscTransferListener listener, boolean sendMode) {
        super(in);
        this.mMonitor = monitor;
        this.mListener = listener;
        this.mSendMode = sendMode;
    }

    private void process(long len) {
        if (len >= 0) {
            this.mCurrent += len;
            if (this.mMonitor != null) {
                this.mMonitor.recode(len);
            }
            if (this.mListener == null) {
                return;
            }
            if (this.mSendMode) {
                this.mListener.sended(len);
            } else {
                this.mListener.received(len);
            }
        }
    }

    public int read() throws IOException {
        int result = super.read();
        if (result != -1) {
            process(1);
        }
        return result;
    }

    public int read(byte[] buffer, int offset, int count) throws IOException {
        int len = super.read(buffer, offset, count);
        if (len > 0) {
            process((long) len);
        }
        return len;
    }

    public long skip(long count) throws IOException {
        long len = super.skip(count);
        if (len > 0) {
            process(len);
        }
        return len;
    }

    public synchronized void mark(int readlimit) {
        super.mark(readlimit);
        this.mMarkPos = this.mCurrent;
    }

    public synchronized void reset() throws IOException {
        super.reset();
        this.mCurrent = this.mMarkPos;
        if (this.mListener != null) {
            if (this.mSendMode) {
                this.mListener.setSendPos(this.mCurrent);
            } else {
                this.mListener.setReceivePos(this.mCurrent);
            }
        }
    }
}
