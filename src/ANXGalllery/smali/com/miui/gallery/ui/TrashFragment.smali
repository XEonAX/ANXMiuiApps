.class public Lcom/miui/gallery/ui/TrashFragment;
.super Lcom/miui/gallery/ui/BaseFragment;
.source "TrashFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/TrashFragment$TrashedPhotoLoaderCallback;
    }
.end annotation


# instance fields
.field private mGridView:Lcom/miui/gallery/widget/HeaderGridView;

.field private mTrashAdapter:Lcom/miui/gallery/adapter/TrashAdapter;

.field private mTrashedPhotoLoaderCallback:Lcom/miui/gallery/ui/TrashFragment$TrashedPhotoLoaderCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/miui/gallery/ui/BaseFragment;-><init>()V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/TrashFragment;)Lcom/miui/gallery/adapter/TrashAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/TrashFragment;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/miui/gallery/ui/TrashFragment;->mTrashAdapter:Lcom/miui/gallery/adapter/TrashAdapter;

    return-object v0
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string/jumbo v0, "trash"

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 67
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 68
    new-instance v0, Lcom/miui/gallery/ui/TrashFragment$TrashedPhotoLoaderCallback;

    invoke-direct {v0, p0, v3}, Lcom/miui/gallery/ui/TrashFragment$TrashedPhotoLoaderCallback;-><init>(Lcom/miui/gallery/ui/TrashFragment;Lcom/miui/gallery/ui/TrashFragment$1;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/TrashFragment;->mTrashedPhotoLoaderCallback:Lcom/miui/gallery/ui/TrashFragment$TrashedPhotoLoaderCallback;

    .line 69
    invoke-virtual {p0}, Lcom/miui/gallery/ui/TrashFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/gallery/ui/TrashFragment;->mTrashedPhotoLoaderCallback:Lcom/miui/gallery/ui/TrashFragment$TrashedPhotoLoaderCallback;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 70
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/miui/gallery/ui/TrashFragment;->mTrashAdapter:Lcom/miui/gallery/adapter/TrashAdapter;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/miui/gallery/ui/TrashFragment;->mTrashAdapter:Lcom/miui/gallery/adapter/TrashAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/TrashAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 78
    :cond_0
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseFragment;->onDestroy()V

    .line 79
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    const v1, 0x7f04015e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 29
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f1202c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/widget/HeaderGridView;

    iput-object v1, p0, Lcom/miui/gallery/ui/TrashFragment;->mGridView:Lcom/miui/gallery/widget/HeaderGridView;

    .line 30
    new-instance v1, Lcom/miui/gallery/adapter/TrashAdapter;

    iget-object v2, p0, Lcom/miui/gallery/ui/TrashFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v1, v2}, Lcom/miui/gallery/adapter/TrashAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/gallery/ui/TrashFragment;->mTrashAdapter:Lcom/miui/gallery/adapter/TrashAdapter;

    .line 31
    iget-object v1, p0, Lcom/miui/gallery/ui/TrashFragment;->mGridView:Lcom/miui/gallery/widget/HeaderGridView;

    iget-object v2, p0, Lcom/miui/gallery/ui/TrashFragment;->mTrashAdapter:Lcom/miui/gallery/adapter/TrashAdapter;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/HeaderGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 32
    return-object v0
.end method
