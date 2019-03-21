package com.miui.gallery.people.mark;

import android.app.Dialog;
import android.content.ContentUris;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ItemDecoration;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.CharacterStyle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.people.PeopleDisplayHelper;
import com.miui.gallery.people.model.People;
import com.miui.gallery.provider.GalleryContract.Cloud;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.widget.GalleryDialogFragment;
import com.miui.gallery.widget.recyclerview.GridLayoutInnerPaddingItemDecoration;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import java.util.ArrayList;

public class MarkPeopleDialogFragment extends GalleryDialogFragment implements OnClickListener {
    private Adapter mAdapter = new Adapter<PeopleItemViewHolder>() {
        public PeopleItemViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
            return new PeopleItemViewHolder(LayoutInflater.from(MarkPeopleDialogFragment.this.getActivity()).inflate(R.layout.mark_people_item, null, false));
        }

        public void onBindViewHolder(PeopleItemViewHolder holder, int position) {
            holder.bindView((People) MarkPeopleDialogFragment.this.mPeopleList.get(position));
        }

        public int getItemCount() {
            return MarkPeopleDialogFragment.this.mPeopleList.size();
        }
    };
    private OnCancelListener mCancelButtonListener;
    private View mCancelView;
    private RecyclerView mDataView;
    private Dialog mDialog;
    private DisplayImageOptions mDisplayImageOptions = PeopleDisplayHelper.getDefaultPeopleDisplayOptionsBuilder().build();
    private GridLayoutManager mGridLayoutManager;
    private ItemDecoration mItemDecoration;
    private DialogInterface.OnClickListener mLoadMoreButtonListener;
    private String mLoadMoreButtonText;
    private TextView mLoadMoreView;
    private ArrayList<People> mPeopleList;
    private OnPeopleSelectListener mPeopleSelectListener;
    private boolean mShowCancelButton = false;
    private View mSingleView;
    private ViewStub mSingleViewStub;
    private String mTitle;
    private TextView mTitleView;

    public interface OnPeopleSelectListener {
        void onPeopleSelected(int i, People people);
    }

    private class PeopleItemViewHolder extends ViewHolder {
        private ImageView mCover;

        public PeopleItemViewHolder(View itemView) {
            super(itemView);
            this.mCover = (ImageView) itemView.findViewById(R.id.icon);
        }

        public void bindView(People people) {
            MarkPeopleDialogFragment.this.bindPeopleCover(this.mCover, people);
            this.itemView.setOnClickListener(new OnClickListener() {
                public void onClick(View v) {
                    MarkPeopleDialogFragment.this.onClickPeople(PeopleItemViewHolder.this.getAdapterPosition());
                }
            });
        }
    }

    public Dialog onCreateDialog(Bundle savedInstanceState) {
        if (savedInstanceState != null) {
            this.mTitle = savedInstanceState.getString("MarkPeopleDialogFragment_Title");
            this.mLoadMoreButtonText = savedInstanceState.getString("MarkPeopleDialogFragment_LoadMoreButtonText");
            this.mShowCancelButton = savedInstanceState.getBoolean("MarkPeopleDialogFragment_ShowCancelButton", false);
            if (savedInstanceState.getSerializable("MarkPeopleDialogFragment_PeopleList") != null) {
                this.mPeopleList = (ArrayList) savedInstanceState.getSerializable("MarkPeopleDialogFragment_PeopleList");
            }
        }
        Dialog dialog = new Dialog(getActivity());
        View contentView = getActivity().getLayoutInflater().inflate(R.layout.mark_people_dialog_layout, null, false);
        dialog.setContentView(contentView);
        dialog.setCancelable(false);
        this.mTitleView = (TextView) contentView.findViewById(R.id.dialog_title);
        this.mCancelView = contentView.findViewById(R.id.close_button);
        this.mLoadMoreView = (TextView) contentView.findViewById(R.id.load_more_button);
        this.mDataView = (RecyclerView) contentView.findViewById(R.id.data_view);
        this.mGridLayoutManager = new GridLayoutManager(getActivity(), getResources().getInteger(R.integer.mark_people_column_count));
        this.mDataView.setLayoutManager(this.mGridLayoutManager);
        int horizontalPadding = getResources().getDimensionPixelSize(R.dimen.people_dialog_people_view_horizontal_padding);
        this.mItemDecoration = new GridLayoutInnerPaddingItemDecoration(horizontalPadding, 0, horizontalPadding, 0, 0, getResources().getDimensionPixelSize(R.dimen.people_dialog_people_item_vertical_padding), false, this.mGridLayoutManager);
        this.mDataView.addItemDecoration(this.mItemDecoration);
        this.mSingleViewStub = (ViewStub) contentView.findViewById(R.id.single_people_view);
        configTitle();
        configCancelButton();
        configLoadMoreButton();
        configDataView();
        Window window = dialog.getWindow();
        if (window != null) {
            window.setGravity(80);
            window.setLayout(-1, -2);
        }
        this.mDialog = dialog;
        return this.mDialog;
    }

    public void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        if (!TextUtils.isEmpty(this.mTitle)) {
            outState.putString("MarkPeopleDialogFragment_Title", this.mTitle);
        }
        if (!TextUtils.isEmpty(this.mLoadMoreButtonText)) {
            outState.putString("MarkPeopleDialogFragment_LoadMoreButtonText", this.mLoadMoreButtonText);
        }
        outState.putBoolean("MarkPeopleDialogFragment_ShowCancelButton", this.mShowCancelButton);
        if (this.mPeopleList != null) {
            outState.putParcelableArrayList("MarkPeopleDialogFragment_PeopleList", this.mPeopleList);
        }
    }

    public void onClick(View view) {
        if (view != null) {
            switch (view.getId()) {
                case R.id.close_button /*2131886497*/:
                    if (this.mCancelButtonListener != null) {
                        this.mCancelButtonListener.onCancel(this.mDialog);
                        return;
                    }
                    return;
                case R.id.load_more_button /*2131886501*/:
                    if (this.mLoadMoreButtonListener != null) {
                        this.mLoadMoreButtonListener.onClick(this.mDialog, -10);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    public void onCancel(DialogInterface dialog) {
        if (this.mCancelButtonListener != null) {
            this.mCancelButtonListener.onCancel(dialog);
        }
    }

    public void setTitle(String title) {
        this.mTitle = title;
        configTitle();
    }

    public void setCancelButton(boolean showCancelButton, OnCancelListener listener) {
        this.mShowCancelButton = showCancelButton;
        this.mCancelButtonListener = listener;
        configCancelButton();
    }

    public void setLoadMoreButton(String buttonText, DialogInterface.OnClickListener listener) {
        this.mLoadMoreButtonText = buttonText;
        this.mLoadMoreButtonListener = listener;
        configLoadMoreButton();
    }

    public void setPeopleList(ArrayList<People> peopleList, OnPeopleSelectListener peopleSelectListener) {
        this.mPeopleList = peopleList;
        this.mPeopleSelectListener = peopleSelectListener;
        configDataView();
        if (isAdded()) {
            this.mAdapter.notifyDataSetChanged();
        }
    }

    public void configTitle() {
        if (this.mTitleView != null) {
            this.mTitleView.setText(this.mTitle);
        }
    }

    private void configCancelButton() {
        if (this.mCancelView == null) {
            return;
        }
        if (this.mShowCancelButton) {
            this.mCancelView.setVisibility(0);
            this.mCancelView.setOnClickListener(this);
            return;
        }
        this.mCancelView.setVisibility(8);
        this.mCancelView.setOnClickListener(null);
    }

    private void configLoadMoreButton() {
        if (this.mLoadMoreView == null) {
            return;
        }
        if (TextUtils.isEmpty(this.mLoadMoreButtonText)) {
            this.mLoadMoreView.setVisibility(8);
            this.mLoadMoreView.setOnClickListener(null);
            return;
        }
        SpannableString spannableString = new SpannableString(this.mLoadMoreButtonText);
        spannableString.setSpan(new CharacterStyle() {
            public void updateDrawState(TextPaint tp) {
                tp.setColor(MarkPeopleDialogFragment.this.getResources().getColor(R.color.text_blue));
                tp.setUnderlineText(true);
            }
        }, 0, this.mLoadMoreButtonText.length(), 33);
        this.mLoadMoreView.setText(spannableString);
        this.mLoadMoreView.setVisibility(0);
        this.mLoadMoreView.setOnClickListener(this);
    }

    private void configDataView() {
        if (this.mPeopleList == null) {
            if (this.mDataView != null) {
                this.mDataView.setVisibility(8);
            }
            if (this.mSingleView != null) {
                this.mSingleView.setVisibility(8);
            }
        } else if (this.mPeopleList.size() == 1) {
            if (this.mSingleView == null && this.mSingleViewStub != null) {
                this.mSingleView = this.mSingleViewStub.inflate();
            }
            if (this.mSingleView != null) {
                bindPeopleCover((ImageView) this.mSingleView.findViewById(R.id.icon), (People) this.mPeopleList.get(0));
                this.mSingleView.setOnClickListener(new OnClickListener() {
                    public void onClick(View v) {
                        MarkPeopleDialogFragment.this.onClickPeople(0);
                    }
                });
                this.mSingleView.setVisibility(0);
            }
            if (this.mDataView != null) {
                this.mDataView.setVisibility(8);
            }
        } else {
            if (this.mDataView != null) {
                this.mDataView.setAdapter(this.mAdapter);
                this.mDataView.setVisibility(0);
            }
            if (this.mSingleView != null) {
                this.mSingleView.setVisibility(8);
            }
        }
    }

    private void bindPeopleCover(ImageView imageView, People people) {
        PeopleDisplayHelper.bindImage(imageView, people.getCoverPath(), ContentUris.withAppendedId(Cloud.CLOUD_URI, people.getCoverImageId()), this.mDisplayImageOptions, people.getCoverFaceRect(), people.getCoverType());
    }

    private void onClickPeople(int position) {
        if (position >= 0 && position < this.mPeopleList.size() && this.mPeopleSelectListener != null) {
            this.mPeopleSelectListener.onPeopleSelected(position, (People) this.mPeopleList.get(position));
        }
    }

    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        if (isAdded() && this.mGridLayoutManager != null && this.mDataView != null) {
            this.mGridLayoutManager.setSpanCount(getResources().getInteger(R.integer.mark_people_column_count));
            BaseMiscUtil.invokeSafely(this.mDataView, "markItemDecorInsetsDirty", null, new Object[0]);
        }
    }
}
