.class Lcom/miui/gallery/util/PrintInstallHelper$InstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PrintInstallHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/PrintInstallHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstallReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/util/PrintInstallHelper;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/util/PrintInstallHelper;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/miui/gallery/util/PrintInstallHelper$InstallReceiver;->this$0:Lcom/miui/gallery/util/PrintInstallHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/util/PrintInstallHelper;Lcom/miui/gallery/util/PrintInstallHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/util/PrintInstallHelper;
    .param p2, "x1"    # Lcom/miui/gallery/util/PrintInstallHelper$1;

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/PrintInstallHelper$InstallReceiver;-><init>(Lcom/miui/gallery/util/PrintInstallHelper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 433
    const-string v6, "packageName"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 434
    .local v4, "pkgName":Ljava/lang/String;
    iget-object v6, p0, Lcom/miui/gallery/util/PrintInstallHelper$InstallReceiver;->this$0:Lcom/miui/gallery/util/PrintInstallHelper;

    invoke-static {v6}, Lcom/miui/gallery/util/PrintInstallHelper;->access$600(Lcom/miui/gallery/util/PrintInstallHelper;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 475
    :goto_0
    return-void

    .line 437
    :cond_0
    const-string v6, "errorCode"

    invoke-virtual {p2, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 438
    .local v1, "errorCode":I
    const-string/jumbo v6, "status"

    invoke-virtual {p2, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 439
    .local v0, "downloadStatus":I
    const-string v6, "PrintInstallHelper"

    const-string v7, "install error code: %d, download status: %d"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 441
    iget-object v6, p0, Lcom/miui/gallery/util/PrintInstallHelper$InstallReceiver;->this$0:Lcom/miui/gallery/util/PrintInstallHelper;

    invoke-static {v6, v1}, Lcom/miui/gallery/util/PrintInstallHelper;->access$700(Lcom/miui/gallery/util/PrintInstallHelper;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 442
    iget-object v6, p0, Lcom/miui/gallery/util/PrintInstallHelper$InstallReceiver;->this$0:Lcom/miui/gallery/util/PrintInstallHelper;

    invoke-static {v6}, Lcom/miui/gallery/util/PrintInstallHelper;->access$800(Lcom/miui/gallery/util/PrintInstallHelper;)V

    goto :goto_0

    .line 443
    :cond_1
    iget-object v6, p0, Lcom/miui/gallery/util/PrintInstallHelper$InstallReceiver;->this$0:Lcom/miui/gallery/util/PrintInstallHelper;

    invoke-static {v6, v1}, Lcom/miui/gallery/util/PrintInstallHelper;->access$900(Lcom/miui/gallery/util/PrintInstallHelper;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 444
    const-string v6, "reason"

    invoke-virtual {p2, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 446
    .local v5, "reason":I
    iget-object v6, p0, Lcom/miui/gallery/util/PrintInstallHelper$InstallReceiver;->this$0:Lcom/miui/gallery/util/PrintInstallHelper;

    invoke-static {v6, v1}, Lcom/miui/gallery/util/PrintInstallHelper;->access$1000(Lcom/miui/gallery/util/PrintInstallHelper;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 447
    const/4 v2, 0x1

    .line 448
    .local v2, "isSuccess":Z
    const-string v6, "PrintInstallHelper"

    const-string v7, "print install success, silent install times : %d"

    iget-object v8, p0, Lcom/miui/gallery/util/PrintInstallHelper$InstallReceiver;->this$0:Lcom/miui/gallery/util/PrintInstallHelper;

    invoke-static {v8}, Lcom/miui/gallery/util/PrintInstallHelper;->access$200(Lcom/miui/gallery/util/PrintInstallHelper;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 450
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 451
    .local v3, "param":Ljava/util/Map;
    const-string/jumbo v6, "silentInstallTimes"

    iget-object v7, p0, Lcom/miui/gallery/util/PrintInstallHelper$InstallReceiver;->this$0:Lcom/miui/gallery/util/PrintInstallHelper;

    invoke-static {v7}, Lcom/miui/gallery/util/PrintInstallHelper;->access$200(Lcom/miui/gallery/util/PrintInstallHelper;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    const-string v6, "photo_print"

    const-string v7, "photo_print_package_install_success"

    invoke-static {v6, v7, v3}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 465
    :goto_1
    iget-object v6, p0, Lcom/miui/gallery/util/PrintInstallHelper$InstallReceiver;->this$0:Lcom/miui/gallery/util/PrintInstallHelper;

    invoke-static {v6, v11}, Lcom/miui/gallery/util/PrintInstallHelper;->access$1102(Lcom/miui/gallery/util/PrintInstallHelper;I)I

    .line 466
    iget-object v6, p0, Lcom/miui/gallery/util/PrintInstallHelper$InstallReceiver;->this$0:Lcom/miui/gallery/util/PrintInstallHelper;

    invoke-virtual {v6, v2, v1, v5}, Lcom/miui/gallery/util/PrintInstallHelper;->notifyInstallFinish(ZII)V

    .line 467
    iget-object v6, p0, Lcom/miui/gallery/util/PrintInstallHelper$InstallReceiver;->this$0:Lcom/miui/gallery/util/PrintInstallHelper;

    invoke-static {v6}, Lcom/miui/gallery/util/PrintInstallHelper;->access$300(Lcom/miui/gallery/util/PrintInstallHelper;)V

    goto :goto_0

    .line 455
    .end local v2    # "isSuccess":Z
    .end local v3    # "param":Ljava/util/Map;
    :cond_2
    const/4 v2, 0x0

    .line 456
    .restart local v2    # "isSuccess":Z
    const-string v6, "PrintInstallHelper"

    const-string v7, "print install fail, error code : %d, reason : %d, silent install times : %d"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/miui/gallery/util/PrintInstallHelper$InstallReceiver;->this$0:Lcom/miui/gallery/util/PrintInstallHelper;

    invoke-static {v10}, Lcom/miui/gallery/util/PrintInstallHelper;->access$200(Lcom/miui/gallery/util/PrintInstallHelper;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v6, v7, v8, v9, v10}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 458
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 459
    .restart local v3    # "param":Ljava/util/Map;
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%d_errorCode"

    new-array v8, v12, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/miui/gallery/util/PrintInstallHelper$InstallReceiver;->this$0:Lcom/miui/gallery/util/PrintInstallHelper;

    invoke-static {v9}, Lcom/miui/gallery/util/PrintInstallHelper;->access$200(Lcom/miui/gallery/util/PrintInstallHelper;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%d_failReason"

    new-array v8, v12, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/miui/gallery/util/PrintInstallHelper$InstallReceiver;->this$0:Lcom/miui/gallery/util/PrintInstallHelper;

    invoke-static {v9}, Lcom/miui/gallery/util/PrintInstallHelper;->access$200(Lcom/miui/gallery/util/PrintInstallHelper;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    const-string v6, "photo_print"

    const-string v7, "photo_print_package_install_fail"

    invoke-static {v6, v7, v3}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 469
    .end local v2    # "isSuccess":Z
    .end local v3    # "param":Ljava/util/Map;
    .end local v5    # "reason":I
    :cond_3
    const/4 v6, -0x3

    if-ne v0, v6, :cond_4

    .line 470
    iget-object v6, p0, Lcom/miui/gallery/util/PrintInstallHelper$InstallReceiver;->this$0:Lcom/miui/gallery/util/PrintInstallHelper;

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lcom/miui/gallery/util/PrintInstallHelper;->access$1102(Lcom/miui/gallery/util/PrintInstallHelper;I)I

    goto/16 :goto_0

    .line 472
    :cond_4
    iget-object v6, p0, Lcom/miui/gallery/util/PrintInstallHelper$InstallReceiver;->this$0:Lcom/miui/gallery/util/PrintInstallHelper;

    invoke-static {v6, v12}, Lcom/miui/gallery/util/PrintInstallHelper;->access$1102(Lcom/miui/gallery/util/PrintInstallHelper;I)I

    goto/16 :goto_0
.end method
