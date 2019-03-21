package com.miui.gallery.collage.app.poster;

import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.collage.app.common.AbstractPosterFragment;
import com.miui.gallery.collage.app.common.CollageMenuFragment;
import com.miui.gallery.collage.core.CollagePresenter.DataLoadListener;
import com.miui.gallery.collage.core.poster.PosterModel;
import com.miui.gallery.collage.core.poster.PosterPresenter;
import com.miui.gallery.editor.photo.widgets.overscroll.HorizontalOverScrollBounceEffectDecorator;
import com.miui.gallery.editor.photo.widgets.recyclerview.ScrollControlLinearLayoutManager;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable.Selector;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.BlankDivider;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.OnItemClickListener;
import com.miui.gallery.util.Log;
import java.util.ArrayList;
import java.util.List;

public class PosterMenuFragment extends CollageMenuFragment<PosterPresenter, AbstractPosterFragment> {
    private boolean mDataInit = false;
    private boolean mDataReady = false;
    private DataLoadListener mInitDataLoadListener = new DataLoadListener() {
        public void onDataLoad() {
            PosterMenuFragment.this.mDataReady = true;
            PosterMenuFragment.this.reloadData();
            PosterMenuFragment.this.notifyDataInit();
        }
    };
    private OnItemClickListener mOnItemClickListener = new OnItemClickListener() {
        public boolean OnItemClick(RecyclerView recyclerView, View child, int position) {
            ScrollControlLinearLayoutManager.onItemClick(recyclerView, position);
            PosterMenuFragment.this.mPosterMenuAdapter.setSelection(position);
            PosterMenuFragment.this.onSelectModel(position);
            return true;
        }
    };
    private PosterMenuAdapter mPosterMenuAdapter;
    private List<PosterModel> mPosterModels = new ArrayList();
    private SimpleRecyclerView mRecyclerView;
    private boolean mViewReady = false;

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ((PosterPresenter) this.mPresenter).loadDataFromResourceAsync(this.mInitDataLoadListener);
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        this.mRecyclerView = (SimpleRecyclerView) inflater.inflate(R.layout.collage_poster_menu, container, false);
        return this.mRecyclerView;
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        this.mPosterMenuAdapter = new PosterMenuAdapter(getActivity(), this.mPosterModels, new Selector(getResources().getDrawable(R.drawable.collage_item_background_selector)));
        this.mPosterMenuAdapter.setImageCount(((PosterPresenter) this.mPresenter).getImageCount());
        this.mRecyclerView.setLayoutManager(new ScrollControlLinearLayoutManager(getActivity(), 0, false));
        this.mRecyclerView.addItemDecoration(new BlankDivider(getResources(), R.dimen.collage_menu_item_margin, 0));
        this.mRecyclerView.setAdapter(this.mPosterMenuAdapter);
        HorizontalOverScrollBounceEffectDecorator.setOverScrollEffect(this.mRecyclerView);
        this.mViewReady = true;
        notifyDataInit();
    }

    private void notifyDataInit() {
        if (this.mViewReady && this.mDataReady && !this.mDataInit) {
            onSelectModel(0);
            this.mDataInit = true;
            this.mPosterMenuAdapter.setOnItemClickListener(this.mOnItemClickListener);
        }
    }

    private void onSelectModel(int index) {
        if (this.mPosterModels.size() != 0) {
            PosterModel posterModel = (PosterModel) this.mPosterModels.get(index);
            ((AbstractPosterFragment) getRenderFragment()).onSelectModel(posterModel, ((PosterPresenter) this.mPresenter).getPosterCollageLayout(posterModel));
        }
    }

    private void reloadData() {
        this.mPosterModels.clear();
        List<PosterModel> posters = ((PosterPresenter) this.mPresenter).getPosters();
        if (posters != null) {
            this.mPosterModels.addAll(posters);
        }
        this.mPosterMenuAdapter.notifyDataSetChanged();
    }

    public void onDestroy() {
        super.onDestroy();
        Log.d("PosterMenuFragment", "onDestroy");
    }
}
