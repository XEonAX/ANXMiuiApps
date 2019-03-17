.class public Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;
.super Ljava/lang/Object;
.source "GalleryCloudSyncTagUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncTagConstant"
.end annotation


# instance fields
.field public final columnName:Ljava/lang/String;

.field public final initValue:I

.field public final jsonTagInput:Ljava/lang/String;

.field public final jsonTagOutput:Ljava/lang/String;

.field public final pushName:Ljava/lang/String;

.field public final shouldCheckInit:Z

.field public final shouldInsertCloudSetting:Z

.field public final syncInfoColumnName:Ljava/lang/String;

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLandroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "jsonTagInput"    # Ljava/lang/String;
    .param p3, "jsonTagOutput"    # Ljava/lang/String;
    .param p4, "pushName"    # Ljava/lang/String;
    .param p5, "defaultValue"    # I
    .param p6, "shouldInsert"    # Z
    .param p7, "shouldCheckInit"    # Z
    .param p8, "uri"    # Landroid/net/Uri;
    .param p9, "syncInfoColumnName"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;->columnName:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;->jsonTagInput:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;->jsonTagOutput:Ljava/lang/String;

    .line 74
    iput-object p4, p0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;->pushName:Ljava/lang/String;

    .line 75
    iput p5, p0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;->initValue:I

    .line 76
    iput-boolean p6, p0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;->shouldInsertCloudSetting:Z

    .line 77
    iput-boolean p7, p0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;->shouldCheckInit:Z

    .line 78
    iput-object p9, p0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;->syncInfoColumnName:Ljava/lang/String;

    .line 79
    iput-object p8, p0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;->uri:Landroid/net/Uri;

    .line 80
    return-void
.end method


# virtual methods
.method public hasSyncInfo()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;->syncInfoColumnName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
