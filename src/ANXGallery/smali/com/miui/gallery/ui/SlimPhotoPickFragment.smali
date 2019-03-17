.class public Lcom/miui/gallery/ui/SlimPhotoPickFragment;
.super Lcom/miui/gallery/ui/PhotoListFragmentBase;
.source "SlimPhotoPickFragment.java"


# static fields
.field public static final SLIM_COUNT_STAGE:[I


# instance fields
.field private mAdapter:Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

.field private mIsFirstLoadFinish:Z

.field private mMultiChoiceModeListener:Lcom/miui/gallery/widget/editwrapper/SimpleMultiChoiceModeListener;

.field private mScanResultIds:[J

.field private mSelectButton:Landroid/widget/Button;

.field private mSelectListener:Landroid/view/View$OnClickListener;

.field private mSlimDescriptionDialog:Landroid/app/Dialog;

.field private mStartSlimButton:Landroid/widget/Button;

.field private mStartSlimListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->SLIM_COUNT_STAGE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x14
        0x32
        0x64
        0xc8
        0x1f4
        0x3e8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoListFragmentBase;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mIsFirstLoadFinish:Z

    .line 78
    new-instance v0, Lcom/miui/gallery/ui/SlimPhotoPickFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/SlimPhotoPickFragment$1;-><init>(Lcom/miui/gallery/ui/SlimPhotoPickFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mStartSlimListener:Landroid/view/View$OnClickListener;

    .line 97
    new-instance v0, Lcom/miui/gallery/ui/SlimPhotoPickFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/SlimPhotoPickFragment$2;-><init>(Lcom/miui/gallery/ui/SlimPhotoPickFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mSelectListener:Landroid/view/View$OnClickListener;

    .line 109
    new-instance v0, Lcom/miui/gallery/ui/SlimPhotoPickFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/SlimPhotoPickFragment$3;-><init>(Lcom/miui/gallery/ui/SlimPhotoPickFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 120
    new-instance v0, Lcom/miui/gallery/ui/SlimPhotoPickFragment$4;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/SlimPhotoPickFragment$4;-><init>(Lcom/miui/gallery/ui/SlimPhotoPickFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mMultiChoiceModeListener:Lcom/miui/gallery/widget/editwrapper/SimpleMultiChoiceModeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/SlimPhotoPickFragment;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/SlimPhotoPickFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/SlimPhotoPickFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/SlimPhotoPickFragment;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mIsFirstLoadFinish:Z

    return v0
.end method

.method static synthetic access$102(Lcom/miui/gallery/ui/SlimPhotoPickFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/SlimPhotoPickFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mIsFirstLoadFinish:Z

    return p1
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/SlimPhotoPickFragment;)Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/SlimPhotoPickFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mAdapter:Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/SlimPhotoPickFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/SlimPhotoPickFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->onItemSelectedChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/SlimPhotoPickFragment;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/SlimPhotoPickFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mSlimDescriptionDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private onItemSelectedChanged()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 159
    iget-object v0, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mAdapter:Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 160
    iget-object v3, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mStartSlimButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 161
    iget-object v0, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mSelectButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v3, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mSelectButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    .line 164
    invoke-virtual {v4}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->isAllItemsChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 162
    :goto_1
    invoke-static {v0, v3, v1}, Lmiui/gallery/support/MiuiSdkCompat;->setEditActionModeButton(Landroid/content/Context;Landroid/widget/Button;I)V

    .line 172
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 160
    goto :goto_0

    :cond_1
    move v1, v2

    .line 164
    goto :goto_1

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mStartSlimButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 170
    iget-object v0, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mSelectButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method protected getAdapter()Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mAdapter:Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

    return-object v0
.end method

.method protected getLayoutSource()I
    .locals 1

    .prologue
    .line 176
    const v0, 0x7f040148

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    const-string v0, "cleaner_slim_photo_pick"

    return-object v0
.end method

.method protected getSelection()Ljava/lang/String;
    .locals 5

    .prologue
    .line 193
    const-string v0, "%s AND %s IN (%s)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/miui/gallery/cleaner/slim/SlimScanner;->SYNCED_SLIM_SCAN_SELECTION:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "_id"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, ","

    iget-object v4, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mScanResultIds:[J

    .line 196
    invoke-static {v4}, Lcom/miui/gallery/util/MiscUtil;->arrayToList([J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 193
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSelectionArgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 186
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Media;->URI_OWNER_ALBUM_MEDIA:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "generate_headers"

    const/4 v2, 0x1

    .line 187
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 134
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->onCreate(Landroid/os/Bundle;)V

    .line 135
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$PhotoSlim;->isFirstUsePhotoSlim()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 136
    iget-object v3, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040101

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 138
    .local v0, "dialogView":Landroid/view/View;
    new-instance v3, Landroid/app/Dialog;

    iget-object v4, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mSlimDescriptionDialog:Landroid/app/Dialog;

    .line 139
    iget-object v3, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mSlimDescriptionDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 140
    const v3, 0x7f120191

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 141
    .local v1, "okButton":Landroid/widget/Button;
    new-instance v3, Lcom/miui/gallery/ui/SlimPhotoPickFragment$5;

    invoke-direct {v3, p0}, Lcom/miui/gallery/ui/SlimPhotoPickFragment$5;-><init>(Lcom/miui/gallery/ui/SlimPhotoPickFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v3, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mSlimDescriptionDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 150
    .local v2, "window":Landroid/view/Window;
    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 151
    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 153
    iget-object v3, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mSlimDescriptionDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 154
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/preference/GalleryPreferences$PhotoSlim;->setIsFirstUsePhotoSlim(Ljava/lang/Boolean;)V

    .line 156
    .end local v0    # "dialogView":Landroid/view/View;
    .end local v1    # "okButton":Landroid/widget/Button;
    .end local v2    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 211
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->onDestroy()V

    .line 212
    iget-object v0, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mSlimDescriptionDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mSlimDescriptionDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mSlimDescriptionDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 215
    :cond_0
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 54
    iget-object v2, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/miui/gallery/activity/BaseActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v2

    const v3, 0x7f0c00ef

    invoke-virtual {v2, v3}, Lmiui/app/ActionBar;->setTitle(I)V

    .line 55
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 56
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f12003d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mStartSlimButton:Landroid/widget/Button;

    .line 57
    iget-object v2, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mStartSlimButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mStartSlimListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v2, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/miui/gallery/activity/BaseActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f120101

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mSelectButton:Landroid/widget/Button;

    .line 59
    iget-object v2, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v3, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mSelectButton:Landroid/widget/Button;

    invoke-static {v2, v3, v4}, Lmiui/gallery/support/MiuiSdkCompat;->setEditActionModeButton(Landroid/content/Context;Landroid/widget/Button;I)V

    .line 60
    iget-object v2, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mSelectButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mSelectListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    new-instance v2, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

    iget-object v3, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v2, v3}, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mAdapter:Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

    .line 63
    iget-object v2, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mAdapter:Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

    sget-object v3, Lcom/miui/gallery/widget/SortByHeader$SortBy;->DATE:Lcom/miui/gallery/widget/SortByHeader$SortBy;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;->setCurrentSortBy(Lcom/miui/gallery/widget/SortByHeader$SortBy;)V

    .line 64
    iget-object v2, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mAdapter:Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

    sget-object v3, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;->NORMAL:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;->setAlbumType(Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;)V

    .line 65
    iget-object v2, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mAdapter:Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

    iget-object v3, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 67
    new-instance v2, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    iget-object v3, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mAlbumDetailGridView:Landroid/widget/GridView;

    invoke-direct {v2, v3}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;-><init>(Landroid/widget/AbsListView;)V

    iput-object v2, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    .line 68
    iget-object v2, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    iget-object v3, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mAdapter:Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 69
    iget-object v2, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->getGridViewOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 70
    iget-object v2, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    iget-object v3, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mMultiChoiceModeListener:Lcom/miui/gallery/widget/editwrapper/SimpleMultiChoiceModeListener;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->setMultiChoiceModeListener(Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;)V

    .line 71
    iget-object v2, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->startChoiceMode()V

    .line 73
    invoke-static {}, Lcom/miui/gallery/cleaner/ScannerManager;->getInstance()Lcom/miui/gallery/cleaner/ScannerManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/miui/gallery/cleaner/ScannerManager;->getScanner(I)Lcom/miui/gallery/cleaner/BaseScanner;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cleaner/slim/SlimScanner;

    .line 74
    .local v0, "scanner":Lcom/miui/gallery/cleaner/slim/SlimScanner;
    invoke-virtual {v0}, Lcom/miui/gallery/cleaner/slim/SlimScanner;->getScanResultIds()[J

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->mScanResultIds:[J

    .line 75
    return-object v1
.end method
