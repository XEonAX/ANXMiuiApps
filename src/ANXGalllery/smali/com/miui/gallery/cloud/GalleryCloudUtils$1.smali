.class final Lcom/miui/gallery/cloud/GalleryCloudUtils$1;
.super Ljava/lang/Object;
.source "GalleryCloudUtils.java"

# interfaces
.implements Lcom/miui/gallery/util/GalleryUtils$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/cloud/GalleryCloudUtils;->ensureDateTakenAndLocation(Ljava/lang/String;ZLandroid/content/ContentValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/GalleryUtils$QueryHandler",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Landroid/content/ContentValues;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/miui/gallery/cloud/GalleryCloudUtils$1;->val$values:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 233
    invoke-virtual {p0, p1}, Lcom/miui/gallery/cloud/GalleryCloudUtils$1;->handle(Landroid/database/Cursor;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public handle(Landroid/database/Cursor;)Ljava/lang/Void;
    .locals 12
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    .line 237
    if-nez p1, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-object v9

    .line 240
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 241
    const/4 v6, 0x0

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 242
    .local v0, "dateTaken":J
    const/4 v6, 0x1

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    .line 243
    .local v2, "latitude":D
    const/4 v6, 0x2

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    .line 244
    .local v4, "longitude":D
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_2

    .line 245
    iget-object v6, p0, Lcom/miui/gallery/cloud/GalleryCloudUtils$1;->val$values:Landroid/content/ContentValues;

    const-string v7, "dateTaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 247
    :cond_2
    cmpl-double v6, v2, v10

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/miui/gallery/cloud/GalleryCloudUtils$1;->val$values:Landroid/content/ContentValues;

    const-string v7, "exifGPSLatitude"

    .line 248
    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3

    .line 249
    iget-object v6, p0, Lcom/miui/gallery/cloud/GalleryCloudUtils$1;->val$values:Landroid/content/ContentValues;

    const-string v7, "exifGPSLatitude"

    .line 250
    invoke-static {v2, v3}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->convertDoubleToLaLon(D)Ljava/lang/String;

    move-result-object v8

    .line 249
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_3
    cmpl-double v6, v4, v10

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/miui/gallery/cloud/GalleryCloudUtils$1;->val$values:Landroid/content/ContentValues;

    const-string v7, "exifGPSLongitude"

    .line 253
    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    .line 254
    iget-object v6, p0, Lcom/miui/gallery/cloud/GalleryCloudUtils$1;->val$values:Landroid/content/ContentValues;

    const-string v7, "exifGPSLongitude"

    .line 255
    invoke-static {v4, v5}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->convertDoubleToLaLon(D)Ljava/lang/String;

    move-result-object v8

    .line 254
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
