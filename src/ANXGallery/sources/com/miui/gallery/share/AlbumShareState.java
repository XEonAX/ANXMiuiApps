package com.miui.gallery.share;

import android.text.TextUtils;

public class AlbumShareState {
    private static final int[] NEGATIVE_NEXT = new int[]{-1, 0, 4, 2, 2, 6, 5};
    private static final int[] POSITIVE_NEXT = new int[]{1, 2, 3, 5, -1, -1, -1};
    private static final StateValue[] STATE_VALUE_ARR = new StateValue[]{new StateValue("invited", null, 0), new StateValue("invited", "requesting", 0), new StateValue("invited", null, 1), new StateValue("invited", "accepting", 1), new StateValue("invited", "denying", 1), new StateValue("normal", null, 2), new StateValue("normal", "exiting", 2)};

    private static final class StateValue {
        public final String mDBState;
        public final int mShareDetailInfoRequest;
        public final String mUIState;

        public StateValue(String dbState, String uiState, int shareDetailInfoStatus) {
            this.mDBState = dbState;
            this.mUIState = uiState;
            this.mShareDetailInfoRequest = shareDetailInfoStatus;
        }
    }

    public static boolean isValid(int state) {
        return state >= 0 && state <= 6;
    }

    public static int advance(int state, boolean positive) {
        if (isValid(state)) {
            return positive ? POSITIVE_NEXT[state] : NEGATIVE_NEXT[state];
        } else {
            return -1;
        }
    }

    public static int getState(String dbState, String uiState, boolean hasShareDetailInfo) {
        int state = 0;
        for (StateValue sv : STATE_VALUE_ARR) {
            if (TextUtils.equals(sv.mDBState, dbState) && TextUtils.equals(sv.mUIState, uiState)) {
                if (sv.mShareDetailInfoRequest == 2) {
                    return state;
                }
                boolean z;
                if (sv.mShareDetailInfoRequest == 1) {
                    z = true;
                } else {
                    z = false;
                }
                if (z == hasShareDetailInfo) {
                    return state;
                }
            }
            state++;
        }
        return -1;
    }

    public static int requestLongUrl(int state) {
        if (state == 0) {
            return advance(state, true);
        }
        return -1;
    }

    public static int accept(int state) {
        if (state == 2) {
            return advance(state, true);
        }
        return -1;
    }

    public static int deny(int state) {
        if (state == 2) {
            return advance(state, false);
        }
        return -1;
    }

    public static int exit(int state) {
        if (state == 5) {
            return advance(state, false);
        }
        return -1;
    }
}
