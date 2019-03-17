.class final Lcom/xiaomi/channel/commonutils/android/GoogleAdvertisingClient;
.super Ljava/lang/Object;
.source "GoogleAdvertisingClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/channel/commonutils/android/GoogleAdvertisingClient$AdvertisingInterface;,
        Lcom/xiaomi/channel/commonutils/android/GoogleAdvertisingClient$AdvertisingConnection;,
        Lcom/xiaomi/channel/commonutils/android/GoogleAdvertisingClient$AdInfo;
    }
.end annotation


# direct methods
.method public static getAdvertisingIdInfo(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/android/GoogleAdvertisingClient$AdInfo;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 119
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    if-ne v8, v9, :cond_0

    .line 120
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Cannot be called from the main thread"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 122
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 123
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const-string v8, "com.android.vending"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    new-instance v3, Lcom/xiaomi/channel/commonutils/android/GoogleAdvertisingClient$AdvertisingConnection;

    const/4 v8, 0x0

    invoke-direct {v3, v8}, Lcom/xiaomi/channel/commonutils/android/GoogleAdvertisingClient$AdvertisingConnection;-><init>(Lcom/xiaomi/channel/commonutils/android/GoogleAdvertisingClient$1;)V

    .line 129
    .local v3, "connection":Lcom/xiaomi/channel/commonutils/android/GoogleAdvertisingClient$AdvertisingConnection;
    new-instance v6, Landroid/content/Intent;

    const-string v8, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .local v6, "intent":Landroid/content/Intent;
    const-string v8, "com.google.android.gms"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const/4 v8, 0x1

    invoke-virtual {p0, v6, v3, v8}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 133
    :try_start_1
    invoke-virtual {v3}, Lcom/xiaomi/channel/commonutils/android/GoogleAdvertisingClient$AdvertisingConnection;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 134
    .local v2, "binder":Landroid/os/IBinder;
    if-eqz v2, :cond_1

    .line 135
    new-instance v1, Lcom/xiaomi/channel/commonutils/android/GoogleAdvertisingClient$AdvertisingInterface;

    invoke-direct {v1, v2}, Lcom/xiaomi/channel/commonutils/android/GoogleAdvertisingClient$AdvertisingInterface;-><init>(Landroid/os/IBinder;)V

    .line 136
    .local v1, "adInterface":Lcom/xiaomi/channel/commonutils/android/GoogleAdvertisingClient$AdvertisingInterface;
    new-instance v0, Lcom/xiaomi/channel/commonutils/android/GoogleAdvertisingClient$AdInfo;

    invoke-virtual {v1}, Lcom/xiaomi/channel/commonutils/android/GoogleAdvertisingClient$AdvertisingInterface;->getId()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v0, v8, v9}, Lcom/xiaomi/channel/commonutils/android/GoogleAdvertisingClient$AdInfo;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    .local v0, "adInfo":Lcom/xiaomi/channel/commonutils/android/GoogleAdvertisingClient$AdInfo;
    invoke-virtual {p0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 139
    return-object v0

    .line 124
    .end local v0    # "adInfo":Lcom/xiaomi/channel/commonutils/android/GoogleAdvertisingClient$AdInfo;
    .end local v1    # "adInterface":Lcom/xiaomi/channel/commonutils/android/GoogleAdvertisingClient$AdvertisingInterface;
    .end local v2    # "binder":Landroid/os/IBinder;
    .end local v3    # "connection":Lcom/xiaomi/channel/commonutils/android/GoogleAdvertisingClient$AdvertisingConnection;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v4

    .line 125
    .local v4, "e":Ljava/lang/Exception;
    throw v4

    .line 144
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "binder":Landroid/os/IBinder;
    .restart local v3    # "connection":Lcom/xiaomi/channel/commonutils/android/GoogleAdvertisingClient$AdvertisingConnection;
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    invoke-virtual {p0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 147
    .end local v2    # "binder":Landroid/os/IBinder;
    :cond_2
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Google Play connection failed"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 141
    :catch_1
    move-exception v5

    .line 142
    .local v5, "exception":Ljava/lang/Exception;
    :try_start_2
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    .end local v5    # "exception":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    invoke-virtual {p0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v8
.end method
