.class Lcom/miui/gallery/util/PrintInstallHelper$1;
.super Ljava/lang/Object;
.source "PrintInstallHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/PrintInstallHelper;->installPrintPackage(ZLjava/lang/String;Lcom/miui/gallery/util/PrintInstallHelper$InstallStateListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/util/PrintInstallHelper;

.field final synthetic val$isSilent:Z

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/gallery/util/PrintInstallHelper;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/util/PrintInstallHelper;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/miui/gallery/util/PrintInstallHelper$1;->this$0:Lcom/miui/gallery/util/PrintInstallHelper;

    iput-object p2, p0, Lcom/miui/gallery/util/PrintInstallHelper$1;->val$packageName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/miui/gallery/util/PrintInstallHelper$1;->val$isSilent:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 280
    :try_start_0
    iget-object v3, p0, Lcom/miui/gallery/util/PrintInstallHelper$1;->this$0:Lcom/miui/gallery/util/PrintInstallHelper;

    invoke-static {p2}, Lcom/xiaomi/market/IAppDownloadManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/util/PrintInstallHelper;->access$002(Lcom/miui/gallery/util/PrintInstallHelper;Lcom/xiaomi/market/IAppDownloadManager;)Lcom/xiaomi/market/IAppDownloadManager;

    .line 281
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 282
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "packageName"

    iget-object v4, p0, Lcom/miui/gallery/util/PrintInstallHelper$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v3, "ref"

    const-string v4, "MiuiGallery"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v3, "senderPackageName"

    const-string v4, "com.miui.gallery"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-boolean v3, p0, Lcom/miui/gallery/util/PrintInstallHelper$1;->val$isSilent:Z

    if-nez v3, :cond_0

    .line 286
    const-string/jumbo v3, "show_cta"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 288
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/util/PrintInstallHelper$1;->this$0:Lcom/miui/gallery/util/PrintInstallHelper;

    invoke-static {v3}, Lcom/miui/gallery/util/PrintInstallHelper;->access$100(Lcom/miui/gallery/util/PrintInstallHelper;)V

    .line 289
    iget-object v3, p0, Lcom/miui/gallery/util/PrintInstallHelper$1;->this$0:Lcom/miui/gallery/util/PrintInstallHelper;

    invoke-static {v3}, Lcom/miui/gallery/util/PrintInstallHelper;->access$000(Lcom/miui/gallery/util/PrintInstallHelper;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/xiaomi/market/IAppDownloadManager;->download(Landroid/os/Bundle;)V

    .line 291
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 292
    .local v2, "param":Ljava/util/Map;
    const-string/jumbo v3, "silentInstallTimes"

    iget-object v4, p0, Lcom/miui/gallery/util/PrintInstallHelper$1;->this$0:Lcom/miui/gallery/util/PrintInstallHelper;

    invoke-static {v4}, Lcom/miui/gallery/util/PrintInstallHelper;->access$200(Lcom/miui/gallery/util/PrintInstallHelper;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v3, "photo_print"

    const-string v4, "photo_print_package_download"

    invoke-static {v3, v4, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    iget-object v3, p0, Lcom/miui/gallery/util/PrintInstallHelper$1;->this$0:Lcom/miui/gallery/util/PrintInstallHelper;

    invoke-static {v3}, Lcom/miui/gallery/util/PrintInstallHelper;->access$400(Lcom/miui/gallery/util/PrintInstallHelper;)V

    .line 301
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "param":Ljava/util/Map;
    :goto_0
    return-void

    .line 295
    :catch_0
    move-exception v1

    .line 296
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "PrintInstallHelper"

    invoke-static {v3, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 297
    iget-object v3, p0, Lcom/miui/gallery/util/PrintInstallHelper$1;->this$0:Lcom/miui/gallery/util/PrintInstallHelper;

    invoke-static {v3}, Lcom/miui/gallery/util/PrintInstallHelper;->access$300(Lcom/miui/gallery/util/PrintInstallHelper;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    iget-object v3, p0, Lcom/miui/gallery/util/PrintInstallHelper$1;->this$0:Lcom/miui/gallery/util/PrintInstallHelper;

    invoke-static {v3}, Lcom/miui/gallery/util/PrintInstallHelper;->access$400(Lcom/miui/gallery/util/PrintInstallHelper;)V

    goto :goto_0

    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/miui/gallery/util/PrintInstallHelper$1;->this$0:Lcom/miui/gallery/util/PrintInstallHelper;

    invoke-static {v4}, Lcom/miui/gallery/util/PrintInstallHelper;->access$400(Lcom/miui/gallery/util/PrintInstallHelper;)V

    throw v3
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 305
    return-void
.end method
