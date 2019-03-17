.class Lcom/miui/gallery/discovery/PrintSilentInstallTask$1;
.super Ljava/lang/Object;
.source "PrintSilentInstallTask.java"

# interfaces
.implements Lcom/miui/gallery/util/PrintInstallHelper$InstallStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/discovery/PrintSilentInstallTask;->process(Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/discovery/PrintSilentInstallTask;


# direct methods
.method constructor <init>(Lcom/miui/gallery/discovery/PrintSilentInstallTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/discovery/PrintSilentInstallTask;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/miui/gallery/discovery/PrintSilentInstallTask$1;->this$0:Lcom/miui/gallery/discovery/PrintSilentInstallTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(ZII)V
    .locals 3
    .param p1, "isSuccess"    # Z
    .param p2, "errorCode"    # I
    .param p3, "reason"    # I

    .prologue
    .line 67
    if-nez p1, :cond_0

    const/4 v0, 0x3

    if-ne p3, v0, :cond_1

    .line 68
    :cond_0
    invoke-static {}, Lcom/miui/gallery/discovery/PrintSilentInstallTask;->setSilentInstallTimesDisable()V

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/discovery/PrintSilentInstallTask$1;->this$0:Lcom/miui/gallery/discovery/PrintSilentInstallTask;

    invoke-static {v0}, Lcom/miui/gallery/discovery/PrintSilentInstallTask;->access$000(Lcom/miui/gallery/discovery/PrintSilentInstallTask;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 71
    const-string v0, "sdfa"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/miui/gallery/util/PrintInstallHelper;->getInstance()Lcom/miui/gallery/util/PrintInstallHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/gallery/util/PrintInstallHelper;->removeInstallStateListener(Lcom/miui/gallery/util/PrintInstallHelper$InstallStateListener;)V

    .line 73
    return-void
.end method

.method public onInstallLimited()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/miui/gallery/discovery/PrintSilentInstallTask$1;->this$0:Lcom/miui/gallery/discovery/PrintSilentInstallTask;

    invoke-static {v0}, Lcom/miui/gallery/discovery/PrintSilentInstallTask;->access$000(Lcom/miui/gallery/discovery/PrintSilentInstallTask;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 62
    invoke-static {}, Lcom/miui/gallery/util/PrintInstallHelper;->getInstance()Lcom/miui/gallery/util/PrintInstallHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/gallery/util/PrintInstallHelper;->removeInstallStateListener(Lcom/miui/gallery/util/PrintInstallHelper$InstallStateListener;)V

    .line 63
    return-void
.end method

.method public onInstalling()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method
