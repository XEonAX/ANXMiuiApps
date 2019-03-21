package cn.kuaipan.android.http;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.HttpEntity;
import org.apache.http.entity.HttpEntityWrapper;

public class ProcessMonitorEntity extends HttpEntityWrapper {
    private final IKscTransferListener mListener;
    private final KscSpeedMonitor mMonitor;
    private boolean mMonitorUsed = false;
    private final boolean mSendMode;

    public ProcessMonitorEntity(HttpEntity wrapped, KscSpeedMonitor monitor, IKscTransferListener listener, boolean sendMode) {
        super(wrapped);
        this.mMonitor = monitor;
        this.mListener = listener;
        this.mSendMode = sendMode;
    }

    public InputStream getContent() throws IOException {
        InputStream result = super.getContent();
        if (this.mMonitorUsed) {
            return result;
        }
        if (this.mListener != null) {
            if (this.mSendMode) {
                this.mListener.setSendTotal(getContentLength());
            } else {
                this.mListener.setReceiveTotal(getContentLength());
            }
        }
        InputStream result2 = new ProcessMonitorInputStream(result, this.mMonitor, this.mListener, this.mSendMode);
        this.mMonitorUsed = true;
        return result2;
    }

    public void writeTo(OutputStream outstream) throws IOException {
        if (!this.mMonitorUsed) {
            OutputStream outstream2 = new ProcessMonitorOutputStream(outstream, this.mMonitor, this.mListener, this.mSendMode);
            this.mMonitorUsed = true;
            outstream = outstream2;
        }
        super.writeTo(outstream);
    }
}
