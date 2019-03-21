package com.miui.gallery.ui;

import android.app.LoaderManager.LoaderCallbacks;
import android.content.AsyncTaskLoader;
import android.content.Context;
import android.content.Loader;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.cloud.syncstate.SyncStateUtil;
import com.miui.gallery.cloud.syncstate.SyncStateUtil.CloudSpaceInfo;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.IntentUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.widget.ColorRingProgress;
import java.util.ArrayList;
import java.util.List;

public class CloudSpaceStatusFragment extends BaseFragment {
    private BaseAdapter mApdater;
    private List<DataItem> mDataList = new ArrayList();
    private ListView mListView;
    private ColorRingProgress mProgress;
    private TextView mStorageDetail;
    private View mStorageFrame;
    private TextView mUsedPercent;

    private static class CloudStatusData {
        boolean mIsSpaceLow;
        long mLeftCloudSpace;
        int mSyncedPhotoCount;
        long mSyncedPhotoSize;
        int mSyncedVideoCount;
        long mSyncedVideoSize;
        long mTotalCloudSpace;

        private CloudStatusData() {
        }

        /* synthetic */ CloudStatusData(AnonymousClass1 x0) {
            this();
        }
    }

    private static class DataItem {
        String mAppendSummary;
        String mAppendTitle;
        OnClickListener mClickListener;
        boolean mIsShowArrow;
        String mSummary;
        String mTitle;
        String mValue;

        private DataItem() {
        }

        /* synthetic */ DataItem(AnonymousClass1 x0) {
            this();
        }
    }

    private static class SpaceStatusLoader extends AsyncTaskLoader<CloudStatusData> {
        private CloudStatusData mData;

        public SpaceStatusLoader(Context context) {
            super(context);
        }

        public CloudStatusData loadInBackground() {
            CloudStatusData data = new CloudStatusData();
            int[] syncedCount = SyncStateUtil.getSyncedCount(getContext());
            long[] syncedSize = SyncStateUtil.getSyncedSize(getContext());
            data.mSyncedPhotoCount = syncedCount[0];
            data.mSyncedPhotoSize = syncedSize[0];
            data.mSyncedVideoCount = syncedCount[1];
            data.mSyncedVideoSize = syncedSize[1];
            CloudSpaceInfo info = SyncStateUtil.getCloudSpaceInfo(getContext());
            data.mTotalCloudSpace = info.getTotal();
            data.mLeftCloudSpace = data.mTotalCloudSpace - info.getUsed();
            data.mIsSpaceLow = info.isSpaceLow();
            return data;
        }

        protected void onStartLoading() {
            if (this.mData != null) {
                deliverResult(this.mData);
            }
            if (takeContentChanged() || this.mData == null) {
                forceLoad();
            }
        }

        protected void onStopLoading() {
            cancelLoad();
        }

        public void onCanceled(CloudStatusData data) {
        }

        protected void onReset() {
            super.onReset();
            onStopLoading();
            this.mData = null;
        }

        public final void deliverResult(CloudStatusData data) {
            if (!isReset()) {
                this.mData = data;
                if (isStarted()) {
                    super.deliverResult(data);
                }
            }
        }
    }

    private class SpaceStatusLoaderCallBack implements LoaderCallbacks<CloudStatusData> {
        private SpaceStatusLoaderCallBack() {
        }

        /* synthetic */ SpaceStatusLoaderCallBack(CloudSpaceStatusFragment x0, AnonymousClass1 x1) {
            this();
        }

        public Loader<CloudStatusData> onCreateLoader(int id, Bundle args) {
            return new SpaceStatusLoader(CloudSpaceStatusFragment.this.getActivity());
        }

        public void onLoadFinished(Loader<CloudStatusData> loader, CloudStatusData data) {
            CloudSpaceStatusFragment.this.refresh(data);
        }

        public void onLoaderReset(Loader<CloudStatusData> loader) {
        }
    }

    private class StatusAdapter extends BaseAdapter {
        private List<DataItem> mList;

        private class ViewHolder {
            TextView mAppendSummary;
            TextView mAppendTitle;
            View mRightArrow;
            TextView mSummary;
            View mSummayDivider;
            TextView mTitle;
            View mTitleDivider;
            TextView mValue;

            private ViewHolder() {
            }

            /* synthetic */ ViewHolder(StatusAdapter x0, AnonymousClass1 x1) {
                this();
            }
        }

        StatusAdapter(List<DataItem> list) {
            this.mList = list;
        }

        public int getCount() {
            return this.mList == null ? 0 : this.mList.size();
        }

        public DataItem getItem(int position) {
            if (this.mList == null || position <= -1 || position >= this.mList.size()) {
                return null;
            }
            return (DataItem) this.mList.get(position);
        }

        public long getItemId(int position) {
            return (long) position;
        }

        public View getView(int position, View convertView, ViewGroup parent) {
            ViewHolder holder;
            if (convertView == null) {
                convertView = LayoutInflater.from(CloudSpaceStatusFragment.this.getActivity()).inflate(R.layout.cloud_space_status_item, parent, false);
                holder = new ViewHolder(this, null);
                holder.mTitle = (TextView) convertView.findViewById(R.id.title);
                holder.mTitleDivider = convertView.findViewById(R.id.title_divider);
                holder.mAppendTitle = (TextView) convertView.findViewById(R.id.append_title);
                holder.mSummary = (TextView) convertView.findViewById(R.id.summary);
                holder.mSummayDivider = convertView.findViewById(R.id.summary_divider);
                holder.mAppendSummary = (TextView) convertView.findViewById(R.id.append_summary);
                holder.mValue = (TextView) convertView.findViewById(R.id.value);
                holder.mRightArrow = convertView.findViewById(R.id.arrow_right);
                convertView.setTag(holder);
            }
            holder = (ViewHolder) convertView.getTag();
            DataItem item = getItem(position);
            if (item != null) {
                int i;
                holder.mTitle.setText(item.mTitle);
                if (TextUtils.isEmpty(item.mAppendTitle)) {
                    holder.mTitleDivider.setVisibility(8);
                    holder.mAppendTitle.setVisibility(8);
                } else {
                    holder.mAppendTitle.setText(item.mAppendTitle);
                    holder.mTitleDivider.setVisibility(0);
                    holder.mAppendTitle.setVisibility(0);
                }
                if (TextUtils.isEmpty(item.mSummary)) {
                    holder.mSummary.setVisibility(8);
                    holder.mSummayDivider.setVisibility(8);
                    holder.mAppendSummary.setVisibility(8);
                } else {
                    holder.mSummary.setText(item.mSummary);
                    holder.mSummary.setVisibility(0);
                    if (TextUtils.isEmpty(item.mAppendSummary)) {
                        holder.mSummayDivider.setVisibility(8);
                        holder.mAppendSummary.setVisibility(8);
                    } else {
                        holder.mAppendSummary.setText(item.mAppendSummary);
                        holder.mSummayDivider.setVisibility(0);
                        holder.mAppendSummary.setVisibility(0);
                    }
                }
                if (TextUtils.isEmpty(item.mValue)) {
                    holder.mValue.setVisibility(8);
                } else {
                    holder.mValue.setText(item.mValue);
                    holder.mValue.setVisibility(0);
                }
                View view = holder.mRightArrow;
                if (item.mIsShowArrow) {
                    i = 0;
                } else {
                    i = 8;
                }
                view.setVisibility(i);
                convertView.setOnClickListener(item.mClickListener);
                if (item.mClickListener == null) {
                    convertView.setOnTouchListener(new OnTouchListener() {
                        public boolean onTouch(View v, MotionEvent event) {
                            return true;
                        }
                    });
                } else {
                    convertView.setOnTouchListener(null);
                }
            }
            return convertView;
        }
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setHasOptionsMenu(false);
    }

    protected int getThemeRes() {
        return R.style.f23GalleryTheme.NoActionBar.DarkStatusBar;
    }

    public View onInflateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.cloud_space_status, container, false);
        this.mStorageFrame = view.findViewById(R.id.storage_frame);
        this.mProgress = (ColorRingProgress) view.findViewById(R.id.used_progress);
        this.mUsedPercent = (TextView) view.findViewById(R.id.used_percent);
        this.mStorageDetail = (TextView) view.findViewById(R.id.storage_detail);
        this.mListView = (ListView) view.findViewById(R.id.list);
        this.mApdater = new StatusAdapter(this.mDataList);
        this.mListView.setAdapter(this.mApdater);
        return view;
    }

    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        getLoaderManager().initLoader(1, null, new SpaceStatusLoaderCallBack(this, null));
        BaseSamplingStatHelper.recordCountEvent("Sync", "sync_cloud_space_status");
    }

    private void refresh(CloudStatusData refreshData) {
        Log.i("CloudSpaceStatusFragment", "refresh %s", (Object) refreshData);
        if (refreshData != null) {
            if (refreshData.mTotalCloudSpace != 0 && refreshData.mLeftCloudSpace <= refreshData.mTotalCloudSpace) {
                this.mProgress.setProgress(Math.min(1.0f, 1.0f - ((1.0f * ((float) refreshData.mLeftCloudSpace)) / ((float) refreshData.mTotalCloudSpace))));
                this.mUsedPercent.setText(String.format("%d", new Object[]{Integer.valueOf((int) (100.0f * progress))}));
            }
            String leftStorage = SyncStateUtil.getQuantityStringWithUnit(this.mActivity, refreshData.mLeftCloudSpace);
            this.mStorageDetail.setText(leftStorage + " | " + SyncStateUtil.getQuantityStringWithUnit(this.mActivity, refreshData.mTotalCloudSpace));
            Resources res = getResources();
            this.mDataList.clear();
            DataItem photoItem = new DataItem();
            photoItem.mTitle = res.getString(R.string.cloud_storage_photo_title);
            photoItem.mAppendTitle = SyncStateUtil.getQuantityStringWithUnit(this.mActivity, refreshData.mSyncedPhotoSize);
            photoItem.mValue = res.getQuantityString(R.plurals.cloud_storage_photo_num, refreshData.mSyncedPhotoCount, new Object[]{Integer.valueOf(refreshData.mSyncedPhotoCount)});
            DataItem videoItem = new DataItem();
            videoItem.mTitle = res.getString(R.string.cloud_storage_video_title);
            videoItem.mAppendTitle = SyncStateUtil.getQuantityStringWithUnit(this.mActivity, refreshData.mSyncedVideoSize);
            videoItem.mValue = res.getQuantityString(R.plurals.cloud_storage_video_num, refreshData.mSyncedVideoCount, new Object[]{Integer.valueOf(refreshData.mSyncedVideoCount)});
            DataItem storageItem = new DataItem();
            storageItem.mTitle = res.getString(R.string.cloud_storage_extend);
            if (refreshData.mIsSpaceLow) {
                this.mProgress.setBackgroundColor(res.getColor(R.color.space_progress_back_warn));
                this.mStorageFrame.setBackgroundResource(R.color.status_warning_color);
            } else {
                this.mProgress.setBackgroundColor(res.getColor(R.color.space_progress_back));
                this.mStorageFrame.setBackgroundResource(R.color.status_ok_color);
            }
            storageItem.mClickListener = new OnClickListener() {
                public void onClick(View v) {
                    IntentUtil.gotoMiCloudVipPage(CloudSpaceStatusFragment.this.getActivity());
                    BaseSamplingStatHelper.recordCountEvent("Sync", "sync_cloud_space_enlarge");
                }
            };
            storageItem.mIsShowArrow = true;
            this.mDataList.add(photoItem);
            this.mDataList.add(videoItem);
            this.mDataList.add(storageItem);
            this.mApdater.notifyDataSetChanged();
        }
    }

    public String getPageName() {
        return "cloud_space_status";
    }
}
