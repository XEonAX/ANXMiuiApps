.class public Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;
.super Lcom/miui/gallery/ui/PhotoListFragmentBase;
.source "ScreenshotPhotoPickFragment.java"


# static fields
.field public static final DELETE_COUNT_STAGE:[I


# instance fields
.field private mAdapter:Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mDeleteButton:Landroid/widget/Button;

.field private mDeleteButtonClickListener:Landroid/view/View$OnClickListener;

.field private mGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

.field private mIsFirstLoadFinish:Z

.field private mMultiChoiceModeListener:Lcom/miui/gallery/widget/editwrapper/SimpleMultiChoiceModeListener;

.field private mScanResultIds:[J

.field private mScanner:Lcom/miui/gallery/cleaner/ScreenshotScanner;

.field private mSelectButton:Landroid/widget/Button;

.field private mSelectListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->DELETE_COUNT_STAGE:[I

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
    .line 35
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoListFragmentBase;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mIsFirstLoadFinish:Z

    .line 78
    new-instance v0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1;-><init>(Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mDeleteButtonClickListener:Landroid/view/View$OnClickListener;

    .line 111
    new-instance v0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$2;-><init>(Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mSelectListener:Landroid/view/View$OnClickListener;

    .line 123
    new-instance v0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$3;-><init>(Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 134
    new-instance v0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$4;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$4;-><init>(Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mMultiChoiceModeListener:Lcom/miui/gallery/widget/editwrapper/SimpleMultiChoiceModeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;)Lcom/miui/gallery/cleaner/ScreenshotScanner;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mScanner:Lcom/miui/gallery/cleaner/ScreenshotScanner;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;)[J
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mScanResultIds:[J

    return-object v0
.end method

.method static synthetic access$202(Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;[J)[J
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;
    .param p1, "x1"    # [J

    .prologue
    .line 35
    iput-object p1, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mScanResultIds:[J

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mIsFirstLoadFinish:Z

    return v0
.end method

.method static synthetic access$302(Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mIsFirstLoadFinish:Z

    return p1
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;)Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mAdapter:Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->onItemSelectedChanged()V

    return-void
.end method

.method private onItemSelectedChanged()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 147
    iget-object v0, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mAdapter:Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 148
    iget-object v3, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mDeleteButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 149
    iget-object v0, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mSelectButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v3, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mSelectButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    .line 152
    invoke-virtual {v4}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->isAllItemsChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 150
    :goto_1
    invoke-static {v0, v3, v1}, Lmiui/gallery/support/MiuiSdkCompat;->setEditActionModeButton(Landroid/content/Context;Landroid/widget/Button;I)V

    .line 160
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 148
    goto :goto_0

    :cond_1
    move v1, v2

    .line 152
    goto :goto_1

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 158
    iget-object v0, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mSelectButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method protected getAdapter()Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mAdapter:Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

    return-object v0
.end method

.method protected getLayoutSource()I
    .locals 1

    .prologue
    .line 164
    const v0, 0x7f040120

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    const-string v0, "cleaner_screenshot_photo_pick"

    return-object v0
.end method

.method protected getSelection()Ljava/lang/String;
    .locals 5

    .prologue
    .line 181
    const-string v0, "%s IN (%s) AND %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, ","

    iget-object v4, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mScanResultIds:[J

    .line 183
    invoke-static {v4}, Lcom/miui/gallery/util/MiscUtil;->arrayToList([J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/miui/gallery/cleaner/ScreenshotScanner;->VALID_FILE:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 181
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSelectionArgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 174
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Media;->URI_OWNER_ALBUM_MEDIA:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "generate_headers"

    const/4 v2, 0x1

    .line 175
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 199
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 200
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mAlbumDetailGridView:Landroid/widget/GridView;

    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v1

    iget v1, v1, Lcom/miui/gallery/Config$ThumbConfig;->sMicroThumbScreenshotColumnsLand:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mAlbumDetailGridView:Landroid/widget/GridView;

    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v1

    iget v1, v1, Lcom/miui/gallery/Config$ThumbConfig;->sMicroThumbScreenshotColumnsPortrait:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/miui/gallery/activity/BaseActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0c00eb

    invoke-virtual {v1, v2}, Lmiui/app/ActionBar;->setTitle(I)V

    .line 54
    new-instance v1, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

    iget-object v2, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v1, v2}, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mAdapter:Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

    .line 55
    iget-object v1, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mAdapter:Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

    sget-object v2, Lcom/miui/gallery/widget/SortByHeader$SortBy;->DATE:Lcom/miui/gallery/widget/SortByHeader$SortBy;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;->setCurrentSortBy(Lcom/miui/gallery/widget/SortByHeader$SortBy;)V

    .line 56
    iget-object v1, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mAdapter:Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

    sget-object v2, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;->SCREENSHOT:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;->setAlbumType(Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;)V

    .line 57
    iget-object v1, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mAdapter:Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

    iget-object v2, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 59
    new-instance v1, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    iget-object v2, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mAlbumDetailGridView:Landroid/widget/GridView;

    invoke-direct {v1, v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    .line 60
    iget-object v1, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    iget-object v2, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mAdapter:Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    iget-object v1, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->getGridViewOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 62
    iget-object v1, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    iget-object v2, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->setEmptyView(Landroid/view/View;)V

    .line 63
    iget-object v1, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    iget-object v2, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mMultiChoiceModeListener:Lcom/miui/gallery/widget/editwrapper/SimpleMultiChoiceModeListener;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->setMultiChoiceModeListener(Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;)V

    .line 64
    iget-object v1, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->startChoiceMode()V

    .line 66
    const v1, 0x7f12026b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mDeleteButton:Landroid/widget/Button;

    .line 67
    iget-object v1, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mDeleteButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mDeleteButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v1, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/miui/gallery/activity/BaseActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f120101

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mSelectButton:Landroid/widget/Button;

    .line 70
    iget-object v1, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v2, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mSelectButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmiui/gallery/support/MiuiSdkCompat;->setEditActionModeButton(Landroid/content/Context;Landroid/widget/Button;I)V

    .line 71
    iget-object v1, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mSelectButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mSelectListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-static {}, Lcom/miui/gallery/cleaner/ScannerManager;->getInstance()Lcom/miui/gallery/cleaner/ScannerManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/gallery/cleaner/ScannerManager;->getScanner(I)Lcom/miui/gallery/cleaner/BaseScanner;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/cleaner/ScreenshotScanner;

    iput-object v1, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mScanner:Lcom/miui/gallery/cleaner/ScreenshotScanner;

    .line 74
    iget-object v1, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mScanner:Lcom/miui/gallery/cleaner/ScreenshotScanner;

    invoke-virtual {v1}, Lcom/miui/gallery/cleaner/ScreenshotScanner;->getScanResultIds()[J

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mScanResultIds:[J

    .line 75
    return-object v0
.end method
