package miui.media;

import miui.media.Recorder.OnErrorListener;

class c extends Mp3Recorder implements Recorder {
    private OnErrorListener Bd;

    c() {
    }

    public void setOutputFormat(int i) {
    }

    public void setAudioEncoder(int i) {
    }

    public boolean canPause() {
        return true;
    }

    public void setAudioEncodingBitRate(int i) {
        super.setOutBitRate(i);
    }

    public void setMaxDuration(int i) {
        super.setMaxDuration((long) i);
    }

    public void setOnErrorListener(OnErrorListener onErrorListener) {
        this.Bd = onErrorListener;
        super.setOnErrorListener(new LocalMp3Recorder$1(this));
    }
}
