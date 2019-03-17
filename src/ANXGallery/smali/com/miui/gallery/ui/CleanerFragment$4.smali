.class Lcom/miui/gallery/ui/CleanerFragment$4;
.super Ljava/lang/Object;
.source "CleanerFragment.java"

# interfaces
.implements Lcom/miui/gallery/cleaner/ScannerManager$ScanObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/CleanerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/CleanerFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/CleanerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/CleanerFragment;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/miui/gallery/ui/CleanerFragment$4;->this$0:Lcom/miui/gallery/ui/CleanerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCanceled()V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method public onScanFinish(J)V
    .locals 3
    .param p1, "size"    # J

    .prologue
    .line 258
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$4;->this$0:Lcom/miui/gallery/ui/CleanerFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CleanerFragment;->access$800(Lcom/miui/gallery/ui/CleanerFragment;)Lcom/miui/gallery/cleaner/ScannerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/cleaner/ScannerManager;->isScanResultEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$4;->this$0:Lcom/miui/gallery/ui/CleanerFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CleanerFragment;->access$700(Lcom/miui/gallery/ui/CleanerFragment;)Lcom/miui/gallery/ui/CleanerRotateProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->showEmptyAnim()V

    .line 260
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$4;->this$0:Lcom/miui/gallery/ui/CleanerFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CleanerFragment;->access$400(Lcom/miui/gallery/ui/CleanerFragment;)Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->access$300(Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;)V

    .line 272
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$4;->this$0:Lcom/miui/gallery/ui/CleanerFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CleanerFragment;->access$900(Lcom/miui/gallery/ui/CleanerFragment;)V

    .line 263
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$4;->this$0:Lcom/miui/gallery/ui/CleanerFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CleanerFragment;->access$700(Lcom/miui/gallery/ui/CleanerFragment;)Lcom/miui/gallery/ui/CleanerRotateProgressBar;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/miui/gallery/ui/CleanerFragment$4$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/ui/CleanerFragment$4$1;-><init>(Lcom/miui/gallery/ui/CleanerFragment$4;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->setNumber(JZLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onScanProgress(J)V
    .locals 3
    .param p1, "size"    # J

    .prologue
    .line 253
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$4;->this$0:Lcom/miui/gallery/ui/CleanerFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CleanerFragment;->access$700(Lcom/miui/gallery/ui/CleanerFragment;)Lcom/miui/gallery/ui/CleanerRotateProgressBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->setNumber(JZ)V

    .line 254
    return-void
.end method

.method public onScanResultUpdate(J)V
    .locals 2
    .param p1, "size"    # J

    .prologue
    const/4 v1, 0x1

    .line 276
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$4;->this$0:Lcom/miui/gallery/ui/CleanerFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CleanerFragment;->access$800(Lcom/miui/gallery/ui/CleanerFragment;)Lcom/miui/gallery/cleaner/ScannerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/cleaner/ScannerManager;->isScanFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$4;->this$0:Lcom/miui/gallery/ui/CleanerFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CleanerFragment;->access$800(Lcom/miui/gallery/ui/CleanerFragment;)Lcom/miui/gallery/cleaner/ScannerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/cleaner/ScannerManager;->isScanResultEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$4;->this$0:Lcom/miui/gallery/ui/CleanerFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CleanerFragment;->access$700(Lcom/miui/gallery/ui/CleanerFragment;)Lcom/miui/gallery/ui/CleanerRotateProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->showEmptyAnim()V

    .line 279
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$4;->this$0:Lcom/miui/gallery/ui/CleanerFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CleanerFragment;->access$500(Lcom/miui/gallery/ui/CleanerFragment;)Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->expand(Z)V

    .line 280
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$4;->this$0:Lcom/miui/gallery/ui/CleanerFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CleanerFragment;->access$400(Lcom/miui/gallery/ui/CleanerFragment;)Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->show(Z)V

    .line 281
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$4;->this$0:Lcom/miui/gallery/ui/CleanerFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CleanerFragment;->access$400(Lcom/miui/gallery/ui/CleanerFragment;)Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->access$300(Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;)V

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$4;->this$0:Lcom/miui/gallery/ui/CleanerFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CleanerFragment;->access$900(Lcom/miui/gallery/ui/CleanerFragment;)V

    goto :goto_0
.end method

.method public onScanStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 243
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$4;->this$0:Lcom/miui/gallery/ui/CleanerFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CleanerFragment;->access$400(Lcom/miui/gallery/ui/CleanerFragment;)Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->show(Z)V

    .line 244
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$4;->this$0:Lcom/miui/gallery/ui/CleanerFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CleanerFragment;->access$500(Lcom/miui/gallery/ui/CleanerFragment;)Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->expand(Z)V

    .line 245
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$4;->this$0:Lcom/miui/gallery/ui/CleanerFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CleanerFragment;->access$700(Lcom/miui/gallery/ui/CleanerFragment;)Lcom/miui/gallery/ui/CleanerRotateProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->showRingCircle(Z)V

    .line 246
    return-void
.end method
