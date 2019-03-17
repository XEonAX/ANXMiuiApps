.class Lcom/miui/gallery/ui/BackupDetailFragment$BackupLoaderCallBack;
.super Ljava/lang/Object;
.source "BackupDetailFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/BackupDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackupLoaderCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/BackupDetailFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/BackupDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/BackupDetailFragment;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/miui/gallery/ui/BackupDetailFragment$BackupLoaderCallBack;->this$0:Lcom/miui/gallery/ui/BackupDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 203
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/miui/gallery/ui/BackupDetailFragment$BackupLoaderCallBack;->this$0:Lcom/miui/gallery/ui/BackupDetailFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/BackupDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v0, v1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 204
    .local v0, "cursorLoader":Landroid/content/CursorLoader;
    iget-object v1, p0, Lcom/miui/gallery/ui/BackupDetailFragment$BackupLoaderCallBack;->this$0:Lcom/miui/gallery/ui/BackupDetailFragment;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/BackupDetailFragment;->configLoader(Landroid/content/CursorLoader;)V

    .line 205
    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 2
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/miui/gallery/ui/BackupDetailFragment$BackupLoaderCallBack;->this$0:Lcom/miui/gallery/ui/BackupDetailFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/BackupDetailFragment;->getAdapter()Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/BackupDetailFragment$BackupLoaderCallBack;->this$0:Lcom/miui/gallery/ui/BackupDetailFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/BackupDetailFragment;->access$100(Lcom/miui/gallery/ui/BackupDetailFragment;)Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;

    move-result-object v1

    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {v1, p2}, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;->classifyCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 212
    iget-object v0, p0, Lcom/miui/gallery/ui/BackupDetailFragment$BackupLoaderCallBack;->this$0:Lcom/miui/gallery/ui/BackupDetailFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/BackupDetailFragment;->getAdapter()Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/miui/gallery/ui/BackupDetailFragment$BackupLoaderCallBack;->this$0:Lcom/miui/gallery/ui/BackupDetailFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/BackupDetailFragment;->setEmptyViewVisibility(I)V

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/BackupDetailFragment$BackupLoaderCallBack;->this$0:Lcom/miui/gallery/ui/BackupDetailFragment;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/BackupDetailFragment;->setEmptyViewVisibility(I)V

    goto :goto_0
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;

    .prologue
    .line 222
    return-void
.end method
