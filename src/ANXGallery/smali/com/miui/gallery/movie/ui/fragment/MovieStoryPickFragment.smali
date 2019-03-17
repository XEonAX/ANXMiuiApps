.class public Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;
.super Lcom/miui/gallery/picker/PickerFragment;
.source "MovieStoryPickFragment.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/miui/gallery/picker/helper/PickableBaseTimeLineAdapterWrapper;

.field private mCardId:J

.field private mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

.field private mGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

.field private mIntent:Landroid/content/Intent;

.field private mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

.field private mStoryMoviePickAdapter:Lcom/miui/gallery/movie/ui/adapter/StoryMoviePickAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickerFragment;-><init>()V

    .line 128
    new-instance v0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment$2;-><init>(Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;)Lcom/miui/gallery/movie/ui/adapter/StoryMoviePickAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->mStoryMoviePickAdapter:Lcom/miui/gallery/movie/ui/adapter/StoryMoviePickAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->isPreviewFace()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;)Lcom/miui/gallery/picker/helper/PickableBaseTimeLineAdapterWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->mAdapter:Lcom/miui/gallery/picker/helper/PickableBaseTimeLineAdapterWrapper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->getPreviewUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->getPreviewSelection(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;Landroid/database/Cursor;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->getPreviewSelectionArgs(Landroid/database/Cursor;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->getPreviewOrder()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->getProjection()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->getSelection()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->getOrder()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    const-string v0, "alias_create_time DESC "

    return-object v0
.end method

.method private getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcom/miui/gallery/movie/ui/adapter/StoryMoviePickAdapter;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method private getSelection()Ljava/lang/String;
    .locals 6

    .prologue
    .line 167
    invoke-static {}, Lcom/miui/gallery/card/CardManager;->getInstance()Lcom/miui/gallery/card/CardManager;

    move-result-object v2

    iget-wide v4, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->mCardId:J

    invoke-virtual {v2, v4, v5}, Lcom/miui/gallery/card/CardManager;->getCardByCardId(J)Lcom/miui/gallery/card/Card;

    move-result-object v0

    .line 168
    .local v0, "card":Lcom/miui/gallery/card/Card;
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Lcom/miui/gallery/card/Card;->getSelectedMediaSha1s()Ljava/util/List;

    move-result-object v1

    .line 170
    .local v1, "selectedIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "%s IN (\'%s\')"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "sha1"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "\',\'"

    invoke-static {v5, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 172
    .end local v1    # "selectedIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method private parseIntent()Z
    .locals 6

    .prologue
    .line 112
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->mIntent:Landroid/content/Intent;

    if-nez v2, :cond_0

    .line 113
    const-string v2, "StoryMoviePickFragment"

    const-string v3, "parseIntent is fail. "

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 115
    const/4 v2, 0x0

    .line 125
    :goto_0
    return v2

    .line 117
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->mIntent:Landroid/content/Intent;

    const-string v3, "card_id"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->mCardId:J

    .line 118
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->mIntent:Landroid/content/Intent;

    const-string v3, "pick_sha1"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 119
    .local v1, "sha1List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 121
    .local v0, "sha1":Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v3, v0}, Lcom/miui/gallery/picker/helper/Picker;->pick(Ljava/lang/String;)Z

    goto :goto_1

    .line 124
    .end local v0    # "sha1":Ljava/lang/String;
    :cond_1
    const-string v2, "StoryMoviePickFragment"

    const-string v3, "parseIntent is success. "

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-string/jumbo v0, "story_picker_home"

    return-object v0
.end method

.method protected getUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 150
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Media;->URI_OWNER_ALBUM_MEDIA:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "remove_duplicate_items"

    const/4 v2, 0x1

    .line 153
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/miui/gallery/picker/PickerFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 101
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->parseIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x11

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 104
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/miui/gallery/picker/PickerFragment;->onAttach(Landroid/app/Activity;)V

    .line 57
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->mActivity:Landroid/app/Activity;

    .line 58
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->getResultIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->mIntent:Landroid/content/Intent;

    .line 59
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->mAdapter:Lcom/miui/gallery/picker/helper/PickableBaseTimeLineAdapterWrapper;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->mAdapter:Lcom/miui/gallery/picker/helper/PickableBaseTimeLineAdapterWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/picker/helper/PickableBaseTimeLineAdapterWrapper;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 185
    :cond_0
    invoke-super {p0}, Lcom/miui/gallery/picker/PickerFragment;->onDestroy()V

    .line 186
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    const v1, 0x7f040152

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 64
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f1202a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iput-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->mGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    .line 65
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->mGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    new-instance v2, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment$1;-><init>(Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;)V

    invoke-virtual {v1, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 89
    new-instance v1, Lcom/miui/gallery/movie/ui/adapter/StoryMoviePickAdapter;

    iget-object v2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/movie/ui/adapter/StoryMoviePickAdapter;-><init>(Landroid/content/Context;Lcom/miui/gallery/picker/helper/Picker;)V

    iput-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->mStoryMoviePickAdapter:Lcom/miui/gallery/movie/ui/adapter/StoryMoviePickAdapter;

    .line 90
    new-instance v1, Lcom/miui/gallery/picker/helper/PickableBaseTimeLineAdapterWrapper;

    iget-object v2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    iget-object v3, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->mStoryMoviePickAdapter:Lcom/miui/gallery/movie/ui/adapter/StoryMoviePickAdapter;

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/picker/helper/PickableBaseTimeLineAdapterWrapper;-><init>(Lcom/miui/gallery/picker/helper/Picker;Landroid/widget/CursorAdapter;)V

    iput-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->mAdapter:Lcom/miui/gallery/picker/helper/PickableBaseTimeLineAdapterWrapper;

    .line 91
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->mGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->mAdapter:Lcom/miui/gallery/picker/helper/PickableBaseTimeLineAdapterWrapper;

    invoke-virtual {v1, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/widget/EmptyPage;

    iput-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    .line 93
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->mGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    invoke-virtual {v1, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setEmptyView(Landroid/view/View;)V

    .line 94
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/EmptyPage;->setVisibility(I)V

    .line 95
    return-object v0
.end method

.method protected onPhotoItemClick(Landroid/database/Cursor;)Z
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method
