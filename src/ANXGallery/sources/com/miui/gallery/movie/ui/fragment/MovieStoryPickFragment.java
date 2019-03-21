package com.miui.gallery.movie.ui.fragment;

import android.app.Activity;
import android.app.LoaderManager.LoaderCallbacks;
import android.content.CursorLoader;
import android.content.Intent;
import android.content.Loader;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.miui.gallery.Config.ThumbConfig;
import com.miui.gallery.R;
import com.miui.gallery.card.Card;
import com.miui.gallery.card.CardManager;
import com.miui.gallery.model.ImageLoadParams;
import com.miui.gallery.movie.ui.activity.MovieStoryPickActivity;
import com.miui.gallery.movie.ui.adapter.StoryMoviePickAdapter;
import com.miui.gallery.picker.PickerFragment;
import com.miui.gallery.picker.helper.PickableBaseTimeLineAdapterWrapper;
import com.miui.gallery.provider.GalleryContract.Media;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.IntentUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.photoview.ItemViewInfo;
import com.miui.gallery.widget.EmptyPage;
import com.tonicartos.widget.stickygridheaders.StickyGridHeadersGridView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class MovieStoryPickFragment extends PickerFragment {
    private Activity mActivity;
    private PickableBaseTimeLineAdapterWrapper mAdapter;
    private long mCardId;
    private EmptyPage mEmptyView;
    private StickyGridHeadersGridView mGridView;
    private Intent mIntent;
    private LoaderCallbacks mLoaderCallbacks = new LoaderCallbacks() {
        public Loader onCreateLoader(int id, Bundle args) {
            CursorLoader loader = new CursorLoader(MovieStoryPickFragment.this.mActivity);
            loader.setUri(MovieStoryPickFragment.this.getUri());
            loader.setProjection(MovieStoryPickFragment.this.getProjection());
            loader.setSelection(MovieStoryPickFragment.this.getSelection());
            loader.setSortOrder(MovieStoryPickFragment.this.getOrder());
            return loader;
        }

        public void onLoadFinished(Loader loader, Object data) {
            MovieStoryPickFragment.this.mAdapter.swapCursor((Cursor) data);
        }

        public void onLoaderReset(Loader loader) {
        }
    };
    private StoryMoviePickAdapter mStoryMoviePickAdapter;

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.mActivity = activity;
        this.mIntent = ((MovieStoryPickActivity) this.mActivity).getResultIntent();
    }

    public View onInflateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.story_movie_pick_fragment, container, false);
        this.mGridView = (StickyGridHeadersGridView) view.findViewById(R.id.grid_view);
        this.mGridView.setOnItemClickListener(new OnItemClickListener() {
            public void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
                Cursor cursor = (Cursor) MovieStoryPickFragment.this.mStoryMoviePickAdapter.getItem(position);
                ArrayList<ItemViewInfo> list = new ArrayList(1);
                list.add(ItemViewInfo.getImageInfo(view, 0));
                IntentUtil.gotoPhotoPageFromPicker(MovieStoryPickFragment.this.mActivity, MovieStoryPickFragment.this.getPreviewUri(), MovieStoryPickFragment.this.getPreviewSelection(cursor), MovieStoryPickFragment.this.getPreviewSelectionArgs(cursor), MovieStoryPickFragment.this.getPreviewOrder(), new ImageLoadParams(MovieStoryPickFragment.this.mStoryMoviePickAdapter.getItemKey(position), MovieStoryPickFragment.this.mStoryMoviePickAdapter.getLocalPath(position), ThumbConfig.get().sMicroTargetSize, null, 0, MovieStoryPickFragment.this.mStoryMoviePickAdapter.getMimeType(position), MovieStoryPickFragment.this.isPreviewFace(), MovieStoryPickFragment.this.mStoryMoviePickAdapter.getFileLength(position)), list);
            }
        });
        this.mStoryMoviePickAdapter = new StoryMoviePickAdapter(this.mActivity, this.mPicker);
        this.mAdapter = new PickableBaseTimeLineAdapterWrapper(this.mPicker, this.mStoryMoviePickAdapter);
        this.mGridView.setAdapter(this.mAdapter);
        this.mEmptyView = (EmptyPage) view.findViewById(16908292);
        this.mGridView.setEmptyView(this.mEmptyView);
        this.mEmptyView.setVisibility(8);
        return view;
    }

    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        if (parseIntent()) {
            getLoaderManager().initLoader(17, null, this.mLoaderCallbacks);
        }
    }

    public String getPageName() {
        return "story_picker_home";
    }

    private boolean parseIntent() {
        if (this.mIntent == null) {
            Log.d("StoryMoviePickFragment", "parseIntent is fail. ");
            this.mActivity.finish();
            return false;
        }
        this.mCardId = this.mIntent.getLongExtra("card_id", 0);
        ArrayList<String> sha1List = this.mIntent.getStringArrayListExtra("pick_sha1");
        if (BaseMiscUtil.isValid(sha1List)) {
            Iterator it = sha1List.iterator();
            while (it.hasNext()) {
                this.mPicker.pick((String) it.next());
            }
        }
        Log.d("StoryMoviePickFragment", "parseIntent is success. ");
        return true;
    }

    protected Uri getUri() {
        return Media.URI_OWNER_ALBUM_MEDIA.buildUpon().appendQueryParameter("remove_duplicate_items", String.valueOf(true)).build();
    }

    protected boolean onPhotoItemClick(Cursor cursor) {
        return false;
    }

    private String[] getProjection() {
        return StoryMoviePickAdapter.PROJECTION;
    }

    private String getSelection() {
        Card card = CardManager.getInstance().getCardByCardId(this.mCardId);
        if (card == null) {
            return "";
        }
        List<String> selectedIds = card.getSelectedMediaSha1s();
        return String.format("%s IN ('%s')", new Object[]{"sha1", TextUtils.join("','", selectedIds)});
    }

    private String getOrder() {
        return "alias_create_time DESC ";
    }

    public void onDestroy() {
        if (this.mAdapter != null) {
            this.mAdapter.swapCursor(null);
        }
        super.onDestroy();
    }
}
