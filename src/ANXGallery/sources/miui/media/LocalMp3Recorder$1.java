package miui.media;

import miui.media.Mp3Recorder.RecordingErrorListener;

class LocalMp3Recorder$1 implements RecordingErrorListener {
    final /* synthetic */ c Be;

    LocalMp3Recorder$1(c cVar) {
        this.Be = cVar;
    }

    public void onError(Mp3Recorder mp3Recorder, int i) {
        this.Be.Bd.onError(this.Be, d.e(i, false));
    }
}
