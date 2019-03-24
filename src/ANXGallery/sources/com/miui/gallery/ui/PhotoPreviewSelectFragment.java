package com.miui.gallery.ui;

import android.app.ActionBar.LayoutParams;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.model.BaseDataItem;
import com.miui.gallery.model.BaseDataSet;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.TalkBackUtil;
import com.miui.gallery.widget.slip.VerticalSlipLayout;
import java.util.List;
import miui.gallery.support.MiuiSdkCompat;

public class PhotoPreviewSelectFragment extends PhotoPageFragmentBase {
    private ChoiceManager mChoiceManager;

    private class ChoiceManager extends ChoiceManagerBase implements OnClickListener {
        private Button mCancelBtn;
        private Button mSelectAllBtn;
        private TextView mTitleView;

        ChoiceManager() {
            super();
            initTopBar();
            setUpChooserFragment(0, true);
            this.mChoiceMode = PhotoPreviewSelectFragment.this.mAdapter.startActionMode(this);
        }

        public void initSelected(BaseDataSet set) {
            long[] ids = PhotoPreviewSelectFragment.this.getArguments().getLongArray("photo_preview_selected_ids");
            int[] pos = PhotoPreviewSelectFragment.this.getArguments().getIntArray("photo_preview_selected_positions");
            if (!(ids == null || pos == null || set == null)) {
                if (ids.length != pos.length) {
                    throw new IllegalArgumentException("ids and positions not match");
                }
                BaseDataItem item = new BaseDataItem();
                for (int i = 0; i < ids.length; i++) {
                    long id = ids[i];
                    item.setKey(id);
                    int index = set.getIndexOfItem(item, pos[i]);
                    if (index != -1) {
                        this.mChoiceMode.appendCheck(index, id);
                    }
                }
                this.mChoiceMode.finishInit();
            }
            PhotoPreviewSelectFragment.this.getArguments().remove("photo_preview_selected_ids");
            PhotoPreviewSelectFragment.this.getArguments().remove("photo_preview_selected_positions");
        }

        private void initTopBar() {
            View customView = LayoutInflater.from(PhotoPreviewSelectFragment.this.mActivity).inflate(R.layout.custom_select_mode_title, null);
            this.mCancelBtn = (Button) customView.findViewById(R.id.select_mode_button1);
            this.mTitleView = (TextView) customView.findViewById(R.id.select_mode_title);
            this.mSelectAllBtn = (Button) customView.findViewById(R.id.select_mode_button2);
            this.mCancelBtn.setOnClickListener(this);
            this.mSelectAllBtn.setOnClickListener(this);
            MiuiSdkCompat.setEditActionModeButton(PhotoPreviewSelectFragment.this.mActivity, this.mCancelBtn, 3);
            MiuiSdkCompat.setEditActionModeButton(PhotoPreviewSelectFragment.this.mActivity, this.mSelectAllBtn, 0);
            PhotoPreviewSelectFragment.this.mActivity.getActionBar().setDisplayOptions(16);
            PhotoPreviewSelectFragment.this.mActivity.getActionBar().setCustomView(customView, new LayoutParams(-1, -1, 19));
        }

        public void onClick(View v) {
            switch (v.getId()) {
                case R.id.select_mode_button1 /*2131886411*/:
                    PhotoPreviewSelectFragment.this.finish();
                    break;
                case R.id.select_mode_button2 /*2131886413*/:
                    break;
                default:
                    return;
            }
            if (this.mChoiceMode.getSelectItems().size() < this.mChoiceMode.getCount()) {
                this.mChoiceMode.chooseAll();
            } else {
                this.mChoiceMode.unChooseAll();
            }
        }

        protected void updateSelectMode() {
            boolean allSelected;
            int i = 1;
            int size = this.mChoiceMode.getSelectItems().size();
            if (size <= 0 || size != this.mChoiceMode.getCount()) {
                allSelected = false;
            } else {
                allSelected = true;
            }
            Context context = PhotoPreviewSelectFragment.this.mActivity;
            Button button = this.mSelectAllBtn;
            if (!allSelected) {
                i = 0;
            }
            MiuiSdkCompat.setEditActionModeButton(context, button, i);
            super.updateSelectMode();
        }

        protected int getContainerId() {
            return R.id.child_container;
        }

        protected TextView getChoiceTitle() {
            return this.mTitleView;
        }

        protected void onShared() {
            super.onShared();
            PhotoPreviewSelectFragment.this.finish();
        }
    }

    public static PhotoPreviewSelectFragment newInstance(Uri uri, Bundle data) {
        if (uri == null) {
            throw new IllegalArgumentException("uri is null");
        }
        if (data == null) {
            data = new Bundle();
        }
        data.putString("photo_uri", uri.toString());
        PhotoPreviewSelectFragment fragment = new PhotoPreviewSelectFragment();
        fragment.setArguments(data);
        return fragment;
    }

    protected void onViewInflated(View root) {
        super.onViewInflated(root);
        ((VerticalSlipLayout) root.findViewById(R.id.slip_layout)).setDraggable(false);
    }

    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        this.mChoiceManager = new ChoiceManager();
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
    }

    protected void onShared() {
        this.mChoiceManager.onShared();
    }

    protected View getLayout(LayoutInflater inflater, ViewGroup container) {
        return inflater.inflate(R.layout.photo_preview_select_layout, container, false);
    }

    public String getTAG() {
        return "PhotoPreviewSelectFragment";
    }

    public String getPageName() {
        return "PhotoPreviewSelectFragment";
    }

    protected void onDataSetLoaded(BaseDataSet dataSet, boolean firstLoad) {
        super.onDataSetLoaded(dataSet, firstLoad);
        if (firstLoad) {
            long start = System.currentTimeMillis();
            this.mChoiceManager.initSelected(dataSet);
            Log.d("PhotoPreviewSelectFragment", "initialize selection costs %dms", Long.valueOf(System.currentTimeMillis() - start));
        }
        String targetPackage = getArguments().getString("assistant_target_package");
        String targetClass = getArguments().getString("assistant_target_class");
        int selectedSize = this.mChoiceManager.mChoiceMode.getSelectItems().size();
        if (!TextUtils.isEmpty(targetPackage) && !TextUtils.isEmpty(targetClass) && selectedSize > 0) {
            Intent intent = new Intent();
            this.mChoiceManager.configTargetIntentBySelected(selectedSize, intent);
            intent.setComponent(new ComponentName(targetPackage, targetClass));
            List<ResolveInfo> resolveInfos = this.mActivity.getPackageManager().queryIntentActivities(intent, 65536);
            if (BaseMiscUtil.isValid(resolveInfos) && resolveInfos.size() == 1) {
                this.mChoiceManager.onIntentSelected(intent);
            }
        }
    }

    protected void onItemSettled(int pos) {
        super.onItemSettled(pos);
        BaseDataItem dataItem = this.mAdapter.getDataItem(pos);
        if (dataItem != null) {
            TalkBackUtil.requestAnnouncementEvent(this.mPager, dataItem.getContentDescription(this.mActivity));
        }
    }
}
