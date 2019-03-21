package com.miui.gallery.ui;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.adapter.CheckableAdapter.CheckedItem;
import com.miui.gallery.cloudcontrol.CloudControlStrategyHelper;
import com.miui.gallery.cloudcontrol.strategies.CreationStrategy;
import com.miui.gallery.util.BaseFileMimeUtil;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.IntentUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MovieLibraryLoaderHelper;
import com.miui.gallery.util.MovieLibraryLoaderHelper.DownloadStateListener;
import com.miui.gallery.util.PhotoMovieEntranceUtils;
import com.miui.gallery.util.PrintInstallHelper;
import com.miui.gallery.util.PrintInstallHelper.InstallStateListener;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.widget.GalleryDialogFragment;
import java.util.LinkedList;
import java.util.List;
import miui.app.AlertDialog;
import miui.app.AlertDialog.Builder;

public class ProduceCreationDialog extends GalleryDialogFragment {
    private List<CreationModel> mCreationModels = new LinkedList();
    private AlertDialog mDialog;
    private DownloadStateListener mDownloadStateListener = new DownloadStateListener() {
        public void onDownloading() {
            ProduceCreationDialog.this.mProduceCreationAdapter.setRemainWhenClick(1, true);
            ProduceCreationDialog.this.mProduceCreationAdapter.setInformation(1, GalleryApp.sGetAndroidContext().getString(R.string.photo_movie_menu_loading));
            ProduceCreationDialog.this.mProduceCreationAdapter.notifyDataSetChanged();
        }

        public void onFinish(boolean isSuccess, int errorCode) {
            ProduceCreationDialog.this.mProduceCreationAdapter.setRemainWhenClick(1, false);
            ProduceCreationDialog.this.mProduceCreationAdapter.setInformation(1, null);
            ProduceCreationDialog.this.mProduceCreationAdapter.notifyDataSetChanged();
        }
    };
    private InstallStateListener mInstallStateListener = new InstallStateListener() {
        public void onInstallLimited() {
        }

        public void onInstalling() {
            ProduceCreationDialog.this.mProduceCreationAdapter.setRemainWhenClick(2, true);
            ProduceCreationDialog.this.mProduceCreationAdapter.setInformation(2, GalleryApp.sGetAndroidContext().getString(R.string.photo_print_menu_loading));
            ProduceCreationDialog.this.mProduceCreationAdapter.notifyDataSetChanged();
        }

        public void onFinish(boolean isSuccess, int errorCode, int failReason) {
            ProduceCreationDialog.this.mProduceCreationAdapter.setRemainWhenClick(2, false);
            ProduceCreationDialog.this.mProduceCreationAdapter.setInformation(2, null);
            ProduceCreationDialog.this.mProduceCreationAdapter.notifyDataSetChanged();
        }
    };
    private OnOperationSelectedListener mOnOperationSelectedListener;
    private ProduceCreationAdapter mProduceCreationAdapter;

    public static class CreationModel {
        public int creationId;
        public int iconResourceId;
        public String informationString;
        public boolean isRemainWhenClick = false;
        public int titleResourceId;

        public CreationModel(int creationId, int iconResourceId, int titleResourceId) {
            this.creationId = creationId;
            this.iconResourceId = iconResourceId;
            this.titleResourceId = titleResourceId;
        }
    }

    public interface OnOperationSelectedListener {
        boolean onOperationSelected(int i);
    }

    private class ProduceCreationAdapter extends BaseAdapter implements OnClickListener {
        private List<CreationModel> mCreationModelList;

        private class ViewHolder {
            ImageView icon;
            TextView information;
            int position;
            TextView title;

            private ViewHolder() {
            }

            /* synthetic */ ViewHolder(ProduceCreationAdapter x0, AnonymousClass1 x1) {
                this();
            }

            public void bindView(CreationModel item, int pos) {
                this.icon.setImageResource(item.iconResourceId);
                this.title.setText(item.titleResourceId);
                if (TextUtils.isEmpty(item.informationString)) {
                    this.information.setVisibility(8);
                    this.information.setText("");
                } else {
                    this.information.setVisibility(0);
                    this.information.setText(item.informationString);
                }
                this.position = pos;
            }
        }

        public ProduceCreationAdapter(List<CreationModel> creationModels) {
            this.mCreationModelList = creationModels;
        }

        public int getCount() {
            return this.mCreationModelList.size();
        }

        public CreationModel getItem(int position) {
            if (position < 0 || position >= this.mCreationModelList.size()) {
                return null;
            }
            return (CreationModel) this.mCreationModelList.get(position);
        }

        public long getItemId(int position) {
            return (long) position;
        }

        public View getView(int position, View convertView, ViewGroup parent) {
            if (convertView == null) {
                convertView = LayoutInflater.from(parent.getContext()).inflate(R.layout.creation_list_dialog_item, parent, false);
                ViewHolder holder = new ViewHolder(this, null);
                holder.icon = (ImageView) convertView.findViewById(R.id.creation_icon);
                holder.title = (TextView) convertView.findViewById(R.id.creation_text);
                holder.information = (TextView) convertView.findViewById(R.id.information);
                convertView.setTag(holder);
                convertView.setOnClickListener(this);
            }
            ((ViewHolder) convertView.getTag()).bindView(getItem(position), position);
            return convertView;
        }

        public void setRemainWhenClick(int creationId, boolean isRemain) {
            for (CreationModel creationModel : this.mCreationModelList) {
                if (creationModel.creationId == creationId) {
                    creationModel.isRemainWhenClick = isRemain;
                    return;
                }
            }
        }

        public void setInformation(int creationId, String info) {
            for (CreationModel creationModel : this.mCreationModelList) {
                if (creationModel.creationId == creationId) {
                    creationModel.informationString = info;
                    return;
                }
            }
        }

        public void onClick(View v) {
            int which = ((ViewHolder) v.getTag()).position;
            if (which < ProduceCreationDialog.this.mCreationModels.size() && ProduceCreationDialog.this.mOnOperationSelectedListener != null) {
                Log.d("ProduceCreationDialog", "Creation select : %d", Integer.valueOf(which));
                CreationModel creationModel = (CreationModel) ProduceCreationDialog.this.mCreationModels.get(which);
                if (!creationModel.isRemainWhenClick && ProduceCreationDialog.this.mOnOperationSelectedListener.onOperationSelected(creationModel.creationId)) {
                    ProduceCreationDialog.this.dismissSafely();
                }
            }
        }
    }

    public ProduceCreationDialog() {
        CreationStrategy strategy = CloudControlStrategyHelper.getCreationStrategy();
        if (strategy.isCollageEntryEnable()) {
            this.mCreationModels.add(new CreationModel(0, R.drawable.home_menu_collage, R.string.home_menu_collage));
        }
        if (strategy.isPhotoMovieEntryEnable() && PhotoMovieEntranceUtils.isPhotoMovieAvailable()) {
            this.mCreationModels.add(new CreationModel(1, R.drawable.home_menu_photo_movie, R.string.home_menu_photo_movie));
        }
        if (PrintInstallHelper.getInstance().isPhotoPrintEnable() && strategy.isPrintEntryEnable()) {
            this.mCreationModels.add(new CreationModel(2, R.drawable.home_menu_print, R.string.home_menu_print));
        }
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mProduceCreationAdapter = new ProduceCreationAdapter(this.mCreationModels);
        if (PrintInstallHelper.getInstance().isPrintInstalling()) {
            this.mProduceCreationAdapter.setRemainWhenClick(2, true);
            this.mProduceCreationAdapter.setInformation(2, GalleryApp.sGetAndroidContext().getString(R.string.photo_print_menu_loading));
        }
        if (MovieLibraryLoaderHelper.getInstance().getLoaderState() == 1) {
            this.mProduceCreationAdapter.setRemainWhenClick(1, true);
            this.mProduceCreationAdapter.setInformation(1, GalleryApp.sGetAndroidContext().getString(R.string.photo_movie_menu_loading));
        }
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        PrintInstallHelper.getInstance().addInstallStateListener(this.mInstallStateListener);
        MovieLibraryLoaderHelper.getInstance().addDownloadStateListener(this.mDownloadStateListener);
        return super.onCreateView(inflater, container, savedInstanceState);
    }

    public void onDestroyView() {
        super.onDestroyView();
        PrintInstallHelper.getInstance().removeInstallStateListener(this.mInstallStateListener);
        MovieLibraryLoaderHelper.getInstance().removeDownloadStateListener(this.mDownloadStateListener);
    }

    public void setOnOperationSelectedListener(OnOperationSelectedListener onOperationSelectedListener) {
        this.mOnOperationSelectedListener = onOperationSelectedListener;
    }

    public Dialog onCreateDialog(Bundle savedInstanceState) {
        Builder builder = new Builder(getActivity());
        builder.setAdapter(this.mProduceCreationAdapter, null);
        this.mDialog = builder.create();
        return this.mDialog;
    }

    public static boolean checkCreationCondition(Context context, int ops, List<CheckedItem> checkedItems) {
        if (!BaseMiscUtil.isValid(checkedItems)) {
            Log.e("ProduceCreationDialog", "Checked Items is null");
            return false;
        } else if (containVideo(checkedItems)) {
            ToastUtils.makeText(context, context.getString(R.string.unsupport_video, new Object[]{getCreationName(context, ops)}));
            return false;
        } else if (ops == 0 && checkedItems.size() > 6) {
            ToastUtils.makeText(context, (int) R.string.collage_select_image_range);
            return false;
        } else if (ops != 1 || (checkedItems.size() <= 20 && checkedItems.size() >= 3)) {
            if (ops == 2) {
                int printMaxImageCount = CloudControlStrategyHelper.getCreationStrategy().getPrintMaxImageCount();
                if (checkedItems.size() > printMaxImageCount) {
                    ToastUtils.makeText(context, context.getResources().getQuantityString(R.plurals.creation_max_image, printMaxImageCount, new Object[]{Integer.valueOf(printMaxImageCount)}));
                    return false;
                }
            }
            return IntentUtil.checkCreationCondition((Activity) context, ops);
        } else {
            ToastUtils.makeText(context, (int) R.string.photo_movie_select_image_range);
            return false;
        }
    }

    private static boolean containVideo(List<CheckedItem> checkedItems) {
        for (CheckedItem checkedItem : checkedItems) {
            if (BaseFileMimeUtil.isVideoFromMimeType(checkedItem.getMimeType())) {
                return true;
            }
        }
        return false;
    }

    private static String getCreationName(Context context, int ops) {
        switch (ops) {
            case 0:
                return context.getString(R.string.home_menu_collage);
            case 1:
                return context.getString(R.string.home_menu_photo_movie);
            default:
                return context.getString(R.string.home_menu_print);
        }
    }
}
