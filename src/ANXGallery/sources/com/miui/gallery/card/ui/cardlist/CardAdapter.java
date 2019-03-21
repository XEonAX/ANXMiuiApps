package com.miui.gallery.card.ui.cardlist;

import android.app.Activity;
import android.graphics.Bitmap.Config;
import android.net.Uri;
import android.os.Bundle;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.card.Card;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.ActionURIHandler;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.widget.AntiDoubleClickListener;
import com.miui.gallery.widget.CardCoverView;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class CardAdapter extends Adapter<ViewHolder> {
    private final Activity mContext;
    private List<Card> mDataList = null;
    protected final DisplayImageOptions mDisplayImageOptions;
    private View mEmptyView;
    private View mFooterView;
    private View mHeaderView;
    private boolean mHideFooterWhenEmpty = false;
    private boolean mHideHeaderWhenEmpty = false;

    class CardHolder extends ViewHolder {
        private final AntiDoubleClickListener mAntiDoubleClickListener = new AntiDoubleClickListener() {
            public void onAntiDoubleClick(View v) {
                switch (v.getId()) {
                    case R.id.card_cover /*2131886327*/:
                        CardHolder.this.deliveryAction();
                        return;
                    default:
                        return;
                }
            }
        };
        private Card mCard;
        private final CardCoverView mCardCoverView;
        private final TextView mDescription;
        private final TextView mTitle;

        CardHolder(View itemView) {
            super(itemView);
            this.mCardCoverView = (CardCoverView) itemView.findViewById(R.id.card_cover);
            this.mTitle = (TextView) itemView.findViewById(R.id.title);
            this.mDescription = (TextView) itemView.findViewById(R.id.description);
            this.mCardCoverView.setOnClickListener(this.mAntiDoubleClickListener);
        }

        public void bindData(Card card) {
            if (card != null) {
                this.mCard = card;
                int imageResId = card.getImageResId(CardAdapter.this.mContext);
                Uri imageUri = card.getImageUri();
                if (imageResId != 0) {
                    this.mCardCoverView.update(imageResId, CardAdapter.this.mDisplayImageOptions);
                } else if (BaseMiscUtil.isValid(this.mCard.getCoverMediaFeatureItems())) {
                    int size;
                    List coverMediaFeatureItems = this.mCard.getCoverMediaFeatureItems();
                    List<String> selectedImages = card.getSelectedMediaSha1s();
                    CardCoverView cardCoverView = this.mCardCoverView;
                    if (selectedImages != null) {
                        size = selectedImages.size();
                    } else {
                        size = 0;
                    }
                    cardCoverView.setImageCount(size);
                    if (coverMediaFeatureItems != null) {
                        this.mCardCoverView.update(coverMediaFeatureItems, CardAdapter.this.mDisplayImageOptions);
                    }
                } else if (imageUri != null) {
                    this.mCardCoverView.update(imageUri.toString(), CardAdapter.this.mDisplayImageOptions);
                }
                this.mTitle.setText(card.getTitle());
                if (TextUtils.isEmpty(card.getDescription())) {
                    this.mDescription.setVisibility(8);
                    return;
                }
                this.mDescription.setVisibility(0);
                this.mDescription.setText(card.getDescription());
            }
        }

        private void deliveryAction() {
            if (this.mCard != null) {
                String url = this.mCard.getDetailUrl();
                if (TextUtils.isEmpty(url)) {
                    Log.e("CardAdapter", "deliveryAction empty");
                    return;
                }
                Bundle extras = new Bundle();
                extras.putLong("card_id", this.mCard.getId());
                extras.putString("card_url", this.mCard.getActionUrl());
                ActionURIHandler.handleUri(CardAdapter.this.mContext, Uri.parse(url), extras);
            } else {
                Log.e("CardAdapter", "card object is null");
            }
            recordCardClick();
        }

        private void recordCardClick() {
            HashMap<String, String> params = new HashMap();
            params.put("scenarioId", String.valueOf(this.mCard.getScenarioId()));
            BaseSamplingStatHelper.recordCountEvent("assistant", "assistant_card_click", params);
        }
    }

    class ViewHolderImpl extends ViewHolder {
        ViewHolderImpl(View itemView) {
            super(itemView);
        }
    }

    CardAdapter(Activity context) {
        this.mContext = context;
        this.mDisplayImageOptions = new Builder().considerExifParams(true).bitmapConfig(Config.RGB_565).imageScaleType(ImageScaleType.EXACTLY).resetViewBeforeLoading(true).showImageOnLoading(R.drawable.image_default_cover).cacheInMemory(true).build();
    }

    void updateDataList(List<Card> dataList) {
        if (this.mDataList == null) {
            this.mDataList = new ArrayList();
        }
        this.mDataList.clear();
        if (dataList != null) {
            this.mDataList.addAll(dataList);
        }
        notifyDataSetChanged();
    }

    public void setEmptyView(View view) {
        this.mEmptyView = view;
    }

    public void setFooter(View view, boolean hideWhenEmpty) {
        this.mFooterView = view;
        this.mHideFooterWhenEmpty = hideWhenEmpty;
    }

    public int getDataItemSize() {
        return this.mDataList == null ? 0 : this.mDataList.size();
    }

    private Card getDataItem(int position) {
        if (this.mDataList == null) {
            return null;
        }
        return (Card) this.mDataList.get(position - (isHeaderVisible() ? 1 : 0));
    }

    public int getItemViewType(int position) {
        int i = 1;
        if (isHeaderVisible() && position == 0) {
            return 1;
        }
        if (getDataItemSize() == 0 && this.mEmptyView != null) {
            if (!isHeaderVisible()) {
                i = 0;
            }
            if (position == i) {
                return 3;
            }
        }
        return (isFooterVisible() && position == getItemCount() - 1) ? 2 : 0;
    }

    public int getItemCount() {
        int i = 1;
        int dataItemSize = getDataItemSize();
        if (dataItemSize == 0) {
            if (!isHeaderVisible()) {
                i = 0;
            }
            return i + 1;
        }
        int i2 = (isHeaderVisible() ? 1 : 0) + dataItemSize;
        if (!isFooterVisible()) {
            i = 0;
        }
        return i + i2;
    }

    private boolean isHeaderVisible() {
        return (this.mHeaderView == null || (getDataItemSize() == 0 && this.mHideHeaderWhenEmpty)) ? false : true;
    }

    private boolean isFooterVisible() {
        return (this.mFooterView == null || (getDataItemSize() == 0 && this.mHideFooterWhenEmpty)) ? false : true;
    }

    public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        if (viewType == 1) {
            return new ViewHolderImpl(this.mHeaderView);
        }
        if (viewType == 2) {
            return new ViewHolderImpl(this.mFooterView);
        }
        if (viewType == 3) {
            return new ViewHolderImpl(this.mEmptyView);
        }
        return new CardHolder(LayoutInflater.from(this.mContext).inflate(R.layout.card_item_layout, parent, false));
    }

    public void onBindViewHolder(ViewHolder holder, int position) {
        if (getItemViewType(position) == 0) {
            ((CardHolder) holder).bindData(getDataItem(position));
        }
    }

    final void refreshNotifyItemChanged(int position) {
        notifyItemChanged(getHeaderLayoutCount() + position);
    }

    private int getHeaderLayoutCount() {
        return isHeaderVisible() ? 1 : 0;
    }
}
