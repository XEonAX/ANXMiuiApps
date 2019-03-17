.class Lcom/miui/gallery/ui/CopyOrMoveDialog$1;
.super Ljava/lang/Object;
.source "CopyOrMoveDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/CopyOrMoveDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/CopyOrMoveDialog;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/CopyOrMoveDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/CopyOrMoveDialog;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/miui/gallery/ui/CopyOrMoveDialog$1;->this$0:Lcom/miui/gallery/ui/CopyOrMoveDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 59
    const/4 v0, 0x2

    if-gt p2, v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/CopyOrMoveDialog$1;->this$0:Lcom/miui/gallery/ui/CopyOrMoveDialog;

    invoke-static {v0}, Lcom/miui/gallery/ui/CopyOrMoveDialog;->access$000(Lcom/miui/gallery/ui/CopyOrMoveDialog;)Lcom/miui/gallery/ui/CopyOrMoveDialog$OnOperationSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    const-string v0, "CopyOrMoveDialog"

    const-string v1, "Creation select : %d"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/miui/gallery/ui/CopyOrMoveDialog$1;->this$0:Lcom/miui/gallery/ui/CopyOrMoveDialog;

    invoke-static {v0}, Lcom/miui/gallery/ui/CopyOrMoveDialog;->access$000(Lcom/miui/gallery/ui/CopyOrMoveDialog;)Lcom/miui/gallery/ui/CopyOrMoveDialog$OnOperationSelectedListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/miui/gallery/ui/CopyOrMoveDialog$OnOperationSelectedListener;->onOperationSelected(I)V

    .line 63
    :cond_0
    return-void
.end method
