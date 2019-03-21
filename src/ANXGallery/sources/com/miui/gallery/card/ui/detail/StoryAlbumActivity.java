package com.miui.gallery.card.ui.detail;

import android.app.Fragment;
import android.os.Bundle;
import com.miui.gallery.R;
import com.miui.gallery.activity.BaseActivity;
import com.miui.gallery.card.Card;
import com.miui.gallery.card.CardManager;
import com.miui.gallery.card.CardUtil;
import com.miui.gallery.movie.utils.MovieBackgroundDownloadManager;
import com.miui.gallery.util.BaseMiscUtil;

public class StoryAlbumActivity extends BaseActivity {
    private StoryAlbumFragment mStoryAlbumFragment;

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        long cardId = getIntent().getLongExtra("card_id", 0);
        getWindow().setBackgroundDrawableResource(R.color.story_background_color);
        Card card = CardManager.getInstance().getCardByCardId(cardId);
        if (isValidCard(card)) {
            MovieBackgroundDownloadManager.getInstance().downloadTemplate(this, CardUtil.getMovieTemplateFromCard(card));
            this.mStoryAlbumFragment = (StoryAlbumFragment) getFragmentManager().findFragmentByTag("StoryAlbumFragment");
            if (this.mStoryAlbumFragment == null) {
                this.mStoryAlbumFragment = new StoryAlbumFragment();
                Bundle args = new Bundle();
                args.putLong("card_id", cardId);
                this.mStoryAlbumFragment.setArguments(args);
                startFragment(this.mStoryAlbumFragment, "StoryAlbumFragment", false, true);
                return;
            }
            return;
        }
        finish();
    }

    private boolean isValidCard(Card card) {
        return card != null && BaseMiscUtil.isValid(card.getSelectedMediaSha1s()) && card.isValid();
    }

    protected int getFragmentContainerId() {
        return 16908290;
    }

    public void onAttachFragment(Fragment fragment) {
        super.onAttachFragment(fragment);
        if (this.mStoryAlbumFragment != null) {
            this.mStoryAlbumFragment.onAttachDialogFragment(fragment);
        }
    }
}
