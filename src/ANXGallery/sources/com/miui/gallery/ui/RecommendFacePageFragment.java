package com.miui.gallery.ui;

import android.app.LoaderManager.LoaderCallbacks;
import android.content.CursorLoader;
import android.content.Intent;
import android.content.Loader;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.Button;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.provider.GalleryContract.PeopleFace;
import com.miui.gallery.widget.PagerGridLayout;
import com.miui.gallery.widget.PagerGridLayout.OnPageChangedListener;

public class RecommendFacePageFragment extends BaseMediaFragment implements OnPageChangedListener {
    private Button confirmButton;
    private ViewStub mEmptyViewStub;
    private PagerGridLayout mFaceGroup;
    private Handler mHandler = new Handler();
    private long mLocalIdOfAlbum;
    public boolean mNoMoreRecommendations = false;
    private View mNormalView;
    private String mPeopleName;
    private RecommendFaceGroupAdapter mRecommendFaceAdapter;
    private String mRecommendFaceIds;
    private String mServerIdOfAlbum;

    private class FaceRecommendPhotoLoaderCallback implements LoaderCallbacks {
        private FaceRecommendPhotoLoaderCallback() {
        }

        /* synthetic */ FaceRecommendPhotoLoaderCallback(RecommendFacePageFragment x0, AnonymousClass1 x1) {
            this();
        }

        public Loader onCreateLoader(int i, Bundle bundle) {
            CursorLoader loader = new CursorLoader(RecommendFacePageFragment.this.getActivity());
            loader.setUri(getUri());
            loader.setProjection(RecommendFaceGroupAdapter.PROJECTION);
            loader.setSelectionArgs(new String[]{RecommendFacePageFragment.this.mRecommendFaceIds});
            loader.setSortOrder(getOrderBy());
            return loader;
        }

        public void onLoadFinished(Loader loader, Object o) {
            RecommendFacePageFragment.this.mRecommendFaceAdapter.swapCursor((Cursor) o);
            RecommendFacePageFragment.this.mFaceGroup.setAdapter(RecommendFacePageFragment.this.mRecommendFaceAdapter);
        }

        public void onLoaderReset(Loader loader) {
        }

        private String getOrderBy() {
            return "dateTaken DESC ";
        }

        private Uri getUri() {
            return PeopleFace.RECOMMEND_FACES_OF_ONE_PERSON_URI;
        }
    }

    public View onInflateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.recommend_face_page, null, false);
        this.mFaceGroup = (PagerGridLayout) view.findViewById(R.id.face_group);
        this.mFaceGroup.setOnPageChangedListener(this);
        this.confirmButton = (Button) view.findViewById(R.id.confirm_recommend);
        this.mEmptyViewStub = (ViewStub) view.findViewById(R.id.recommend_face_page_empty_view);
        this.mNormalView = view.findViewById(R.id.normal_view);
        this.confirmButton.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                RecommendFacePageFragment.this.changeToNextPage();
            }
        });
        return view;
    }

    public void onResume() {
        super.onResume();
        if (this.mFaceGroup != null) {
            this.mFaceGroup.freshCurrentPage();
        }
    }

    public void onPageChanged(int pageIndex, int pageCount, boolean lastPage) {
        if (lastPage) {
            this.mNormalView.setVisibility(8);
            this.mNoMoreRecommendations = true;
            View emptyView = this.mEmptyViewStub.inflate();
            ((TextView) emptyView.findViewById(R.id.content)).setText(R.string.empty_recommend_face_page_view);
            emptyView.findViewById(R.id.back).setOnClickListener(new OnClickListener() {
                public void onClick(View v) {
                    RecommendFacePageFragment.this.mActivity.finish();
                }
            });
        }
    }

    public String getPageName() {
        return "face_recommend";
    }

    private void setTitle() {
        if (this.mActivity != null) {
            this.mActivity.getActionBar().setTitle(getString(R.string.more_face));
        }
    }

    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        this.mServerIdOfAlbum = this.mActivity.getIntent().getStringExtra("server_id_of_album");
        this.mLocalIdOfAlbum = this.mActivity.getIntent().getLongExtra("local_id_of_album", -1);
        this.mPeopleName = this.mActivity.getIntent().getStringExtra("album_name");
        this.mRecommendFaceIds = this.mActivity.getIntent().getStringExtra("server_ids_of_faces");
        setTitle();
        this.mRecommendFaceAdapter = new RecommendFaceGroupAdapter(this, this.mServerIdOfAlbum, Long.valueOf(this.mLocalIdOfAlbum)) {
            public int getRowsCount() {
                return 4;
            }

            public int getColumnsCount() {
                return 3;
            }

            protected int getLayoutId() {
                return R.layout.recommend_face_cover_item_large;
            }
        };
        getLoaderManager().initLoader(2, null, new FaceRecommendPhotoLoaderCallback(this, null));
    }

    protected Loader getLoader() {
        return null;
    }

    public void changeToNextPage() {
        if (this.mFaceGroup != null) {
            this.mFaceGroup.changeToNextPage();
        }
    }

    public void onActivityFinish() {
        if (this.mNoMoreRecommendations) {
            Intent data = new Intent();
            data.putExtra("all_faces_confirmed", true);
            this.mActivity.setResult(-1, data);
        }
    }
}
