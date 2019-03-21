package com.miui.gallery.picker;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.miui.gallery.R;
import com.miui.gallery.picker.helper.Picker;
import com.miui.gallery.picker.helper.Picker.MediaType;
import com.miui.gallery.picker.helper.Picker.Mode;
import com.miui.gallery.picker.helper.Picker.ResultType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class PickPeopleActivity extends PickerActivity {
    private PickPeoplePageFragment mFragment;

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (this.mPicker != null) {
            setContentView(R.layout.picker_people_page_activity);
            boolean isOnlyPickPeople = getIntent().getBooleanExtra("pick_people", false);
            this.mFragment = (PickPeoplePageFragment) getFragmentManager().findFragmentById(R.id.people_page);
            this.mFragment.setIsPickPeople(isOnlyPickPeople);
            if (isOnlyPickPeople) {
                String title = getIntent().getStringExtra("pick_people_candidate_name");
                if (TextUtils.isEmpty(title)) {
                    title = getString(R.string.choose_people);
                }
                setTitle(title);
            }
        }
    }

    protected Picker onCreatePicker() {
        Intent intent = getIntent();
        int capacity = intent.getIntExtra("pick-upper-bound", 0);
        int baseline = intent.getIntExtra("pick-lower-bound", 1);
        MediaType mediaType = MediaType.values()[intent.getIntExtra("picker_media_type", 0)];
        ArrayList<String> resultList = (ArrayList) intent.getSerializableExtra("picker_result_set");
        if (getIntent().getBooleanExtra("pick_people", false)) {
            resultList = new ArrayList();
        }
        ResultType resultType = ResultType.values()[intent.getIntExtra("picker_result_type", 0)];
        Picker picker = new SimplePicker(this, capacity, baseline, resultList);
        picker.setMediaType(mediaType);
        picker.setResultType(resultType);
        return picker;
    }

    public void onBackPressed() {
        done(2);
    }

    protected void onDone() {
        done(-1);
    }

    protected void done(int resultCode) {
        Intent intent = new Intent();
        intent.putExtra("internal_key_updated_selection", PickerActivity.copyPicker(getPicker()));
        setResult(resultCode, intent);
        finish();
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (resultCode != 0) {
            List<String> fromAlbum = (List) data.getSerializableExtra("internal_key_updated_selection");
            if (fromAlbum != null) {
                ArrayList<String> removed = new ArrayList();
                for (String sha1 : this.mPicker) {
                    if (!fromAlbum.contains(sha1)) {
                        removed.add(sha1);
                    }
                }
                Iterator it = removed.iterator();
                while (it.hasNext()) {
                    this.mPicker.remove((String) it.next());
                }
                for (String sha12 : fromAlbum) {
                    if (!this.mPicker.contains(sha12)) {
                        this.mPicker.pick(sha12);
                    }
                }
                if (this.mPicker.getMode() == Mode.SINGLE || resultCode == -1) {
                    this.mPicker.done();
                    return;
                }
                return;
            }
            return;
        }
        this.mPicker.cancel();
    }
}
