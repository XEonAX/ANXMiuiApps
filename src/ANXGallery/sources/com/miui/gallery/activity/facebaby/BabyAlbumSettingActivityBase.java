package com.miui.gallery.activity.facebaby;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.os.Bundle;
import android.os.Handler;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import android.text.TextUtils;
import android.widget.ImageView;
import com.miui.gallery.R;
import com.miui.gallery.cloud.baby.BabyAlbumUtils;
import com.miui.gallery.cloud.baby.BabyInfo;
import com.miui.gallery.provider.deprecated.ThumbnailInfo;
import com.miui.gallery.util.GalleryDateUtils;
import com.miui.gallery.util.face.PeopleItemBitmapDisplayer;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import java.util.Calendar;
import miui.preference.PreferenceActivity;
import miui.preference.ValuePreference;

public abstract class BabyAlbumSettingActivityBase extends PreferenceActivity {
    protected static DisplayImageOptions sDisplayImageOptions = new Builder().cacheInMemory(true).considerExifParams(true).showImageOnFail(R.drawable.default_face_cover).resetViewBeforeLoading(true).imageScaleType(ImageScaleType.EXACTLY).bitmapConfig(Config.RGB_565).displayer(new PeopleItemBitmapDisplayer(true)).usingRegionDecoderFace(true).build();
    protected ValuePreference mAutoupdatePre;
    protected Long mBabyAlbumLocalId;
    protected BabyInfo mBabyInfoFrom;
    protected Preference mBabyNicknamePre;
    protected Preference mBabySexPre;
    protected String mBirthday;
    protected int mBirthdayDay;
    protected int mBirthdayMonth;
    protected int mBirthdayYear;
    protected Preference mChooseDate;
    protected Bitmap mCoverFaceBitmap;
    protected ImageView mFace;
    protected Long mFaceAlbumLocalId;
    protected Handler mHandler = new Handler();
    protected boolean mHaveSaveBabyInfo;
    protected Boolean mIsAutoupdate = Boolean.valueOf(true);
    protected boolean mIsOtherShareAlbum;
    protected String mNickName;
    protected String mPeopleId;
    protected String mRelation = "father";
    protected Preference mRelationPre;
    protected String mRelationText;
    protected String mSex = "male";
    protected ThumbnailInfo mThumbnailInfo;

    protected abstract int getPreferenceResourceId();

    protected abstract void justSaveInfo2DbByJson();

    protected abstract void saveBabyInfo();

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.baby_album_settings);
        addPreferencesFromResource(getPreferenceResourceId());
        this.mBabyNicknamePre = findPreference("baby_name");
        this.mChooseDate = findPreference("baby_birthday");
        this.mBabySexPre = findPreference("baby_sexy");
        this.mRelationPre = findPreference("owner_relation");
        this.mFace = (ImageView) findViewById(R.id.go_to_setting);
        this.mAutoupdatePre = (ValuePreference) findPreference("auto_update_face");
        this.mAutoupdatePre.setShowRightArrow(true);
        this.mAutoupdatePre.setOnPreferenceClickListener(new OnPreferenceClickListener() {
            public boolean onPreferenceClick(Preference preference) {
                BabyAlbumSettingActivityBase.this.startActivityForResult(BabyAlbumSettingActivityBase.this.getIntentToAutoUploadPage(), 0);
                return false;
            }
        });
        Bundle extras = getIntent().getExtras();
        this.mBabyAlbumLocalId = Long.valueOf(extras.getLong(BabyAlbumUtils.BABY_BABY_ALBUM_LOCAL_ID, -1));
        if (this.mBabyAlbumLocalId.longValue() != -1) {
            BabyInfo babyInfo = (BabyInfo) extras.getParcelable("baby_info");
            this.mBabyInfoFrom = babyInfo;
            flatBabyInfo(babyInfo);
            this.mThumbnailInfo = new ThumbnailInfo(this.mBabyAlbumLocalId.longValue(), this.mIsOtherShareAlbum, getIntent().getStringExtra("thumbnail_info_of_baby"));
        }
        this.mCoverFaceBitmap = (Bitmap) getIntent().getExtras().getParcelable("face_bitmap");
        if (this.mCoverFaceBitmap != null) {
            this.mFace.setImageBitmap(this.mCoverFaceBitmap);
        }
    }

    protected void onResume() {
        this.mHaveSaveBabyInfo = false;
        super.onResume();
        ImageLoader.getInstance().resume();
        setPreferencesValue();
    }

    protected void setPreferencesValue() {
        String string;
        ValuePreference valuePreference = this.mAutoupdatePre;
        if (this.mIsAutoupdate.booleanValue()) {
            string = getString(R.string.auto_update_on);
        } else {
            string = getString(R.string.auto_update_off);
        }
        valuePreference.setValue(string);
    }

    public void onBackPressed() {
        saveBabyInfo();
        super.onBackPressed();
    }

    public boolean onNavigateUp() {
        saveBabyInfo();
        return super.onNavigateUp();
    }

    protected void onPause() {
        justSaveInfo2DbByJson();
        ImageLoader.getInstance().pause();
        super.onPause();
    }

    private void flatBabyInfo(BabyInfo babyInfo) {
        if (babyInfo != null) {
            this.mNickName = babyInfo.mNickName;
            this.mBirthday = babyInfo.mBirthday;
            getBirthYearMonthDay(this.mBirthday);
            this.mSex = babyInfo.mSex;
            this.mRelation = babyInfo.mRelation;
            this.mRelationText = babyInfo.mRelationText;
            this.mIsAutoupdate = Boolean.valueOf(babyInfo.mAutoupdate);
            this.mPeopleId = babyInfo.mPeopleId;
            return;
        }
        this.mIsAutoupdate = Boolean.valueOf(false);
    }

    public static String combine2Birthday(int year, int month, int day) {
        return year + "-" + month + "-" + day;
    }

    public static int[] getCurrentYearMonthDay(long millis) {
        int[] result = new int[3];
        Calendar calendar = GalleryDateUtils.acquire();
        calendar.setTimeInMillis(millis);
        int year = calendar.get(1);
        int month = calendar.get(2) + 1;
        int day = calendar.get(5);
        result[0] = year;
        result[1] = month;
        result[2] = day;
        GalleryDateUtils.release(calendar);
        return result;
    }

    protected void getBirthYearMonthDay(String birthdayStr) {
        if (!TextUtils.isEmpty(birthdayStr)) {
            String[] strs = birthdayStr.split("-");
            if (strs.length == 3) {
                this.mBirthdayYear = Integer.parseInt(strs[0]);
                this.mBirthdayMonth = Integer.parseInt(strs[1]);
                this.mBirthdayDay = Integer.parseInt(strs[2]);
            }
        }
    }

    protected boolean babyInfoChanged() {
        BabyInfo babyInfo = this.mBabyInfoFrom;
        return (babyInfo != null && TextUtils.equals(this.mNickName, babyInfo.mNickName) && TextUtils.equals(this.mBirthday, babyInfo.mBirthday) && TextUtils.equals(this.mSex, babyInfo.mSex) && TextUtils.equals(this.mRelation, babyInfo.mRelation) && TextUtils.equals(this.mRelationText, babyInfo.mRelationText) && this.mIsAutoupdate.booleanValue() == babyInfo.mAutoupdate && TextUtils.equals(this.mPeopleId, babyInfo.mPeopleId)) ? false : true;
    }

    protected BabyInfo toBabyInfo(String peopleId, int localFlag) {
        return new BabyInfo(this.mNickName, this.mBirthday, this.mSex, this.mRelation, this.mRelationText, peopleId, this.mIsAutoupdate.booleanValue(), localFlag);
    }

    protected Intent getIntentToAutoUploadPage() {
        Intent intent = new Intent(this, BabyAlbumAutoupdateSettingActivity.class);
        intent.putExtra("baby-info", toBabyInfo(this.mPeopleId, 0));
        return intent;
    }
}
