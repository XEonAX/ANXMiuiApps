package com.miui.gallery.search.core;

import android.os.Handler;

public class ConsumerUtils {
    public static <A> void consumeAsync(Handler handler, final Consumer<A> consumer, final A value) {
        if (handler == null) {
            consumer.consume(value);
        } else {
            handler.post(new Runnable() {
                public void run() {
                    consumer.consume(value);
                }
            });
        }
    }
}
