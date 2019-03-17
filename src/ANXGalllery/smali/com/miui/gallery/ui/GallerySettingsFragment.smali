.class public Lcom/miui/gallery/ui/GallerySettingsFragment;
.super Lmiui/preference/PreferenceFragment;
.source "GallerySettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final DOWNLOAD_TYPE_ENTRIES:[I

.field private static final DOWNLOAD_TYPE_VALUES:[I

.field private static sSyncStatusObserverWrapper:Lcom/miui/gallery/util/SyncStatusObserverWrapper;


# instance fields
.field private mAIAlbumStatusObserver:Landroid/content/BroadcastReceiver;

.field private mAIAlbumStatusPref:Landroid/preference/CheckBoxPreference;

.field private mAutoBackPref:Landroid/preference/CheckBoxPreference;

.field private mAutoDownloadPref:Landroid/preference/CheckBoxPreference;

.field private mBackupOnlyInWifiPref:Landroid/preference/CheckBoxPreference;

.field private mBrowseCategory:Landroid/preference/PreferenceCategory;

.field private mDebugClickListener:Lcom/miui/gallery/widget/MultiClickListener;

.field private mDownloadTypePref:Lcom/miui/gallery/widget/ValueListPreference;

.field private mFaceLocalStatusPref:Landroid/preference/CheckBoxPreference;

.field private mImpunityDeclarationPref:Landroid/preference/CheckBoxPreference;

.field private mMainHandler:Landroid/os/Handler;

.field private mMiCloudCategory:Landroid/preference/PreferenceCategory;

.field private mObserverHandle:Ljava/lang/Object;

.field private mPreferenceRoot:Landroid/preference/PreferenceScreen;

.field private mPrivacyPolicyPref:Lmiui/preference/ValuePreference;

.field private mShowHiddenAlbumPref:Landroid/preference/CheckBoxPreference;

.field private mShowLocalAlbumOnlyPref:Landroid/preference/CheckBoxPreference;

.field private mSlideshowIntervalPref:Lmiui/preference/ValuePreference;

.field private mSyncStatusObserver:Landroid/content/SyncStatusObserver;

.field private mTrashBinPref:Lmiui/preference/ValuePreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 85
    new-instance v0, Lcom/miui/gallery/util/SyncStatusObserverWrapper;

    invoke-direct {v0}, Lcom/miui/gallery/util/SyncStatusObserverWrapper;-><init>()V

    sput-object v0, Lcom/miui/gallery/ui/GallerySettingsFragment;->sSyncStatusObserverWrapper:Lcom/miui/gallery/util/SyncStatusObserverWrapper;

    .line 144
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/gallery/ui/GallerySettingsFragment;->DOWNLOAD_TYPE_ENTRIES:[I

    .line 149
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/miui/gallery/ui/GallerySettingsFragment;->DOWNLOAD_TYPE_VALUES:[I

    return-void

    .line 144
    nop

    :array_0
    .array-data 4
        0x7f0c0174
        0x7f0c0172
    .end array-data

    .line 149
    :array_1
    .array-data 4
        0x7f0c0173
        0x7f0c0171
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 61
    invoke-direct {p0}, Lmiui/preference/PreferenceFragment;-><init>()V

    .line 104
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mMainHandler:Landroid/os/Handler;

    .line 106
    new-instance v0, Lcom/miui/gallery/ui/GallerySettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/GallerySettingsFragment$1;-><init>(Lcom/miui/gallery/ui/GallerySettingsFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mAIAlbumStatusObserver:Landroid/content/BroadcastReceiver;

    .line 234
    new-instance v0, Lcom/miui/gallery/widget/MultiClickListener;

    const/4 v1, 0x3

    new-instance v2, Lcom/miui/gallery/ui/GallerySettingsFragment$2;

    invoke-direct {v2, p0}, Lcom/miui/gallery/ui/GallerySettingsFragment$2;-><init>(Lcom/miui/gallery/ui/GallerySettingsFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/widget/MultiClickListener;-><init>(ILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mDebugClickListener:Lcom/miui/gallery/widget/MultiClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/GallerySettingsFragment;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/GallerySettingsFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mAutoBackPref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/GallerySettingsFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/GallerySettingsFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/GallerySettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/GallerySettingsFragment;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->addDebugPreferences()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/GallerySettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/GallerySettingsFragment;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->updateAIAlbumStatus()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/GallerySettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/GallerySettingsFragment;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->refreshSlideshowIntervalPrefValue()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/gallery/ui/GallerySettingsFragment;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/GallerySettingsFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mBackupOnlyInWifiPref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/ui/GallerySettingsFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/GallerySettingsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/GallerySettingsFragment;->changeBackupOnlyWifi(Z)V

    return-void
.end method

.method private addDebugPreferences()V
    .locals 5

    .prologue
    .line 242
    const-string v4, "others"

    invoke-virtual {p0, v4}, Lcom/miui/gallery/ui/GallerySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 243
    .local v3, "preference":Landroid/preference/Preference;
    if-eqz v3, :cond_0

    move-object v0, v3

    .line 244
    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 245
    .local v0, "category":Landroid/preference/PreferenceCategory;
    const-string v4, "debug_gallery"

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 260
    .end local v0    # "category":Landroid/preference/PreferenceCategory;
    :cond_0
    :goto_0
    return-void

    .line 248
    .restart local v0    # "category":Landroid/preference/PreferenceCategory;
    :cond_1
    new-instance v2, Lmiui/preference/ValuePreference;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Lmiui/preference/ValuePreference;-><init>(Landroid/content/Context;)V

    .line 249
    .local v2, "debug":Lmiui/preference/ValuePreference;
    const-string v4, "debug_gallery"

    invoke-virtual {v2, v4}, Lmiui/preference/ValuePreference;->setKey(Ljava/lang/String;)V

    .line 250
    const v4, 0x7f0c04ac

    invoke-virtual {v2, v4}, Lmiui/preference/ValuePreference;->setTitle(I)V

    .line 251
    invoke-virtual {v2, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 252
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 254
    new-instance v1, Lmiui/preference/ValuePreference;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lmiui/preference/ValuePreference;-><init>(Landroid/content/Context;)V

    .line 255
    .local v1, "correctTime":Lmiui/preference/ValuePreference;
    const-string v4, "correct_photo_time"

    invoke-virtual {v1, v4}, Lmiui/preference/ValuePreference;->setKey(Ljava/lang/String;)V

    .line 256
    const v4, 0x7f0c0135

    invoke-virtual {v1, v4}, Lmiui/preference/ValuePreference;->setTitle(I)V

    .line 257
    invoke-virtual {v1, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 258
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private changeBackupOnlyWifi(Z)V
    .locals 4
    .param p1, "isBackupOnlyWifi"    # Z

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/gallery/util/SyncUtil;->setBackupOnlyWifi(Landroid/content/Context;Z)V

    .line 510
    invoke-virtual {p0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->SYNC_SETTINGS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 511
    return-void
.end method

.method private changeDownloadType(Lcom/miui/gallery/sdk/download/DownloadType;)V
    .locals 3
    .param p1, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 544
    invoke-static {p1}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setDownloadType(Lcom/miui/gallery/sdk/download/DownloadType;)V

    .line 545
    invoke-static {}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->canAutoDownload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    invoke-static {}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->getInstance()Lcom/miui/gallery/cloud/download/BatchDownloadManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->startBatchDownload(Landroid/content/Context;Z)V

    .line 548
    :cond_0
    return-void
.end method

.method private getAIAlbumStatus()Z
    .locals 1

    .prologue
    .line 129
    invoke-static {}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->isAIAlbumEnabled()Z

    move-result v0

    return v0
.end method

.method private getDownloadTypeEntries()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 274
    sget-object v2, Lcom/miui/gallery/ui/GallerySettingsFragment;->DOWNLOAD_TYPE_ENTRIES:[I

    array-length v2, v2

    new-array v0, v2, [Ljava/lang/String;

    .line 275
    .local v0, "entries":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/miui/gallery/ui/GallerySettingsFragment;->DOWNLOAD_TYPE_ENTRIES:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 276
    sget-object v2, Lcom/miui/gallery/ui/GallerySettingsFragment;->DOWNLOAD_TYPE_ENTRIES:[I

    aget v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 278
    :cond_0
    return-object v0
.end method

.method private getDownloadTypeFrom(Ljava/lang/String;)Lcom/miui/gallery/sdk/download/DownloadType;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 301
    sget-object v0, Lcom/miui/gallery/ui/GallerySettingsFragment;->DOWNLOAD_TYPE_VALUES:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL:Lcom/miui/gallery/sdk/download/DownloadType;

    .line 307
    :goto_0
    return-object v0

    .line 304
    :cond_0
    sget-object v0, Lcom/miui/gallery/ui/GallerySettingsFragment;->DOWNLOAD_TYPE_VALUES:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN:Lcom/miui/gallery/sdk/download/DownloadType;

    goto :goto_0

    .line 307
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDownloadTypeValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 290
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->getDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v0

    .line 291
    .local v0, "type":Lcom/miui/gallery/sdk/download/DownloadType;
    sget-object v1, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL:Lcom/miui/gallery/sdk/download/DownloadType;

    if-ne v0, v1, :cond_0

    .line 292
    sget-object v1, Lcom/miui/gallery/ui/GallerySettingsFragment;->DOWNLOAD_TYPE_VALUES:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 297
    :goto_0
    return-object v1

    .line 294
    :cond_0
    sget-object v1, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN:Lcom/miui/gallery/sdk/download/DownloadType;

    if-ne v0, v1, :cond_1

    .line 295
    sget-object v1, Lcom/miui/gallery/ui/GallerySettingsFragment;->DOWNLOAD_TYPE_VALUES:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 297
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDownloadTypeValues()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 282
    sget-object v2, Lcom/miui/gallery/ui/GallerySettingsFragment;->DOWNLOAD_TYPE_VALUES:[I

    array-length v2, v2

    new-array v0, v2, [Ljava/lang/String;

    .line 283
    .local v0, "entries":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/miui/gallery/ui/GallerySettingsFragment;->DOWNLOAD_TYPE_VALUES:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 284
    sget-object v2, Lcom/miui/gallery/ui/GallerySettingsFragment;->DOWNLOAD_TYPE_VALUES:[I

    aget v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 286
    :cond_0
    return-object v0
.end method

.method private getFaceAlbumStatus()Z
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->isFaceAlbumEnabled()Z

    move-result v0

    return v0
.end method

.method private onBackupOnlyWifiChange(Z)Z
    .locals 4
    .param p1, "isBackupOnlyWifi"    # Z

    .prologue
    .line 514
    if-nez p1, :cond_0

    .line 515
    new-instance v1, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    invoke-direct {v1}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;-><init>()V

    .line 516
    invoke-virtual {p0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c04f5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v1

    .line 517
    invoke-virtual {p0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v1

    .line 518
    invoke-virtual {p0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v1

    .line 519
    invoke-virtual {p0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c02f9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/gallery/ui/GallerySettingsFragment$6;

    invoke-direct {v3, p0, p1}, Lcom/miui/gallery/ui/GallerySettingsFragment$6;-><init>(Lcom/miui/gallery/ui/GallerySettingsFragment;Z)V

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v1

    .line 527
    invoke-virtual {v1}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->create()Lcom/miui/gallery/ui/AlertDialogFragment;

    move-result-object v0

    .line 528
    .local v0, "fragment":Lcom/miui/gallery/ui/AlertDialogFragment;
    invoke-virtual {p0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "slimDialog"

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/AlertDialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 529
    const/4 v1, 0x0

    .line 532
    .end local v0    # "fragment":Lcom/miui/gallery/ui/AlertDialogFragment;
    :goto_0
    return v1

    .line 531
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/GallerySettingsFragment;->changeBackupOnlyWifi(Z)V

    .line 532
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private onDownloadTypePreferenceChange(Lcom/miui/gallery/sdk/download/DownloadType;)Z
    .locals 1
    .param p1, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 536
    if-nez p1, :cond_0

    .line 537
    const/4 v0, 0x0

    .line 540
    :goto_0
    return v0

    .line 539
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/GallerySettingsFragment;->changeDownloadType(Lcom/miui/gallery/sdk/download/DownloadType;)V

    .line 540
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onlyCloud()Z
    .locals 2

    .prologue
    .line 401
    const-string v0, "com.miui.gallery.cloud.provider.SYNC_SETTINGS"

    invoke-virtual {p0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private refreshSlideshowIntervalPrefValue()V
    .locals 6

    .prologue
    .line 434
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$SlideShow;->getSlideShowInterval()I

    move-result v0

    .line 435
    .local v0, "interval":I
    const v2, 0x7f0c049d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 436
    .local v1, "intervalTip":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mSlideshowIntervalPref:Lmiui/preference/ValuePreference;

    invoke-virtual {v2, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method private showSlideshowIntervalDialog()V
    .locals 3

    .prologue
    .line 405
    new-instance v0, Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment;

    invoke-direct {v0}, Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment;-><init>()V

    .line 406
    .local v0, "dialog":Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment;
    new-instance v1, Lcom/miui/gallery/ui/GallerySettingsFragment$4;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/GallerySettingsFragment$4;-><init>(Lcom/miui/gallery/ui/GallerySettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment;->setCompleteListener(Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$CompleteListener;)V

    .line 414
    invoke-virtual {p0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "SlideshowIntervalDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 415
    return-void
.end method

.method private showSyncSettingDialog()V
    .locals 6

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0c00b2

    invoke-virtual {p0, v1}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c00b1

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c00ca

    invoke-virtual {p0, v3}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0c00b0

    invoke-virtual {p0, v4}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/miui/gallery/ui/GallerySettingsFragment$5;

    invoke-direct {v5, p0}, Lcom/miui/gallery/ui/GallerySettingsFragment$5;-><init>(Lcom/miui/gallery/ui/GallerySettingsFragment;)V

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/ui/ConfirmDialog;->showConfirmDialog(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;)V

    .line 431
    return-void
.end method

.method private statAutoDownloadSwitchChanged(Z)V
    .locals 3
    .param p1, "isAutoDownload"    # Z

    .prologue
    .line 582
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 583
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "switch_status"

    if-eqz p1, :cond_0

    const-string v1, "enable"

    :goto_0
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    const-string v1, "Sync"

    const-string/jumbo v2, "sync_auto_download_switch_changed"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 589
    return-void

    .line 583
    :cond_0
    const-string v1, "disable"

    goto :goto_0
.end method

.method private switchAutoDownload(Z)V
    .locals 2
    .param p1, "isAutoDownload"    # Z

    .prologue
    .line 551
    invoke-static {p1}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setAutoDownload(Z)V

    .line 552
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/ui/GallerySettingsFragment$7;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/ui/GallerySettingsFragment$7;-><init>(Lcom/miui/gallery/ui/GallerySettingsFragment;Z)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    .line 578
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/GallerySettingsFragment;->statAutoDownloadSwitchChanged(Z)V

    .line 579
    return-void
.end method

.method private updateAIAlbumStatus()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mAIAlbumStatusPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mAIAlbumStatusPref:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getAIAlbumStatus()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mFaceLocalStatusPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mFaceLocalStatusPref:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getFaceAlbumStatus()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 264
    invoke-super {p0, p1}, Lmiui/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 265
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 266
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0164

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 267
    .local v0, "heightAndWidth":I
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setWidth(I)V

    .line 268
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHeight(I)V

    .line 269
    invoke-virtual {p0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmiui/app/ActionBar;->setEndView(Landroid/view/View;)V

    .line 270
    iget-object v2, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mDebugClickListener:Lcom/miui/gallery/widget/MultiClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 156
    invoke-super {p0, p1}, Lmiui/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 158
    invoke-virtual {p0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "com.miui.gallery_preferences_new"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 160
    const v0, 0x7f070003

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->addPreferencesFromResource(I)V

    .line 162
    const-string v0, "root"

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mPreferenceRoot:Landroid/preference/PreferenceScreen;

    .line 163
    const-string v0, "micloud_category"

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mMiCloudCategory:Landroid/preference/PreferenceCategory;

    .line 164
    const-string v0, "backup_automatically"

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mAutoBackPref:Landroid/preference/CheckBoxPreference;

    .line 165
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mAutoBackPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 166
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mAutoBackPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 167
    const-string v0, "backup_only_in_wifi"

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mBackupOnlyInWifiPref:Landroid/preference/CheckBoxPreference;

    .line 168
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mBackupOnlyInWifiPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 170
    const-string v0, "cloud_ai_album_status"

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mAIAlbumStatusPref:Landroid/preference/CheckBoxPreference;

    .line 171
    const-string v0, "cloud_face_local_status"

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mFaceLocalStatusPref:Landroid/preference/CheckBoxPreference;

    .line 172
    invoke-static {}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->useNewAIAlbumSwitch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mMiCloudCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mFaceLocalStatusPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 174
    iput-object v3, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mFaceLocalStatusPref:Landroid/preference/CheckBoxPreference;

    .line 175
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mAIAlbumStatusPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 182
    :goto_0
    const-string v0, "auto_download_media"

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mAutoDownloadPref:Landroid/preference/CheckBoxPreference;

    .line 183
    const-string v0, "download_type"

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/widget/ValueListPreference;

    iput-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mDownloadTypePref:Lcom/miui/gallery/widget/ValueListPreference;

    .line 184
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mAutoDownloadPref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->isAutoDownload()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 185
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mAutoDownloadPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 186
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mDownloadTypePref:Lcom/miui/gallery/widget/ValueListPreference;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/widget/ValueListPreference;->setWhichAsValue(I)V

    .line 187
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mDownloadTypePref:Lcom/miui/gallery/widget/ValueListPreference;

    invoke-direct {p0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getDownloadTypeEntries()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/ValueListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mDownloadTypePref:Lcom/miui/gallery/widget/ValueListPreference;

    invoke-direct {p0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getDownloadTypeValues()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/ValueListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mDownloadTypePref:Lcom/miui/gallery/widget/ValueListPreference;

    invoke-direct {p0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getDownloadTypeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/ValueListPreference;->setValue(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mDownloadTypePref:Lcom/miui/gallery/widget/ValueListPreference;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/widget/ValueListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 192
    invoke-direct {p0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->onlyCloud()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mPreferenceRoot:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 194
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mPreferenceRoot:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mMiCloudCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 195
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mMiCloudCategory:Landroid/preference/PreferenceCategory;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 228
    :goto_1
    invoke-static {}, Lcom/miui/gallery/util/FeatureUtil;->isSupportBackupOnlyWifi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mMiCloudCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mBackupOnlyInWifiPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 232
    :cond_0
    return-void

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mMiCloudCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mAIAlbumStatusPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 179
    iput-object v3, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mAIAlbumStatusPref:Landroid/preference/CheckBoxPreference;

    .line 180
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mFaceLocalStatusPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 197
    :cond_2
    const-string v0, "browse_category"

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mBrowseCategory:Landroid/preference/PreferenceCategory;

    .line 198
    const-string/jumbo v0, "show_local_album_only"

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mShowLocalAlbumOnlyPref:Landroid/preference/CheckBoxPreference;

    .line 199
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mShowLocalAlbumOnlyPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 200
    const-string/jumbo v0, "show_hidden_album"

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mShowHiddenAlbumPref:Landroid/preference/CheckBoxPreference;

    .line 201
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mShowHiddenAlbumPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 202
    const-string/jumbo v0, "slideshow_interval"

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mSlideshowIntervalPref:Lmiui/preference/ValuePreference;

    .line 203
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mSlideshowIntervalPref:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 204
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mSlideshowIntervalPref:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 206
    const-string v0, "impunity_declaration"

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mImpunityDeclarationPref:Landroid/preference/CheckBoxPreference;

    .line 207
    invoke-static {}, Lcom/miui/gallery/util/BuildUtil;->isInternational()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 208
    const-string v0, "others"

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mImpunityDeclarationPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 214
    :goto_2
    const-string/jumbo v0, "trash_bin"

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mTrashBinPref:Lmiui/preference/ValuePreference;

    .line 215
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->isCloudTrashBinFeatureOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 216
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mTrashBinPref:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 217
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mTrashBinPref:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 222
    :goto_3
    const-string v0, "privacy_policy"

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mPrivacyPolicyPref:Lmiui/preference/ValuePreference;

    .line 223
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mPrivacyPolicyPref:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 225
    invoke-direct {p0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->refreshSlideshowIntervalPrefValue()V

    goto/16 :goto_1

    .line 210
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mImpunityDeclarationPref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->remindConnectNetworkEveryTime()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 211
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mImpunityDeclarationPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_2

    .line 219
    :cond_4
    const-string v0, "others"

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mTrashBinPref:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 391
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 396
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 393
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 394
    const/4 v0, 0x1

    goto :goto_0

    .line 391
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 374
    invoke-super {p0}, Lmiui/preference/PreferenceFragment;->onPause()V

    .line 376
    sget-object v0, Lcom/miui/gallery/ui/GallerySettingsFragment;->sSyncStatusObserverWrapper:Lcom/miui/gallery/util/SyncStatusObserverWrapper;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/util/SyncStatusObserverWrapper;->setSyncStatusObserverWorker(Landroid/content/SyncStatusObserver;)V

    .line 377
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mObserverHandle:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mObserverHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 379
    iput-object v2, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mObserverHandle:Ljava/lang/Object;

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mAIAlbumStatusObserver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 382
    invoke-virtual {p0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mAIAlbumStatusObserver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->unregisterAIAlbumStatusReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 383
    iput-object v2, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mAIAlbumStatusObserver:Landroid/content/BroadcastReceiver;

    .line 386
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "settings"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordPageEnd(Landroid/app/Activity;Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 13
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    const/4 v12, 0x0

    const/4 v7, 0x0

    .line 462
    invoke-virtual {p0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 463
    .local v0, "activity":Landroid/app/Activity;
    iget-object v9, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mShowLocalAlbumOnlyPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v9, :cond_2

    .line 464
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 465
    .local v3, "isOnlyShowLocal":Z
    invoke-static {v3}, Lcom/miui/gallery/preference/GalleryPreferences$LocalMode;->setOnlyShowLocalPhoto(Z)V

    .line 466
    const-string v9, "album"

    const-string/jumbo v10, "show_local_album_only"

    .line 467
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    .line 466
    invoke-static {v9, v10, v11}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/miui/gallery/provider/GalleryContract$Media;->URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v12, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 469
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/miui/gallery/provider/GalleryContract$Album;->URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v12, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 470
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->PERSONS_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v12, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 471
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/miui/gallery/provider/GalleryContract$RecentDiscoveredMedia;->URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v12, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .end local v3    # "isOnlyShowLocal":Z
    :cond_0
    :goto_0
    move v7, v8

    .line 505
    :cond_1
    :goto_1
    return v7

    .line 472
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    iget-object v9, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mShowHiddenAlbumPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v9, :cond_3

    .line 473
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 474
    .local v5, "showHiddenAlbum":Z
    const-string/jumbo v9, "show_hidden_album"

    invoke-static {v9, v5}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 475
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/miui/gallery/provider/GalleryContract$Media;->URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v12, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 476
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/miui/gallery/provider/GalleryContract$Album;->URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v12, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 477
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/miui/gallery/provider/GalleryContract$Media;->URI_OWNER_ALBUM_MEDIA:Landroid/net/Uri;

    invoke-virtual {v9, v10, v12, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 478
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/miui/gallery/provider/GalleryContract$RecentDiscoveredMedia;->URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v12, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_0

    .line 479
    .end local v5    # "showHiddenAlbum":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    iget-object v9, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mAutoBackPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v9, :cond_4

    .line 480
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 481
    .local v1, "enableBackup":Z
    invoke-static {v0, v1}, Lcom/miui/gallery/util/SyncUtil;->setSyncAutomatically(Landroid/content/Context;Z)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v9

    if-eqz v9, :cond_1

    move v7, v8

    goto :goto_1

    .line 482
    .end local v1    # "enableBackup":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_4
    iget-object v7, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mAIAlbumStatusPref:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mAIAlbumStatusPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v7, :cond_5

    move-object v7, p2

    .line 483
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-static {v0, v7}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->setAIAlbumLocalStatus(Landroid/content/Context;Z)V

    .line 484
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v8}, Ljava/util/HashMap;-><init>(I)V

    .line 485
    .local v4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "switchTo"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    const-string/jumbo v7, "settings"

    const-string/jumbo v9, "settings_change_ai_album_switch"

    invoke-static {v7, v9, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 488
    .end local v4    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    iget-object v7, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mFaceLocalStatusPref:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mFaceLocalStatusPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v7, :cond_6

    move-object v7, p2

    .line 489
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-static {v0, v7}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->setFaceAlbumStatus(Landroid/content/Context;Z)V

    .line 490
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v8}, Ljava/util/HashMap;-><init>(I)V

    .line 491
    .restart local v4    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "switchTo"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    const-string/jumbo v7, "settings"

    const-string/jumbo v9, "settings_change_face_switch"

    invoke-static {v7, v9, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 494
    .end local v4    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    iget-object v7, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mImpunityDeclarationPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v7, :cond_7

    .line 495
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-static {v7}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->setRemindConnectNetworkEveryTime(Z)V

    goto/16 :goto_0

    .line 496
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_7
    iget-object v7, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mBackupOnlyInWifiPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v7, :cond_8

    .line 497
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-direct {p0, v7}, Lcom/miui/gallery/ui/GallerySettingsFragment;->onBackupOnlyWifiChange(Z)Z

    move-result v7

    goto/16 :goto_1

    .line 498
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_8
    iget-object v7, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mAutoDownloadPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v7, :cond_9

    .line 499
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 500
    .local v2, "isAutoDownload":Z
    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/GallerySettingsFragment;->switchAutoDownload(Z)V

    goto/16 :goto_0

    .line 501
    .end local v2    # "isAutoDownload":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_9
    iget-object v7, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mDownloadTypePref:Lcom/miui/gallery/widget/ValueListPreference;

    if-ne p1, v7, :cond_0

    .line 502
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getDownloadTypeFrom(Ljava/lang/String;)Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v6

    .line 503
    .local v6, "type":Lcom/miui/gallery/sdk/download/DownloadType;
    invoke-direct {p0, v6}, Lcom/miui/gallery/ui/GallerySettingsFragment;->onDownloadTypePreferenceChange(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v7

    goto/16 :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 442
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mSlideshowIntervalPref:Lmiui/preference/ValuePreference;

    if-ne p1, v0, :cond_1

    .line 443
    invoke-direct {p0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->showSlideshowIntervalDialog()V

    .line 457
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mTrashBinPref:Lmiui/preference/ValuePreference;

    if-ne p1, v0, :cond_2

    .line 445
    invoke-virtual {p0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "GallerySettingsFragment"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/IntentUtil;->gotoTrashBin(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 446
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mAutoBackPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_3

    .line 447
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    invoke-direct {p0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->showSyncSettingDialog()V

    goto :goto_0

    .line 450
    :cond_3
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "debug_gallery"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 451
    invoke-virtual {p0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/DebugUtil;->generateDebugLog(Landroid/app/Activity;)V

    goto :goto_0

    .line 452
    :cond_4
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "correct_photo_time"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 453
    invoke-virtual {p0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/DebugUtil;->correctPhotoTime(Landroid/app/Activity;)V

    goto :goto_0

    .line 454
    :cond_5
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mPrivacyPolicyPref:Lmiui/preference/ValuePreference;

    if-ne p1, v0, :cond_0

    .line 455
    invoke-virtual {p0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/IntentUtil;->gotoPrivacyPolicy(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 312
    invoke-super {p0}, Lmiui/preference/PreferenceFragment;->onResume()V

    .line 314
    invoke-virtual {p0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "settings"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    .line 316
    iget-object v3, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mObserverHandle:Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 317
    sget-object v3, Lcom/miui/gallery/ui/GallerySettingsFragment;->sSyncStatusObserverWrapper:Lcom/miui/gallery/util/SyncStatusObserverWrapper;

    iget-object v4, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/util/SyncStatusObserverWrapper;->setSyncStatusObserverWorker(Landroid/content/SyncStatusObserver;)V

    .line 318
    sget-object v3, Lcom/miui/gallery/ui/GallerySettingsFragment;->sSyncStatusObserverWrapper:Lcom/miui/gallery/util/SyncStatusObserverWrapper;

    invoke-static {v2, v3}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mObserverHandle:Ljava/lang/Object;

    .line 323
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/account/AccountHelper;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 324
    .local v0, "account":Landroid/accounts/Account;
    if-nez v0, :cond_3

    .line 325
    iget-object v3, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mMiCloudCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 326
    iget-object v3, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mMiCloudCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mAutoBackPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 327
    invoke-direct {p0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->onlyCloud()Z

    move-result v3

    if-nez v3, :cond_1

    .line 328
    iget-object v3, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mBrowseCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mShowLocalAlbumOnlyPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 364
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mAutoBackPref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "com.miui.gallery.cloud.provider"

    invoke-static {v0, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    :goto_1
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 367
    iget-object v2, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mImpunityDeclarationPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    .line 368
    iget-object v2, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mImpunityDeclarationPref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->remindConnectNetworkEveryTime()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 370
    :cond_2
    return-void

    .line 331
    :cond_3
    invoke-direct {p0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->onlyCloud()Z

    move-result v3

    if-nez v3, :cond_5

    .line 332
    iget-object v3, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mBrowseCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v4, "show_local_album_only"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-nez v3, :cond_4

    .line 333
    iget-object v3, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mBrowseCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mShowLocalAlbumOnlyPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 335
    :cond_4
    iget-object v3, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mShowLocalAlbumOnlyPref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$LocalMode;->isOnlyShowLocalPhoto()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 337
    :cond_5
    const/4 v1, 0x0

    .line 338
    .local v1, "needObserveAIAlbumStatus":Z
    iget-object v3, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mAIAlbumStatusPref:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_8

    .line 339
    iget-object v3, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mMiCloudCategory:Landroid/preference/PreferenceCategory;

    const-string v4, "cloud_ai_album_status"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-nez v3, :cond_6

    .line 340
    iget-object v3, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mMiCloudCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mAIAlbumStatusPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 342
    :cond_6
    iget-object v3, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mAIAlbumStatusPref:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getAIAlbumStatus()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 343
    const/4 v1, 0x1

    .line 351
    :cond_7
    :goto_2
    if-eqz v1, :cond_1

    .line 352
    iget-object v3, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mAIAlbumStatusObserver:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_1

    .line 353
    new-instance v3, Lcom/miui/gallery/ui/GallerySettingsFragment$3;

    invoke-direct {v3, p0}, Lcom/miui/gallery/ui/GallerySettingsFragment$3;-><init>(Lcom/miui/gallery/ui/GallerySettingsFragment;)V

    iput-object v3, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mAIAlbumStatusObserver:Landroid/content/BroadcastReceiver;

    .line 359
    invoke-virtual {p0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mAIAlbumStatusObserver:Landroid/content/BroadcastReceiver;

    invoke-static {v3, v4}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->registerAIAlbumStatusReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 344
    :cond_8
    iget-object v3, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mFaceLocalStatusPref:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_7

    .line 345
    iget-object v3, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mMiCloudCategory:Landroid/preference/PreferenceCategory;

    const-string v4, "cloud_face_local_status"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-nez v3, :cond_9

    .line 346
    iget-object v3, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mMiCloudCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mFaceLocalStatusPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 348
    :cond_9
    iget-object v3, p0, Lcom/miui/gallery/ui/GallerySettingsFragment;->mFaceLocalStatusPref:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getFaceAlbumStatus()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 349
    const/4 v1, 0x1

    goto :goto_2

    .line 364
    .end local v1    # "needObserveAIAlbumStatus":Z
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_1
.end method
