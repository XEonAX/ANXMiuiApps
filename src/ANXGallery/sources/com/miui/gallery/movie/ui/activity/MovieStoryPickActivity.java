package com.miui.gallery.movie.ui.activity;

import android.content.ClipData;
import android.content.ClipData.Item;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import com.miui.gallery.R;
import com.miui.gallery.card.model.MediaInfo;
import com.miui.gallery.movie.ui.adapter.StoryMoviePickAdapter;
import com.miui.gallery.movie.ui.fragment.MovieStoryPickFragment;
import com.miui.gallery.picker.PickerActivity;
import com.miui.gallery.provider.GalleryContract.Media;
import com.miui.gallery.provider.GalleryOpenProvider;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class MovieStoryPickActivity extends PickerActivity {
    private List<MediaInfo> mMediaInfos;
    private ParseTask mParseTask;
    private Intent mPickIntent;
    private MovieStoryPickFragment mPickStoryFragment;
    private Set<String> mSelectedPhotoSha1s;

    private class ParseTask extends AsyncTask<Void, Void, Boolean> {
        private ParseTask() {
        }

        protected Boolean doInBackground(Void... voids) {
            boolean success = false;
            try {
                Cursor cursor = MovieStoryPickActivity.this.getContentResolver().query(getUri(), StoryMoviePickAdapter.PROJECTION, getSelection(), null, "alias_create_time DESC ");
                if (cursor != null) {
                    MovieStoryPickActivity.this.mMediaInfos = new ArrayList(cursor.getCount());
                    while (cursor.moveToNext()) {
                        MovieStoryPickActivity.this.mMediaInfos.add(new MediaInfo(cursor));
                    }
                    success = true;
                }
                BaseMiscUtil.closeSilently(cursor);
                return Boolean.valueOf(success);
            } catch (Exception e) {
                Log.d("MovieStoryPickActivity", e.getMessage());
                BaseMiscUtil.closeSilently(null);
                return Boolean.valueOf(false);
            } catch (Throwable th) {
                BaseMiscUtil.closeSilently(null);
                return Boolean.valueOf(false);
            }
        }

        protected void onPostExecute(Boolean success) {
            if (isCancelled()) {
                Log.e("MovieStoryPickActivity", "onPostExecute: the task is cancel.");
            } else if (!success.booleanValue()) {
                Log.e("MovieStoryPickActivity", "onPostExecute: fail.");
            } else if (BaseMiscUtil.isValid(MovieStoryPickActivity.this.mMediaInfos)) {
                try {
                    MovieStoryPickActivity.this.mParseTask = null;
                    ClipData clip = null;
                    for (int i = 0; i < MovieStoryPickActivity.this.mMediaInfos.size(); i++) {
                        if (MovieStoryPickActivity.this.mMediaInfos.get(i) != null) {
                            Uri uri = GalleryOpenProvider.translateToContent(((MediaInfo) MovieStoryPickActivity.this.mMediaInfos.get(i)).getUri());
                            String sha1 = ((MediaInfo) MovieStoryPickActivity.this.mMediaInfos.get(i)).getSha1();
                            if (clip == null) {
                                clip = new ClipData("data", new String[]{"image/*", "text/uri-list"}, new Item(sha1, null, uri));
                            } else {
                                clip.addItem(new Item(sha1, null, uri));
                            }
                        }
                    }
                    Intent intent = MovieStoryPickActivity.this.getResultIntent();
                    intent.setClipData(clip);
                    MovieStoryPickActivity.this.setResult(-1, intent);
                    MovieStoryPickActivity.this.finish();
                } catch (Exception e) {
                    Log.d("MovieStoryPickActivity", e.toString());
                }
            } else {
                Log.e("MovieStoryPickActivity", "mMediaInfos is invalid .");
            }
        }

        private String getSelection() {
            if (MovieStoryPickActivity.this.mSelectedPhotoSha1s == null) {
                MovieStoryPickActivity.this.mSelectedPhotoSha1s = new HashSet();
            }
            MovieStoryPickActivity.this.mSelectedPhotoSha1s.clear();
            for (String str : MovieStoryPickActivity.this.mPicker) {
                MovieStoryPickActivity.this.mSelectedPhotoSha1s.add(str);
            }
            return String.format("%s IN ('%s')", new Object[]{"sha1", TextUtils.join("','", MovieStoryPickActivity.this.mSelectedPhotoSha1s)});
        }

        private Uri getUri() {
            return Media.URI_OWNER_ALBUM_MEDIA.buildUpon().appendQueryParameter("remove_duplicate_items", String.valueOf(true)).build();
        }
    }

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().setBackgroundDrawableResource(R.color.story_background_color);
        initActionBar();
        this.mPickIntent = getIntent();
        this.mPickStoryFragment = (MovieStoryPickFragment) getFragmentManager().findFragmentByTag("StoryMoviePickFragment");
        if (this.mPickStoryFragment == null) {
            this.mPickStoryFragment = new MovieStoryPickFragment();
            startFragment(this.mPickStoryFragment, "StoryMoviePickFragment", false, true);
        }
    }

    protected void onDone() {
        if (this.mParseTask == null) {
            this.mParseTask = new ParseTask();
            this.mParseTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            return;
        }
        Log.w("MovieStoryPickActivity", "parse task is running, skip");
    }

    protected void onCancel() {
        finish();
    }

    public void onBackPressed() {
        onCancel();
    }

    protected int getFragmentContainerId() {
        return 16908290;
    }

    public Intent getResultIntent() {
        return this.mPickIntent != null ? this.mPickIntent : new Intent();
    }

    protected void onDestroy() {
        super.onDestroy();
        if (this.mPickIntent != null) {
            this.mPickIntent = null;
        }
        if (this.mParseTask != null) {
            if (!this.mParseTask.isCancelled()) {
                this.mParseTask.cancel(true);
            }
            this.mParseTask = null;
        }
    }
}
