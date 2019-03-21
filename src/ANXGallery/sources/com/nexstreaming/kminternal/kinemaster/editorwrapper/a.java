package com.nexstreaming.kminternal.kinemaster.editorwrapper;

import android.content.Intent;
import com.google.gson_nex.Gson;
import com.nexstreaming.kminternal.kinemaster.editorwrapper.KMIntentData.AudioClip;
import com.nexstreaming.kminternal.kinemaster.editorwrapper.KMIntentData.KeyFrame;
import com.nexstreaming.kminternal.kinemaster.editorwrapper.KMIntentData.Layer;
import com.nexstreaming.kminternal.kinemaster.editorwrapper.KMIntentData.LayerType;
import com.nexstreaming.kminternal.kinemaster.editorwrapper.KMIntentData.TextLayerAttributes;
import com.nexstreaming.kminternal.kinemaster.editorwrapper.KMIntentData.VisualClip;
import java.util.ArrayList;

/* compiled from: KMIntentBuilder */
public class a {
    private KMIntentData a = new KMIntentData();

    /* compiled from: KMIntentBuilder */
    public static class a {
        protected final AudioClip a;
        protected final a b;

        a(AudioClip audioClip, a aVar) {
            this.a = audioClip;
            this.b = aVar;
        }

        public a a(String str) {
            this.a.path = str;
            return this;
        }

        public a a(int i) {
            this.a.startTrim = i;
            return this;
        }

        public a b(int i) {
            this.a.endTrim = i;
            return this;
        }

        public a c(int i) {
            this.a.startTime = i;
            return this;
        }

        public a d(int i) {
            this.a.endTime = i;
            return this;
        }

        public a a(boolean z) {
            this.a.loop = z;
            return this;
        }

        public a b(boolean z) {
            this.a.background = z;
            return this;
        }

        public a c(boolean z) {
            this.a.mute = z;
            return this;
        }

        public a e(int i) {
            this.a.volume = i;
            return this;
        }

        public a a() {
            return this.b;
        }
    }

    /* compiled from: KMIntentBuilder */
    private static class h<T> {
        protected final VisualClip a;
        protected final a b;
        protected final T c = this;

        h(VisualClip visualClip, a aVar) {
            this.a = visualClip;
            this.b = aVar;
        }

        public T e(int i) {
            this.a.duration = i;
            return this.c;
        }

        public T f(int i) {
            this.a.transitionDuration = i;
            return this.c;
        }

        public T b(String str) {
            this.a.clipEffectId = str;
            return this.c;
        }

        public T c(String str) {
            this.a.transitionEffectId = str;
            return this.c;
        }

        public T g(int i) {
            this.a.volume = i;
            return this.c;
        }

        public T a(boolean z) {
            this.a.mute = z;
            return this.c;
        }

        public T d(int i) {
            this.a.rotation = i;
            return this.c;
        }

        public T h(int i) {
            this.a.brightness = i;
            return this.c;
        }

        public T i(int i) {
            this.a.contrast = i;
            return this.c;
        }

        public T j(int i) {
            this.a.saturation = i;
            return this.c;
        }

        public T d(String str) {
            this.a.colorFilterId = str;
            return this.c;
        }

        public T b(boolean z) {
            this.a.vignette = z;
            return this.c;
        }
    }

    /* compiled from: KMIntentBuilder */
    public static class b extends h<b> {
        b(VisualClip visualClip, a aVar) {
            super(visualClip, aVar);
        }

        public b a(String str) {
            this.a.path = str;
            return this;
        }

        public b a(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
            this.a.cropStartLeft = f;
            this.a.cropStartTop = f2;
            this.a.cropStartRight = f3;
            this.a.cropStartBottom = f4;
            this.a.cropEndLeft = f5;
            this.a.cropEndTop = f6;
            this.a.cropEndRight = f7;
            this.a.cropEndBottom = f8;
            return this;
        }

        public a a() {
            return this.b;
        }
    }

    /* compiled from: KMIntentBuilder */
    public static class c<T> {
        protected final KeyFrame a;
        protected final d<T> b;

        c(KeyFrame keyFrame, d<T> dVar) {
            this.a = keyFrame;
            this.b = dVar;
        }

        public c<T> a(float f) {
            this.a.time = f;
            return this;
        }

        public c<T> b(float f) {
            this.a.angle = f;
            return this;
        }

        public c<T> c(float f) {
            this.a.alpha = f;
            return this;
        }

        public c<T> d(float f) {
            this.a.scale = f;
            return this;
        }

        public c<T> a(float f, float f2) {
            this.a.x = f;
            this.a.y = f2;
            return this;
        }

        public T a() {
            return this.b;
        }
    }

    /* compiled from: KMIntentBuilder */
    private static class d<T> {
        protected final Layer a;
        protected final a b;
        protected final T c = this;

        d(Layer layer, a aVar) {
            this.a = layer;
            this.b = aVar;
        }

        public T a(int i) {
            this.a.startTime = i;
            return this.c;
        }

        public T b(int i) {
            this.a.endTime = i;
            return this.c;
        }

        public T a(String str) {
            this.a.animationIn = str;
            return this.c;
        }

        public T b(String str) {
            this.a.animationOut = str;
            return this.c;
        }

        public T c(String str) {
            this.a.animationOverall = str;
            return this.c;
        }

        public T c(int i) {
            this.a.animationInDuration = i;
            return this.c;
        }

        public T d(int i) {
            this.a.animationOutDuration = i;
            return this.c;
        }

        public c<T> a() {
            if (this.a.keyFrames == null) {
                this.a.keyFrames = new ArrayList();
            }
            KeyFrame keyFrame = new KeyFrame();
            this.a.keyFrames.add(keyFrame);
            return new c(keyFrame, this);
        }
    }

    /* compiled from: KMIntentBuilder */
    public static class e extends h<e> {
        e(VisualClip visualClip, a aVar) {
            super(visualClip, aVar);
        }

        public e a(int i) {
            String toHexString = Long.toHexString((((long) i) & 4294967295L) | 68719476736L);
            this.a.path = "@solid:" + toHexString.substring(toHexString.length() - 8) + ".jpg";
            return this;
        }

        public a a() {
            return this.b;
        }
    }

    /* compiled from: KMIntentBuilder */
    public static class f extends d<f> {
        f(Layer layer, a aVar) {
            super(layer, aVar);
            layer.textLayerAttributes = new TextLayerAttributes();
        }

        public f d(String str) {
            this.a.textLayerAttributes.text = str;
            return this;
        }

        public f a(float f) {
            this.a.textLayerAttributes.textSize = f;
            return this;
        }

        public f e(int i) {
            this.a.textLayerAttributes.textColor = i;
            return this;
        }

        public f f(int i) {
            this.a.textLayerAttributes.shadowColor = i;
            return this;
        }

        public f g(int i) {
            this.a.textLayerAttributes.glowColor = i;
            return this;
        }

        public f h(int i) {
            this.a.textLayerAttributes.outlineColor = i;
            return this;
        }

        public f e(String str) {
            this.a.textLayerAttributes.fontId = str;
            return this;
        }

        public a b() {
            return this.b;
        }
    }

    /* compiled from: KMIntentBuilder */
    public static class g extends h<g> {
        g(VisualClip visualClip, a aVar) {
            super(visualClip, aVar);
        }

        public g a(String str) {
            this.a.path = str;
            return this;
        }

        public g a(int i) {
            this.a.startTrim = i;
            return this;
        }

        /* renamed from: b */
        public g d(int i) {
            this.a.rotation = i;
            return this;
        }

        public g c(int i) {
            this.a.playbackSpeed = i;
            return this;
        }

        public g a(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
            this.a.cropStartLeft = f;
            this.a.cropStartTop = f2;
            this.a.cropStartRight = f3;
            this.a.cropStartBottom = f4;
            this.a.cropEndLeft = f5;
            this.a.cropEndTop = f6;
            this.a.cropEndRight = f7;
            this.a.cropEndBottom = f8;
            return this;
        }

        public a a() {
            return this.b;
        }
    }

    public g a() {
        VisualClip visualClip = new VisualClip();
        this.a.project.visualClips.add(visualClip);
        return new g(visualClip, this);
    }

    public b b() {
        VisualClip visualClip = new VisualClip();
        this.a.project.visualClips.add(visualClip);
        return new b(visualClip, this);
    }

    public e c() {
        VisualClip visualClip = new VisualClip();
        this.a.project.visualClips.add(visualClip);
        return new e(visualClip, this);
    }

    public a d() {
        AudioClip audioClip = new AudioClip();
        this.a.project.audioClips.add(audioClip);
        return new a(audioClip, this);
    }

    public f e() {
        Layer layer = new Layer();
        layer.layerType = LayerType.Text;
        this.a.project.layers.add(layer);
        return new f(layer, this);
    }

    public Intent f() {
        Gson gson = new Gson();
        Intent intent = new Intent("com.kinemaster.intent.NEW_PROJECT");
        intent.setPackage("com.nexstreaming.app.kinemasterfree");
        intent.putExtra("com.kinemaster.intent.projectData", gson.toJson(this.a));
        intent.setFlags(268468224);
        return intent;
    }
}
