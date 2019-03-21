package com.miui.gallery.picker;

import android.app.Fragment;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.movie.ui.listener.SingleClickListener;
import com.miui.gallery.picker.helper.Picker;
import com.miui.gallery.picker.helper.Picker.ImageType;
import com.miui.gallery.picker.helper.Picker.MediaType;
import com.miui.gallery.picker.helper.Picker.Mode;
import com.miui.gallery.picker.helper.Picker.ResultType;
import com.miui.gallery.provider.GalleryOpenProvider;
import com.miui.gallery.util.BaseBuildUtil;
import com.miui.gallery.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import miui.app.ActionBar;
import miui.gallery.support.MiuiSdkCompat;

public abstract class PickerActivity extends PickerCompatActivity {
    protected static final String[] PICKABLE_PROJECTION = new String[]{"_id", "sha1", "microthumbfile", "thumbnailFile", "localFile", "serverType", "size", "exifImageLength", "exifImageWidth"};
    private Decor mDecor;
    protected Picker mPicker;
    private CharSequence mPickerTitle;
    private CharSequence mTitle;

    public static abstract class Decor {
        protected PickerActivity mActivity;

        private static class Multiple extends Decor {
            private Button mDoneButton;
            private TextView mTitle;

            protected Multiple(PickerActivity activity) {
                super(activity);
            }

            public void applyActionBar() {
                boolean z;
                Log.d("PickerActivity", "applyActionBar");
                ActionBar actionBar = this.mActivity.getActionBar();
                actionBar.setDisplayShowCustomEnabled(true);
                actionBar.setTabsMode(false);
                actionBar.setCustomView(R.layout.picker_custom_title);
                View titleView = actionBar.getCustomView();
                this.mTitle = (TextView) titleView.findViewById(16908310);
                if (BaseBuildUtil.isInternational()) {
                    this.mTitle.setTextAppearance(this.mActivity, R.style.f76Gallery.TextAppearance.InternationalPickerTitle);
                } else {
                    this.mTitle.setTypeface(Typeface.MONOSPACE);
                }
                Button cancel = (Button) titleView.findViewById(16908313);
                MiuiSdkCompat.setEditActionModeButton(this.mActivity, cancel, 3);
                cancel.setOnClickListener(new OnClickListener() {
                    public void onClick(View v) {
                        Multiple.this.mActivity.mPicker.cancel();
                    }
                });
                this.mDoneButton = (Button) titleView.findViewById(16908314);
                MiuiSdkCompat.setEditActionModeButton(this.mActivity, this.mDoneButton, 2);
                this.mDoneButton.setOnClickListener(new SingleClickListener() {
                    protected void onSingleClick(View v) {
                        Multiple.this.mActivity.mPicker.done();
                    }
                });
                Button button = this.mDoneButton;
                if (this.mActivity.mPicker.count() >= this.mActivity.mPicker.baseline()) {
                    z = true;
                } else {
                    z = false;
                }
                button.setEnabled(z);
                this.mActivity.mPicker.registerObserver(new DataSetObserver() {
                    public void onChanged() {
                        super.onChanged();
                        Multiple.this.mActivity.updateTitle();
                        Multiple.this.mDoneButton.setEnabled(Multiple.this.mActivity.mPicker.count() >= Multiple.this.mActivity.mPicker.baseline());
                    }

                    public void onInvalidated() {
                        super.onInvalidated();
                        Multiple.this.mActivity.updateTitle();
                        Multiple.this.mDoneButton.setEnabled(Multiple.this.mActivity.mPicker.count() >= Multiple.this.mActivity.mPicker.baseline());
                    }
                });
            }

            public void applyTheme() {
            }

            public void setTitle(CharSequence cs) {
            }

            public void setPickerTitle(CharSequence cs) {
                this.mTitle.setText(cs);
            }
        }

        public abstract void applyActionBar();

        public abstract void applyTheme();

        public abstract void setPickerTitle(CharSequence charSequence);

        public abstract void setTitle(CharSequence charSequence);

        protected Decor(PickerActivity activity) {
            this.mActivity = activity;
        }

        public static Decor create(PickerActivity activity) {
            return new Multiple(activity);
        }
    }

    protected static class SimplePicker implements Picker {
        private final int mBaseline;
        private final int mCapacity;
        private ImageType mImageType = ImageType.THUMBNAIL;
        private MediaType mMediaType;
        private DataSetObservable mObservable;
        private Mode mPickMode;
        private PickerActivity mPickerActivity;
        private ResultType mResultType;
        private List<String> mResults;

        public SimplePicker(PickerActivity activity, int capacity, int baseline, List<String> results) {
            if (results == null) {
                throw new IllegalArgumentException("Result can't be null");
            }
            if (capacity < 0) {
                this.mPickMode = Mode.UNLIMITED;
                capacity = Integer.MAX_VALUE;
            } else if (capacity > 1) {
                this.mPickMode = Mode.MULTIPLE;
            } else {
                this.mPickMode = Mode.SINGLE;
                capacity = 1;
            }
            if (results.size() > capacity) {
                throw new IllegalArgumentException(String.format("ResultMap size (%d) is too large this picker (%d)", new Object[]{Integer.valueOf(results.size()), Integer.valueOf(capacity)}));
            }
            this.mPickerActivity = activity;
            this.mResults = results;
            this.mCapacity = capacity;
            this.mBaseline = baseline;
            this.mObservable = new DataSetObservable();
        }

        public boolean pick(String key) {
            boolean updated = false;
            if (!isFull()) {
                if (!this.mResults.contains(key)) {
                    updated = true;
                }
                if (updated) {
                    this.mResults.add(key);
                    this.mObservable.notifyChanged();
                }
            }
            return updated;
        }

        public boolean remove(String key) {
            boolean updated = this.mResults.remove(key);
            if (updated) {
                this.mObservable.notifyChanged();
            }
            return updated;
        }

        public boolean clear() {
            if (this.mResults.isEmpty()) {
                return false;
            }
            this.mResults.clear();
            this.mObservable.notifyChanged();
            return true;
        }

        public boolean contains(String key) {
            return this.mResults.contains(key);
        }

        public int capacity() {
            return this.mCapacity;
        }

        public int baseline() {
            return this.mBaseline;
        }

        public int count() {
            return this.mResults.size();
        }

        public MediaType getMediaType() {
            return this.mMediaType;
        }

        public void setMediaType(MediaType type) {
            this.mMediaType = type;
        }

        public ResultType getResultType() {
            return this.mResultType;
        }

        public void setImageType(ImageType type) {
            this.mImageType = type;
        }

        public ImageType getImageType() {
            return this.mImageType;
        }

        public void setResultType(ResultType type) {
            this.mResultType = type;
        }

        public void done() {
            this.mPickerActivity.onDone();
        }

        public void cancel() {
            this.mPickerActivity.onCancel();
        }

        public boolean isFull() {
            return count() >= capacity();
        }

        public Iterator<String> iterator() {
            return this.mResults.iterator();
        }

        public Mode getMode() {
            return this.mPickMode;
        }

        public void registerObserver(DataSetObserver observer) {
            this.mObservable.registerObserver(observer);
        }

        public String toString() {
            return "SimplePicker{mResults=" + this.mResults + '}';
        }
    }

    protected abstract void onDone();

    protected void onCreate(Bundle savedInstanceState) {
        if (savedInstanceState != null) {
            restoreInstanceState(savedInstanceState);
        } else {
            try {
                this.mPicker = onCreatePicker();
            } catch (Throwable e) {
                Log.e("PickerActivity", e);
                super.onCreate(savedInstanceState);
                finish();
                return;
            }
        }
        this.mDecor = onCreateDecor();
        this.mDecor.applyTheme();
        super.onCreate(savedInstanceState);
        this.mDecor.applyActionBar();
        updateTitle();
    }

    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        initActionBar();
        this.mDecor.applyActionBar();
        this.mDecor.setTitle(this.mTitle);
        this.mDecor.setPickerTitle(this.mPickerTitle);
    }

    protected Picker onCreatePicker() {
        int capacity;
        Intent intent = getIntent();
        String type = intent.resolveType(this);
        if (intent.hasExtra("pick-upper-bound")) {
            capacity = intent.getIntExtra("pick-upper-bound", -1);
            Log.d("PickerActivity", "initial pick bound: %d", Integer.valueOf(capacity));
        } else if (intent.getBooleanExtra("android.intent.extra.ALLOW_MULTIPLE", false)) {
            Log.d("PickerActivity", "standard pick multiple");
            capacity = -1;
        } else {
            capacity = 1;
        }
        int baseline = intent.getIntExtra("pick-lower-bound", 1);
        if (baseline < 1) {
            baseline = 1;
        }
        if (capacity == -1 || baseline > capacity) {
            baseline = 1;
        }
        Picker picker = new SimplePicker(this, capacity, baseline, new ArrayList());
        if ("image/*".equals(type)) {
            picker.setMediaType(MediaType.IMAGE);
        } else if ("video/*".equals(type)) {
            picker.setMediaType(MediaType.VIDEO);
        } else if ("vnd.android.cursor.dir/image".equals(type)) {
            picker.setMediaType(MediaType.IMAGE);
        } else if ("vnd.android.cursor.dir/video".equals(type)) {
            picker.setMediaType(MediaType.VIDEO);
        } else {
            picker.setMediaType(MediaType.ALL);
        }
        if (intent.getBooleanExtra("pick-need-id", false)) {
            picker.setResultType(ResultType.ID);
        } else if (GalleryOpenProvider.needReturnContentUri((Context) this, getCallingPackage())) {
            picker.setResultType(ResultType.OPEN_URI);
        } else if ("vnd.android.cursor.dir/image".equals(type) || "vnd.android.cursor.dir/video".equals(type)) {
            picker.setResultType(ResultType.LEGACY_MEDIA);
        } else {
            picker.setResultType(ResultType.LEGACY_GENERAL);
        }
        if (intent.getBooleanExtra("pick-need-origin", false)) {
            picker.setImageType(ImageType.ORIGIN);
        } else if (intent.getBooleanExtra("pick-need-origin-download-info", false)) {
            picker.setImageType(ImageType.ORIGIN_OR_DOWNLOAD_INFO);
        }
        Log.d("PickerActivity", "creating picker, capacity is %d", Integer.valueOf(capacity));
        return picker;
    }

    protected Decor onCreateDecor() {
        return Decor.create(this);
    }

    protected void onCancel() {
        super.finish();
    }

    public final void setTitle(CharSequence title) {
        this.mTitle = title;
        this.mDecor.setTitle(this.mTitle);
    }

    public final void setPickerTitle(CharSequence title) {
        this.mPickerTitle = title;
        this.mDecor.setPickerTitle(title);
    }

    public Picker getPicker() {
        return this.mPicker;
    }

    public void onAttachFragment(Fragment fragment) {
        super.onAttachFragment(fragment);
        if (fragment instanceof PickerFragment) {
            ((PickerFragment) fragment).attach(this.mPicker);
        }
    }

    protected final void updateTitle() {
        int count = this.mPicker.count();
        Mode mode = this.mPicker.getMode();
        if (count > 0) {
            String pickerTitle;
            if (mode == Mode.MULTIPLE) {
                pickerTitle = getString(R.string.picker_title_selection_format_multiple, new Object[]{Integer.valueOf(this.mPicker.baseline()), Integer.valueOf(this.mPicker.capacity()), Integer.valueOf(count)});
            } else {
                pickerTitle = getString(R.string.picker_title_selection_format, new Object[]{Integer.valueOf(count)});
            }
            setPickerTitle(pickerTitle);
        } else if (mode == Mode.MULTIPLE) {
            if (this.mPicker.baseline() != this.mPicker.capacity()) {
                setPickerTitle(getString(R.string.picker_title_format, new Object[]{Integer.valueOf(this.mPicker.baseline()), Integer.valueOf(this.mPicker.capacity())}));
                return;
            }
            setPickerTitle(getString(R.string.picker_title_specify_format, new Object[]{Integer.valueOf(this.mPicker.baseline())}));
        } else if (mode == Mode.SINGLE) {
            setPickerTitle(getString(R.string.picker_title_specify_format_one, new Object[]{Integer.valueOf(this.mPicker.capacity())}));
        } else {
            setPickerTitle(getString(R.string.picker_title_unlimit));
        }
    }

    protected void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        outState.putSerializable("com.miui.gallery.picker.PickerActivity.results", copyPicker(this.mPicker));
        outState.putSerializable("com.miui.gallery.picker.PickerActivity.capacity", Integer.valueOf(this.mPicker.getMode() == Mode.UNLIMITED ? -1 : this.mPicker.capacity()));
        outState.putSerializable("com.miui.gallery.picker.PickerActivity.baseline", Integer.valueOf(this.mPicker.baseline()));
        outState.putInt("com.miui.gallery.picker.PickerActivity.media_type", this.mPicker.getMediaType().ordinal());
        outState.putInt("com.miui.gallery.picker.PickerActivity.result_type", this.mPicker.getResultType().ordinal());
    }

    private void restoreInstanceState(Bundle savedInstanceState) {
        Log.d("PickerActivity", "restore instance state for picker: ");
        int capacity = savedInstanceState.getInt("com.miui.gallery.picker.PickerActivity.capacity", 1);
        int baseline = savedInstanceState.getInt("com.miui.gallery.picker.PickerActivity.baseline", 1);
        List<String> result = (List) savedInstanceState.getSerializable("com.miui.gallery.picker.PickerActivity.results");
        if (result == null) {
            result = new ArrayList(capacity);
        }
        this.mPicker = new SimplePicker(this, capacity, baseline, result);
        int mediaType = savedInstanceState.getInt("com.miui.gallery.picker.PickerActivity.media_type");
        int resultType = savedInstanceState.getInt("com.miui.gallery.picker.PickerActivity.result_type");
        this.mPicker.setMediaType(MediaType.values()[mediaType]);
        this.mPicker.setResultType(ResultType.values()[resultType]);
        Log.d("PickerActivity", "picker[capacity:%d, size:%d] restored.", Integer.valueOf(capacity), Integer.valueOf(result.size()));
    }

    public static ArrayList<String> copyPicker(Picker picker) {
        if (picker == null) {
            return new ArrayList(0);
        }
        ArrayList<String> arrayList = new ArrayList(picker.count());
        for (String key : picker) {
            arrayList.add(key);
        }
        return arrayList;
    }
}
