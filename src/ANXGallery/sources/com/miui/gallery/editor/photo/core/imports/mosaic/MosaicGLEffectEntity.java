package com.miui.gallery.editor.photo.core.imports.mosaic;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.miui.gallery.editor.photo.core.imports.mosaic.shader.GLMosaicBlurShaderImp;
import com.miui.gallery.editor.photo.core.imports.mosaic.shader.GLMosaicShader;
import com.miui.gallery.editor.photo.core.imports.mosaic.shader.GLMosaicTriangleShader;
import com.miui.gallery.editor.photo.core.imports.mosaic.shader.GLTextureSizeShader;

class MosaicGLEffectEntity extends MosaicGLEntity {
    public static final Creator<MosaicGLEffectEntity> CREATOR = new Creator<MosaicGLEffectEntity>() {
        public MosaicGLEffectEntity createFromParcel(Parcel source) {
            return new MosaicGLEffectEntity(source);
        }

        public MosaicGLEffectEntity[] newArray(int size) {
            return new MosaicGLEffectEntity[size];
        }
    };
    private final String mEffectType;

    MosaicGLEffectEntity(short priority, String name, String iconPath, String effectType) {
        super(priority, name, iconPath, TYPE.EFFECT);
        this.mEffectType = effectType;
    }

    GLTextureSizeShader generateSpecificShader(int textureWidth, int textureHeight, int viewWidth, int viewHeight) {
        if ("NORMAL".equals(this.mEffectType)) {
            return new GLMosaicShader(textureWidth, textureHeight);
        }
        if ("BLUR".equals(this.mEffectType)) {
            return new GLMosaicBlurShaderImp(textureWidth, textureHeight, viewWidth, viewHeight);
        }
        if ("TRIANGLE".equals(this.mEffectType)) {
            return new GLMosaicTriangleShader(textureWidth, textureHeight);
        }
        return null;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeString(this.mEffectType);
    }

    protected MosaicGLEffectEntity(Parcel in) {
        super(in);
        this.mEffectType = in.readString();
    }
}
