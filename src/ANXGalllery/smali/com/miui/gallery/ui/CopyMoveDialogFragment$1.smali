.class Lcom/miui/gallery/ui/CopyMoveDialogFragment$1;
.super Ljava/lang/Object;
.source "CopyMoveDialogFragment.java"

# interfaces
.implements Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckDownloadOriginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/CopyMoveDialogFragment;->doCheckOrigin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$1;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$1;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->access$200(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)V

    .line 145
    return-void
.end method

.method public onComplete()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$1;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->access$100(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)V

    .line 140
    return-void
.end method

.method public onStartDownload()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$1;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->access$000(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)Lmiui/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->hide()V

    .line 135
    return-void
.end method
