package com.miui.gallery.editor.photo.core.imports.sticker;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.core.Metadata;
import com.miui.gallery.editor.photo.core.RenderData;
import com.miui.gallery.editor.photo.core.common.fragment.AbstractEffectFragment;
import com.miui.gallery.util.BaseMiscUtil;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class StickerFragment extends AbstractEffectFragment {
    private List<StickerItem> mData = new ArrayList();
    private StickerEditorView mStickerEditorView;

    private class DecodeTask extends AsyncTask<Void, Void, Bitmap> {
        private StickerItem mItem;

        public DecodeTask(StickerItem item) {
            this.mItem = item;
        }

        protected Bitmap doInBackground(Void... params) {
            return BitmapFactory.decodeFile(this.mItem.content);
        }

        protected void onPostExecute(Bitmap bitmap) {
            super.onPostExecute(bitmap);
            StickerProvider.INSTANCE.putToCache(this.mItem, bitmap);
            StickerFragment.this.mStickerEditorView.add(bitmap, this.mItem.content, this.mItem.id, this.mItem.cateName);
        }
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        ViewGroup layout = (ViewGroup) inflater.inflate(R.layout.editor_view_container, container, false);
        this.mStickerEditorView = new StickerEditorView(getActivity());
        this.mStickerEditorView.setBitmap(getBitmap());
        int paddingLeft = getResources().getDimensionPixelSize(R.dimen.photo_editor_preview_padding);
        this.mStickerEditorView.setPadding(paddingLeft, getResources().getDimensionPixelSize(R.dimen.photo_editor_preview_padding_top), paddingLeft, 0);
        layout.addView(this.mStickerEditorView, -1, -1);
        return layout;
    }

    public void onDestroyView() {
        super.onDestroyView();
        StickerProvider.INSTANCE.writeRecentToFile();
    }

    public void add(Metadata effect, Object param) {
        StickerItem item = (StickerItem) effect;
        Bitmap bitmap = StickerProvider.INSTANCE.fromCache(item);
        if (bitmap != null) {
            this.mStickerEditorView.add(bitmap, item.content, item.id, item.cateName);
        } else {
            new DecodeTask(item).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
        this.mData.add(item);
        StickerProvider.INSTANCE.touch((StickerItem) effect);
    }

    public void remove(Metadata effect) {
    }

    public void setBitmap(Bitmap bitmap) {
        super.setBitmap(bitmap);
        if (this.mStickerEditorView != null) {
            this.mStickerEditorView.setBitmap(bitmap);
        }
    }

    public boolean isEmpty() {
        return this.mData.isEmpty();
    }

    public void clear() {
        this.mData.clear();
        this.mStickerEditorView.onClear();
    }

    public void onDestroy() {
        super.onDestroy();
        this.mStickerEditorView.onDestroy();
    }

    public void render() {
    }

    public RenderData onExport() {
        return new StickerRenderData(this.mStickerEditorView.export());
    }

    protected List<String> onSample() {
        List<String> values = new ArrayList();
        List<StickerNode> nodes = this.mStickerEditorView.getCacheNode();
        if (BaseMiscUtil.isValid(nodes)) {
            for (StickerNode node : nodes) {
                String cateName = node.mStickerCateName;
                String id = Long.toString(node.mStickerId);
                values.add(String.format(Locale.US, cateName + "(%s)", new Object[]{id.substring(id.length() - 2)}));
            }
        }
        return values;
    }
}
