package com.miui.gallery.adapter;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.miui.gallery.R;
import com.miui.gallery.ui.AutoBackupChooserItem;

public class AutoBackupChooserAdapter extends AlbumListAdapterBase {
    private static final int COLUMN_INDEX_ALBUM_SIZE = PROJECTION.length;
    private static final String[] PROJECTION_WITH_SIZE = new String[(PROJECTION.length + 1)];
    private final OnAutoBackupStateChangedListener mListener;

    public interface OnAutoBackupStateChangedListener {
        void onAutoBackupStateChanged(int i, boolean z);
    }

    static {
        for (int i = 0; i < PROJECTION.length; i++) {
            PROJECTION_WITH_SIZE[i] = PROJECTION[i];
        }
        PROJECTION_WITH_SIZE[COLUMN_INDEX_ALBUM_SIZE] = "size";
    }

    public AutoBackupChooserAdapter(Context context, OnAutoBackupStateChangedListener l) {
        super(context);
        this.mListener = l;
    }

    public View newView(Context context, Cursor cursor, ViewGroup parent) {
        return LayoutInflater.from(context).inflate(R.layout.auto_backup_chooser_item, parent, false);
    }

    public void bindView(View view, Context context, Cursor cursor) {
        final int position = cursor.getPosition();
        AutoBackupChooserItem item = (AutoBackupChooserItem) view;
        item.bindCommonInfo(getAlbumName(position), getAlbumCount(cursor), getAlbumSize(cursor));
        item.bindImage(getLocalPath(position), getDownloadUri(position), this.mDisplayImageOption);
        boolean isBabyAlbum = AlbumListAdapterBase.isBabyAlbum(cursor);
        boolean isOwnerShareAlbum = isOwnerShareAlbum(cursor);
        boolean isCameraAlbum = isCameraAlbum(cursor);
        boolean autoBackup = AlbumListAdapterBase.isAutoUploadedAlbum(cursor);
        boolean enabled = ((isBabyAlbum || isOwnerShareAlbum || isCameraAlbum) && autoBackup) ? false : true;
        item.bindCheckBox(new OnCheckedChangeListener() {
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                AutoBackupChooserAdapter.this.mListener.onAutoBackupStateChanged(position, isChecked);
            }
        }, enabled, autoBackup);
    }

    private long getAlbumSize(Cursor cursor) {
        return cursor.getLong(COLUMN_INDEX_ALBUM_SIZE);
    }

    public void reverseAutoBackupUiState(View listItemView, int position) {
        ((AutoBackupChooserItem) listItemView).reverseCheckBoxCheckedState();
    }

    public boolean getAutoBackupUiState(View listItemView) {
        return ((AutoBackupChooserItem) listItemView).getCheckBoxCheckedState();
    }

    public String[] getProjection() {
        return PROJECTION_WITH_SIZE;
    }
}
