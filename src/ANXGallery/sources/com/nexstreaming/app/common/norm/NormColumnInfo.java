package com.nexstreaming.app.common.norm;

import android.graphics.Bitmap;
import com.nexstreaming.app.common.norm.b.a;
import com.nexstreaming.app.common.norm.b.b;
import com.nexstreaming.app.common.norm.b.c;
import com.nexstreaming.app.common.norm.b.d;
import com.nexstreaming.app.common.norm.b.e;
import com.nexstreaming.app.common.norm.b.f;
import com.nexstreaming.app.common.norm.b.g;
import java.lang.reflect.Field;
import java.util.Collection;
import java.util.Map;

public class NormColumnInfo {
    final String a;
    final Field b;
    final ColumnType c;
    final boolean d;
    final boolean e;
    final boolean f;
    final boolean g;
    final boolean h;
    final int i;
    final Class<? extends b> j;

    public enum ColumnType {
        INT,
        LONG,
        FLOAT,
        DOUBLE,
        TEXT,
        BOOL,
        JSON,
        ENUM,
        BLOB,
        JPEG,
        PNG
    }

    NormColumnInfo(Field field) {
        ColumnType columnType;
        boolean z = false;
        Class type = field.getType();
        boolean z2 = field.isAnnotationPresent(c.class) || b.class.isAssignableFrom(type);
        this.f = z2;
        if (this.f && b.class.isAssignableFrom(type)) {
            this.j = type;
        } else {
            this.j = null;
        }
        if (field.getName().equals("_id") || field.isAnnotationPresent(f.class)) {
            z = true;
        }
        this.g = z;
        if (this.f) {
            columnType = ColumnType.LONG;
        } else if (type == Integer.class || type == Integer.TYPE) {
            columnType = ColumnType.INT;
        } else if (type == Long.class || type == Long.TYPE) {
            columnType = ColumnType.LONG;
        } else if (type == Float.class || type == Float.TYPE) {
            columnType = ColumnType.FLOAT;
        } else if (type == Double.class || type == Double.TYPE) {
            columnType = ColumnType.DOUBLE;
        } else if (type == String.class) {
            columnType = ColumnType.TEXT;
        } else if (type == Boolean.class || type == Boolean.TYPE) {
            columnType = ColumnType.BOOL;
        } else if (Collection.class.isAssignableFrom(type)) {
            columnType = ColumnType.JSON;
        } else if (Map.class.isAssignableFrom(type)) {
            columnType = ColumnType.JSON;
        } else if (type == byte[].class) {
            columnType = ColumnType.BLOB;
        } else if (type == Bitmap.class) {
            if (field.isAnnotationPresent(b.class)) {
                columnType = ColumnType.JPEG;
            } else {
                columnType = ColumnType.PNG;
            }
        } else if (Enum.class.isAssignableFrom(type)) {
            columnType = ColumnType.ENUM;
        } else {
            throw new UnsupportedOperationException("Unrecognized column type: " + type.getSimpleName() + " (for column '" + field.getName() + "')");
        }
        if (!this.g || columnType == ColumnType.LONG) {
            this.d = field.isAnnotationPresent(g.class);
            this.h = field.isAnnotationPresent(d.class);
            this.e = field.isAnnotationPresent(e.class);
            this.a = a.camelCaseToLCUnderscore(field.getName());
            this.b = field;
            this.c = columnType;
            if (field.isAnnotationPresent(a.class)) {
                this.i = ((a) field.getAnnotation(a.class)).a();
                return;
            } else {
                this.i = 11;
                return;
            }
        }
        throw new IllegalArgumentException("Primary key must be 'long' type.");
    }

    public String toString() {
        return this.a;
    }
}
