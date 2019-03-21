package com.miui.gallery.ui;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.miui.gallery.R;

public abstract class AlbumPageListItemBase extends RelativeLayout {
    protected TextView mAlbumName;
    protected TextView mAlbumPhotoCount;
    protected TextView mForceTop;
    protected TextView mShareInfo;

    public enum AlbumType {
        NORMAL,
        BABY,
        SHARE,
        OWNER,
        SYSTEM
    }

    public AlbumPageListItemBase(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mAlbumName = (TextView) findViewById(R.id.album_name);
        this.mShareInfo = (TextView) findViewById(R.id.album_share_info);
        this.mAlbumPhotoCount = (TextView) findViewById(R.id.album_photo_count);
        this.mForceTop = (TextView) findViewById(R.id.album_force_top_info);
    }

    public void bindCommonInfo(String albumName, int count, boolean isPlaceholder) {
        CharSequence charSequence;
        this.mAlbumName.setText(albumName);
        TextView textView = this.mAlbumPhotoCount;
        if (isPlaceholder) {
            charSequence = "";
        } else {
            charSequence = String.format("%d", new Object[]{Integer.valueOf(count)});
        }
        textView.setText(charSequence);
    }

    public void bindType(AlbumType type, String typeInfo) {
        if (type == AlbumType.NORMAL || type == AlbumType.SYSTEM || TextUtils.isEmpty(typeInfo)) {
            this.mShareInfo.setVisibility(8);
            return;
        }
        this.mShareInfo.setVisibility(0);
        this.mShareInfo.setText(typeInfo);
    }

    public void bindForceTopIcon(boolean forceTopItem) {
        this.mForceTop.setVisibility(forceTopItem ? 0 : 8);
        if (!forceTopItem) {
            return;
        }
        if (this.mShareInfo.getVisibility() == 0) {
            this.mForceTop.setCompoundDrawablesWithIntrinsicBounds(getResources().getDrawable(R.drawable.info_divider), null, null, null);
        } else {
            this.mForceTop.setCompoundDrawablesWithIntrinsicBounds(null, null, null, null);
        }
    }
}
