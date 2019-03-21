package com.miui.gallery.ui;

import android.content.ContentUris;
import android.content.Context;
import android.graphics.RectF;
import android.net.Uri;
import android.os.Bundle;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.miui.gallery.Config.ThumbConfig;
import com.miui.gallery.R;
import com.miui.gallery.model.FaceAlbumCover;
import com.miui.gallery.provider.GalleryContract.Cloud;
import com.miui.gallery.util.BindImageHelper;
import com.miui.gallery.util.face.FaceRegionRectF;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;
import java.util.ArrayList;
import java.util.List;

public class AlbumPageListFaceItem extends AlbumPageListItemBase {
    private static List<Integer> sAlbumCovers = new ArrayList();

    static {
        sAlbumCovers.add(Integer.valueOf(R.id.album_cover_first));
        sAlbumCovers.add(Integer.valueOf(R.id.album_cover_second));
        sAlbumCovers.add(Integer.valueOf(R.id.album_cover_third));
        sAlbumCovers.add(Integer.valueOf(R.id.album_cover_fourth));
    }

    public AlbumPageListFaceItem(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    private DisplayImageOptions buildDisplayFaceOptions(Builder builder, long coverSize) {
        if (coverSize > 0) {
            return builder.considerFileLength(true).fileLength(coverSize).build();
        }
        return builder.considerFileLength(false).build();
    }

    public void bindImageAndAlbumCount(Bundle bundle, Builder builder) {
        ArrayList<FaceAlbumCover> covers = null;
        if (bundle != null) {
            bundle.setClassLoader(FaceAlbumCover.class.getClassLoader());
            covers = bundle.getParcelableArrayList("face_album_cover");
        }
        if (bundle == null || covers == null) {
            setDefaultCover();
            this.mAlbumPhotoCount.setText("0");
            return;
        }
        int i = 0;
        while (i < covers.size() && i < 4) {
            FaceAlbumCover cover = (FaceAlbumCover) covers.get(i);
            bindImage(getImageView(i), cover.coverPath, getDownloadUri(cover.coverId, cover.coverSyncState), buildDisplayFaceOptions(builder, cover.coverSize), parseCoverRect(cover.faceRect));
            i++;
        }
        if (i < sAlbumCovers.size()) {
            for (int j = i; j < sAlbumCovers.size(); j++) {
                getImageView(j).setImageDrawable(null);
            }
        }
        this.mAlbumPhotoCount.setText(String.valueOf(bundle.getInt("face_album_count")));
    }

    private Uri getDownloadUri(long id, int syncState) {
        return syncState == 0 ? ContentUris.withAppendedId(Cloud.CLOUD_URI, id) : null;
    }

    private void bindImage(ImageView view, String localPath, Uri downloadUri, DisplayImageOptions options, RectF regionDecodeRect) {
        BindImageHelper.bindFaceImage(localPath, downloadUri, view, options, ThumbConfig.get().sMicroTargetSize, regionDecodeRect, false);
    }

    private void setDefaultCover() {
        for (int i = 0; i < sAlbumCovers.size(); i++) {
            getImageView(i).setImageDrawable(null);
        }
    }

    private FaceRegionRectF parseCoverRect(String faceRect) {
        String[] rectInfo = faceRect.split(" ");
        float faceX = Float.parseFloat(rectInfo[0]);
        float faceY = Float.parseFloat(rectInfo[1]);
        float faceW = Float.parseFloat(rectInfo[2]);
        return new FaceRegionRectF(faceX, faceY, faceX + faceW, faceY + Float.parseFloat(rectInfo[3]), Integer.parseInt(rectInfo[4]));
    }

    private ImageView getImageView(int index) {
        return (ImageView) findViewById(((Integer) sAlbumCovers.get(index)).intValue());
    }
}
