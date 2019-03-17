.class final Lcom/miui/gallery/util/MediaAndAlbumOperations$6;
.super Ljava/lang/Object;
.source "MediaAndAlbumOperations.java"

# interfaces
.implements Lcom/miui/gallery/ui/AddToAlbumDialogFragment$OnAlbumSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/MediaAndAlbumOperations;->addToAlbum(Landroid/app/Activity;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;IZZZ[J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$dupType:I

.field final synthetic val$ids:[J

.field final synthetic val$listener:Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;

.field final synthetic val$operateSync:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;[JIZ)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/miui/gallery/util/MediaAndAlbumOperations$6;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/miui/gallery/util/MediaAndAlbumOperations$6;->val$listener:Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;

    iput-object p3, p0, Lcom/miui/gallery/util/MediaAndAlbumOperations$6;->val$ids:[J

    iput p4, p0, Lcom/miui/gallery/util/MediaAndAlbumOperations$6;->val$dupType:I

    iput-boolean p5, p0, Lcom/miui/gallery/util/MediaAndAlbumOperations$6;->val$operateSync:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlbumSelected(JZ)V
    .locals 9
    .param p1, "albumId"    # J
    .param p3, "deleteOrigin"    # Z

    .prologue
    .line 185
    const-wide/16 v0, -0x3e8

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/miui/gallery/util/MediaAndAlbumOperations$6;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/miui/gallery/util/MediaAndAlbumOperations$6$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/util/MediaAndAlbumOperations$6$1;-><init>(Lcom/miui/gallery/util/MediaAndAlbumOperations$6;)V

    iget-object v2, p0, Lcom/miui/gallery/util/MediaAndAlbumOperations$6;->val$ids:[J

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->addToSecretAlbum(Landroid/app/Activity;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;[J)V

    .line 204
    :goto_0
    return-void

    .line 198
    :cond_0
    if-eqz p3, :cond_1

    invoke-static {p1, p2}, Lcom/miui/gallery/provider/ShareAlbumManager;->isOtherShareAlbumId(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/miui/gallery/util/MediaAndAlbumOperations$6;->val$activity:Landroid/app/Activity;

    const v1, 0x7f0c0018

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 200
    const/4 p3, 0x0

    .line 202
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/util/MediaAndAlbumOperations$6;->val$activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/miui/gallery/util/MediaAndAlbumOperations$6;->val$ids:[J

    iget v5, p0, Lcom/miui/gallery/util/MediaAndAlbumOperations$6;->val$dupType:I

    iget-object v7, p0, Lcom/miui/gallery/util/MediaAndAlbumOperations$6;->val$listener:Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;

    iget-boolean v8, p0, Lcom/miui/gallery/util/MediaAndAlbumOperations$6;->val$operateSync:Z

    move-wide v2, p1

    move v6, p3

    invoke-static/range {v1 .. v8}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->show(Landroid/app/Activity;J[JIZLcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;Z)V

    goto :goto_0
.end method
