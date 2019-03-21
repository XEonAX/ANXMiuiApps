package com.miui.gallery.picker;

import android.content.Intent;
import android.database.DataSetObserver;
import android.graphics.Typeface;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.picker.PickAlbumDetailFragmentBase.ItemStateListener;
import com.miui.gallery.picker.PickerActivity.Decor;
import com.miui.gallery.picker.helper.Picker;
import com.miui.gallery.picker.helper.Picker.MediaType;
import com.miui.gallery.picker.helper.Picker.Mode;
import com.miui.gallery.picker.helper.Picker.ResultType;
import com.miui.gallery.util.BaseBuildUtil;
import java.util.ArrayList;
import miui.app.ActionBar;
import miui.gallery.support.MiuiSdkCompat;

public class PickAlbumDetailActivityBase extends PickerActivity {
    protected PickAlbumDetailFragmentBase mAlbumDetailFragment;
    protected ItemStateListener mItemStateListener;
    private int mResultCode;

    public static class SelectAllDecor extends Decor {
        private PickAlbumDetailActivityBase mActivity;
        private boolean mAllSelected;
        private Button mCancelButton;
        private Button mDoneButton;
        private TextView mPickerTitle;
        private Button mSelectAllButton;
        private TextView mTitle;

        protected SelectAllDecor(PickAlbumDetailActivityBase activity) {
            super(activity);
            this.mActivity = activity;
        }

        public void applyActionBar() {
            ActionBar actionBar = this.mActivity.getActionBar();
            actionBar.setDisplayShowCustomEnabled(true);
            actionBar.setTabsMode(false);
            actionBar.setCustomView(R.layout.picker_album_custom_title);
            View titleView = actionBar.getCustomView();
            this.mTitle = (TextView) titleView.findViewById(16908310);
            this.mPickerTitle = (TextView) titleView.findViewById(R.id.picker_title);
            if (BaseBuildUtil.isInternational()) {
                this.mPickerTitle.setTextAppearance(this.mActivity, R.style.f76Gallery.TextAppearance.InternationalPickerTitle);
            } else {
                this.mPickerTitle.setTypeface(Typeface.MONOSPACE);
            }
            this.mCancelButton = (Button) titleView.findViewById(16908313);
            this.mDoneButton = (Button) titleView.findViewById(16908314);
            updateDoneButtonVisibility();
            this.mSelectAllButton = (Button) titleView.findViewById(16908315);
            setup();
        }

        private void updateDoneButtonVisibility() {
            this.mDoneButton.setEnabled(this.mActivity.mPicker.count() >= this.mActivity.mPicker.baseline());
        }

        private void setup() {
            MiuiSdkCompat.setEditActionModeButton(this.mActivity, this.mDoneButton, 2);
            MiuiSdkCompat.setEditActionModeButton(this.mActivity, this.mCancelButton, 3);
            Picker picker = this.mActivity.getPicker();
            this.mTitle.setOnClickListener(new OnClickListener() {
                public void onClick(View v) {
                    SelectAllDecor.this.mActivity.setResultCode(2);
                    SelectAllDecor.this.mActivity.getPicker().done();
                }
            });
            this.mCancelButton.setOnClickListener(new OnClickListener() {
                public void onClick(View v) {
                    SelectAllDecor.this.mActivity.getPicker().cancel();
                }
            });
            this.mDoneButton.setOnClickListener(new OnClickListener() {
                public void onClick(View v) {
                    SelectAllDecor.this.mActivity.setResultCode(-1);
                    SelectAllDecor.this.mActivity.getPicker().done();
                }
            });
            this.mSelectAllButton.setOnClickListener(new OnClickListener() {
                public void onClick(View v) {
                    if (SelectAllDecor.this.mAllSelected) {
                        SelectAllDecor.this.mActivity.mAlbumDetailFragment.clear();
                    } else {
                        SelectAllDecor.this.mActivity.mAlbumDetailFragment.selectAll();
                    }
                }
            });
            updateSelectAll();
            picker.registerObserver(new DataSetObserver() {
                public void onChanged() {
                    super.onChanged();
                    SelectAllDecor.this.mActivity.updateTitle();
                    SelectAllDecor.this.updateDoneButtonVisibility();
                }

                public void onInvalidated() {
                    super.onInvalidated();
                    SelectAllDecor.this.mActivity.updateTitle();
                    SelectAllDecor.this.updateDoneButtonVisibility();
                }
            });
            this.mActivity.mItemStateListener = new ItemStateListener() {
                public void onStateChanged() {
                    SelectAllDecor.this.updateSelectAll();
                }
            };
        }

        private void updateSelectAll() {
            int i = 1;
            boolean z = (this.mActivity.mAlbumDetailFragment != null && this.mActivity.mAlbumDetailFragment.isAllSelected()) || this.mActivity.getPicker().isFull();
            this.mAllSelected = z;
            PickAlbumDetailActivityBase pickAlbumDetailActivityBase = this.mActivity;
            Button button = this.mSelectAllButton;
            if (!this.mAllSelected) {
                i = 0;
            }
            MiuiSdkCompat.setEditActionModeButton(pickAlbumDetailActivityBase, button, i);
        }

        public void applyTheme() {
            this.mActivity.setTheme(R.style.f162GalleryTheme.ActionBar.Large);
        }

        public void setTitle(CharSequence title) {
            this.mTitle.setText(title);
        }

        public void setPickerTitle(CharSequence title) {
            this.mPickerTitle.setText(title);
        }
    }

    protected Picker onCreatePicker() {
        Intent intent = getIntent();
        int capacity = intent.getIntExtra("pick-upper-bound", 0);
        int baseline = intent.getIntExtra("pick-lower-bound", 1);
        MediaType mediaType = MediaType.values()[intent.getIntExtra("picker_media_type", 0)];
        ArrayList<String> resultList = (ArrayList) intent.getSerializableExtra("picker_result_set");
        ResultType resultType = ResultType.values()[intent.getIntExtra("picker_result_type", 0)];
        Picker picker = new SimplePicker(this, capacity, baseline, resultList);
        picker.setMediaType(mediaType);
        picker.setResultType(resultType);
        return picker;
    }

    protected Decor onCreateDecor() {
        if (getPicker().getMode() == Mode.SINGLE) {
            return super.onCreateDecor();
        }
        return new SelectAllDecor(this);
    }

    protected void onDone() {
        Intent intent = new Intent();
        intent.putExtra("internal_key_updated_selection", PickerActivity.copyPicker(getPicker()));
        setResult(this.mResultCode, intent);
        finish();
    }

    public void onBackPressed() {
        setResultCode(2);
        getPicker().done();
    }

    public void setResultCode(int code) {
        this.mResultCode = code;
    }
}
