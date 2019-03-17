.class public Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum;
.super Ljava/lang/Object;
.source "SendNotificationUtilForSharedBabyAlbum.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum$SendNotificationRunnable;,
        Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum$SingletonHolder;
    }
.end annotation


# instance fields
.field protected final SEND_NOTIFICATION_INTERVAL:I

.field protected mNotificationRunnableList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum$SendNotificationRunnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const v0, 0x927c0

    iput v0, p0, Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum;->SEND_NOTIFICATION_INTERVAL:I

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum;->mNotificationRunnableList:Ljava/util/ArrayList;

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum$1;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum;-><init>()V

    return-void
.end method

.method public static final getInstance()Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum;
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum$SingletonHolder;->access$100()Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum;

    move-result-object v0

    return-object v0
.end method

.method private getUniformAlbumLocalId(JZ)J
    .locals 1
    .param p1, "albumLocalId"    # J
    .param p3, "isOtherShared"    # Z

    .prologue
    .line 62
    if-eqz p3, :cond_0

    .line 63
    invoke-static {p1, p2}, Lcom/miui/gallery/provider/ShareAlbumManager;->getUniformAlbumId(J)J

    move-result-wide p1

    .end local p1    # "albumLocalId":J
    :cond_0
    return-wide p1
.end method


# virtual methods
.method public sendNotification(Ljava/lang/String;JLjava/lang/String;ZJ)V
    .locals 8
    .param p1, "albumId"    # Ljava/lang/String;
    .param p2, "albumLocalId"    # J
    .param p4, "albumName"    # Ljava/lang/String;
    .param p5, "isOtherShared"    # Z
    .param p6, "flag"    # J

    .prologue
    .line 36
    const/4 v1, 0x0

    .line 37
    .local v1, "runnable":Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum$SendNotificationRunnable;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum;->mNotificationRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 38
    iget-object v2, p0, Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum;->mNotificationRunnableList:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum$SendNotificationRunnable;

    invoke-static {v2}, Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum$SendNotificationRunnable;->access$200(Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum$SendNotificationRunnable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 40
    iget-object v2, p0, Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum;->mNotificationRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "runnable":Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum$SendNotificationRunnable;
    check-cast v1, Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum$SendNotificationRunnable;

    .line 44
    .restart local v1    # "runnable":Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum$SendNotificationRunnable;
    :cond_0
    if-nez v1, :cond_1

    .line 45
    new-instance v1, Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum$SendNotificationRunnable;

    .end local v1    # "runnable":Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum$SendNotificationRunnable;
    invoke-direct {v1, p0}, Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum$SendNotificationRunnable;-><init>(Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum;)V

    .restart local v1    # "runnable":Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum$SendNotificationRunnable;
    move-object v2, p1

    move v3, p5

    move-wide v4, p2

    move-object v6, p4

    .line 46
    invoke-virtual/range {v1 .. v6}, Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum$SendNotificationRunnable;->setPathAndName(Ljava/lang/String;ZJLjava/lang/String;)V

    .line 48
    iget-object v2, p0, Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum;->mNotificationRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_1
    invoke-direct {p0, p2, p3, p5}, Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum;->getUniformAlbumLocalId(JZ)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/miui/gallery/preference/GalleryPreferences$Baby;->getMinServerTagOfNewPhoto(J)Ljava/lang/Long;

    move-result-object v2

    .line 50
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 54
    invoke-direct {p0, p2, p3, p5}, Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum;->getUniformAlbumLocalId(JZ)J

    move-result-wide v2

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 53
    invoke-static {v2, v3, v4}, Lcom/miui/gallery/preference/GalleryPreferences$Baby;->saveMinServerTagOfNewPhoto(JLjava/lang/Long;)V

    .line 57
    :cond_2
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v2

    const-wide/32 v4, 0x927c0

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/internal/CompatHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    return-void

    .line 37
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
