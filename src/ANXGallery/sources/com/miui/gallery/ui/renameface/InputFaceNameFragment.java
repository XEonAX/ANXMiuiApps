package com.miui.gallery.ui.renameface;

import android.app.ActionBar.LayoutParams;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.database.MergeCursor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.CursorAdapter;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.model.DisplayFolderItem;
import com.miui.gallery.model.PeopleContactInfo;
import com.miui.gallery.permission.cta.CtaPermissions;
import com.miui.gallery.threadpool.Future;
import com.miui.gallery.threadpool.FutureListener;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.ui.BaseFragment;
import com.miui.gallery.ui.PeopleRelationSetDialogFragment;
import com.miui.gallery.ui.PeopleRelationSetDialogFragment.RelationSelectedListener;
import com.miui.gallery.ui.renameface.FolderItemsLoader.LoaderUpdatedItems;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.BitmapUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.util.face.PeopleItemBitmapDisplayer;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.display.CircleBitmapDisplayer.CircleDrawable;
import com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme;
import java.util.Iterator;

public class InputFaceNameFragment extends BaseFragment {
    public static DisplayImageOptions sDisplayImageOptions = new Builder().cacheInMemory(true).considerExifParams(true).showImageForEmptyUri(R.drawable.default_face_cover).showImageOnFail(R.drawable.default_face_cover).resetViewBeforeLoading(true).imageScaleType(ImageScaleType.EXACTLY).bitmapConfig(Config.RGB_565).displayer(new PeopleItemBitmapDisplayer(false)).usingRegionDecoderFace(true).build();
    public static String[] sProjection = new String[]{Phone.CONTACT_ID, Phone.DISPLAY_NAME, Phone.NUMBER, Phone.PHOTO_URI, Phone.PHOTO_THUMBNAIL_URI};
    private GetContactsInfo mGetContactInfoHelper;
    private Handler mHandler = new Handler();
    private boolean mInputTextChanged;
    private EditText mInputView;
    private boolean mIsRelationSetted;
    private ListView mListView;
    protected FolderItemsLoader mLoader;
    private MergeNameAdapter mMergeAdapter;
    private boolean mOnlyHasContactResult;
    private boolean mOnlyUseContactAdapter;
    private String mOriginalName;
    private String mOriginalSetLocalId;

    private class ContactsInfo {
        String _id;
        String coverPath;
        String displayName;
        String phoneNumber;

        private ContactsInfo() {
        }

        /* synthetic */ ContactsInfo(InputFaceNameFragment x0, AnonymousClass1 x1) {
            this();
        }
    }

    class GetContactsInfo {
        Context context;

        public GetContactsInfo(Context context) {
            this.context = context;
        }

        private void getContactCursor() {
            ThreadManager.getMiscPool().submit(new Job<Cursor>() {
                public Cursor run(JobContext jc) {
                    if (!InputFaceNameFragment.this.isAccessContactAllowed()) {
                        return null;
                    }
                    try {
                        Cursor cur = GetContactsInfo.this.context.getContentResolver().query(android.provider.ContactsContract.CommonDataKinds.Phone.CONTENT_URI, InputFaceNameFragment.sProjection, null, null, " display_name COLLATE LOCALIZED ");
                        return new MergeCursor(new Cursor[]{InputFaceNameFragment.this.getContactTipRowCursor(), cur});
                    } catch (Throwable e) {
                        Log.e("InputFaceNameFragment", e);
                        return null;
                    }
                }
            }, new FutureListener<Cursor>() {
                public void onFutureDone(Future<Cursor> future) {
                    if (future != null) {
                        final Cursor cursor = (Cursor) future.get();
                        InputFaceNameFragment.this.mHandler.post(new Runnable() {
                            public void run() {
                                if (InputFaceNameFragment.this.mOnlyUseContactAdapter) {
                                    InputFaceNameFragment.this.mMergeAdapter.changeCursor(cursor);
                                    InputFaceNameFragment.this.mMergeAdapter.notifyDataSetChanged();
                                }
                            }
                        });
                    }
                }
            });
        }

        private Cursor getSuggestionCursor(String input) {
            Cursor cursor = null;
            ContentResolver cr = InputFaceNameFragment.this.mActivity.getContentResolver();
            Uri uri = null;
            if (InputFaceNameFragment.this.isAccessContactAllowed()) {
                if (TextUtils.isEmpty(input)) {
                    uri = android.provider.ContactsContract.CommonDataKinds.Phone.CONTENT_URI;
                } else {
                    uri = Uri.withAppendedPath(android.provider.ContactsContract.CommonDataKinds.Phone.CONTENT_FILTER_URI, InputFaceNameFragment.sqlEscapeString(input.replace('/', ' ')));
                }
            }
            if (uri == null) {
                return cursor;
            }
            try {
                return cr.query(uri, InputFaceNameFragment.sProjection, null, null, " display_name COLLATE LOCALIZED ");
            } catch (Throwable e) {
                Log.e("InputFaceNameFragment", e);
                return cursor;
            }
        }
    }

    class MergeNameAdapter extends CursorAdapter {
        private int CONTECT_HEADER_VIEW = 0;
        private int NORMAL_VIEW = 1;
        private ContactsInfo mContactsInfo = new ContactsInfo(InputFaceNameFragment.this, null);
        private LayoutInflater mInflater = null;

        private class ViewHolder {
            ImageView avartarImageView;
            TextView name;

            private ViewHolder() {
            }

            /* synthetic */ ViewHolder(MergeNameAdapter x0, AnonymousClass1 x1) {
                this();
            }
        }

        public MergeNameAdapter(Context context) {
            super(context, null);
            this.mInflater = LayoutInflater.from(context);
            InputFaceNameFragment.this.mGetContactInfoHelper.getContactCursor();
        }

        public View newView(Context context, Cursor cursor, ViewGroup parent) {
            View view;
            if (getItemViewTypeByCursor(cursor) == this.CONTECT_HEADER_VIEW) {
                view = this.mInflater.inflate(R.layout.input_face_name_contact_header_item, parent, false);
                view.setTag(R.id.tag_view_type, Integer.valueOf(this.CONTECT_HEADER_VIEW));
                return view;
            }
            view = this.mInflater.inflate(R.layout.input_face_name_item, parent, false);
            view.setTag(R.id.tag_view_type, Integer.valueOf(this.NORMAL_VIEW));
            return view;
        }

        public void bindView(View view, Context context, Cursor cursor) {
            if (((Integer) view.getTag(R.id.tag_view_type)).intValue() == this.CONTECT_HEADER_VIEW) {
                bindHeaderView(view, context, cursor);
                return;
            }
            this.mContactsInfo._id = cursor.getString(cursor.getColumnIndex(Phone.CONTACT_ID));
            this.mContactsInfo.phoneNumber = InputFaceNameFragment.getPhoneNumber(cursor);
            this.mContactsInfo.displayName = cursor.getString(cursor.getColumnIndex(Phone.DISPLAY_NAME));
            this.mContactsInfo.coverPath = InputFaceNameFragment.getCoverPath(cursor);
            ViewHolder viewHolder = (ViewHolder) view.getTag();
            if (viewHolder == null) {
                viewHolder = new ViewHolder(this, null);
                viewHolder.name = (TextView) view.findViewById(R.id.name);
                viewHolder.avartarImageView = (ImageView) view.findViewById(R.id.folder_cover);
                view.setTag(viewHolder);
            }
            View listDivider = view.findViewById(R.id.list_divider);
            if (cursor.getPosition() == 0) {
                InputFaceNameFragment.this.disappearView(listDivider);
            } else {
                InputFaceNameFragment.this.displayView(listDivider);
            }
            viewHolder.name.setText(this.mContactsInfo.displayName);
            if (this.mContactsInfo.phoneNumber.equalsIgnoreCase("face")) {
                DisplayFolderItem item = InputFaceNameFragment.this.getDisplayItemByName(this.mContactsInfo.displayName);
                ImageLoader.getInstance().displayImage(Scheme.FILE.wrap(item.thumbnailPath), viewHolder.avartarImageView, InputFaceNameFragment.sDisplayImageOptions, null, ((FaceDisplayFolderItem) item).mFacePosRelative);
                return;
            }
            viewHolder.avartarImageView.setImageResource(R.drawable.default_face_cover);
            if (this.mContactsInfo.coverPath != null) {
                Bitmap bitmap = BitmapUtils.safeDecodeBitmap(InputFaceNameFragment.this.mActivity.getContentResolver(), Uri.parse(this.mContactsInfo.coverPath));
                if (bitmap != null) {
                    viewHolder.avartarImageView.setImageDrawable(new CircleDrawable(bitmap, Integer.valueOf(InputFaceNameFragment.this.getResources().getColor(R.color.image_stroke_color)), (float) InputFaceNameFragment.this.getResources().getDimensionPixelSize(R.dimen.image_stroke_width)));
                }
            }
        }

        private void bindHeaderView(View view, Context context, Cursor cursor) {
            View divider = view.findViewById(R.id.divider);
            if (InputFaceNameFragment.this.mOnlyHasContactResult) {
                InputFaceNameFragment.this.disappearView(divider);
            } else {
                InputFaceNameFragment.this.displayView(divider);
            }
        }

        public int getItemViewType(int position) {
            Cursor cursor = getCursor();
            if (cursor.moveToPosition(position)) {
                return getItemViewTypeByCursor(cursor);
            }
            return -1;
        }

        private int getItemViewTypeByCursor(Cursor cursor) {
            return InputFaceNameFragment.getPhoneNumber(cursor).equalsIgnoreCase("contact") ? this.CONTECT_HEADER_VIEW : this.NORMAL_VIEW;
        }

        public int getViewTypeCount() {
            return 2;
        }
    }

    private static class Phone {
        static String CONTACT_ID = "_id";
        static String DISPLAY_NAME = "display_name";
        static String NUMBER = "data1";
        static String PHOTO_THUMBNAIL_URI = "photo_thumb_uri";
        static String PHOTO_URI = "photo_uri";
    }

    public View onInflateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        super.onInflateView(inflater, container, savedInstanceState);
        View view = inflater.inflate(R.layout.input_face_name_fragment, container, false);
        Intent intent = this.mActivity.getIntent();
        if (!(intent == null || intent.getExtras() == null)) {
            Bundle bundle = intent.getExtras();
            this.mOnlyUseContactAdapter = bundle.getBoolean("only_use_contact", false);
            this.mOriginalName = bundle.getString("original_name", "");
            this.mIsRelationSetted = bundle.getBoolean("is_relation_setted", false);
            this.mOriginalSetLocalId = bundle.getString("original_path_album_local_id", "");
        }
        this.mOnlyHasContactResult = true;
        initTitleBar();
        initEditText();
        initFaceNameLoader();
        initMergeNameAdapter();
        initListView(view);
        return view;
    }

    private void stopFaceLoaderAndFinish() {
        this.mLoader.cancel();
        this.mActivity.finish();
    }

    public void onBackPressed() {
        stopFaceLoaderAndFinish();
    }

    public void onStart() {
        super.onStart();
        updateNameList();
    }

    public void onStop() {
        super.onStop();
        if (this.mMergeAdapter != null) {
            this.mMergeAdapter.changeCursor(null);
        }
    }

    public void onDestroyView() {
        super.onDestroyView();
        hideSoftKeyboard();
    }

    public String getPageName() {
        return "face_input_name";
    }

    private void initTitleBar() {
        View topBarCustomView = this.mActivity.getLayoutInflater().inflate(R.layout.input_face_name_activity_title, null);
        topBarCustomView.setLayoutParams(new LayoutParams(-1, -1));
        this.mActivity.getActionBar().setDisplayOptions(16, 16);
        this.mActivity.getActionBar().setCustomView(topBarCustomView);
        this.mInputView = (EditText) topBarCustomView.findViewById(R.id.autoCompleteTextView);
        if (!TextUtils.isEmpty(this.mOriginalName)) {
            this.mInputView.setText(this.mOriginalName);
            this.mInputView.selectAll();
        }
        topBarCustomView.findViewById(R.id.cancel).setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                InputFaceNameFragment.this.stopFaceLoaderAndFinish();
            }
        });
        topBarCustomView.findViewById(R.id.ok).setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                String name = InputFaceNameFragment.this.mInputView.getText().toString();
                if (name != null) {
                    name = name.trim();
                }
                if (TextUtils.isEmpty(name)) {
                    ToastUtils.makeText(InputFaceNameFragment.this.mActivity, InputFaceNameFragment.this.getString(R.string.input_or_select_a_name));
                    return;
                }
                boolean isRepeatName = InputFaceNameFragment.this.validateIsRepeatName(name);
                if (isRepeatName || !TextUtils.isEmpty(InputFaceNameFragment.this.mOriginalName) || InputFaceNameFragment.this.mOnlyUseContactAdapter || InputFaceNameFragment.this.mIsRelationSetted) {
                    InputFaceNameFragment.this.onOkClick(name, isRepeatName, null, null, null);
                } else {
                    InputFaceNameFragment.this.showSetRelationDialog(name, null);
                }
            }
        });
    }

    private void onOkClick(String name, boolean isRepeatName, String phone, String relation, String relationText) {
        Intent intent = new Intent();
        Bundle bundle = new Bundle();
        bundle.putString("name", name);
        bundle.putBoolean("is_repeat_name", isRepeatName);
        if (!TextUtils.isEmpty(phone)) {
            bundle.putString("phone", phone);
        }
        if (!TextUtils.isEmpty(relation)) {
            bundle.putString("relation_with_me", relation);
        }
        if (!TextUtils.isEmpty(relationText)) {
            bundle.putString("relation_with_me_text", relationText);
        }
        intent.putExtras(bundle);
        this.mActivity.setResult(-1, intent);
        hideSoftKeyboard();
        stopFaceLoaderAndFinish();
    }

    public void showSetRelationDialog(final String name, final String phone) {
        PeopleRelationSetDialogFragment.createRelationSetDialog(this.mActivity, this.mActivity.getString(R.string.relation_with_you), null, 1, new RelationSelectedListener() {
            public void onRelationSelected(String relation, String relationText) {
                InputFaceNameFragment.this.onOkClick(name, false, phone, relation, relationText);
            }
        });
    }

    private void initEditText() {
        this.mInputView.addTextChangedListener(new TextWatcher() {
            public void onTextChanged(CharSequence s, int start, int before, int count) {
            }

            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
            }

            public void afterTextChanged(Editable s) {
                InputFaceNameFragment.this.mInputTextChanged = true;
                InputFaceNameFragment.this.updateNameList();
            }
        });
    }

    private boolean isAccessContactAllowed() {
        return CtaPermissions.isPrivacyAllowed("android.permission.READ_CONTACTS");
    }

    public void updateNameList() {
        String text = null;
        if (this.mInputTextChanged) {
            text = this.mInputView.getText().toString();
        }
        if (TextUtils.isEmpty(text) && this.mOnlyUseContactAdapter) {
            this.mOnlyHasContactResult = true;
            this.mGetContactInfoHelper.getContactCursor();
        } else {
            changeMergeResultCursor(text);
        }
        this.mMergeAdapter.notifyDataSetChanged();
    }

    private void changeMergeResultCursor(final String input) {
        ThreadManager.getMiscPool().submit(new Job<Cursor>() {
            public Cursor run(JobContext jc) {
                return InputFaceNameFragment.this.mGetContactInfoHelper.getSuggestionCursor(input);
            }
        }, new FutureListener<Cursor>() {
            public void onFutureDone(Future<Cursor> future) {
                if (future != null) {
                    boolean z;
                    Cursor[] mergeCursors;
                    Cursor suggestContactCur = (Cursor) future.get();
                    boolean hasContactSuggest = true;
                    if (suggestContactCur == null || suggestContactCur.getCount() == 0) {
                        hasContactSuggest = false;
                    }
                    boolean hasFaceSuggest = false;
                    Cursor suggestFaceCursor = InputFaceNameFragment.this.getFaceSuggest(input);
                    if (suggestFaceCursor != null && suggestFaceCursor.getCount() > 0) {
                        hasFaceSuggest = true;
                    }
                    InputFaceNameFragment inputFaceNameFragment = InputFaceNameFragment.this;
                    if (hasFaceSuggest) {
                        z = false;
                    } else {
                        z = true;
                    }
                    inputFaceNameFragment.mOnlyHasContactResult = z;
                    if (hasContactSuggest && hasFaceSuggest) {
                        mergeCursors = new Cursor[]{suggestFaceCursor, InputFaceNameFragment.this.getContactTipRowCursor(), suggestContactCur};
                    } else if (hasContactSuggest) {
                        mergeCursors = new Cursor[]{InputFaceNameFragment.this.getContactTipRowCursor(), suggestContactCur};
                        BaseMiscUtil.closeSilently(suggestFaceCursor);
                    } else {
                        mergeCursors = new Cursor[]{suggestFaceCursor};
                        BaseMiscUtil.closeSilently(suggestContactCur);
                    }
                    final Cursor c = new MergeCursor(mergeCursors);
                    InputFaceNameFragment.this.mHandler.post(new Runnable() {
                        public void run() {
                            InputFaceNameFragment.this.mMergeAdapter.changeCursor(c);
                        }
                    });
                }
            }
        });
    }

    private Cursor getFaceSuggest(String input) {
        int id = 100;
        MatrixCursor cursor = new MatrixCursor(sProjection);
        String folderName = input != null ? input.trim() : "";
        Iterator it = this.mLoader.tryToGetLoadedItems(10000).iterator();
        while (it.hasNext()) {
            if (((DisplayFolderItem) it.next()).name.toLowerCase().startsWith(folderName.toLowerCase())) {
                cursor.addRow(new Object[]{String.valueOf(id), ((DisplayFolderItem) it.next()).name, "face", null, null});
                id++;
            }
        }
        return cursor;
    }

    private Cursor getContactTipRowCursor() {
        MatrixCursor cursor = new MatrixCursor(sProjection);
        String tip = isAdded() ? getString(R.string.contact_tip) : "";
        cursor.addRow(new Object[]{String.valueOf(-1), tip, "contact", null, null});
        return cursor;
    }

    private DisplayFolderItem getDisplayItemByName(String name) {
        Iterator it = this.mLoader.tryToGetLoadedItems(10000).iterator();
        while (it.hasNext()) {
            DisplayFolderItem each = (DisplayFolderItem) it.next();
            if (each.name.equalsIgnoreCase(name)) {
                return each;
            }
        }
        return null;
    }

    private boolean validateIsRepeatName(String newName) {
        return FaceAlbumRenameHandler.getDisplayFolderItem(this.mLoader.tryToGetLoadedItems(300), newName.trim()) != null;
    }

    private void initListView(View parent) {
        this.mListView = (ListView) parent.findViewById(R.id.list);
        this.mListView.setAdapter(this.mMergeAdapter);
        this.mListView.setOnScrollListener(new OnScrollListener() {
            public void onScrollStateChanged(AbsListView absListView, int scrollState) {
                if (scrollState == 1) {
                    InputFaceNameFragment.this.hideSoftKeyboard();
                }
            }

            public void onScroll(AbsListView absListView, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
            }
        });
        this.mListView.setOnItemClickListener(new OnItemClickListener() {
            public void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
                Cursor cur = (Cursor) InputFaceNameFragment.this.mMergeAdapter.getItem(position);
                String phone = InputFaceNameFragment.getPhoneNumber(cur);
                if (!phone.equalsIgnoreCase("contact")) {
                    String name = cur.getString(cur.getColumnIndex(Phone.DISPLAY_NAME));
                    boolean isRepeatName = InputFaceNameFragment.this.validateIsRepeatName(name);
                    if (isRepeatName || !TextUtils.isEmpty(InputFaceNameFragment.this.mOriginalName) || InputFaceNameFragment.this.mOnlyUseContactAdapter || TextUtils.isEmpty(phone) || InputFaceNameFragment.this.mIsRelationSetted) {
                        InputFaceNameFragment.this.onOkClick(name, isRepeatName, phone, null, null);
                    } else {
                        InputFaceNameFragment.this.showSetRelationDialog(name, phone);
                    }
                }
            }
        });
    }

    private void initFaceNameLoader() {
        long[] selectedFoldersLocalId = null;
        if (!TextUtils.isEmpty(this.mOriginalSetLocalId)) {
            selectedFoldersLocalId = new long[]{Long.parseLong(this.mOriginalSetLocalId)};
        }
        this.mLoader = new FaceFolderItemsLoader(this.mActivity, null, new LoaderUpdatedItems() {
            public void onLoaderUpdatedItems() {
                if (!InputFaceNameFragment.this.mOnlyUseContactAdapter) {
                    InputFaceNameFragment.this.changeMergeResultCursor(null);
                    InputFaceNameFragment.this.mMergeAdapter.notifyDataSetChanged();
                }
            }
        }, selectedFoldersLocalId);
    }

    private void initMergeNameAdapter() {
        this.mGetContactInfoHelper = new GetContactsInfo(this.mActivity);
        this.mMergeAdapter = new MergeNameAdapter(this.mActivity);
    }

    private void hideSoftKeyboard() {
        ((InputMethodManager) this.mActivity.getSystemService("input_method")).hideSoftInputFromWindow(this.mListView.getWindowToken(), 0);
    }

    private void displayView(View view) {
        if (view.getVisibility() == 8) {
            view.setVisibility(0);
        }
    }

    private void disappearView(View view) {
        if (view.getVisibility() == 0) {
            view.setVisibility(8);
        }
    }

    public static PeopleContactInfo getContactInfo(Context context, Intent intent) {
        PeopleContactInfo contact = new PeopleContactInfo();
        if (intent.getData() != null) {
            Cursor c = null;
            try {
                c = context.getContentResolver().query(intent.getData(), null, null, null, null);
                if (c != null && c.moveToFirst()) {
                    contact.name = c.getString(c.getColumnIndex("display_name"));
                    contact.phone = getPhoneNumber(c);
                    contact.coverPath = getCoverPath(c);
                }
                if (c != null) {
                    c.close();
                }
            } catch (Throwable th) {
                if (c != null) {
                    c.close();
                }
            }
        } else {
            Bundle bundle = intent.getExtras();
            if (bundle != null) {
                contact.name = bundle.getString("name", "");
                contact.phone = bundle.getString("phone", "");
                contact.isRepeatName = bundle.getBoolean("is_repeat_name");
                if (contact.isRepeatName) {
                    contact.localGroupId = bundle.getString("repeat_local_group_id", "");
                }
                contact.relationWithMe = bundle.getString("relation_with_me", "");
                contact.relationWithMeText = bundle.getString("relation_with_me_text", "");
            }
        }
        return contact;
    }

    public static String getPhoneNumber(Cursor cur) {
        String phone = null;
        try {
            phone = cur.getString(cur.getColumnIndex(Phone.NUMBER));
        } catch (Exception e) {
        }
        return phone == null ? "" : phone;
    }

    public static String getCoverPath(Cursor cur) {
        try {
            String path = cur.getString(cur.getColumnIndex(Phone.PHOTO_URI));
            if (path == null) {
                return cur.getString(cur.getColumnIndex(Phone.PHOTO_THUMBNAIL_URI));
            }
            return path;
        } catch (Exception e) {
            return "";
        }
    }

    public static String sqlEscapeString(String sqlString) {
        if (sqlString.indexOf(39) == -1) {
            return sqlString;
        }
        StringBuilder sb = new StringBuilder();
        int length = sqlString.length();
        for (int i = 0; i < length; i++) {
            char c = sqlString.charAt(i);
            if (c == '\'') {
                sb.append('\'');
            }
            sb.append(c);
        }
        return sb.toString();
    }
}
