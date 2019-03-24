package miui.media;

public class RecorderFactory {

    public interface AudioFormat {
        public static final int AAC = 1;
        public static final int AMR = 3;
        public static final int DEFAULT = 1;
        public static final int MP3 = 2;
        public static final int THREE_GPP = 4;
        public static final int WAV = 5;
    }

    private RecorderFactory() {
    }

    public static Recorder getRecorder(int i) {
        switch (i) {
            case 1:
                return new a();
            case 2:
                return new c();
            case 3:
                return new b();
            case 4:
                return new LocalMediaRecorder();
            case 5:
                return new LocalWavRecorder();
            default:
                return new a();
        }
    }
}
