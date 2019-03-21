package cn.kuaipan.android.http;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class ProcessMonitorOutputStream extends FilterOutputStream {
    private final IKscTransferListener mListener;
    private final KscSpeedMonitor mMonitor;
    private final boolean mSendMode;

    public ProcessMonitorOutputStream(OutputStream out, KscSpeedMonitor monitor, IKscTransferListener listener, boolean sendMode) {
        super(out);
        this.mMonitor = monitor;
        this.mListener = listener;
        this.mSendMode = sendMode;
    }

    private void process(long len) {
        if (len >= 0) {
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

    public void write(byte[] buffer, int offset, int count) throws IOException {
        this.out.write(buffer, offset, count);
        process((long) count);
    }

    public void write(int oneByte) throws IOException {
        super.write(oneByte);
        process(1);
    }
}
