.class Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/scanner/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlbumEntry"
.end annotation


# instance fields
.field isModified:Z

.field isOnlyLinkFolder:Z

.field isShareAlbum:Z

.field mAlbumName:Ljava/lang/String;

.field mAttributes:I

.field mDateModified:J

.field mID:J

.field mLocalFlag:I

.field mServerID:Ljava/lang/String;

.field mServerStatus:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/scanner/MediaScanner$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/scanner/MediaScanner$1;

    .prologue
    .line 1414
    invoke-direct {p0}, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;-><init>()V

    return-void
.end method

.method public static isSyncable(I)Z
    .locals 4
    .param p0, "attributes"    # I

    .prologue
    .line 1433
    int-to-long v0, p0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldScan(Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;)Z
    .locals 2
    .param p0, "entry"    # Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;

    .prologue
    .line 1427
    if-eqz p0, :cond_0

    iget v0, p0, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mLocalFlag:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mServerStatus:Ljava/lang/String;

    const-string v1, "deleted"

    .line 1428
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mServerStatus:Ljava/lang/String;

    const-string v1, "purged"

    .line 1429
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
