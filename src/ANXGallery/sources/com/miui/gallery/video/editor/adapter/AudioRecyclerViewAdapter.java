package com.miui.gallery.video.editor.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.video.editor.LocalAudio;
import com.miui.gallery.video.editor.widget.SingleChoiceRecycleView.SingleChoiceRecyclerViewAdapter;
import com.miui.gallery.video.editor.widget.SingleChoiceRecycleView.SingleChoiceRecyclerViewAdapter.SingleChoiceViewHolder;
import java.util.List;

public class AudioRecyclerViewAdapter extends SingleChoiceRecyclerViewAdapter<AudioViewHolder> {
    private final int VIEW_TYPE_NORMAL = 0;
    private List<LocalAudio> mAudioList;
    private int mFirstMarginLeft = 0;
    private LayoutInflater mLayoutInflater;

    public AudioRecyclerViewAdapter(Context context, List<LocalAudio> mAudioList) {
        this.mLayoutInflater = LayoutInflater.from(context);
        this.mAudioList = mAudioList;
        this.mFirstMarginLeft = context.getResources().getDimensionPixelSize(R.dimen.video_editor_list_item_margin_left);
    }

    public LocalAudio getAuido(int position) {
        if (this.mAudioList == null || position >= this.mAudioList.size()) {
            return null;
        }
        return (LocalAudio) this.mAudioList.get(position);
    }

    public AudioViewHolder onCreateSingleChoiceViewHolder(ViewGroup parent, int viewType) {
        return new AudioViewHolder(this.mLayoutInflater.inflate(R.layout.video_editor_audio_download_item, parent, false));
    }

    public void onBindViewHolder(AudioViewHolder holder, int position, List<Object> payloads) {
        if (payloads.isEmpty()) {
            onBindViewHolder((SingleChoiceViewHolder) holder, position);
            return;
        }
        LocalAudio data = (LocalAudio) this.mAudioList.get(position);
        holder.setStateImage(data.getDownloadState());
        holder.updateSelected(getSelectedItemPosition() == position, data.isDownloaded());
        if (data.isDownloadSuccess()) {
            data.setDownloadState(17);
        }
    }

    public void onBindView(AudioViewHolder holder, int position) {
        int i;
        boolean z = false;
        if (position == 0) {
            i = this.mFirstMarginLeft;
        } else {
            i = 0;
        }
        holder.setMarginLeft(i);
        LocalAudio data = (LocalAudio) this.mAudioList.get(position);
        holder.setName(data.getNameResId());
        if (TextUtils.isEmpty(data.getIconUrl())) {
            holder.setIcon(data.getIconResId());
        } else {
            holder.setIcon(data.getIconUrl());
        }
        if (getSelectedItemPosition() == position) {
            z = true;
        }
        holder.updateSelected(z, data.isDownloaded());
        holder.setStateImage(data.getDownloadState());
    }

    public int getItemViewType(int position) {
        return 0;
    }

    public int getItemCount() {
        if (this.mAudioList != null) {
            return this.mAudioList.size();
        }
        return 0;
    }
}
