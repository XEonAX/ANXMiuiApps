package com.miui.gallery.activity.facebaby;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.ContentValues;
import android.content.DialogInterface;
import android.content.DialogInterface.OnShowListener;
import android.content.Intent;
import android.database.DatabaseUtils;
import android.graphics.RectF;
import android.os.Bundle;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.preference.PreferenceScreen;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.cloud.CreateGroupItem;
import com.miui.gallery.cloud.GalleryCloudUtils;
import com.miui.gallery.cloud.baby.BabyInfo;
import com.miui.gallery.provider.FaceManager;
import com.miui.gallery.provider.GalleryContract.Album;
import com.miui.gallery.provider.deprecated.NormalPeopleFaceMediaSet;
import com.miui.gallery.provider.deprecated.ThumbnailInfo;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.util.GalleryUtils;
import com.miui.gallery.util.IntentUtil;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.util.baby.FindFace2CreateBabyAlbum;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme;
import miui.app.DatePickerDialog;
import miui.app.DatePickerDialog.OnDateSetListener;
import miui.widget.DatePicker;

public class OwnerBabyAlbumSettingActivity extends BabyAlbumSettingActivityBase implements OnPreferenceChangeListener {
    private boolean mBabyFaceChanged;
    private String mCoverFaceId;
    private OnDateSetListener mDatelistener = new OnDateSetListener() {
        public void onDateSet(DatePicker view, int myyear, int monthOfYear, int dayOfMonth) {
            OwnerBabyAlbumSettingActivity.this.mBirthdayYear = myyear;
            OwnerBabyAlbumSettingActivity.this.mBirthdayMonth = monthOfYear + 1;
            OwnerBabyAlbumSettingActivity.this.mBirthdayDay = dayOfMonth;
            OwnerBabyAlbumSettingActivity.this.mBirthday = BabyAlbumSettingActivityBase.combine2Birthday(OwnerBabyAlbumSettingActivity.this.mBirthdayYear, OwnerBabyAlbumSettingActivity.this.mBirthdayMonth, OwnerBabyAlbumSettingActivity.this.mBirthdayDay);
            OwnerBabyAlbumSettingActivity.this.mChooseDate.setSummary(OwnerBabyAlbumSettingActivity.this.mBirthday);
        }
    };
    private boolean mNeedSaveBabyFace;

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle bundle = getIntent().getExtras();
        this.mFaceAlbumLocalId = Long.valueOf(bundle.getLong("faceAlbumLocalId", -1));
        if (bundle.containsKey("faceAlbumServerId")) {
            this.mPeopleId = bundle.getString("faceAlbumServerId");
        }
        this.mCoverFaceId = bundle.getString("faceAlbumCoverFaceServerId");
        this.mBabyNicknamePre.setOnPreferenceChangeListener(this);
        this.mBabySexPre.setOnPreferenceChangeListener(this);
        this.mRelationPre.setOnPreferenceChangeListener(this);
        View finish = findViewById(R.id.finish_fill_baby);
        if (createOrBrowse()) {
            finish.setVisibility(0);
            this.mBirthday = bundle.getString("birthday");
            getBirthYearMonthDay(this.mBirthday);
            this.mNickName = bundle.getString("name");
            if (TextUtils.isEmpty(this.mNickName)) {
                this.mNickName = getString(R.string.face_album_not_named);
            }
        }
        finish.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                if (OwnerBabyAlbumSettingActivity.this.mNickName.equalsIgnoreCase(OwnerBabyAlbumSettingActivity.this.getString(R.string.face_album_not_named))) {
                    ToastUtils.makeText(OwnerBabyAlbumSettingActivity.this, OwnerBabyAlbumSettingActivity.this.getString(R.string.input_nickname_toast));
                    return;
                }
                FindFace2CreateBabyAlbum.createBabyAlbumAndSaveBabyInfo(OwnerBabyAlbumSettingActivity.this.mNickName, OwnerBabyAlbumSettingActivity.this.toBabyInfo(OwnerBabyAlbumSettingActivity.this.mPeopleId, 0), new NormalPeopleFaceMediaSet(OwnerBabyAlbumSettingActivity.this.mFaceAlbumLocalId.longValue(), OwnerBabyAlbumSettingActivity.this.mPeopleId, OwnerBabyAlbumSettingActivity.this.mNickName), OwnerBabyAlbumSettingActivity.this, OwnerBabyAlbumSettingActivity.this.mCoverFaceId);
            }
        });
        this.mFace.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                IntentUtil.pickFace(OwnerBabyAlbumSettingActivity.this, OwnerBabyAlbumSettingActivity.this.getString(R.string.set_face_image), OwnerBabyAlbumSettingActivity.this.mPeopleId, String.valueOf(OwnerBabyAlbumSettingActivity.this.mFaceAlbumLocalId), null, 1, true);
            }
        });
        if (createOrBrowse()) {
            setCoverFaceAndBirthdayForCreateBaby();
        }
    }

    protected void onResume() {
        super.onResume();
        BaseSamplingStatHelper.recordPageStart(this, "album_baby_share_owner_setting");
    }

    protected void onPause() {
        super.onPause();
        BaseSamplingStatHelper.recordPageEnd(this, "album_baby_share_owner_setting");
    }

    protected void setCoverFaceAndBirthdayForCreateBaby() {
        ThreadManager.getMiscPool().submit(new Job<Void>() {
            public Void run(JobContext jc) {
                OwnerBabyAlbumSettingActivity.this.loadAndSetBabyFace(jc);
                int[] days = BabyAlbumSettingActivityBase.getCurrentYearMonthDay(FaceManager.queryTimeOfOldestImagesOfOnePerson(OwnerBabyAlbumSettingActivity.this.mPeopleId));
                int year = days[0];
                int month = days[1];
                int day = days[2];
                OwnerBabyAlbumSettingActivity.this.mBirthday = BabyAlbumSettingActivityBase.combine2Birthday(year, month, day);
                OwnerBabyAlbumSettingActivity.this.getBirthYearMonthDay(OwnerBabyAlbumSettingActivity.this.mBirthday);
                OwnerBabyAlbumSettingActivity.this.mHandler.post(new Runnable() {
                    public void run() {
                        if (OwnerBabyAlbumSettingActivity.this.mChooseDate != null) {
                            OwnerBabyAlbumSettingActivity.this.mChooseDate.setSummary(OwnerBabyAlbumSettingActivity.this.mBirthday);
                        }
                    }
                });
                return null;
            }
        });
    }

    private void loadAndSetBabyFace(JobContext jc) {
        if (this.mCoverFaceBitmap == null) {
            final RectF[] faceRegion = new RectF[1];
            final String facePath = FaceManager.queryCoverImageOfOnePerson(this.mPeopleId, faceRegion);
            this.mHandler.post(new Runnable() {
                public void run() {
                    ImageLoader.getInstance().displayImage(Scheme.FILE.wrap(facePath), OwnerBabyAlbumSettingActivity.this.mFace, BabyAlbumSettingActivityBase.sDisplayImageOptions, null, faceRegion[0]);
                }
            });
        } else if (this.mFace != null) {
            this.mFace.setImageBitmap(this.mCoverFaceBitmap);
        }
    }

    private boolean createOrBrowse() {
        return this.mBabyAlbumLocalId.longValue() == -1;
    }

    protected int getPreferenceResourceId() {
        return R.xml.owner_baby_album_preferences;
    }

    protected void setPreferencesValue() {
        super.setPreferencesValue();
        this.mBabyNicknamePre.setSummary(this.mNickName);
        this.mChooseDate.setSummary(this.mBirthday);
        ((ListPreference) this.mBabySexPre).setValue(this.mSex);
        this.mBabySexPre.setSummary(((ListPreference) this.mBabySexPre).getEntry());
        ((ListPreference) this.mRelationPre).setValue(this.mRelation);
        this.mRelationText = (String) ((ListPreference) this.mRelationPre).getEntry();
        this.mRelationPre.setSummary(this.mRelationText);
    }

    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case 16908332:
                onBackPressed();
                break;
        }
        return super.onOptionsItemSelected(item);
    }

    public boolean onPreferenceChange(Preference preference, Object newValue) {
        if (preference == this.mBabySexPre) {
            this.mSex = (String) newValue;
            ((ListPreference) this.mBabySexPre).setValue(this.mSex);
            this.mBabySexPre.setSummary(((ListPreference) this.mBabySexPre).getEntry());
        } else if (preference == this.mRelationPre) {
            this.mRelation = (String) newValue;
            ((ListPreference) this.mRelationPre).setValue(this.mRelation);
            this.mRelationText = (String) ((ListPreference) this.mRelationPre).getEntry();
            this.mRelationPre.setSummary(this.mRelationText);
        }
        return true;
    }

    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        if ("baby_birthday".equals(preference.getKey())) {
            int year;
            int month;
            int day;
            if (this.mBirthdayYear == 0 || this.mBirthdayMonth == 0 || this.mBirthdayDay == 0) {
                int[] days = BabyAlbumSettingActivityBase.getCurrentYearMonthDay(System.currentTimeMillis());
                year = days[0];
                month = days[1];
                day = days[2];
            } else {
                year = this.mBirthdayYear;
                month = this.mBirthdayMonth;
                day = this.mBirthdayDay;
            }
            new DatePickerDialog(this, this.mDatelistener, year, month - 1, day).show();
            return true;
        }
        if ("baby_name".equals(preference.getKey())) {
            rename(this.mNickName, this);
        }
        return super.onPreferenceTreeClick(preferenceScreen, preference);
    }

    public void rename(String oldName, final Activity activity) {
        Builder builder = new Builder(activity);
        LayoutInflater layoutInflater = LayoutInflater.from(builder.getContext());
        builder.setTitle(R.string.input_baby_name);
        View view = layoutInflater.inflate(R.layout.baby_name_input_dialog_view, null);
        final EditText editView = (EditText) view.findViewById(R.id.custom_dialog_content);
        editView.setText(oldName);
        editView.selectAll();
        builder.setView(view);
        builder.setPositiveButton(17039370, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                CharSequence errorTips = OwnerBabyAlbumSettingActivity.this.validateInputTextAndUpdateButtonState(editView.getText().toString(), (AlertDialog) dialog);
                if (TextUtils.isEmpty(errorTips)) {
                    OwnerBabyAlbumSettingActivity.this.mNickName = editView.getText().toString();
                    OwnerBabyAlbumSettingActivity.this.mBabyNicknamePre.setSummary(OwnerBabyAlbumSettingActivity.this.mNickName);
                    return;
                }
                ToastUtils.makeText(activity, errorTips);
            }
        });
        builder.setNegativeButton(17039360, null);
        final AlertDialog dialog = builder.create();
        dialog.setOnShowListener(new OnShowListener() {
            public void onShow(DialogInterface dialogInterface) {
                OwnerBabyAlbumSettingActivity.this.validateInputTextAndUpdateButtonState(editView.getText().toString(), dialog);
            }
        });
        editView.addTextChangedListener(new TextWatcher() {
            public void onTextChanged(CharSequence s, int start, int before, int count) {
            }

            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
            }

            public void afterTextChanged(Editable s) {
                CharSequence errorTips = OwnerBabyAlbumSettingActivity.this.validateInputTextAndUpdateButtonState(editView.getText().toString(), dialog);
                if (!TextUtils.isEmpty(errorTips)) {
                    ToastUtils.makeText(activity, errorTips);
                }
            }
        });
        dialog.show();
        dialog.getWindow().setSoftInputMode(5);
    }

    private String validateInputTextAndUpdateButtonState(String name, AlertDialog dialog) {
        String errorTips = CreateGroupItem.checkFileNameValid(this, name);
        dialog.getButton(-1).setEnabled(TextUtils.isEmpty(errorTips));
        return errorTips;
    }

    protected void saveBabyInfo() {
        if (!createOrBrowse()) {
            if (babyInfoChanged() || this.mBabyFaceChanged) {
                BabyInfo babyInfo = toBabyInfo(this.mPeopleId, 1);
                Intent intent = new Intent();
                Bundle bundle = new Bundle();
                bundle.putParcelable("baby-info", babyInfo);
                bundle.putString("name", this.mNickName);
                bundle.putLong("babyAlbumLocalId", this.mBabyAlbumLocalId.longValue());
                bundle.putString("baby-people-id", this.mPeopleId);
                bundle.putLong("faceAlbumLocalId", this.mFaceAlbumLocalId.longValue());
                if (this.mThumbnailInfo != null) {
                    bundle.putString("thumbnail_info_of_baby", this.mThumbnailInfo.toString());
                }
                intent.putExtras(bundle);
                setResult(12, intent);
            }
        }
    }

    protected void justSaveInfo2DbByJson() {
        if (!this.mHaveSaveBabyInfo && !createOrBrowse()) {
            if (babyInfoChanged() || this.mNeedSaveBabyFace) {
                saveInfo2Db(toBabyInfo(this.mPeopleId, 1), this.mPeopleId, this.mFaceAlbumLocalId, String.valueOf(this.mBabyAlbumLocalId), this.mThumbnailInfo);
                this.mHaveSaveBabyInfo = true;
                this.mNeedSaveBabyFace = false;
            }
        }
    }

    public static void saveInfo2Db(BabyInfo babyInfo, String peopleId, Long faceAlbumLocalId, String albumLocalId, ThumbnailInfo thumbnailInfo) {
        if (thumbnailInfo == null) {
            ContentValues values = new ContentValues();
            values.put("babyInfoJson", babyInfo == null ? "" : babyInfo.toJSON());
            values.put("peopleId", peopleId);
            GalleryUtils.safeUpdate(GalleryCloudUtils.CLOUD_URI, values, "_id = ?", new String[]{albumLocalId});
        } else {
            String str;
            String editColumnElement = GalleryCloudUtils.transformToEditedColumnsElement(66);
            String str2 = "update %s set %s=%s, %s=%s, %s='%s', %s=coalesce(replace(%s, '%s', '') || '%s', '%s') where %s=%s";
            Object[] objArr = new Object[14];
            objArr[0] = "cloud";
            objArr[1] = "thumbnailInfo";
            objArr[2] = DatabaseUtils.sqlEscapeString(thumbnailInfo.toString());
            objArr[3] = "babyInfoJson";
            if (babyInfo == null) {
                str = "";
            } else {
                str = DatabaseUtils.sqlEscapeString(babyInfo.toJSON());
            }
            objArr[4] = str;
            objArr[5] = "peopleId";
            objArr[6] = peopleId;
            objArr[7] = "editedColumns";
            objArr[8] = "editedColumns";
            objArr[9] = editColumnElement;
            objArr[10] = editColumnElement;
            objArr[11] = editColumnElement;
            objArr[12] = "_id";
            objArr[13] = albumLocalId;
            GalleryUtils.safeExec(String.format(str2, objArr));
        }
        GalleryApp.sGetAndroidContext().getContentResolver().notifyChange(Album.URI, null, true);
    }

    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        switch (requestCode) {
            case 0:
                if (resultCode == -1 && data != null) {
                    this.mIsAutoupdate = Boolean.valueOf(((BabyInfo) data.getParcelableExtra("baby-info")).mAutoupdate);
                    return;
                }
                return;
            case 31:
                if (resultCode == -1 && data != null) {
                    this.mCoverFaceId = data.getStringExtra("picked_face_id");
                    if (!createOrBrowse()) {
                        if (this.mThumbnailInfo == null) {
                            this.mThumbnailInfo = new ThumbnailInfo(this.mBabyAlbumLocalId.longValue(), this.mIsOtherShareAlbum, null);
                        }
                        this.mThumbnailInfo.setFaceId(this.mCoverFaceId);
                    }
                    this.mBabyFaceChanged = true;
                    this.mNeedSaveBabyFace = true;
                    refreshBabyFace();
                    return;
                }
                return;
            default:
                super.onActivityResult(requestCode, resultCode, data);
                return;
        }
    }

    private void refreshBabyFace() {
        ThreadManager.getMiscPool().submit(new Job<Void>() {
            public Void run(JobContext jc) {
                OwnerBabyAlbumSettingActivity.this.loadBabyFace(jc);
                return null;
            }
        });
    }

    private void loadBabyFace(JobContext jc) {
        if (!TextUtils.isEmpty(this.mCoverFaceId)) {
            final RectF[] faceRegions = new RectF[1];
            final String facePath = ThumbnailInfo.getFaceByFaceId(this.mCoverFaceId, faceRegions);
            this.mHandler.post(new Runnable() {
                public void run() {
                    ImageLoader.getInstance().displayImage(Scheme.FILE.wrap(facePath), OwnerBabyAlbumSettingActivity.this.mFace, BabyAlbumSettingActivityBase.sDisplayImageOptions, null, faceRegions[0]);
                }
            });
        }
    }

    protected Intent getIntentToAutoUploadPage() {
        Intent intent = super.getIntentToAutoUploadPage();
        intent.putExtra("allow_to_reassociate", false);
        return intent;
    }
}
