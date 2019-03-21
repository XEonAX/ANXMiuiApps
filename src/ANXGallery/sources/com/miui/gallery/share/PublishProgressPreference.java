package com.miui.gallery.share;

import android.content.Context;
import android.preference.Preference;
import android.view.View;
import android.widget.TextView;
import com.miui.gallery.R;

public class PublishProgressPreference extends Preference {
    private boolean mOpenPublic = false;
    private boolean mProgressOn = false;

    public PublishProgressPreference(Context context) {
        super(context);
        setLayoutResource(R.layout.share_album_preference_progress);
    }

    public void onBindView(View view) {
        super.onBindView(view);
        view.findViewById(R.id.publishing_progress).setVisibility(this.mProgressOn ? 0 : 8);
        if (this.mProgressOn) {
            ((TextView) view.findViewById(R.id.progress_text)).setText(this.mOpenPublic ? R.string.publishing : R.string.unpublishing);
        }
    }

    public void setProgress(boolean progressOn, boolean openPublic) {
        this.mProgressOn = progressOn;
        this.mOpenPublic = openPublic;
        notifyChanged();
    }
}
