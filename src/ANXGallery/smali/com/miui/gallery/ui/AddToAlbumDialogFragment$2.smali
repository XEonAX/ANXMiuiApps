.class Lcom/miui/gallery/ui/AddToAlbumDialogFragment$2;
.super Ljava/lang/Object;
.source "AddToAlbumDialogFragment.java"

# interfaces
.implements Lcom/miui/gallery/ui/CopyOrMoveDialog$OnOperationSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->showCopyOrMoveDialog(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

.field final synthetic val$id:J


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/AddToAlbumDialogFragment;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$2;->this$0:Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    iput-wide p2, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$2;->val$id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOperationSelected(I)V
    .locals 5
    .param p1, "ops"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 249
    packed-switch p1, :pswitch_data_0

    .line 261
    iget-object v0, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$2;->this$0:Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->access$700(Lcom/miui/gallery/ui/AddToAlbumDialogFragment;)Lcom/miui/gallery/ui/AddToAlbumDialogFragment$OnAlbumSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$2;->this$0:Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->access$700(Lcom/miui/gallery/ui/AddToAlbumDialogFragment;)Lcom/miui/gallery/ui/AddToAlbumDialogFragment$OnAlbumSelectedListener;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$2;->val$id:J

    invoke-interface {v0, v2, v3, v4}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$OnAlbumSelectedListener;->onAlbumSelected(JZ)V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$2;->this$0:Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    invoke-static {v0, v4}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->access$800(Lcom/miui/gallery/ui/AddToAlbumDialogFragment;Z)V

    .line 267
    :goto_0
    :pswitch_0
    return-void

    .line 254
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$2;->this$0:Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->access$700(Lcom/miui/gallery/ui/AddToAlbumDialogFragment;)Lcom/miui/gallery/ui/AddToAlbumDialogFragment$OnAlbumSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$2;->this$0:Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->access$700(Lcom/miui/gallery/ui/AddToAlbumDialogFragment;)Lcom/miui/gallery/ui/AddToAlbumDialogFragment$OnAlbumSelectedListener;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$2;->val$id:J

    invoke-interface {v0, v2, v3, v1}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$OnAlbumSelectedListener;->onAlbumSelected(JZ)V

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$2;->this$0:Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->access$800(Lcom/miui/gallery/ui/AddToAlbumDialogFragment;Z)V

    goto :goto_0

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
