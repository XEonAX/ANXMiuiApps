.class final Lcom/miui/gallery/util/MediaAndAlbumOperations$4;
.super Ljava/lang/Object;
.source "MediaAndAlbumOperations.java"

# interfaces
.implements Lcom/miui/gallery/ui/AddToAlbumDialogFragment$OnAlbumSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/MediaAndAlbumOperations;->removeFromSecretAlbum(Landroid/app/Activity;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;[J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$ids:[J

.field final synthetic val$listener:Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;[J)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/miui/gallery/util/MediaAndAlbumOperations$4;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/miui/gallery/util/MediaAndAlbumOperations$4;->val$listener:Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;

    iput-object p3, p0, Lcom/miui/gallery/util/MediaAndAlbumOperations$4;->val$ids:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlbumSelected(JZ)V
    .locals 3
    .param p1, "albumId"    # J
    .param p3, "deleteOrigin"    # Z

    .prologue
    .line 127
    iget-object v0, p0, Lcom/miui/gallery/util/MediaAndAlbumOperations$4;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/gallery/util/MediaAndAlbumOperations$4;->val$listener:Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;

    iget-object v2, p0, Lcom/miui/gallery/util/MediaAndAlbumOperations$4;->val$ids:[J

    invoke-static {v0, v1, p1, p2, v2}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->remove(Landroid/app/Activity;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;J[J)V

    .line 128
    return-void
.end method
