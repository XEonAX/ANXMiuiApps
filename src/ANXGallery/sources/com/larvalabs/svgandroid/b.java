package com.larvalabs.svgandroid;

import android.graphics.Picture;
import android.graphics.RectF;
import android.graphics.drawable.PictureDrawable;
import com.nexstreaming.app.common.drawable.a;
import java.util.Set;

/* compiled from: SVG */
public class b {
    private final Set<Integer> a;
    private Picture b;
    private RectF c;
    private RectF d = null;

    b(Picture picture, RectF rectF, Set<Integer> set) {
        this.b = picture;
        this.c = rectF;
        this.a = set;
    }

    void a(RectF rectF) {
        this.d = rectF;
    }

    public PictureDrawable a() {
        return new a(this.b);
    }

    public Picture b() {
        return this.b;
    }
}
