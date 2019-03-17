.class final Lcom/xiaomi/scanner/util/AppUtil$1;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "AppUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/util/AppUtil;->installPackage(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/scanner/util/AppUtil$AppUtilListener;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appUtilListener:Lcom/xiaomi/scanner/util/AppUtil$AppUtilListener;

.field final synthetic val$extra:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/util/AppUtil$AppUtilListener;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/xiaomi/scanner/util/AppUtil$1;->val$appUtilListener:Lcom/xiaomi/scanner/util/AppUtil$AppUtilListener;

    iput-object p2, p0, Lcom/xiaomi/scanner/util/AppUtil$1;->val$extra:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 291
    invoke-static {}, Lcom/xiaomi/scanner/util/AppUtil;->access$000()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packageInstalled packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,returnCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, Lcom/xiaomi/scanner/util/AppUtil$1;->val$appUtilListener:Lcom/xiaomi/scanner/util/AppUtil$AppUtilListener;

    if-eqz v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/xiaomi/scanner/util/AppUtil$1;->val$appUtilListener:Lcom/xiaomi/scanner/util/AppUtil$AppUtilListener;

    if-ne p2, v0, :cond_1

    :goto_0
    iget-object v2, p0, Lcom/xiaomi/scanner/util/AppUtil$1;->val$extra:Ljava/lang/Object;

    invoke-interface {v1, p1, v0, v2}, Lcom/xiaomi/scanner/util/AppUtil$AppUtilListener;->packageInstalled(Ljava/lang/String;ZLjava/lang/Object;)V

    .line 295
    :cond_0
    return-void

    .line 293
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
