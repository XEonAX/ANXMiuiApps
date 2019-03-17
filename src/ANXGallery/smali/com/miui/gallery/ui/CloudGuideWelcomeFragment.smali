.class public Lcom/miui/gallery/ui/CloudGuideWelcomeFragment;
.super Landroid/preference/PreferenceFragment;
.source "CloudGuideWelcomeFragment.java"


# instance fields
.field private mAIAlbumStatusPref:Landroid/preference/CheckBoxPreference;

.field private mFaceLocalStatusPref:Landroid/preference/CheckBoxPreference;

.field private mSource:Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/CloudGuideWelcomeFragment;)Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/CloudGuideWelcomeFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/ui/CloudGuideWelcomeFragment;->mSource:Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;

    return-object v0
.end method

.method private statLoginState(Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;ZZ)V
    .locals 7
    .param p1, "source"    # Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;
    .param p2, "login"    # Z
    .param p3, "syncable"    # Z

    .prologue
    .line 146
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "guide_login_status_%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "event":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 148
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "login"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string/jumbo v2, "syncable"

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v2, "cloud_guide"

    invoke-static {v2, v0, v1}, Lcom/miui/gallery/util/GalleryStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 151
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 116
    packed-switch p1, :pswitch_data_0

    .line 135
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 118
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_4

    .line 119
    iget-object v1, p0, Lcom/miui/gallery/ui/CloudGuideWelcomeFragment;->mAIAlbumStatusPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_3

    .line 120
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CloudGuideWelcomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/CloudGuideWelcomeFragment;->mAIAlbumStatusPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->setAIAlbumLocalStatus(Landroid/content/Context;Z)V

    .line 124
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/miui/gallery/ui/CloudGuideWelcomeFragment;->mSource:Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;

    sget-object v2, Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;->AUTOBACKUP:Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/miui/gallery/ui/CloudGuideWelcomeFragment;->mSource:Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;

    sget-object v2, Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;->SECRET:Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/miui/gallery/ui/CloudGuideWelcomeFragment;->mSource:Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;

    sget-object v2, Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;->SHARE_INVITATION:Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/miui/gallery/ui/CloudGuideWelcomeFragment;->mSource:Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;

    sget-object v2, Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;->URL:Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;

    if-eq v1, v2, :cond_2

    .line 125
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/CloudGuideWelcomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/miui/gallery/activity/HomePageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/CloudGuideWelcomeFragment;->startActivity(Landroid/content/Intent;)V

    .line 129
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CloudGuideWelcomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 121
    :cond_3
    iget-object v1, p0, Lcom/miui/gallery/ui/CloudGuideWelcomeFragment;->mFaceLocalStatusPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CloudGuideWelcomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/CloudGuideWelcomeFragment;->mFaceLocalStatusPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->setFaceAlbumStatus(Landroid/content/Context;Z)V

    goto :goto_1

    .line 130
    :cond_4
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CloudGuideWelcomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 46
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CloudGuideWelcomeFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    const-string v3, "com.miui.gallery_preferences_new"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 49
    const v2, 0x7f070002

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/CloudGuideWelcomeFragment;->addPreferencesFromResource(I)V

    .line 51
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CloudGuideWelcomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 52
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "cloud_guide_source"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    const-string v2, "cloud_guide_source"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;

    iput-object v2, p0, Lcom/miui/gallery/ui/CloudGuideWelcomeFragment;->mSource:Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;

    .line 58
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/ui/CloudGuideWelcomeFragment;->mSource:Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;

    sget-object v3, Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;->TOPBAR:Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;

    if-ne v2, v3, :cond_0

    .line 59
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CloudGuide;->setCloudGuideTopbarClicked()V

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CloudGuideWelcomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const v3, 0x7f0c00fa

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(I)V

    .line 65
    const-string v2, "root_category"

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/CloudGuideWelcomeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 66
    .local v1, "rootCategory":Landroid/preference/PreferenceCategory;
    const-string v2, "ai_album_status"

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/CloudGuideWelcomeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/miui/gallery/ui/CloudGuideWelcomeFragment;->mAIAlbumStatusPref:Landroid/preference/CheckBoxPreference;

    .line 67
    const-string v2, "cloud_face_local_status"

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/CloudGuideWelcomeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/miui/gallery/ui/CloudGuideWelcomeFragment;->mFaceLocalStatusPref:Landroid/preference/CheckBoxPreference;

    .line 68
    invoke-static {}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->useNewAIAlbumSwitch()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    iget-object v2, p0, Lcom/miui/gallery/ui/CloudGuideWelcomeFragment;->mFaceLocalStatusPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 70
    iput-object v4, p0, Lcom/miui/gallery/ui/CloudGuideWelcomeFragment;->mFaceLocalStatusPref:Landroid/preference/CheckBoxPreference;

    .line 78
    :goto_1
    return-void

    .line 55
    .end local v1    # "rootCategory":Landroid/preference/PreferenceCategory;
    :cond_1
    sget-object v2, Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;->TOPBAR:Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;

    iput-object v2, p0, Lcom/miui/gallery/ui/CloudGuideWelcomeFragment;->mSource:Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;

    goto :goto_0

    .line 73
    .restart local v1    # "rootCategory":Landroid/preference/PreferenceCategory;
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/ui/CloudGuideWelcomeFragment;->mAIAlbumStatusPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 74
    iput-object v4, p0, Lcom/miui/gallery/ui/CloudGuideWelcomeFragment;->mAIAlbumStatusPref:Landroid/preference/CheckBoxPreference;

    .line 76
    iget-object v3, p0, Lcom/miui/gallery/ui/CloudGuideWelcomeFragment;->mFaceLocalStatusPref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->isFaceSwitchSet()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->isAIAlbumEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f0c02f0

    .line 83
    const v4, 0x7f04004c

    const/4 v5, 0x0

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 85
    .local v2, "view":Landroid/view/View;
    const v4, 0x7f12010b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 86
    .local v3, "welcomeText":Landroid/widget/TextView;
    const v4, 0x7f12010c

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 87
    .local v0, "introduceText":Landroid/widget/TextView;
    const v4, 0x7f12010d

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 88
    .local v1, "nextButton":Landroid/widget/Button;
    iget-object v4, p0, Lcom/miui/gallery/ui/CloudGuideWelcomeFragment;->mSource:Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;

    sget-object v5, Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;->AUTOBACKUP:Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;

    if-ne v4, v5, :cond_0

    .line 89
    const v4, 0x7f0c05ae

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 90
    const v4, 0x7f0c006f

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 91
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(I)V

    .line 98
    :goto_0
    new-instance v4, Lcom/miui/gallery/ui/CloudGuideWelcomeFragment$1;

    invoke-direct {v4, p0}, Lcom/miui/gallery/ui/CloudGuideWelcomeFragment$1;-><init>(Lcom/miui/gallery/ui/CloudGuideWelcomeFragment;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-object v2

    .line 93
    :cond_0
    const v4, 0x7f0c0580

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 94
    const v4, 0x7f0c02aa

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 95
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/miui/gallery/ui/CloudGuideWelcomeFragment;->mSource:Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/CloudGuideWelcomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/util/SyncUtil;->existXiaomiAccount(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/miui/gallery/ui/CloudGuideWelcomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/SyncUtil;->isGalleryCloudSyncable(Landroid/content/Context;)Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/gallery/ui/CloudGuideWelcomeFragment;->statLoginState(Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;ZZ)V

    .line 142
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 143
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 161
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 162
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CloudGuideWelcomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "cloud_guide_welcome"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordPageEnd(Landroid/app/Activity;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 156
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CloudGuideWelcomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "cloud_guide_welcome"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    .line 157
    return-void
.end method
