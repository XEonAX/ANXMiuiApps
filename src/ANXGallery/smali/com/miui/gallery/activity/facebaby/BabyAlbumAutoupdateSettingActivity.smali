.class public Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;
.super Lmiui/preference/PreferenceActivity;
.source "BabyAlbumAutoupdateSettingActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAssociateFaceAlbumPreference:Lmiui/preference/ValuePreference;

.field private mAutoAddedPreference:Landroid/preference/CheckBoxPreference;

.field private mBabyInfo:Lcom/miui/gallery/cloud/baby/BabyInfo;

.field private mPeopleFaceLocalId:J

.field private mPeopleFaceNameTask:Landroid/os/AsyncTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;->pickBabyFace()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;)Lcom/miui/gallery/cloud/baby/BabyInfo;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;->mBabyInfo:Lcom/miui/gallery/cloud/baby/BabyInfo;

    return-object v0
.end method

.method private getPeopleNameAsync()V
    .locals 3

    .prologue
    .line 154
    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;->mBabyInfo:Lcom/miui/gallery/cloud/baby/BabyInfo;

    iget-object v1, v1, Lcom/miui/gallery/cloud/baby/BabyInfo;->mPeopleId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    :goto_0
    return-void

    .line 158
    :cond_0
    new-instance v0, Ljava/lang/ref/SoftReference;

    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;->mAssociateFaceAlbumPreference:Lmiui/preference/ValuePreference;

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 160
    .local v0, "associateFaceAlbumPreference":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lmiui/preference/ValuePreference;>;"
    new-instance v1, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity$2;-><init>(Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;Ljava/lang/ref/SoftReference;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 176
    invoke-virtual {v1, v2}, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;->mPeopleFaceNameTask:Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private pickBabyFace()V
    .locals 3

    .prologue
    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.gallery.action.PICK_PEOPLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pick_people"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 110
    const/16 v1, 0xe

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 111
    return-void
.end method

.method private refreshPreference()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;->mAutoAddedPreference:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;->mBabyInfo:Lcom/miui/gallery/cloud/baby/BabyInfo;

    iget-boolean v1, v1, Lcom/miui/gallery/cloud/baby/BabyInfo;->mAutoupdate:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 89
    return-void
.end method

.method private setResult()V
    .locals 4

    .prologue
    .line 135
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 136
    .local v0, "data":Landroid/content/Intent;
    const-string v1, "associate_people_face_local_id"

    iget-wide v2, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;->mPeopleFaceLocalId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 137
    const-string v1, "baby-info"

    iget-object v2, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;->mBabyInfo:Lcom/miui/gallery/cloud/baby/BabyInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 138
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;->setResult(ILandroid/content/Intent;)V

    .line 139
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "request"    # I
    .param p2, "result"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 115
    packed-switch p1, :pswitch_data_0

    .line 131
    invoke-super {p0, p1, p2, p3}, Lmiui/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 117
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    .line 118
    const-string v1, "local_id_of_album"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "choosedPeopleLocalId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;->mPeopleFaceLocalId:J

    .line 121
    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;->mBabyInfo:Lcom/miui/gallery/cloud/baby/BabyInfo;

    const-string v2, "server_id_of_album"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/gallery/cloud/baby/BabyInfo;->mPeopleId:Ljava/lang/String;

    .line 122
    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;->mBabyInfo:Lcom/miui/gallery/cloud/baby/BabyInfo;

    iput-boolean v4, v1, Lcom/miui/gallery/cloud/baby/BabyInfo;->mAutoupdate:Z

    .line 123
    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;->mAutoAddedPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 124
    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;->mAssociateFaceAlbumPreference:Lmiui/preference/ValuePreference;

    const-string v2, "album_name"

    .line 125
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-virtual {v1, v2}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;->setResult()V

    .line 144
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onBackPressed()V

    .line 145
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 39
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v2, 0x7f040025

    invoke-virtual {p0, v2}, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;->setContentView(I)V

    .line 41
    const/high16 v2, 0x7f070000

    invoke-virtual {p0, v2}, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;->addPreferencesFromResource(I)V

    .line 43
    const-string v2, "auto_update_face"

    invoke-virtual {p0, v2}, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;->mAutoAddedPreference:Landroid/preference/CheckBoxPreference;

    .line 44
    iget-object v2, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;->mAutoAddedPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 46
    invoke-virtual {p0}, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 47
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "allow_to_reassociate"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 48
    .local v0, "allowToReassociate":Z
    const-string v2, "associate_face_album"

    invoke-virtual {p0, v2}, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lmiui/preference/ValuePreference;

    iput-object v2, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;->mAssociateFaceAlbumPreference:Lmiui/preference/ValuePreference;

    .line 49
    if-eqz v0, :cond_0

    .line 50
    iget-object v2, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;->mAssociateFaceAlbumPreference:Lmiui/preference/ValuePreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 51
    iget-object v2, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;->mAssociateFaceAlbumPreference:Lmiui/preference/ValuePreference;

    new-instance v3, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity$1;

    invoke-direct {v3, p0}, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity$1;-><init>(Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;)V

    invoke-virtual {v2, v3}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 66
    :goto_0
    const-string v2, "baby-info"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/cloud/baby/BabyInfo;

    iput-object v2, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;->mBabyInfo:Lcom/miui/gallery/cloud/baby/BabyInfo;

    .line 68
    invoke-direct {p0}, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;->getPeopleNameAsync()V

    .line 69
    return-void

    .line 63
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;->mAssociateFaceAlbumPreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v2, v3}, Lmiui/preference/ValuePreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onDestroy()V

    .line 82
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;->mPeopleFaceNameTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;->mPeopleFaceNameTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 85
    :cond_0
    return-void
.end method

.method public onNavigateUp()Z
    .locals 1

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;->setResult()V

    .line 150
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onNavigateUp()Z

    move-result v0

    return v0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;->mAutoAddedPreference:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;->mBabyInfo:Lcom/miui/gallery/cloud/baby/BabyInfo;

    iget-object v0, v0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mPeopleId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-direct {p0}, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;->pickBabyFace()V

    .line 97
    const/4 v0, 0x0

    .line 104
    :goto_0
    return v0

    .line 101
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;->mBabyInfo:Lcom/miui/gallery/cloud/baby/BabyInfo;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mAutoupdate:Z

    .line 104
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 75
    invoke-direct {p0}, Lcom/miui/gallery/activity/facebaby/BabyAlbumAutoupdateSettingActivity;->refreshPreference()V

    .line 76
    return-void
.end method
