.class Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;
.super Ljava/lang/Object;
.source "SlimController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cleaner/slim/SlimController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaItem"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# instance fields
.field public dateTime:Ljava/lang/String;

.field public fileName:Ljava/lang/String;

.field public gpsDateStamp:Ljava/lang/String;

.field public gpsTimeStamp:Ljava/lang/String;

.field public id:I

.field public localFilePath:Ljava/lang/String;

.field public mixDateTime:J

.field public orientation:I

.field public serverType:I

.field public sha1:Ljava/lang/String;

.field public thumbnailFilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 564
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "fileName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "sha1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "exifOrientation"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "exifDateTime"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "exifGPSDateStamp"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "exifGPSTimeStamp"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mixedDateTime"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "localFile"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "thumbnailFile"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "serverType"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cursorToEntity(Landroid/database/Cursor;)Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x0

    .line 603
    new-instance v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;

    invoke-direct {v0}, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;-><init>()V

    .line 604
    .local v0, "item":Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->id:I

    .line 605
    const/4 v2, 0x1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->fileName:Ljava/lang/String;

    .line 606
    const/4 v2, 0x2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->sha1:Ljava/lang/String;

    .line 607
    invoke-interface {p0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 608
    :goto_0
    iput v1, v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->orientation:I

    .line 609
    const/4 v1, 0x4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->dateTime:Ljava/lang/String;

    .line 610
    const/4 v1, 0x5

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->gpsDateStamp:Ljava/lang/String;

    .line 611
    const/4 v1, 0x6

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->gpsTimeStamp:Ljava/lang/String;

    .line 612
    const/4 v1, 0x7

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->mixDateTime:J

    .line 613
    const/16 v1, 0x8

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->localFilePath:Ljava/lang/String;

    .line 614
    const/16 v1, 0x9

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->thumbnailFilePath:Ljava/lang/String;

    .line 615
    const/16 v1, 0xa

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->serverType:I

    .line 616
    return-object v0

    .line 608
    :cond_0
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    goto :goto_0
.end method
