package com.miui.gallery.video.editor.adapter;

import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.video.editor.model.MenuFragmentData;
import com.miui.gallery.video.editor.ui.SimpleRecyclerView.Adapter;
import java.util.List;

public class VideoNavAdapter extends Adapter<VideoNavHolder> {
    private List<MenuFragmentData> mNavigatorData;

    public VideoNavAdapter(List<MenuFragmentData> data) {
        this.mNavigatorData = data;
    }

    public VideoNavHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        return new VideoNavHolder(getInflater().inflate(R.layout.navigator_item, parent, false));
    }

    public void onBindViewHolder(VideoNavHolder holder, int position) {
        super.onBindViewHolder(holder, position);
        holder.bind((MenuFragmentData) this.mNavigatorData.get(position));
    }

    public int getItemCount() {
        return this.mNavigatorData.size();
    }
}
