package com.miui.gallery.cleaner;

import android.content.Context;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.AdapterDataObserver;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.miui.gallery.Config.ThumbConfig;
import com.miui.gallery.R;
import com.miui.gallery.util.FormatUtil;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme;
import com.nostra13.universalimageloader.core.imageaware.ImageViewAware;
import java.util.Iterator;
import java.util.List;
import miui.util.ArraySet;

public class ScanResultAdapter extends Adapter<ViewHolder> {
    private final int mContentLayoutMinHeight;
    private Context mContext;
    private List<ScanResult> mDataList = null;
    private DisplayImageOptions mDisplayImageOptions;
    private View mHeaderView;
    private final ImageSize mImageSize;
    private ArraySet<NotifyObserver> mNotifyObservers = new ArraySet();
    private final int mTitleMarginTop;

    class HeaderHolder extends ViewHolder {
        public HeaderHolder(View itemView) {
            super(itemView);
        }
    }

    private class NotifyObserver extends AdapterDataObserver {
        private AdapterDataObserver mDataObserver;

        public NotifyObserver(AdapterDataObserver dataObserver) {
            this.mDataObserver = dataObserver;
        }

        public void onChanged() {
            this.mDataObserver.onChanged();
        }

        public void onItemRangeChanged(int positionStart, int itemCount) {
            this.mDataObserver.onItemRangeChanged(getHeaderSize() + positionStart, itemCount);
        }

        public void onItemRangeChanged(int positionStart, int itemCount, Object payload) {
            this.mDataObserver.onItemRangeChanged(getHeaderSize() + positionStart, itemCount, payload);
        }

        public void onItemRangeInserted(int positionStart, int itemCount) {
            this.mDataObserver.onItemRangeInserted(getHeaderSize() + positionStart, itemCount);
        }

        public void onItemRangeMoved(int fromPosition, int toPosition, int itemCount) {
            this.mDataObserver.onItemRangeMoved(fromPosition, toPosition, itemCount);
        }

        public void onItemRangeRemoved(int positionStart, int itemCount) {
            this.mDataObserver.onItemRangeRemoved(getHeaderSize() + positionStart, itemCount);
        }

        public int getHeaderSize() {
            return ScanResultAdapter.this.mHeaderView == null ? 0 : 1;
        }

        public AdapterDataObserver getDataObserver() {
            return this.mDataObserver;
        }
    }

    class ScanResultHolder extends ViewHolder implements OnClickListener {
        private TextView mAction;
        private View mContentLayout;
        private LayoutParams mContentLayoutParams;
        private TextView mDescription;
        private View mDivider;
        private ImageViewAware[] mImages;
        private ScanResult mScanResult;
        private TextView mSize;
        private TextView mTitle;
        private RelativeLayout.LayoutParams mTitleLayoutParams = ((RelativeLayout.LayoutParams) this.mTitle.getLayoutParams());

        public ScanResultHolder(View itemView) {
            super(itemView);
            this.mTitle = (TextView) itemView.findViewById(R.id.title);
            this.mSize = (TextView) itemView.findViewById(R.id.size);
            this.mDescription = (TextView) itemView.findViewById(R.id.description);
            this.mAction = (TextView) itemView.findViewById(R.id.action);
            this.mAction.setOnClickListener(this);
            itemView.setOnClickListener(this);
            this.mDivider = itemView.findViewById(R.id.divider);
            this.mImages = new ImageViewAware[4];
            this.mImages[0] = new ImageViewAware((ImageView) itemView.findViewById(R.id.image0));
            this.mImages[1] = new ImageViewAware((ImageView) itemView.findViewById(R.id.image1));
            this.mImages[2] = new ImageViewAware((ImageView) itemView.findViewById(R.id.image2));
            this.mImages[3] = new ImageViewAware((ImageView) itemView.findViewById(R.id.image3));
            this.mContentLayout = itemView.findViewById(R.id.content_layout);
            this.mContentLayoutParams = this.mContentLayout.getLayoutParams();
        }

        public void bindData(ScanResult result, boolean isLast) {
            this.mScanResult = result;
            this.mTitle.setText(result.getMergedTitle(ScanResultAdapter.this.mContext));
            this.mSize.setText(FormatUtil.formatFileSize(ScanResultAdapter.this.mContext, result.getSize()));
            this.mAction.setText(result.getAction());
            this.mDivider.setVisibility(isLast ? 0 : 8);
            if (TextUtils.isEmpty(ScanResultAdapter.this.mContext.getString(result.getDescription()))) {
                this.mDescription.setVisibility(8);
                this.mTitleLayoutParams.topMargin = 0;
                this.mTitleLayoutParams.addRule(15);
                this.mContentLayoutParams.height = ScanResultAdapter.this.mContentLayoutMinHeight;
            } else {
                this.mDescription.setVisibility(0);
                this.mDescription.setText(result.getDescription());
                this.mTitleLayoutParams.topMargin = ScanResultAdapter.this.mTitleMarginTop;
                this.mTitleLayoutParams.removeRule(15);
                this.mContentLayoutParams.height = -2;
            }
            this.mTitle.setLayoutParams(this.mTitleLayoutParams);
            this.mContentLayout.setLayoutParams(this.mContentLayoutParams);
            String[] imagePaths = result.getPaths();
            for (int i = 0; i < this.mImages.length; i++) {
                if (imagePaths.length > i) {
                    String imagePath = imagePaths[i];
                    if (!TextUtils.isEmpty(imagePath)) {
                        this.mImages[i].getWrappedView().setVisibility(0);
                        ImageLoader.getInstance().displayImage(Scheme.FILE.wrap(imagePath), this.mImages[i], ScanResultAdapter.this.mDisplayImageOptions, ScanResultAdapter.this.mImageSize, null, null);
                    }
                }
                this.mImages[i].getWrappedView().setVisibility(4);
            }
        }

        public void onClick(View v) {
            this.mScanResult.onClick(ScanResultAdapter.this.mContext);
        }
    }

    public ScanResultAdapter(Context context) {
        this.mContext = context;
        this.mTitleMarginTop = context.getResources().getDimensionPixelSize(R.dimen.cleaner_item_title_margin_top);
        this.mContentLayoutMinHeight = context.getResources().getDimensionPixelSize(R.dimen.cleaner_item_content_layout_min_height);
        this.mImageSize = ThumbConfig.get().sMicroTargetSize;
        this.mDisplayImageOptions = ThumbConfig.MICRO_THUMB_DISPLAY_IMAGE_OPTIONS_DEFAULT;
    }

    public void updateDataList(List<ScanResult> dataList) {
        this.mDataList = dataList;
    }

    public List<ScanResult> getDataList() {
        return this.mDataList;
    }

    public void setHeader(View view) {
        this.mHeaderView = view;
    }

    public int getDataItemSize() {
        return this.mDataList == null ? 0 : this.mDataList.size();
    }

    public int getItemViewType(int position) {
        if (this.mHeaderView == null || position != 0) {
            return 0;
        }
        return 1;
    }

    public int getItemCount() {
        return (this.mHeaderView == null ? 0 : 1) + getDataItemSize();
    }

    public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        if (viewType == 1) {
            return new HeaderHolder(this.mHeaderView);
        }
        return new ScanResultHolder(LayoutInflater.from(this.mContext).inflate(R.layout.cleaner_scan_result_item, parent, false));
    }

    public void onBindViewHolder(ViewHolder holder, int position) {
        if (getItemViewType(position) == 0) {
            if (this.mHeaderView != null) {
                position--;
            }
            ((ScanResultHolder) holder).bindData((ScanResult) this.mDataList.get(position), position == getDataItemSize() + -1);
        }
    }

    public void registerAdapterDataObserver(AdapterDataObserver observer) {
        if (observer == null) {
            throw new IllegalArgumentException("The observer is null.");
        }
        synchronized (this.mNotifyObservers) {
            Iterator it = this.mNotifyObservers.iterator();
            while (it.hasNext()) {
                if (((NotifyObserver) it.next()).getDataObserver() == observer) {
                    throw new IllegalStateException("Observer " + observer + " is already registered.");
                }
            }
            NotifyObserver notifyObserver = new NotifyObserver(observer);
            this.mNotifyObservers.add(notifyObserver);
            super.registerAdapterDataObserver(notifyObserver);
        }
    }

    public void unregisterAdapterDataObserver(AdapterDataObserver observer) {
        if (observer == null) {
            throw new IllegalArgumentException("The observer is null.");
        }
        synchronized (this.mNotifyObservers) {
            Iterator<NotifyObserver> iterator = this.mNotifyObservers.iterator();
            while (iterator.hasNext()) {
                NotifyObserver notifyObserver = (NotifyObserver) iterator.next();
                if (notifyObserver.getDataObserver() == observer) {
                    super.unregisterAdapterDataObserver(notifyObserver);
                    iterator.remove();
                }
            }
            throw new IllegalStateException("Observer " + observer + " was not registered.");
        }
    }
}
