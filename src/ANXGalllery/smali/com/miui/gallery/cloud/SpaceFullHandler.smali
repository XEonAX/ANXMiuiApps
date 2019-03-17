.class public Lcom/miui/gallery/cloud/SpaceFullHandler;
.super Ljava/lang/Object;
.source "SpaceFullHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/SpaceFullHandler$SharerSpaceFullListener;,
        Lcom/miui/gallery/cloud/SpaceFullHandler$OwnerSpaceFullListener;,
        Lcom/miui/gallery/cloud/SpaceFullHandler$SpaceFullListener;
    }
.end annotation


# static fields
.field private static sOwnerSpaceFullListener:Lcom/miui/gallery/cloud/SpaceFullHandler$OwnerSpaceFullListener;

.field private static sSharerSpaceFullListener:Lcom/miui/gallery/cloud/SpaceFullHandler$SharerSpaceFullListener;

.field static sSpaceFullMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/gallery/cloud/SpaceFullHandler;->sSpaceFullMap:Ljava/util/HashMap;

    return-void
.end method

.method public static getOwnerSpaceFullListener()Lcom/miui/gallery/cloud/SpaceFullHandler$OwnerSpaceFullListener;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/miui/gallery/cloud/SpaceFullHandler;->sOwnerSpaceFullListener:Lcom/miui/gallery/cloud/SpaceFullHandler$OwnerSpaceFullListener;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/miui/gallery/cloud/SpaceFullHandler$OwnerSpaceFullListener;

    invoke-direct {v0}, Lcom/miui/gallery/cloud/SpaceFullHandler$OwnerSpaceFullListener;-><init>()V

    sput-object v0, Lcom/miui/gallery/cloud/SpaceFullHandler;->sOwnerSpaceFullListener:Lcom/miui/gallery/cloud/SpaceFullHandler$OwnerSpaceFullListener;

    .line 25
    :cond_0
    sget-object v0, Lcom/miui/gallery/cloud/SpaceFullHandler;->sOwnerSpaceFullListener:Lcom/miui/gallery/cloud/SpaceFullHandler$OwnerSpaceFullListener;

    return-object v0
.end method

.method public static getSharerSpaceFullListener()Lcom/miui/gallery/cloud/SpaceFullHandler$SharerSpaceFullListener;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/miui/gallery/cloud/SpaceFullHandler;->sSharerSpaceFullListener:Lcom/miui/gallery/cloud/SpaceFullHandler$SharerSpaceFullListener;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/miui/gallery/cloud/SpaceFullHandler$SharerSpaceFullListener;

    invoke-direct {v0}, Lcom/miui/gallery/cloud/SpaceFullHandler$SharerSpaceFullListener;-><init>()V

    sput-object v0, Lcom/miui/gallery/cloud/SpaceFullHandler;->sSharerSpaceFullListener:Lcom/miui/gallery/cloud/SpaceFullHandler$SharerSpaceFullListener;

    .line 32
    :cond_0
    sget-object v0, Lcom/miui/gallery/cloud/SpaceFullHandler;->sSharerSpaceFullListener:Lcom/miui/gallery/cloud/SpaceFullHandler$SharerSpaceFullListener;

    return-object v0
.end method

.method public static declared-synchronized isOwnerSpaceFull()Z
    .locals 2

    .prologue
    .line 92
    const-class v0, Lcom/miui/gallery/cloud/SpaceFullHandler;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetCloudGallerySpaceFull()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized isSharerSpaceFull(Ljava/lang/String;)Z
    .locals 3
    .param p0, "albumId"    # Ljava/lang/String;

    .prologue
    .line 123
    const-class v2, Lcom/miui/gallery/cloud/SpaceFullHandler;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/miui/gallery/cloud/SpaceFullHandler;->sSpaceFullMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 124
    .local v0, "isSpaceFull":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 127
    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 123
    .end local v0    # "isSpaceFull":Ljava/lang/Boolean;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized removeOwnerSpaceFull()V
    .locals 2

    .prologue
    .line 104
    const-class v1, Lcom/miui/gallery/cloud/SpaceFullHandler;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/miui/gallery/util/deprecated/Preference;->sSetCloudGallerySpaceFull(Z)V

    .line 106
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gallery/cloud/SpaceFullHandler;->setMiCloudStatusInfoReceiverEnabledSetting(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit v1

    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized removeSharerSpaceFull(Ljava/lang/String;)V
    .locals 5
    .param p0, "albumId"    # Ljava/lang/String;

    .prologue
    .line 137
    const-class v2, Lcom/miui/gallery/cloud/SpaceFullHandler;

    monitor-enter v2

    :try_start_0
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "className":Ljava/lang/String;
    const-string v1, "SpaceFullHandler"

    const-string v3, "%s, remove shareAlbum: %s space full."

    invoke-static {p0}, Lcom/miui/gallery/util/Utils;->desensitizeShareAlbumId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v0, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 139
    sget-object v1, Lcom/miui/gallery/cloud/SpaceFullHandler;->sSpaceFullMap:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit v2

    return-void

    .line 137
    .end local v0    # "className":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static setMiCloudStatusInfoReceiverEnabledSetting(Z)V
    .locals 6
    .param p0, "enabled"    # Z

    .prologue
    const/4 v3, 0x1

    .line 110
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 111
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/miui/gallery/cloud/MiCloudStatusInfoReceiver;

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz p0, :cond_1

    move v2, v3

    .line 115
    .local v2, "targetStatus":I
    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v4

    if-eq v2, v4, :cond_0

    .line 116
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 120
    :cond_0
    return-void

    .line 113
    .end local v2    # "targetStatus":I
    :cond_1
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public static declared-synchronized setOwnerSpaceFull()V
    .locals 5

    .prologue
    .line 96
    const-class v2, Lcom/miui/gallery/cloud/SpaceFullHandler;

    monitor-enter v2

    :try_start_0
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "className":Ljava/lang/String;
    const-string v1, "SpaceFullHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " set owner space full."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/miui/gallery/util/deprecated/Preference;->sSetCloudGallerySpaceFull(Z)V

    .line 100
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/miui/gallery/cloud/SpaceFullHandler;->setMiCloudStatusInfoReceiverEnabledSetting(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit v2

    return-void

    .line 96
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized setSharerSpaceFull(Ljava/lang/String;)V
    .locals 5
    .param p0, "albumId"    # Ljava/lang/String;

    .prologue
    .line 131
    const-class v2, Lcom/miui/gallery/cloud/SpaceFullHandler;

    monitor-enter v2

    :try_start_0
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "className":Ljava/lang/String;
    const-string v1, "SpaceFullHandler"

    const-string v3, "%s, set shareAlbum: %s space full."

    invoke-static {p0}, Lcom/miui/gallery/util/Utils;->desensitizeShareAlbumId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v0, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    sget-object v1, Lcom/miui/gallery/cloud/SpaceFullHandler;->sSpaceFullMap:Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit v2

    return-void

    .line 131
    .end local v0    # "className":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
