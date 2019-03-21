package com.nexstreaming.kminternal.kinemaster.codeccolorformat;

/* compiled from: WrapMediaCodec */
class a {
    a() {
    }

    public static String a(int i) {
        switch (i) {
            case 1:
                return "INFO_OUTPUT_BUFFERS_CHANGED";
            case 2:
                return "INFO_OUTPUT_FORMAT_CHANGED";
            case 3:
                return "INFO_TRY_AGAIN_LATER";
            case 4:
                return "BUFFER_FLAG_END_OF_STREAM";
            case 5:
                return "BUFFER_FLAG_CODEC_CONFIG";
            default:
                return String.format("UNKNOWN", new Object[0]);
        }
    }
}
