package miui.media;

class b extends LocalMediaRecorder {
    private static final String Al = "#!AMR-WB\n";
    private static final String Am = "#!AMR\n";
    private boolean An;

    b() {
    }

    public void setAudioEncoder(int i) {
        super.setAudioEncoder(i);
        if (i == 2) {
            this.An = true;
        } else if (i == 1) {
            this.An = false;
        }
    }

    public void reset() {
        super.reset();
        this.An = false;
    }

    public void release() {
        super.release();
        this.An = false;
    }

    public boolean canPause() {
        return true;
    }

    protected int cv() {
        return (this.An ? Al : Am).length();
    }
}
