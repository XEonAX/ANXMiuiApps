.class Lcom/miui/gallery/ui/PhotoListFragmentBase$PhotoListLoaderCallback;
.super Ljava/lang/Object;
.source "PhotoListFragmentBase.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoListFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoListLoaderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoListFragmentBase;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/PhotoListFragmentBase;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoListFragmentBase$PhotoListLoaderCallback;->this$0:Lcom/miui/gallery/ui/PhotoListFragmentBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/PhotoListFragmentBase;Lcom/miui/gallery/ui/PhotoListFragmentBase$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/PhotoListFragmentBase;
    .param p2, "x1"    # Lcom/miui/gallery/ui/PhotoListFragmentBase$1;

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoListFragmentBase$PhotoListLoaderCallback;-><init>(Lcom/miui/gallery/ui/PhotoListFragmentBase;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .param p1, "i"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 143
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoListFragmentBase$PhotoListLoaderCallback;->this$0:Lcom/miui/gallery/ui/PhotoListFragmentBase;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoListFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v0, v1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 144
    .local v0, "cursorLoader":Landroid/content/CursorLoader;
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoListFragmentBase$PhotoListLoaderCallback;->this$0:Lcom/miui/gallery/ui/PhotoListFragmentBase;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->configLoader(Landroid/content/CursorLoader;)V

    .line 145
    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 2
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 150
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoListFragmentBase$PhotoListLoaderCallback;->this$0:Lcom/miui/gallery/ui/PhotoListFragmentBase;

    move-object v0, p2

    check-cast v0, Landroid/database/Cursor;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->mayDoAdditionalWork(Landroid/database/Cursor;)V

    .line 151
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoListFragmentBase$PhotoListLoaderCallback;->this$0:Lcom/miui/gallery/ui/PhotoListFragmentBase;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->getAdapter()Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;

    move-result-object v0

    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "o":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 153
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoListFragmentBase$PhotoListLoaderCallback;->this$0:Lcom/miui/gallery/ui/PhotoListFragmentBase;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->getAdapter()Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoListFragmentBase$PhotoListLoaderCallback;->this$0:Lcom/miui/gallery/ui/PhotoListFragmentBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->setEmptyViewVisibility(I)V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoListFragmentBase$PhotoListLoaderCallback;->this$0:Lcom/miui/gallery/ui/PhotoListFragmentBase;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->setEmptyViewVisibility(I)V

    goto :goto_0
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;

    .prologue
    .line 163
    return-void
.end method
