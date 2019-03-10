.class public Lcom/aeonax/PermissionsAsker;
.super Ljava/lang/Object;
.source "PermissionsAsker.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Ask(Landroid/app/Activity;)V
    .registers 19
    .param p0, "activity"    # Landroid/app/Activity;

    .line 13
    move-object/from16 v0, p0

    if-nez v0, :cond_5

    .line 14
    return-void

    .line 16
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .local v1, "permissionsToAsk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "android.permission.INTERNET"

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    const-string v4, "android.permission.ACCESS_WIFI_STATE"

    const-string v5, "android.permission.SYSTEM_ALERT_WINDOW"

    const-string v6, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    const-string v7, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v8, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v9, "android.permission.WRITE_MEDIA_STORAGE"

    const-string v10, "android.permission.ACCESS_ALL_EXTERNAL_STORAGE"

    const-string v11, "android.permission.RECORD_AUDIO"

    const-string v12, "android.permission.BLUETOOTH"

    const-string v13, "android.permission.INTERACT_ACROSS_USERS"

    const-string v14, "com.android.launcher.permission.INSTALL_SHORTCUT"

    const-string v15, "android.permission.FOREGROUND_SERVICE"

    const-string v16, "android.permission.WRITE_SETTINGS"

    const-string v17, "android.permission.MANAGE_MEDIA_PROJECTION"

    filled-new-array/range {v2 .. v17}, [Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, "permissionsToCheck":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_30
    if-ge v4, v3, :cond_42

    aget-object v5, v2, v4

    .line 36
    .local v5, "p":Ljava/lang/String;
    invoke-virtual {v0, v5}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_3e

    .line 37
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    .line 36
    :cond_3e
    nop

    .line 35
    .end local v5    # "p":Ljava/lang/String;
    :goto_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 40
    :cond_42
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_59

    .line 41
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 42
    .local v3, "items":[Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_5a

    .line 40
    .end local v3    # "items":[Ljava/lang/String;
    :cond_59
    nop

    .line 44
    :goto_5a
    return-void
.end method
