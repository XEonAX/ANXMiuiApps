.class public Lcom/miui/gallery/picker/PickFaceAlbumFragment;
.super Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;
.source "PickFaceAlbumFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/picker/PickFaceAlbumFragment$PickAlbumDetailTimeLineAdapter;,
        Lcom/miui/gallery/picker/PickFaceAlbumFragment$FacePagePhotoLoaderCallback;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/gallery/picker/PickFaceAlbumFragment$PickAlbumDetailTimeLineAdapter;

.field private mAlbumItemCheckListener:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$AlbumItemCheckListener;

.field private mFacePagePhotoLoaderCallback:Lcom/miui/gallery/picker/PickFaceAlbumFragment$FacePagePhotoLoaderCallback;

.field private mLocalIdOfAlbum:J

.field private mServerIdOfAlbum:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "face-album"

    invoke-direct {p0, v0}, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;-><init>(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/picker/PickFaceAlbumFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickFaceAlbumFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/gallery/picker/PickFaceAlbumFragment;->mServerIdOfAlbum:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/picker/PickFaceAlbumFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickFaceAlbumFragment;

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/miui/gallery/picker/PickFaceAlbumFragment;->mLocalIdOfAlbum:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/picker/PickFaceAlbumFragment;)Lcom/miui/gallery/picker/PickFaceAlbumFragment$PickAlbumDetailTimeLineAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickFaceAlbumFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/gallery/picker/PickFaceAlbumFragment;->mAdapter:Lcom/miui/gallery/picker/PickFaceAlbumFragment$PickAlbumDetailTimeLineAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/picker/PickFaceAlbumFragment;)Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$AlbumItemCheckListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickFaceAlbumFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/gallery/picker/PickFaceAlbumFragment;->mAlbumItemCheckListener:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$AlbumItemCheckListener;

    return-object v0
.end method


# virtual methods
.method protected getKey(Landroid/database/Cursor;)J
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 71
    invoke-static {p1}, Lcom/miui/gallery/picker/helper/CursorUtils;->getFacePhotoId(Landroid/database/Cursor;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getLocalPath(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/miui/gallery/picker/PickFaceAlbumFragment;->mAdapter:Lcom/miui/gallery/picker/PickFaceAlbumFragment$PickAlbumDetailTimeLineAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/picker/PickFaceAlbumFragment$PickAlbumDetailTimeLineAdapter;->getItemPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const-string v0, "picker_face_album"

    return-object v0
.end method

.method protected getPreviewOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const-string v0, "dateTaken DESC "

    return-object v0
.end method

.method protected getPreviewSelection(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPreviewSelectionArgs(Landroid/database/Cursor;)[Ljava/lang/String;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 95
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/miui/gallery/picker/helper/CursorUtils;->getFaceId(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected getPreviewUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->RECOMMEND_FACES_OF_ONE_PERSON_URI:Landroid/net/Uri;

    return-object v0
.end method

.method protected getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->ONE_PERSON_URI:Landroid/net/Uri;

    return-object v0
.end method

.method protected isPreviewFace()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 168
    invoke-super {p0, p1}, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 169
    iget-object v0, p0, Lcom/miui/gallery/picker/PickFaceAlbumFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "server_id_of_album"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/picker/PickFaceAlbumFragment;->mServerIdOfAlbum:Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/miui/gallery/picker/PickFaceAlbumFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "local_id_of_album"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/picker/PickFaceAlbumFragment;->mLocalIdOfAlbum:J

    .line 173
    new-instance v0, Lcom/miui/gallery/picker/PickFaceAlbumFragment$FacePagePhotoLoaderCallback;

    invoke-direct {v0, p0, v3}, Lcom/miui/gallery/picker/PickFaceAlbumFragment$FacePagePhotoLoaderCallback;-><init>(Lcom/miui/gallery/picker/PickFaceAlbumFragment;Lcom/miui/gallery/picker/PickFaceAlbumFragment$1;)V

    iput-object v0, p0, Lcom/miui/gallery/picker/PickFaceAlbumFragment;->mFacePagePhotoLoaderCallback:Lcom/miui/gallery/picker/PickFaceAlbumFragment$FacePagePhotoLoaderCallback;

    .line 174
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickFaceAlbumFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/gallery/picker/PickFaceAlbumFragment;->mFacePagePhotoLoaderCallback:Lcom/miui/gallery/picker/PickFaceAlbumFragment$FacePagePhotoLoaderCallback;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 176
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 194
    invoke-super {p0, p1}, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 195
    iget-object v1, p0, Lcom/miui/gallery/picker/PickFaceAlbumFragment;->mAlbumDetailGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getFirstVisiblePosition()I

    move-result v0

    .line 196
    .local v0, "firstVisibleItemPosition":I
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 197
    iget-object v1, p0, Lcom/miui/gallery/picker/PickFaceAlbumFragment;->mAlbumDetailGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v2

    iget v2, v2, Lcom/miui/gallery/Config$ThumbConfig;->sMicroThumbColumnsLand:I

    invoke-virtual {v1, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setNumColumns(I)V

    .line 201
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/picker/PickFaceAlbumFragment;->mAlbumDetailGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v1, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setSelection(I)V

    .line 202
    return-void

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/picker/PickFaceAlbumFragment;->mAlbumDetailGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v2

    iget v2, v2, Lcom/miui/gallery/Config$ThumbConfig;->sMicroThumbColumnsPortrait:I

    invoke-virtual {v1, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setNumColumns(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->onCreate(Landroid/os/Bundle;)V

    .line 45
    new-instance v0, Lcom/miui/gallery/picker/PickFaceAlbumFragment$PickAlbumDetailTimeLineAdapter;

    iget-object v1, p0, Lcom/miui/gallery/picker/PickFaceAlbumFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/picker/PickFaceAlbumFragment$PickAlbumDetailTimeLineAdapter;-><init>(Lcom/miui/gallery/picker/PickFaceAlbumFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/picker/PickFaceAlbumFragment;->mAdapter:Lcom/miui/gallery/picker/PickFaceAlbumFragment$PickAlbumDetailTimeLineAdapter;

    .line 46
    iget-object v0, p0, Lcom/miui/gallery/picker/PickFaceAlbumFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "need_pick_face_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/miui/gallery/picker/PickFaceAlbumFragment;->mAdapter:Lcom/miui/gallery/picker/PickFaceAlbumFragment$PickAlbumDetailTimeLineAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/picker/PickFaceAlbumFragment$PickAlbumDetailTimeLineAdapter;->changeDisplayMode()V

    .line 50
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/miui/gallery/picker/PickFaceAlbumFragment;->mAdapter:Lcom/miui/gallery/picker/PickFaceAlbumFragment$PickAlbumDetailTimeLineAdapter;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/miui/gallery/picker/PickFaceAlbumFragment;->mAdapter:Lcom/miui/gallery/picker/PickFaceAlbumFragment$PickAlbumDetailTimeLineAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/picker/PickFaceAlbumFragment$PickAlbumDetailTimeLineAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 131
    :cond_0
    invoke-super {p0}, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->onDestroy()V

    .line 132
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    const v1, 0x7f040076

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f12008d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iput-object v1, p0, Lcom/miui/gallery/picker/PickFaceAlbumFragment;->mAlbumDetailGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    .line 57
    iget-object v1, p0, Lcom/miui/gallery/picker/PickFaceAlbumFragment;->mAlbumDetailGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickFaceAlbumFragment;->getGridViewOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 58
    iget-object v1, p0, Lcom/miui/gallery/picker/PickFaceAlbumFragment;->mAlbumDetailGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v2, p0, Lcom/miui/gallery/picker/PickFaceAlbumFragment;->mAdapter:Lcom/miui/gallery/picker/PickFaceAlbumFragment$PickAlbumDetailTimeLineAdapter;

    invoke-virtual {v1, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 59
    new-instance v1, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$AlbumItemCheckListener;

    iget-object v2, p0, Lcom/miui/gallery/picker/PickFaceAlbumFragment;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$AlbumItemCheckListener;-><init>(Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;Lcom/miui/gallery/picker/helper/Picker;)V

    iput-object v1, p0, Lcom/miui/gallery/picker/PickFaceAlbumFragment;->mAlbumItemCheckListener:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$AlbumItemCheckListener;

    .line 60
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickFaceAlbumFragment;->intialSelections()V

    .line 61
    return-object v0
.end method

.method protected onPhotoItemClick(Landroid/database/Cursor;)Z
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 114
    iget-object v1, p0, Lcom/miui/gallery/picker/PickFaceAlbumFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "need_pick_face_id"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    invoke-static {p1}, Lcom/miui/gallery/picker/helper/CursorUtils;->getFaceId(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "faceId":Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/gallery/picker/PickFaceAlbumFragment;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v1, v0}, Lcom/miui/gallery/picker/helper/Picker;->pick(Ljava/lang/String;)Z

    .line 117
    iget-object v1, p0, Lcom/miui/gallery/picker/PickFaceAlbumFragment;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;->setResultCode(I)V

    .line 118
    iget-object v1, p0, Lcom/miui/gallery/picker/PickFaceAlbumFragment;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v1}, Lcom/miui/gallery/picker/helper/Picker;->done()V

    .line 119
    const/4 v1, 0x1

    .line 121
    .end local v0    # "faceId":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->onPhotoItemClick(Landroid/database/Cursor;)Z

    move-result v1

    goto :goto_0
.end method
