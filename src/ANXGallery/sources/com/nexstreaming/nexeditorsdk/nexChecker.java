package com.nexstreaming.nexeditorsdk;

import com.nexstreaming.checkcaps.a;

public final class nexChecker {
    static final int UHD_HEIGHT = 2160;
    static final int UHD_WIDTH = 3840;
    private static a mChecker;

    public interface nexCheckerListener {
        void onCheckerCapsResult(int i);
    }

    public static void checkUHD(final nexCheckerListener nexcheckerlistener) {
        mChecker = new a(false);
        mChecker.a(new a.a() {
            public void a(a aVar, String str) {
            }

            public void a(a aVar, int i) {
                nexcheckerlistener.onCheckerCapsResult(i);
            }
        });
        mChecker.a(UHD_WIDTH, UHD_HEIGHT);
    }
}
