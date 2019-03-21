package cn.kuaipan.android.kss;

import cn.kuaipan.android.http.IKscTransferListener;

public class FileTranceListener {
    private long mOffset;
    private final boolean mSendMode;
    private final IKscTransferListener mTotalListener;

    class ChunkListaner implements IKscTransferListener {
        private FileTranceListener mParent;
        private long mReceiveOffset = 0;
        private long mSendOffset = 0;

        ChunkListaner(FileTranceListener parent, long sended, long received) {
            this.mParent = parent;
            setSendPos(0);
            setReceivePos(0);
        }

        public void setSendTotal(long total) {
            this.mParent.setSendTotal(total);
        }

        public void setReceiveTotal(long total) {
            this.mParent.setReceiveTotal(total);
        }

        public void setSendPos(long pos) {
            sended(pos - this.mSendOffset);
        }

        public void setReceivePos(long pos) {
            received(pos - this.mReceiveOffset);
        }

        public void sended(long len) {
            this.mParent.sended(len);
            this.mSendOffset += len;
        }

        public void received(long len) {
            this.mParent.received(len);
            this.mReceiveOffset += len;
        }
    }

    public FileTranceListener(IKscTransferListener listener, boolean sendMode) {
        this.mTotalListener = listener;
        this.mSendMode = sendMode;
    }

    public IKscTransferListener getChunkListaner(long start) {
        if (this.mSendMode) {
            return new ChunkListaner(this, start, this.mOffset);
        }
        return new ChunkListaner(this, this.mOffset, start);
    }

    public void setSendTotal(long total) {
        if (!this.mSendMode) {
            this.mTotalListener.setSendTotal(this.mOffset + total);
        }
    }

    public void setReceiveTotal(long total) {
        if (this.mSendMode) {
            this.mTotalListener.setReceiveTotal(this.mOffset + total);
        }
    }

    public void setSendPos(long pos) {
        if (!this.mSendMode) {
            this.mOffset = pos;
        }
        this.mTotalListener.setSendPos(pos);
    }

    private void sended(long len) {
        if (!this.mSendMode) {
            this.mOffset += len;
        }
        this.mTotalListener.sended(len);
    }

    private void received(long len) {
        if (this.mSendMode) {
            this.mOffset += len;
        }
        this.mTotalListener.received(len);
    }
}
