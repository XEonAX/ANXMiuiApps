package com.miui.gallery.monitor;

import android.os.Looper;
import android.util.Printer;

public class LooperBlockDetector {

    private static class MessageLoggingPrinter implements Printer {
        private LogMonitor mMonitor;

        public MessageLoggingPrinter(LogMonitor monitor) {
            this.mMonitor = monitor;
        }

        public void println(String s) {
            if (s.startsWith(">>>>> Dispatching to")) {
                this.mMonitor.startMonitor(s);
            } else if (s.startsWith("<<<<< Finished to")) {
                this.mMonitor.stopMonitor(s);
            }
        }
    }

    public static void start(Looper tarLooper, long blockTime) {
        tarLooper.setMessageLogging(new MessageLoggingPrinter(new LogMonitor(tarLooper, blockTime)));
    }
}
