.class Lcom/miui/gallery/ui/AlbumDetailFragment$2;
.super Ljava/lang/Object;
.source "AlbumDetailFragment.java"

# interfaces
.implements Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$OnAlbumOperationDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/AlbumDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/AlbumDetailFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/AlbumDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/AlbumDetailFragment;

    .prologue
    .line 516
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumDetailFragment$2;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOperationDone(JLjava/lang/String;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "albumName"    # Ljava/lang/String;

    .prologue
    .line 519
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment$2;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment$2;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragment;

    iput-object p3, v0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mAlbumName:Ljava/lang/String;

    .line 521
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment$2;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->access$500(Lcom/miui/gallery/ui/AlbumDetailFragment;)V

    .line 523
    :cond_0
    return-void
.end method
