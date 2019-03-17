.class public Lcom/miui/gallery/loader/FaceCloudSetLoader;
.super Lcom/miui/gallery/loader/CloudSetLoader;
.source "FaceCloudSetLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/loader/FaceCloudSetLoader$CloudDataSet;
    }
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "microthumbfile"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "thumbnailFile"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "localFile"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "mimeType"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, " CASE WHEN mixedDateTime NOT NULL THEN mixedDateTime ELSE dateTaken END "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "location"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "size"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "exifImageWidth"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "exifImageLength"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "exifGPSLatitude"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "exifGPSLatitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "exifGPSLongitude"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "exifGPSLongitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "localGroupId"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "secretKey"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "sha1"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "photo_server_id"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "exifOrientation"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "isFavorite"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/loader/FaceCloudSetLoader;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "data"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/loader/CloudSetLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 68
    return-void
.end method


# virtual methods
.method protected getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/miui/gallery/loader/FaceCloudSetLoader;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method protected wrapDataSet(Landroid/database/Cursor;)Lcom/miui/gallery/model/CursorDataSet;
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 77
    new-instance v0, Lcom/miui/gallery/loader/FaceCloudSetLoader$CloudDataSet;

    iget v2, p0, Lcom/miui/gallery/loader/FaceCloudSetLoader;->mInitPos:I

    invoke-virtual {p0}, Lcom/miui/gallery/loader/FaceCloudSetLoader;->getOperationDupType()I

    move-result v3

    iget-wide v4, p0, Lcom/miui/gallery/loader/FaceCloudSetLoader;->mAlbumId:J

    iget-object v6, p0, Lcom/miui/gallery/loader/FaceCloudSetLoader;->mAlbumName:Ljava/lang/String;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/loader/FaceCloudSetLoader$CloudDataSet;-><init>(Landroid/database/Cursor;IIJLjava/lang/String;)V

    return-object v0
.end method
