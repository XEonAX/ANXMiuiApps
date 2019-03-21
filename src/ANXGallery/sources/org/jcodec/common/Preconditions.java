package org.jcodec.common;

public final class Preconditions {
    public static void checkState(boolean expression) {
        if (!expression) {
            throw new IllegalStateException();
        }
    }
}
