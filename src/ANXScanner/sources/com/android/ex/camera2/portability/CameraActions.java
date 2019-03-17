package com.android.ex.camera2.portability;

class CameraActions {
    public static final int ADD_CALLBACK_BUFFER = 105;
    public static final int APPLY_SETTINGS = 204;
    public static final int AUTO_FOCUS = 301;
    public static final int CANCEL_AUTO_FOCUS = 302;
    public static final int CANCEL_AUTO_FOCUS_FINISH = 305;
    public static final int CAPTURE_PHOTO = 601;
    public static final int ENABLE_SHUTTER_SOUND = 501;
    public static final int GET_PARAMETERS = 202;
    public static final int LOCK = 5;
    public static final int OPEN_CAMERA = 1;
    public static final int RECONNECT = 3;
    public static final int REFRESH_PARAMETERS = 203;
    public static final int RELEASE = 2;
    public static final int SET_AUTO_FOCUS_MOVE_CALLBACK = 303;
    public static final int SET_DISPLAY_ORIENTATION = 502;
    public static final int SET_FACE_DETECTION_LISTENER = 461;
    public static final int SET_JPEG_ORIENTATION = 503;
    public static final int SET_ONE_SHOT_PREVIEW_CALLBACK = 108;
    public static final int SET_PARAMETERS = 201;
    public static final int SET_PREVIEW_CALLBACK = 107;
    public static final int SET_PREVIEW_CALLBACK_WITH_BUFFER = 104;
    public static final int SET_PREVIEW_DISPLAY_ASYNC = 106;
    public static final int SET_PREVIEW_TEXTURE_ASYNC = 101;
    public static final int SET_ZOOM_CHANGE_LISTENER = 304;
    public static final int START_FACE_DETECTION = 462;
    public static final int START_PREVIEW_ASYNC = 102;
    public static final int STOP_FACE_DETECTION = 463;
    public static final int STOP_PREVIEW = 103;
    public static final int UNLOCK = 4;

    public static String stringify(int action) {
        switch (action) {
            case 1:
                return "OPEN_CAMERA";
            case 2:
                return "RELEASE";
            case 3:
                return "RECONNECT";
            case 4:
                return "UNLOCK";
            case 5:
                return "LOCK";
            case 101:
                return "SET_PREVIEW_TEXTURE_ASYNC";
            case 102:
                return "START_PREVIEW_ASYNC";
            case 103:
                return "STOP_PREVIEW";
            case 104:
                return "SET_PREVIEW_CALLBACK_WITH_BUFFER";
            case 105:
                return "ADD_CALLBACK_BUFFER";
            case 106:
                return "SET_PREVIEW_DISPLAY_ASYNC";
            case 107:
                return "SET_PREVIEW_CALLBACK";
            case 108:
                return "SET_ONE_SHOT_PREVIEW_CALLBACK";
            case 201:
                return "SET_PARAMETERS";
            case 202:
                return "GET_PARAMETERS";
            case 203:
                return "REFRESH_PARAMETERS";
            case 204:
                return "APPLY_SETTINGS";
            case 301:
                return "AUTO_FOCUS";
            case 302:
                return "CANCEL_AUTO_FOCUS";
            case 303:
                return "SET_AUTO_FOCUS_MOVE_CALLBACK";
            case 304:
                return "SET_ZOOM_CHANGE_LISTENER";
            case 305:
                return "CANCEL_AUTO_FOCUS_FINISH";
            case SET_FACE_DETECTION_LISTENER /*461*/:
                return "SET_FACE_DETECTION_LISTENER";
            case START_FACE_DETECTION /*462*/:
                return "START_FACE_DETECTION";
            case STOP_FACE_DETECTION /*463*/:
                return "STOP_FACE_DETECTION";
            case 501:
                return "ENABLE_SHUTTER_SOUND";
            case 502:
                return "SET_DISPLAY_ORIENTATION";
            case 601:
                return "CAPTURE_PHOTO";
            default:
                return "UNKNOWN(" + action + ")";
        }
    }

    private CameraActions() {
        throw new AssertionError();
    }
}
