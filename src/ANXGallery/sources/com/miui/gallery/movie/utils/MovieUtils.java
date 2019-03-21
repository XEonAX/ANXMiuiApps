package com.miui.gallery.movie.utils;

import android.content.ClipData;
import android.content.ClipData.Item;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.miui.gallery.activity.ExternalPhotoPageActivity;
import com.miui.gallery.movie.entity.ImageEntity;
import com.miui.gallery.movie.entity.MovieResource;
import com.miui.gallery.util.FileUtils;
import java.util.ArrayList;
import java.util.List;

public class MovieUtils {
    public static void goDetail(Context context, Uri uri) {
        Intent intent = new Intent(context, ExternalPhotoPageActivity.class);
        intent.setData(uri);
        context.startActivity(intent);
    }

    public static List<ImageEntity> getImageFromClipData(Context context, Intent data) {
        List<ImageEntity> list = new ArrayList();
        ClipData clipData = data.getClipData();
        if (clipData == null) {
            list.add(new ImageEntity(ConvertFilepathUtil.getPath(context, data.getData()), null));
        } else {
            for (int i = 0; i < clipData.getItemCount(); i++) {
                Item item = clipData.getItemAt(i);
                if (item != null) {
                    list.add(new ImageEntity(ConvertFilepathUtil.getPath(context, item.getUri()), String.valueOf(item.getText())));
                }
            }
        }
        return list;
    }

    public static void checkResourceExist(List<? extends MovieResource> movieResourceList) {
        if (movieResourceList != null) {
            for (MovieResource movieResource : movieResourceList) {
                if (FileUtils.isFileExist(movieResource.getDownloadSrcPath())) {
                    movieResource.downloadState = 17;
                }
            }
        }
    }
}
