package miui.media;

class a extends LocalMediaRecorder {
    a() {
    }

    public void setAudioSource(int i) {
        super.setAudioSource(i);
        setOutputFormat(6);
        setAudioEncoder(3);
    }

    public boolean canPause() {
        return true;
    }
}
