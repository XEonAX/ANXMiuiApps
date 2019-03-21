package com.google.gson;

public final class JsonIOException extends JsonParseException {
    private static final long serialVersionUID = 1;

    public JsonIOException(String msg) {
        super(msg);
    }

    public JsonIOException(Throwable cause) {
        super(cause);
    }
}
