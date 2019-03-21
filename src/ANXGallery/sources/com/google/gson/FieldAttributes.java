package com.google.gson;

import com.google.gson.internal.C$Gson$Preconditions;
import java.lang.reflect.Field;

public final class FieldAttributes {
    private final Field field;

    public FieldAttributes(Field f) {
        C$Gson$Preconditions.checkNotNull(f);
        this.field = f;
    }
}
