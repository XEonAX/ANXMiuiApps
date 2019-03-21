package com.miui.gallery.ui;

import android.content.Context;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.model.Album;
import com.miui.gallery.model.OtherAlbum;
import java.util.ArrayList;

public class AlbumPageListLocalItem extends AlbumPageListItemBase {
    protected TextView mAlbumNameDesc;
    protected TextView mMoreAlbumHint;

    public AlbumPageListLocalItem(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mMoreAlbumHint = (TextView) findViewById(R.id.more_album_hint);
        this.mAlbumNameDesc = (TextView) findViewById(R.id.album_name_desc);
    }

    public void bindAlbumNameDesc(Context context, Album album) {
        if (album instanceof OtherAlbum) {
            this.mAlbumNameDesc.setText(getFormedNameNotExceedMaxWidth(context, ((OtherAlbum) album).getAlbumNames(), this.mAlbumNameDesc));
        } else {
            this.mAlbumNameDesc.setText(album.getAlbumName());
        }
        if (album.getCount() > 1) {
            this.mMoreAlbumHint.setVisibility(0);
        } else {
            this.mMoreAlbumHint.setVisibility(8);
        }
    }

    public static String getFormedNameNotExceedMaxWidth(Context context, ArrayList<String> names, TextView textView) {
        TextPaint paint = textView.getPaint();
        int maxWidth = context.getResources().getDimensionPixelSize(R.dimen.album_name_max_len);
        String firstAlbumName = (String) names.get(0);
        float width = paint.measureText(firstAlbumName);
        if (width > ((float) maxWidth)) {
            return firstAlbumName;
        }
        float total = width;
        String split = context.getString(R.string.name_split);
        float splitWidth = paint.measureText(split);
        StringBuilder name = new StringBuilder();
        name.append(firstAlbumName);
        for (int i = 1; i < names.size() && total + splitWidth <= ((float) maxWidth); i++) {
            String albumName = (String) names.get(i);
            float temp = paint.measureText(albumName);
            if ((total + splitWidth) + temp > ((float) maxWidth)) {
                break;
            }
            name.append(split);
            name.append(albumName);
            total = (total + splitWidth) + temp;
        }
        return name.toString();
    }
}
