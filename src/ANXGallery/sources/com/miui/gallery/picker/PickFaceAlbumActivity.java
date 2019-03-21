package com.miui.gallery.picker;

import android.content.Intent;
import android.database.Cursor;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import com.miui.gallery.R;
import com.miui.gallery.provider.GalleryContract.Media;
import com.miui.gallery.util.UriUtil;
import java.util.ArrayList;
import java.util.Iterator;

public class PickFaceAlbumActivity extends PickAlbumDetailActivityBase {
    private AsyncTask<Void, Void, Intent> mParseTask = new AsyncTask<Void, Void, Intent>() {
        protected Intent doInBackground(Void... params) {
            return PickFaceAlbumActivity.this.parseResult();
        }

        protected void onPostExecute(Intent intent) {
            if (intent == null) {
                PickFaceAlbumActivity.this.finish();
                return;
            }
            intent.putExtra("local_id_of_album", PickFaceAlbumActivity.this.getIntent().getStringExtra("local_id_of_album"));
            PickFaceAlbumActivity.this.setResult(-1, intent);
            PickFaceAlbumActivity.this.finish();
        }
    };

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (this.mPicker != null) {
            setContentView(R.layout.picker_face_detail_activity);
            this.mAlbumDetailFragment = (PickFaceAlbumFragment) getFragmentManager().findFragmentById(R.id.album_detail);
            this.mAlbumDetailFragment.setItemStateListener(this.mItemStateListener);
            this.mAlbumDetailFragment.setSelectionCloudNotContainUnique();
            String albumName = getIntent().getStringExtra("album_name");
            if (!TextUtils.isEmpty(albumName)) {
                setTitle(albumName);
            }
        }
    }

    protected void onDone() {
        if (!getIntent().getBooleanExtra("pick_face_direct", false)) {
            super.onDone();
        } else if (getIntent().getBooleanExtra("need_pick_face_id", false)) {
            Iterator<String> it = getPicker().iterator();
            if (it != null && it.hasNext()) {
                Intent data = new Intent();
                data.putExtra("picked_face_id", (String) it.next());
                setResult(-1, data);
            }
            finish();
        } else {
            this.mParseTask.execute(new Void[0]);
        }
    }

    private Intent parseResult() {
        String pickResults = TextUtils.join("','", getPicker());
        Cursor cursor = getContentResolver().query(UriUtil.appendGroupBy(Media.URI_PICKER, "sha1", null), PICKABLE_PROJECTION, String.format("sha1 IN ('%s') AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom'))", new Object[]{pickResults}), null, String.format("INSTR(\"'%s'\", sha1)", new Object[]{pickResults}));
        if (cursor == null) {
            return null;
        }
        try {
            Intent data = new Intent();
            ArrayList<Long> result = new ArrayList();
            while (cursor.moveToNext()) {
                result.add(Long.valueOf(cursor.getLong(0)));
            }
            data.putExtra("pick-result-data", result);
            return data;
        } finally {
            cursor.close();
        }
    }
}
