.class Lcom/miui/gallery/ui/AddToAlbumDialogFragment$3;
.super Ljava/lang/Object;
.source "AddToAlbumDialogFragment.java"

# interfaces
.implements Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$OnAlbumOperationDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/AddToAlbumDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/AddToAlbumDialogFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/AddToAlbumDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    .prologue
    .line 560
    iput-object p1, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$3;->this$0:Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOperationDone(JLjava/lang/String;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "albumName"    # Ljava/lang/String;

    .prologue
    .line 563
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$3;->this$0:Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    iget-object v1, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$3;->this$0:Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->access$1100(Lcom/miui/gallery/ui/AddToAlbumDialogFragment;)Z

    move-result v1

    invoke-static {v0, p1, p2, v1}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->access$1000(Lcom/miui/gallery/ui/AddToAlbumDialogFragment;JZ)V

    .line 566
    :cond_0
    return-void
.end method
