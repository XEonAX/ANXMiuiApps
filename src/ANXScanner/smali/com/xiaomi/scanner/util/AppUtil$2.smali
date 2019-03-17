.class final Lcom/xiaomi/scanner/util/AppUtil$2;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
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
    .line 305
    iput-object p1, p0, Lcom/xiaomi/scanner/util/AppUtil$2;->val$appUtilListener:Lcom/xiaomi/scanner/util/AppUtil$AppUtilListener;

    iput-object p2, p0, Lcom/xiaomi/scanner/util/AppUtil$2;->val$extra:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver2$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "basePackageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 308
    iget-object v1, p0, Lcom/xiaomi/scanner/util/AppUtil$2;->val$appUtilListener:Lcom/xiaomi/scanner/util/AppUtil$AppUtilListener;

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/xiaomi/scanner/util/AppUtil$2;->val$appUtilListener:Lcom/xiaomi/scanner/util/AppUtil$AppUtilListener;

    if-ne p2, v0, :cond_1

    :goto_0
    iget-object v2, p0, Lcom/xiaomi/scanner/util/AppUtil$2;->val$extra:Ljava/lang/Object;

    invoke-interface {v1, p1, v0, v2}, Lcom/xiaomi/scanner/util/AppUtil$AppUtilListener;->packageInstalled(Ljava/lang/String;ZLjava/lang/Object;)V

    .line 311
    :cond_0
    return-void

    .line 309
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
