package com.miui.gallery.editor.photo.app.longcrop;

import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.app.MenuFragment;
import com.miui.gallery.editor.photo.core.Effect;
import com.miui.gallery.editor.photo.core.SdkProvider;
import com.miui.gallery.editor.photo.core.common.fragment.AbstractLongCropFragment;

public class LongCropFragment extends MenuFragment<AbstractLongCropFragment, SdkProvider<Object, AbstractLongCropFragment>> {
    private AsyncTask<Void, Void, Bitmap> mDecodeTask = new AsyncTask<Void, Void, Bitmap>() {
        protected Bitmap doInBackground(Void... params) {
            return LongCropFragment.this.decodeOrigin();
        }

        protected void onPostExecute(Bitmap bitmap) {
            if (bitmap != null) {
                ((AbstractLongCropFragment) LongCropFragment.this.getRenderFragment()).setOriginBitmap(bitmap, LongCropFragment.this.getPreRenderData());
            }
        }
    };
    private TextView mTitle;

    public LongCropFragment() {
        super(Effect.LONG_CROP);
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mDecodeTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.common_menu_bottom_bar, container, false);
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.mTitle = (TextView) view.findViewById(R.id.title);
        this.mTitle.setText(R.string.photo_editor_long_crop);
    }
}
