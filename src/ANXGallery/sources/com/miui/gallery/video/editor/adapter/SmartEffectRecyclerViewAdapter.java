package com.miui.gallery.video.editor.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.util.BaseBuildUtil;
import com.miui.gallery.video.editor.SmartEffect;
import com.miui.gallery.video.editor.widget.SingleChoiceRecycleView.SingleChoiceRecyclerViewAdapter;
import com.miui.gallery.video.editor.widget.SingleChoiceRecycleView.SingleChoiceRecyclerViewAdapter.SingleChoiceViewHolder;
import java.util.List;

public class SmartEffectRecyclerViewAdapter extends SingleChoiceRecyclerViewAdapter<SmartEffectViewHolder> {
    private int mFirstMarginLeft = 0;
    private LayoutInflater mLayoutInflater;
    private List<SmartEffect> smartEffectList;

    public SmartEffectRecyclerViewAdapter(Context context, List<SmartEffect> smartEffects) {
        this.mLayoutInflater = LayoutInflater.from(context);
        this.smartEffectList = smartEffects;
        this.mFirstMarginLeft = context.getResources().getDimensionPixelSize(R.dimen.video_editor_text_item_margin_left);
    }

    public SmartEffect getSmartEffect(int position) {
        if (this.smartEffectList == null || position >= this.smartEffectList.size()) {
            return null;
        }
        return (SmartEffect) this.smartEffectList.get(position);
    }

    public int getItemViewType(int position) {
        return 1;
    }

    public SmartEffectViewHolder onCreateSingleChoiceViewHolder(ViewGroup parent, int viewType) {
        return new SmartEffectViewHolder(this.mLayoutInflater.inflate(R.layout.video_editor_smart_effect_download_item, parent, false));
    }

    public void onBindViewHolder(SmartEffectViewHolder holder, int position, List<Object> payloads) {
        if (payloads.isEmpty()) {
            onBindViewHolder((SingleChoiceViewHolder) holder, position);
            return;
        }
        SmartEffect data = (SmartEffect) this.smartEffectList.get(position);
        holder.setStateImage(data.getDownloadState());
        holder.updateSelected(getSelectedItemPosition() == position, data.isDownloaded());
        if (data.isDownloadSuccess()) {
            data.setDownloadState(17);
        }
    }

    public void onBindView(SmartEffectViewHolder holder, int position) {
        int i;
        boolean z = false;
        if (position == 0) {
            i = this.mFirstMarginLeft;
        } else {
            i = 0;
        }
        holder.setMarginLeft(i);
        SmartEffect data = (SmartEffect) this.smartEffectList.get(position);
        if (data.getNameResId() != 0) {
            holder.setName(data.getNameResId());
        } else if (BaseBuildUtil.isInternational()) {
            holder.setName(data.getEnName());
        } else {
            holder.setName(data.getLabel());
        }
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

    public int getItemCount() {
        if (this.smartEffectList != null) {
            return this.smartEffectList.size();
        }
        return 0;
    }
}
