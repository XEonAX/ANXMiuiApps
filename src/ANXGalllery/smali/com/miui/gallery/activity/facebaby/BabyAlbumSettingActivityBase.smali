.class public abstract Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;
.super Lmiui/preference/PreferenceActivity;
.source "BabyAlbumSettingActivityBase.java"


# static fields
.field protected static sDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;


# instance fields
.field protected mAutoupdatePre:Lmiui/preference/ValuePreference;

.field protected mBabyAlbumLocalId:Ljava/lang/Long;

.field protected mBabyInfoFrom:Lcom/miui/gallery/cloud/baby/BabyInfo;

.field protected mBabyNicknamePre:Landroid/preference/Preference;

.field protected mBabySexPre:Landroid/preference/Preference;

.field protected mBirthday:Ljava/lang/String;

.field protected mBirthdayDay:I

.field protected mBirthdayMonth:I

.field protected mBirthdayYear:I

.field protected mChooseDate:Landroid/preference/Preference;

.field protected mCoverFaceBitmap:Landroid/graphics/Bitmap;

.field protected mFace:Landroid/widget/ImageView;

.field protected mFaceAlbumLocalId:Ljava/lang/Long;

.field protected mHandler:Landroid/os/Handler;

.field protected mHaveSaveBabyInfo:Z

.field protected mIsAutoupdate:Ljava/lang/Boolean;

.field protected mIsOtherShareAlbum:Z

.field protected mNickName:Ljava/lang/String;

.field protected mPeopleId:Ljava/lang/String;

.field protected mRelation:Ljava/lang/String;

.field protected mRelationPre:Landroid/preference/Preference;

.field protected mRelationText:Ljava/lang/String;

.field protected mSex:Ljava/lang/String;

.field protected mThumbnailInfo:Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 68
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 69
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 70
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const v1, 0x7f0200df

    .line 71
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 73
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 74
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/util/face/PeopleItemBitmapDisplayer;

    invoke-direct {v1, v2}, Lcom/miui/gallery/util/face/PeopleItemBitmapDisplayer;-><init>(Z)V

    .line 75
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 76
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->usingRegionDecoderFace(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->sDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 59
    const-string v0, "male"

    iput-object v0, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mSex:Ljava/lang/String;

    .line 60
    const-string v0, "father"

    iput-object v0, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mRelation:Ljava/lang/String;

    .line 63
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mIsAutoupdate:Ljava/lang/Boolean;

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static combine2Birthday(III)Ljava/lang/String;
    .locals 2
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private flatBabyInfo(Lcom/miui/gallery/cloud/baby/BabyInfo;)V
    .locals 1
    .param p1, "babyInfo"    # Lcom/miui/gallery/cloud/baby/BabyInfo;

    .prologue
    .line 161
    if-eqz p1, :cond_0

    .line 162
    iget-object v0, p1, Lcom/miui/gallery/cloud/baby/BabyInfo;->mNickName:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mNickName:Ljava/lang/String;

    .line 163
    iget-object v0, p1, Lcom/miui/gallery/cloud/baby/BabyInfo;->mBirthday:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mBirthday:Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mBirthday:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->getBirthYearMonthDay(Ljava/lang/String;)V

    .line 166
    iget-object v0, p1, Lcom/miui/gallery/cloud/baby/BabyInfo;->mSex:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mSex:Ljava/lang/String;

    .line 167
    iget-object v0, p1, Lcom/miui/gallery/cloud/baby/BabyInfo;->mRelation:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mRelation:Ljava/lang/String;

    .line 168
    iget-object v0, p1, Lcom/miui/gallery/cloud/baby/BabyInfo;->mRelationText:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mRelationText:Ljava/lang/String;

    .line 169
    iget-boolean v0, p1, Lcom/miui/gallery/cloud/baby/BabyInfo;->mAutoupdate:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mIsAutoupdate:Ljava/lang/Boolean;

    .line 170
    iget-object v0, p1, Lcom/miui/gallery/cloud/baby/BabyInfo;->mPeopleId:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mPeopleId:Ljava/lang/String;

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mIsAutoupdate:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static getCurrentYearMonthDay(J)[I
    .locals 8
    .param p0, "millis"    # J

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 181
    const/4 v5, 0x3

    new-array v3, v5, [I

    .line 183
    .local v3, "result":[I
    invoke-static {}, Lcom/miui/gallery/util/GalleryDateUtils;->acquire()Ljava/util/Calendar;

    move-result-object v0

    .line 184
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 185
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 186
    .local v4, "year":I
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 187
    .local v2, "month":I
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 188
    .local v1, "day":I
    const/4 v5, 0x0

    aput v4, v3, v5

    .line 189
    aput v2, v3, v6

    .line 190
    aput v1, v3, v7

    .line 191
    invoke-static {v0}, Lcom/miui/gallery/util/GalleryDateUtils;->release(Ljava/util/Calendar;)V

    .line 192
    return-object v3
.end method


# virtual methods
.method protected babyInfoChanged()Z
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mBabyInfoFrom:Lcom/miui/gallery/cloud/baby/BabyInfo;

    .line 210
    .local v0, "babyInfo":Lcom/miui/gallery/cloud/baby/BabyInfo;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mNickName:Ljava/lang/String;

    iget-object v2, v0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mNickName:Ljava/lang/String;

    .line 211
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mBirthday:Ljava/lang/String;

    iget-object v2, v0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mBirthday:Ljava/lang/String;

    .line 212
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mSex:Ljava/lang/String;

    iget-object v2, v0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mSex:Ljava/lang/String;

    .line 213
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mRelation:Ljava/lang/String;

    iget-object v2, v0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mRelation:Ljava/lang/String;

    .line 214
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mRelationText:Ljava/lang/String;

    iget-object v2, v0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mRelationText:Ljava/lang/String;

    .line 215
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mIsAutoupdate:Ljava/lang/Boolean;

    .line 216
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-boolean v2, v0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mAutoupdate:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mPeopleId:Ljava/lang/String;

    iget-object v2, v0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mPeopleId:Ljava/lang/String;

    .line 217
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getBirthYearMonthDay(Ljava/lang/String;)V
    .locals 3
    .param p1, "birthdayStr"    # Ljava/lang/String;

    .prologue
    .line 196
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "strs":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 203
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mBirthdayYear:I

    .line 204
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mBirthdayMonth:I

    .line 205
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mBirthdayDay:I

    goto :goto_0
.end method

.method protected getIntentToAutoUploadPage()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 226
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 229
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "baby-info"

    iget-object v2, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mPeopleId:Ljava/lang/String;

    const/4 v3, 0x0

    .line 230
    invoke-virtual {p0, v2, v3}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->toBabyInfo(Ljava/lang/String;I)Lcom/miui/gallery/cloud/baby/BabyInfo;

    move-result-object v2

    .line 229
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 232
    return-object v0
.end method

.method protected abstract getPreferenceResourceId()I
.end method

.method protected abstract justSaveInfo2DbByJson()V
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->saveBabyInfo()V

    .line 144
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onBackPressed()V

    .line 145
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v4, -0x1

    .line 82
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const v2, 0x7f04002b

    invoke-virtual {p0, v2}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->setContentView(I)V

    .line 84
    invoke-virtual {p0}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->getPreferenceResourceId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->addPreferencesFromResource(I)V

    .line 86
    const-string v2, "baby_name"

    invoke-virtual {p0, v2}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mBabyNicknamePre:Landroid/preference/Preference;

    .line 87
    const-string v2, "baby_birthday"

    invoke-virtual {p0, v2}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mChooseDate:Landroid/preference/Preference;

    .line 88
    const-string v2, "baby_sexy"

    invoke-virtual {p0, v2}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mBabySexPre:Landroid/preference/Preference;

    .line 89
    const-string v2, "owner_relation"

    invoke-virtual {p0, v2}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mRelationPre:Landroid/preference/Preference;

    .line 90
    const v2, 0x7f1200d4

    invoke-virtual {p0, v2}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mFace:Landroid/widget/ImageView;

    .line 91
    const-string v2, "auto_update_face"

    invoke-virtual {p0, v2}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lmiui/preference/ValuePreference;

    iput-object v2, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mAutoupdatePre:Lmiui/preference/ValuePreference;

    .line 92
    iget-object v2, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mAutoupdatePre:Lmiui/preference/ValuePreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 93
    iget-object v2, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mAutoupdatePre:Lmiui/preference/ValuePreference;

    new-instance v3, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase$1;

    invoke-direct {v3, p0}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase$1;-><init>(Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;)V

    invoke-virtual {v2, v3}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 104
    invoke-virtual {p0}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 105
    .local v1, "extras":Landroid/os/Bundle;
    sget-object v2, Lcom/miui/gallery/cloud/baby/BabyAlbumUtils;->BABY_BABY_ALBUM_LOCAL_ID:Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mBabyAlbumLocalId:Ljava/lang/Long;

    .line 107
    iget-object v2, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mBabyAlbumLocalId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 108
    const-string v2, "baby_info"

    .line 109
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/baby/BabyInfo;

    .line 110
    .local v0, "babyInfo":Lcom/miui/gallery/cloud/baby/BabyInfo;
    iput-object v0, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mBabyInfoFrom:Lcom/miui/gallery/cloud/baby/BabyInfo;

    .line 111
    invoke-direct {p0, v0}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->flatBabyInfo(Lcom/miui/gallery/cloud/baby/BabyInfo;)V

    .line 112
    new-instance v2, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;

    iget-object v3, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mBabyAlbumLocalId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-boolean v3, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mIsOtherShareAlbum:Z

    invoke-virtual {p0}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "thumbnail_info_of_baby"

    .line 113
    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v5, v3, v6}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;-><init>(JZLjava/lang/String;)V

    iput-object v2, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mThumbnailInfo:Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;

    .line 115
    .end local v0    # "babyInfo":Lcom/miui/gallery/cloud/baby/BabyInfo;
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "face_bitmap"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mCoverFaceBitmap:Landroid/graphics/Bitmap;

    .line 117
    iget-object v2, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mCoverFaceBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 118
    iget-object v2, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mFace:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mCoverFaceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 120
    :cond_1
    return-void
.end method

.method public onNavigateUp()Z
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->saveBabyInfo()V

    .line 150
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onNavigateUp()Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->justSaveInfo2DbByJson()V

    .line 156
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->pause()V

    .line 157
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onPause()V

    .line 158
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mHaveSaveBabyInfo:Z

    .line 125
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 126
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->resume()V

    .line 127
    invoke-virtual {p0}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->setPreferencesValue()V

    .line 128
    return-void
.end method

.method protected abstract saveBabyInfo()V
.end method

.method protected setPreferencesValue()V
    .locals 2

    .prologue
    .line 131
    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mAutoupdatePre:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mIsAutoupdate:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c0074

    invoke-virtual {p0, v0}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 133
    return-void

    .line 131
    :cond_0
    const v0, 0x7f0c0073

    .line 132
    invoke-virtual {p0, v0}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected toBabyInfo(Ljava/lang/String;I)Lcom/miui/gallery/cloud/baby/BabyInfo;
    .locals 9
    .param p1, "peopleId"    # Ljava/lang/String;
    .param p2, "localFlag"    # I

    .prologue
    .line 221
    new-instance v0, Lcom/miui/gallery/cloud/baby/BabyInfo;

    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mNickName:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mBirthday:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mSex:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mRelation:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mRelationText:Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->mIsAutoupdate:Ljava/lang/Boolean;

    .line 222
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move-object v6, p1

    move v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/miui/gallery/cloud/baby/BabyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-object v0
.end method
