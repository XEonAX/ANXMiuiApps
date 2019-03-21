package com.miui.gallery.video.editor.adapter;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.video.editor.widget.SingleChoiceRecycleView.SingleChoiceRecyclerViewAdapter.SingleChoiceViewHolder;

public class FilterViewHolder extends SingleChoiceViewHolder {
    private ImageView mIcon;
    private TextView mNameTextView;
    private View mSelector;

    public FilterViewHolder(View itemView) {
        super(itemView);
        this.mIcon = (ImageView) itemView.findViewById(R.id.icon);
        this.mNameTextView = (TextView) itemView.findViewById(R.id.name);
        this.mSelector = itemView.findViewById(R.id.selector);
    }

    public void setSelect(boolean selected) {
        this.itemView.setSelected(selected);
        if (this.mSelector != null) {
            this.mSelector.setVisibility(selected ? 0 : 8);
            if (selected) {
                this.mNameTextView.setBackground(null);
            } else {
                this.mNameTextView.setBackgroundResource(R.color.video_editor_filter_text_input_bg);
            }
        }
    }

    public void setName(int nameResId) {
        if (nameResId != 0) {
            this.mNameTextView.setText(nameResId);
        }
    }

    public void setIcon(int drawableId) {
        if (drawableId != 0) {
            this.mIcon.setImageResource(drawableId);
        }
    }
}
