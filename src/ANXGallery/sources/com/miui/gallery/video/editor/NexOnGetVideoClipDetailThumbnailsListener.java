package com.miui.gallery.video.editor;

import android.graphics.Bitmap;
import com.miui.gallery.video.editor.VideoEditor.OnGetVideoThumbnailListener;
import com.nexstreaming.nexeditorsdk.nexClip.OnGetVideoClipDetailThumbnailsListener;
import java.util.ArrayList;
import java.util.List;

public class NexOnGetVideoClipDetailThumbnailsListener extends OnGetVideoClipDetailThumbnailsListener {
    private OnGetVideoThumbnailListener listener;
    private List<VideoThumbnail> thumbnails;

    public NexOnGetVideoClipDetailThumbnailsListener(OnGetVideoThumbnailListener listener) {
        this.listener = listener;
    }

    public void onGetDetailThumbnailResult(int event, Bitmap bm, int index, int totalCount, int timestamp) {
        if (event == OnGetVideoClipDetailThumbnailsListener.kEvent_Ok) {
            if (this.thumbnails == null) {
                this.thumbnails = new ArrayList(totalCount);
            }
            this.thumbnails.add(new VideoThumbnail(Bitmap.createBitmap(bm), timestamp));
        } else if (event == OnGetVideoClipDetailThumbnailsListener.kEvent_Completed) {
            this.listener.onGetVideoThumbnailCompleted(this.thumbnails);
        } else {
            this.listener.onGetVideoThumbnailCompleted(null);
        }
    }
}
