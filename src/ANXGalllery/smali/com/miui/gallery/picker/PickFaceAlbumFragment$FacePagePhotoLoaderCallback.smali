.class Lcom/miui/gallery/picker/PickFaceAlbumFragment$FacePagePhotoLoaderCallback;
.super Ljava/lang/Object;
.source "PickFaceAlbumFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/picker/PickFaceAlbumFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FacePagePhotoLoaderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/picker/PickFaceAlbumFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/picker/PickFaceAlbumFragment;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/miui/gallery/picker/PickFaceAlbumFragment$FacePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickFaceAlbumFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/picker/PickFaceAlbumFragment;Lcom/miui/gallery/picker/PickFaceAlbumFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/picker/PickFaceAlbumFragment;
    .param p2, "x1"    # Lcom/miui/gallery/picker/PickFaceAlbumFragment$1;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/miui/gallery/picker/PickFaceAlbumFragment$FacePagePhotoLoaderCallback;-><init>(Lcom/miui/gallery/picker/PickFaceAlbumFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
    .param p1, "i"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 139
    const/4 v1, 0x0

    .line 140
    .local v1, "selection":Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/gallery/picker/PickFaceAlbumFragment$FacePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickFaceAlbumFragment;

    iget-object v3, v3, Lcom/miui/gallery/picker/PickFaceAlbumFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "pick_face_ids_in"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "selectionInIds":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id in ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 145
    :cond_0
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v3, p0, Lcom/miui/gallery/picker/PickFaceAlbumFragment$FacePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickFaceAlbumFragment;

    iget-object v3, v3, Lcom/miui/gallery/picker/PickFaceAlbumFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 146
    .local v0, "loader":Landroid/content/CursorLoader;
    iget-object v3, p0, Lcom/miui/gallery/picker/PickFaceAlbumFragment$FacePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickFaceAlbumFragment;

    invoke-virtual {v3}, Lcom/miui/gallery/picker/PickFaceAlbumFragment;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 147
    sget-object v3, Lcom/miui/gallery/adapter/FacePageAdapter;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 149
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/gallery/picker/PickFaceAlbumFragment$FacePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickFaceAlbumFragment;

    invoke-static {v5}, Lcom/miui/gallery/picker/PickFaceAlbumFragment;->access$000(Lcom/miui/gallery/picker/PickFaceAlbumFragment;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/miui/gallery/picker/PickFaceAlbumFragment$FacePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickFaceAlbumFragment;

    invoke-static {v5}, Lcom/miui/gallery/picker/PickFaceAlbumFragment;->access$100(Lcom/miui/gallery/picker/PickFaceAlbumFragment;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 150
    const-string v3, "dateTaken DESC "

    invoke-virtual {v0, v3}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 151
    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 1
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/miui/gallery/picker/PickFaceAlbumFragment$FacePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickFaceAlbumFragment;

    invoke-static {v0}, Lcom/miui/gallery/picker/PickFaceAlbumFragment;->access$200(Lcom/miui/gallery/picker/PickFaceAlbumFragment;)Lcom/miui/gallery/picker/PickFaceAlbumFragment$PickAlbumDetailTimeLineAdapter;

    move-result-object v0

    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "o":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lcom/miui/gallery/picker/PickFaceAlbumFragment$PickAlbumDetailTimeLineAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 157
    iget-object v0, p0, Lcom/miui/gallery/picker/PickFaceAlbumFragment$FacePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickFaceAlbumFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/picker/PickFaceAlbumFragment;->copy2Pick()V

    .line 158
    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;

    .prologue
    .line 163
    return-void
.end method
