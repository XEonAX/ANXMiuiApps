.class public abstract Lcom/miui/gallery/provider/peoplecover/BaseStrategy;
.super Ljava/lang/Object;
.source "BaseStrategy.java"


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# instance fields
.field protected mWeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "faceXScale"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "faceYScale"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "faceWScale"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "faceHScale"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "leftEyeXScale"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "leftEyeYScale"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "RightEyeXScale"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "RightEyeYScale"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "photo_server_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "serverId"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "exifOrientation"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "exifImageWidth"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "exifImageLength"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "microthumbfile"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "thumbnailFile"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "localFile"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/provider/peoplecover/BaseStrategy;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "weight"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/miui/gallery/provider/peoplecover/BaseStrategy;->mWeight:I

    .line 55
    return-void
.end method


# virtual methods
.method protected getFacePositionRect(Landroid/database/Cursor;)Landroid/graphics/RectF;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 72
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    .line 73
    .local v0, "x":F
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    .line 74
    .local v1, "y":F
    new-instance v2, Landroid/graphics/RectF;

    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    add-float/2addr v3, v0

    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    add-float/2addr v4, v1

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v2
.end method

.method public getWeight()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/miui/gallery/provider/peoplecover/BaseStrategy;->mWeight:I

    return v0
.end method

.method public abstract isValid(Landroid/database/Cursor;)Z
.end method

.method protected isXYReversed(I)Z
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 64
    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 66
    :cond_0
    const/4 v0, 0x1

    .line 68
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFinish()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method
