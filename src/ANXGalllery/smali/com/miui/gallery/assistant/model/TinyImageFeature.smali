.class public Lcom/miui/gallery/assistant/model/TinyImageFeature;
.super Ljava/lang/Object;
.source "TinyImageFeature.java"


# static fields
.field public static final PROJECTION:[Ljava/lang/String;

.field public static final PROJECTION_GROUP:[Ljava/lang/String;


# instance fields
.field private final mClusterGroupId:J

.field private final mImageId:J

.field private mIsPoorImage:Z

.field private final mScore:D


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "imageId"

    aput-object v1, v0, v3

    const-string v1, "score"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "clusterGroupId"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "iqaExpo"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "iqaNois"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "iqaBlur"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "iqaBlueType"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/assistant/model/TinyImageFeature;->PROJECTION:[Ljava/lang/String;

    .line 27
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "imageId"

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/gallery/assistant/model/TinyImageFeature;->PROJECTION_GROUP:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 14
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const-wide/16 v12, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v8, "imageId"

    invoke-static {p1, v8}, Lcom/miui/gallery/dao/base/Entity;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/miui/gallery/assistant/model/TinyImageFeature;->mImageId:J

    .line 46
    const-string v8, "score"

    invoke-static {p1, v8, v12, v13}, Lcom/miui/gallery/dao/base/Entity;->getDoubleDefault(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v8

    iput-wide v8, p0, Lcom/miui/gallery/assistant/model/TinyImageFeature;->mScore:D

    .line 47
    const-string v8, "clusterGroupId"

    const-wide/16 v10, 0x0

    invoke-static {p1, v8, v10, v11}, Lcom/miui/gallery/dao/base/Entity;->getLongDefault(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/miui/gallery/assistant/model/TinyImageFeature;->mClusterGroupId:J

    .line 48
    const-string v8, "iqaExpo"

    invoke-static {p1, v8, v12, v13}, Lcom/miui/gallery/dao/base/Entity;->getDoubleDefault(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v4

    .line 49
    .local v4, "mIqaExpo":D
    const-string v8, "iqaNois"

    invoke-static {p1, v8, v12, v13}, Lcom/miui/gallery/dao/base/Entity;->getDoubleDefault(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v6

    .line 50
    .local v6, "mIqaNois":D
    const-string v8, "iqaBlur"

    invoke-static {p1, v8, v12, v13}, Lcom/miui/gallery/dao/base/Entity;->getDoubleDefault(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v0

    .line 51
    .local v0, "mIqaBlur":D
    const-string v8, "iqaBlueType"

    const/4 v9, -0x1

    invoke-static {p1, v8, v9}, Lcom/miui/gallery/dao/base/Entity;->getIntDefault(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v8

    int-to-double v2, v8

    .line 52
    .local v2, "mIqaBlurType":D
    const-wide v8, 0x4054800000000000L    # 82.0

    cmpg-double v8, v0, v8

    if-gez v8, :cond_0

    cmpl-double v8, v2, v12

    if-eqz v8, :cond_1

    :cond_0
    const-wide v8, 0x4053d9999999999aL    # 79.4

    cmpg-double v8, v6, v8

    if-ltz v8, :cond_1

    const-wide v8, 0x404f266666666666L    # 62.3

    cmpg-double v8, v4, v8

    if-gez v8, :cond_2

    :cond_1
    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, p0, Lcom/miui/gallery/assistant/model/TinyImageFeature;->mIsPoorImage:Z

    .line 55
    return-void

    .line 52
    :cond_2
    const/4 v8, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getClusterGroupId()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/miui/gallery/assistant/model/TinyImageFeature;->mClusterGroupId:J

    return-wide v0
.end method

.method public getImageId()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/miui/gallery/assistant/model/TinyImageFeature;->mImageId:J

    return-wide v0
.end method

.method public getScore()D
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/miui/gallery/assistant/model/TinyImageFeature;->mScore:D

    return-wide v0
.end method

.method public isPoorImage()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/miui/gallery/assistant/model/TinyImageFeature;->mIsPoorImage:Z

    return v0
.end method
