.class Lcom/miui/gallery/ui/TrashFragment$TrashedPhotoLoaderCallback;
.super Ljava/lang/Object;
.source "TrashFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/TrashFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrashedPhotoLoaderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/TrashFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/TrashFragment;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/miui/gallery/ui/TrashFragment$TrashedPhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/TrashFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/TrashFragment;Lcom/miui/gallery/ui/TrashFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/TrashFragment;
    .param p2, "x1"    # Lcom/miui/gallery/ui/TrashFragment$1;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/TrashFragment$TrashedPhotoLoaderCallback;-><init>(Lcom/miui/gallery/ui/TrashFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .param p1, "i"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 43
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/miui/gallery/ui/TrashFragment$TrashedPhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/TrashFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/TrashFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v0, v1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 44
    .local v0, "loader":Landroid/content/CursorLoader;
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Media;->URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "remove_duplicate_items"

    const/4 v3, 0x1

    .line 47
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .line 45
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 49
    sget-object v1, Lcom/miui/gallery/adapter/TrashAdapter;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 50
    const-string v1, "alias_create_time DESC "

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 51
    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 1
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/miui/gallery/ui/TrashFragment$TrashedPhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/TrashFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/TrashFragment;->access$000(Lcom/miui/gallery/ui/TrashFragment;)Lcom/miui/gallery/adapter/TrashAdapter;

    move-result-object v0

    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "o":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lcom/miui/gallery/adapter/TrashAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 57
    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;

    .prologue
    .line 62
    return-void
.end method
