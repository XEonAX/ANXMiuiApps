package com.miui.gallery.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.widget.editwrapper.PickAnimationHelper.BackgroundImageViewable;

public class PeoplePageGridItem extends FaceDisplayItemPreferFromThumbnailSource implements Checkable, BackgroundImageViewable {
    protected CheckBox mCheckBox;
    private TextView mName;

    private class IdHolder {
        long id;
        String serverId;

        public IdHolder(long id, String serverId) {
            this.id = id;
            this.serverId = serverId;
        }
    }

    public PeoplePageGridItem(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mCover = (ImageView) findViewById(R.id.face);
        this.mName = (TextView) findViewById(R.id.name);
        this.mCheckBox = (CheckBox) findViewById(16908289);
    }

    public void setName(String name) {
        this.mName.setText(name);
    }

    public void saveIds2Tag(long id, String serverId) {
        setTag(new IdHolder(id, serverId));
    }

    public String getName() {
        return this.mName.getText().toString();
    }

    public String getPeopleServerId() {
        return ((IdHolder) getTag()).serverId;
    }

    public long getPeopleLocalId() {
        return ((IdHolder) getTag()).id;
    }

    public void setCheckable(boolean checkable) {
        if (checkable) {
            this.mCheckBox.setVisibility(0);
        } else {
            this.mCheckBox.setVisibility(8);
        }
    }

    public void setChecked(boolean checked) {
        this.mCheckBox.setChecked(checked);
    }

    public boolean isChecked() {
        return this.mCheckBox.isChecked();
    }

    public void toggle() {
        this.mCheckBox.toggle();
    }

    public ImageView getBackgroundImageView() {
        return this.mCover;
    }
}
