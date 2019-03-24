package com.miui.gallery.editor.photo.core.imports.text.typeface;

import android.graphics.Typeface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.core.imports.text.TextFontConfig;
import com.miui.gallery.editor.photo.core.imports.text.model.FontBean;
import java.io.File;
import java.text.DecimalFormat;
import miui.yellowpage.YellowPageContract.Search;

public class TextStyle extends FontBean implements Parcelable, Comparable<TextStyle> {
    public static final Creator<TextStyle> CREATOR = new Creator<TextStyle>() {
        public TextStyle createFromParcel(Parcel in) {
            return new TextStyle(in);
        }

        public TextStyle[] newArray(int size) {
            return new TextStyle[size];
        }
    };
    private int defaultNameResId = R.string.photo_editor_font_default;
    private int state = 19;
    private Typeface typeFace;

    protected TextStyle(Parcel in) {
        this.defaultNameResId = in.readInt();
        this.state = in.readInt();
    }

    public static TextStyle getLocalTextStyle() {
        TextStyle fontResource = new TextStyle();
        fontResource.state = 17;
        fontResource.type = Search.LOCAL_SEARCH;
        fontResource.defaultNameResId = R.string.photo_editor_font_default;
        fontResource.typeFace = Typeface.DEFAULT;
        return fontResource;
    }

    public void setState(int state) {
        this.state = state;
    }

    public void setTypeFace(Typeface typeFace) {
        this.typeFace = typeFace;
    }

    public Typeface getTypeFace() {
        return this.typeFace;
    }

    public boolean isDownloaded() {
        return this.state == 17;
    }

    public boolean isDownloading() {
        return this.state == 18;
    }

    public boolean isNeedDownload() {
        return this.state == 19 || this.state == 20;
    }

    public boolean isDownloadSuccess() {
        return this.state == 0;
    }

    public boolean isExtra() {
        return "extra".equals(this.type);
    }

    public boolean isLocal() {
        return Search.LOCAL_SEARCH.equals(this.type);
    }

    public int getState() {
        return this.state;
    }

    public String getDownloadFilePath() {
        return getDownloadSrcPath() + ".zip";
    }

    public String getFilePath() {
        return getDownloadSrcPath() + ".ttf";
    }

    private String getDownloadSrcPath() {
        return TextFontConfig.FONT_PATH + File.separator + this.id;
    }

    public String getIconUrl() {
        return this.icon;
    }

    public String getFontSize() {
        return new DecimalFormat(".0").format((double) (((float) this.size) / 1000000.0f)) + "M";
    }

    public String getName() {
        return this.text;
    }

    public int getDefaultNameResId() {
        return this.defaultNameResId;
    }

    public int compareTo(TextStyle o) {
        return this.extraInfo.index - o.extraInfo.index;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.defaultNameResId);
        dest.writeInt(this.state);
    }
}
