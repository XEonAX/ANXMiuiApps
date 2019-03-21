package cn.kuaipan.android.http;

import android.util.Log;

public interface IKscTransferListener {

    public static abstract class KscTransferListener implements IKscTransferListener {
        private long receiveTotal = -1;
        private long received = 0;
        private long sendTotal = -1;
        private long sended = 0;

        public abstract void onDataReceived(long j, long j2);

        public abstract void onDataSended(long j, long j2);

        public final void setSendTotal(long total) {
            this.sendTotal = total;
        }

        public final void setReceiveTotal(long total) {
            this.receiveTotal = total;
        }

        public final void sended(long len) {
            this.sended += len;
            try {
                onDataSended(this.sended, this.sendTotal);
            } catch (Error e) {
                throw e;
            } catch (Throwable t) {
                Log.e("KscTransferListener", "Meet exception in onDataSended()", t);
            }
        }

        public final void received(long len) {
            this.received += len;
            try {
                onDataReceived(this.received, this.receiveTotal);
            } catch (Error e) {
                throw e;
            } catch (Throwable t) {
                Log.e("KscTransferListener", "Meet exception in onDataReceived()", t);
            }
        }

        public final void setSendPos(long pos) {
            if (pos != this.sended) {
                this.sended = pos;
                onDataSended(this.sended, this.sendTotal);
            }
        }

        public final void setReceivePos(long pos) {
            if (pos != this.received) {
                this.received = pos;
                onDataReceived(this.received, this.receiveTotal);
            }
        }
    }

    void received(long j);

    void sended(long j);

    void setReceivePos(long j);

    void setReceiveTotal(long j);

    void setSendPos(long j);

    void setSendTotal(long j);
}
