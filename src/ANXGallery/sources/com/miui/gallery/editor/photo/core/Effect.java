package com.miui.gallery.editor.photo.core;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.miui.gallery.editor.photo.core.common.fragment.AbstractCropFragment;
import com.miui.gallery.editor.photo.core.common.fragment.AbstractDoodleFragment;
import com.miui.gallery.editor.photo.core.common.fragment.AbstractEffectFragment;
import com.miui.gallery.editor.photo.core.common.fragment.AbstractFrameFragment;
import com.miui.gallery.editor.photo.core.common.fragment.AbstractLongCropFragment;
import com.miui.gallery.editor.photo.core.common.fragment.AbstractMosaicFragment;
import com.miui.gallery.editor.photo.core.common.fragment.AbstractRemoverFragment;
import com.miui.gallery.editor.photo.core.common.model.AdjustData;
import com.miui.gallery.editor.photo.core.common.model.BeautifyData;
import com.miui.gallery.editor.photo.core.common.model.CropData;
import com.miui.gallery.editor.photo.core.common.model.DoodleData;
import com.miui.gallery.editor.photo.core.common.model.FilterCategory;
import com.miui.gallery.editor.photo.core.common.model.FrameData;
import com.miui.gallery.editor.photo.core.common.model.MosaicData;
import com.miui.gallery.editor.photo.core.common.model.RemoverData;
import com.miui.gallery.editor.photo.core.common.provider.AbstractStickerProvider;
import com.miui.gallery.editor.photo.core.common.provider.AbstractTextProvider;
import com.miui.gallery.editor.photo.core.imports.miuibeauty.MiuiBeautifyData;

public final class Effect<T extends SdkProvider> implements Parcelable {
    public static final Effect<SdkProvider<AdjustData, AbstractEffectFragment>> ADJUST = new Effect("ADJUST", 1);
    public static final Effect<SdkProvider<BeautifyData, AbstractEffectFragment>> BEAUTIFY = new Effect("BEAUTIFY", 5);
    public static final Creator<Effect> CREATOR = new Creator<Effect>() {
        public Effect createFromParcel(Parcel source) {
            return new Effect(source, null);
        }

        public Effect[] newArray(int size) {
            return null;
        }
    };
    public static final Effect<SdkProvider<CropData, AbstractCropFragment>> CROP = new Effect("CROP", 2);
    public static final Effect<SdkProvider<DoodleData, AbstractDoodleFragment>> DOODLE = new Effect("DOODLE", 3);
    public static final Effect<SdkProvider<FilterCategory, AbstractEffectFragment>> FILTER = new Effect("FILTER", 0);
    public static final Effect<SdkProvider<FrameData, AbstractFrameFragment>> FRAME = new Effect("FRAME", 11);
    public static final Effect<SdkProvider<Object, AbstractLongCropFragment>> LONG_CROP = new Effect("LONG_CROP", 6);
    public static final Effect<SdkProvider<MiuiBeautifyData, AbstractEffectFragment>> MIUIBEAUTIFY = new Effect("MIUIBEAUTIFY", 10);
    public static final Effect<SdkProvider<MosaicData, AbstractMosaicFragment>> MOSAIC = new Effect("MOSAIC", 8);
    public static final Effect<SdkProvider<RemoverData, AbstractRemoverFragment>> REMOVER = new Effect("REMOVER", 9);
    public static final Effect<AbstractStickerProvider> STICKER = new Effect("STICKER", 4);
    public static final Effect<AbstractTextProvider> TEXT = new Effect("TEXT", 7);
    private String mName;
    private int mOrdinal;

    private Effect(String name, int ordinal) {
        this.mOrdinal = ordinal;
        this.mName = name;
    }

    public final String toString() {
        return this.mName;
    }

    public int ordinal() {
        return this.mOrdinal;
    }

    public String name() {
        return this.mName;
    }

    public static Effect[] values() {
        return new Effect[]{FILTER, ADJUST, CROP, DOODLE, STICKER, BEAUTIFY, LONG_CROP, TEXT, MOSAIC, REMOVER, MIUIBEAUTIFY, FRAME};
    }

    private Effect(Parcel source) {
        this.mOrdinal = source.readInt();
        this.mName = source.readString();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.mOrdinal);
        dest.writeString(this.mName);
    }
}
