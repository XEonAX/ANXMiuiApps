.class Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum$SendNotificationRunnable;
.super Ljava/lang/Object;
.source "SendNotificationUtilForSharedBabyAlbum.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendNotificationRunnable"
.end annotation


# instance fields
.field private mAlbumId:Ljava/lang/String;

.field private mAlbumLocalId:J

.field private mIsOtherShared:Z

.field private mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum$SendNotificationRunnable;->this$0:Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum$SendNotificationRunnable;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum$SendNotificationRunnable;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum$SendNotificationRunnable;->mAlbumId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 86
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 87
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c007d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum$SendNotificationRunnable;->mIsOtherShared:Z

    iget-wide v4, p0, Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum$SendNotificationRunnable;->mAlbumLocalId:J

    long-to-int v3, v4

    .line 89
    invoke-static {v2, v3}, Lcom/miui/gallery/util/NotificationHelper;->getBabyAlbumNotificationId(ZI)I

    move-result v2

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum$SendNotificationRunnable;->mIsOtherShared:Z

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum$SendNotificationRunnable;->mAlbumLocalId:J

    .line 92
    invoke-static {v4, v5}, Lcom/miui/gallery/provider/ShareAlbumManager;->getUniformAlbumId(J)J

    move-result-wide v4

    :goto_0
    iget-object v6, p0, Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum$SendNotificationRunnable;->mName:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum$SendNotificationRunnable;->mIsOtherShared:Z

    .line 85
    invoke-static/range {v0 .. v7}, Lcom/miui/gallery/cloud/CloudUtils;->sendBabyAlbumNewPhotoNotification(Landroid/content/Context;Ljava/lang/String;ILandroid/net/Uri;JLjava/lang/String;Z)V

    .line 94
    return-void

    .line 92
    :cond_0
    iget-wide v4, p0, Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum$SendNotificationRunnable;->mAlbumLocalId:J

    goto :goto_0
.end method

.method public setPathAndName(Ljava/lang/String;ZJLjava/lang/String;)V
    .locals 1
    .param p1, "albumId"    # Ljava/lang/String;
    .param p2, "isOtherShared"    # Z
    .param p3, "albumLocalId"    # J
    .param p5, "name"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum$SendNotificationRunnable;->mAlbumId:Ljava/lang/String;

    .line 78
    iput-boolean p2, p0, Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum$SendNotificationRunnable;->mIsOtherShared:Z

    .line 79
    iput-wide p3, p0, Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum$SendNotificationRunnable;->mAlbumLocalId:J

    .line 80
    iput-object p5, p0, Lcom/miui/gallery/util/baby/SendNotificationUtilForSharedBabyAlbum$SendNotificationRunnable;->mName:Ljava/lang/String;

    .line 81
    return-void
.end method
