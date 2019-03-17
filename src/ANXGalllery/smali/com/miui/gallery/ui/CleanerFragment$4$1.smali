.class Lcom/miui/gallery/ui/CleanerFragment$4$1;
.super Ljava/lang/Object;
.source "CleanerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/CleanerFragment$4;->onScanFinish(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/CleanerFragment$4;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/CleanerFragment$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/CleanerFragment$4;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/miui/gallery/ui/CleanerFragment$4$1;->this$1:Lcom/miui/gallery/ui/CleanerFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 266
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$4$1;->this$1:Lcom/miui/gallery/ui/CleanerFragment$4;

    iget-object v0, v0, Lcom/miui/gallery/ui/CleanerFragment$4;->this$0:Lcom/miui/gallery/ui/CleanerFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CleanerFragment;->access$400(Lcom/miui/gallery/ui/CleanerFragment;)Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->hide(Z)V

    .line 267
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$4$1;->this$1:Lcom/miui/gallery/ui/CleanerFragment$4;

    iget-object v0, v0, Lcom/miui/gallery/ui/CleanerFragment$4;->this$0:Lcom/miui/gallery/ui/CleanerFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CleanerFragment;->access$500(Lcom/miui/gallery/ui/CleanerFragment;)Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->retract(Z)V

    .line 268
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$4$1;->this$1:Lcom/miui/gallery/ui/CleanerFragment$4;

    iget-object v0, v0, Lcom/miui/gallery/ui/CleanerFragment$4;->this$0:Lcom/miui/gallery/ui/CleanerFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CleanerFragment;->access$700(Lcom/miui/gallery/ui/CleanerFragment;)Lcom/miui/gallery/ui/CleanerRotateProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->hideRingCircle(Z)V

    .line 269
    return-void
.end method
