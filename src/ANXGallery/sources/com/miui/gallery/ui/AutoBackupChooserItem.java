package com.miui.gallery.ui;

import android.content.Context;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.miui.gallery.Config.ThumbConfig;
import com.miui.gallery.R;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.util.BindImageHelper;
import com.miui.gallery.util.FormatUtil;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import miui.widget.SlidingButton;

public class AutoBackupChooserItem extends RelativeLayout {
    private ImageView mAlbumCover;
    private TextView mAlbumName;
    private TextView mAlbumPhotoCountAndSize;
    private SlidingButton mCheckBox;

    public AutoBackupChooserItem(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mAlbumName = (TextView) findViewById(R.id.album_name);
        this.mAlbumPhotoCountAndSize = (TextView) findViewById(R.id.album_photo_count_and_size);
        this.mAlbumCover = (ImageView) findViewById(R.id.album_cover);
        this.mCheckBox = (SlidingButton) findViewById(R.id.check_box);
    }

    public void bindCommonInfo(String albumName, int count, long size) {
        this.mAlbumName.setText(albumName);
        this.mAlbumPhotoCountAndSize.setText(getContext().getResources().getQuantityString(R.plurals.album_count_and_size, count, new Object[]{Integer.valueOf(count), FormatUtil.formatFileSize(getContext(), size)}));
    }

    public void bindImage(String localPath, Uri downloadUri, DisplayImageOptions options) {
        BindImageHelper.bindImage(localPath, downloadUri, DownloadType.MICRO, this.mAlbumCover, options, ThumbConfig.get().sMicroTargetSize);
    }

    public void bindCheckBox(OnCheckedChangeListener l, boolean enabled, boolean checked) {
        this.mCheckBox.setOnPerformCheckedChangeListener(l);
        this.mCheckBox.setEnabled(enabled);
        this.mCheckBox.setChecked(checked);
    }

    public void reverseCheckBoxCheckedState() {
        this.mCheckBox.setChecked(!this.mCheckBox.isChecked());
    }

    public boolean getCheckBoxCheckedState() {
        return this.mCheckBox.isChecked();
    }
}
