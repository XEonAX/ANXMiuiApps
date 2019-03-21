package com.miui.gallery.video.editor.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.video.editor.TextStyle;
import com.miui.gallery.video.editor.widget.SingleChoiceRecycleView.SingleChoiceRecyclerViewAdapter;
import com.miui.gallery.video.editor.widget.SingleChoiceRecycleView.SingleChoiceRecyclerViewAdapter.SingleChoiceViewHolder;
import java.util.List;

public class WatermarkRecyclerViewAdapter extends SingleChoiceRecyclerViewAdapter<TextViewHolder> {
    private LayoutInflater mLayoutInflater;
    private List<TextStyle> mTextStyles;

    public WatermarkRecyclerViewAdapter(Context context, List<TextStyle> textStyles) {
        this.mLayoutInflater = LayoutInflater.from(context);
        this.mTextStyles = textStyles;
    }

    public TextStyle getTextStyle(int position) {
        if (this.mTextStyles == null || position >= this.mTextStyles.size()) {
            return null;
        }
        return (TextStyle) this.mTextStyles.get(position);
    }

    public TextViewHolder onCreateSingleChoiceViewHolder(ViewGroup parent, int viewType) {
        return new TextViewHolder(this.mLayoutInflater.inflate(R.layout.video_editor_text_download_item, parent, false));
    }

    public void onBindViewHolder(TextViewHolder holder, int position, List<Object> payloads) {
        boolean z = true;
        if (payloads.isEmpty()) {
            onBindViewHolder((SingleChoiceViewHolder) holder, position);
            return;
        }
        boolean z2;
        TextStyle data = (TextStyle) this.mTextStyles.get(position);
        if (data.isLocal() && getSelectedItemPosition() == position) {
            z2 = true;
        } else {
            z2 = false;
        }
        holder.updateTextEditable(z2);
        if (getSelectedItemPosition() != position) {
            z = false;
        }
        holder.updateSelected(z, data.isDownloaded());
        holder.setStateImage(data.getDownloadState());
        if (data.isDownloadSuccess()) {
            data.setDownloadState(17);
        }
    }

    public void onBindView(TextViewHolder holder, int position) {
        boolean z;
        boolean z2 = true;
        TextStyle data = (TextStyle) this.mTextStyles.get(position);
        if (TextUtils.isEmpty(data.getIconUrl())) {
            holder.setIcon(data.getIconResId());
        } else {
            holder.setIcon(data.getIconUrl());
        }
        if (data.isLocal() && getSelectedItemPosition() == position) {
            z = true;
        } else {
            z = false;
        }
        holder.updateTextEditable(z);
        if (getSelectedItemPosition() != position) {
            z2 = false;
        }
        holder.updateSelected(z2, data.isDownloaded());
        holder.setStateImage(data.getDownloadState());
    }

    public int getItemViewType(int position) {
        return 0;
    }

    public int getItemCount() {
        if (this.mTextStyles != null) {
            return this.mTextStyles.size();
        }
        return 0;
    }
}
