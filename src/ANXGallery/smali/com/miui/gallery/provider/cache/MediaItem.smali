.class Lcom/miui/gallery/provider/cache/MediaItem;
.super Ljava/lang/Object;
.source "MediaItem.java"

# interfaces
.implements Lcom/miui/gallery/provider/cache/CacheItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/provider/cache/MediaItem$Generator;,
        Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory;
    }
.end annotation


# static fields
.field private static final PROJECTION:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlbumId:Ljava/lang/Long;

.field private mAlbumServerId:Ljava/lang/String;

.field private mAliasCreateDate:I

.field private mAliasModifyDate:I

.field private mAliasSortDate:I

.field private mAliasSortTime:J

.field private mCreatorId:Ljava/lang/String;

.field private mDateModified:J

.field private mDelegate:Lcom/miui/gallery/provider/cache/AlbumDelegate;

.field private mDescription:Ljava/lang/String;

.field private mDuration:Ljava/lang/Long;

.field private mFavoritesDelegate:Lcom/miui/gallery/provider/cache/FavoritesDelegate;

.field private mFilePath:Ljava/lang/String;

.field private mHeight:Ljava/lang/Integer;

.field private mId:J

.field private mIsSyncing:Ljava/lang/Boolean;

.field private mLatitude:Ljava/lang/String;

.field private mLatitudeRef:Ljava/lang/Character;

.field private mLocalFlag:Ljava/lang/Long;

.field private mLocation:Ljava/lang/String;

.field private mLongitude:Ljava/lang/String;

.field private mLongitudeRef:Ljava/lang/Character;

.field private mMicroThumb:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field private mMixedTime:J

.field private mOrientation:Ljava/lang/Integer;

.field private mSecretKey:[B

.field private mServerId:Ljava/lang/String;

.field private mServerStatus:Ljava/lang/String;

.field private mServerTag:Ljava/lang/Long;

.field private mSha1:Ljava/lang/String;

.field private mSize:Ljava/lang/Long;

.field private mSpecialTypeFlags:Ljava/lang/Long;

.field private mThumbnail:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mType:Ljava/lang/Integer;

.field private mWidth:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 592
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->PROJECTION:Ljava/util/HashMap;

    .line 593
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->PROJECTION:Ljava/util/HashMap;

    const-string v1, "_id"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->PROJECTION:Ljava/util/HashMap;

    const-string/jumbo v1, "sha1"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->PROJECTION:Ljava/util/HashMap;

    const-string v1, "localGroupId"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->PROJECTION:Ljava/util/HashMap;

    const-string v1, "microthumbfile"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->PROJECTION:Ljava/util/HashMap;

    const-string/jumbo v1, "thumbnailFile"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->PROJECTION:Ljava/util/HashMap;

    const-string v1, "localFile"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->PROJECTION:Ljava/util/HashMap;

    const-string v1, "serverType"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->PROJECTION:Ljava/util/HashMap;

    const-string/jumbo v1, "title"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->PROJECTION:Ljava/util/HashMap;

    const-string v1, "duration"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->PROJECTION:Ljava/util/HashMap;

    const-string v1, "description"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->PROJECTION:Ljava/util/HashMap;

    const-string/jumbo v1, "size"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->PROJECTION:Ljava/util/HashMap;

    const-string v1, "mimeType"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->PROJECTION:Ljava/util/HashMap;

    const-string v1, "location"

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->PROJECTION:Ljava/util/HashMap;

    const-string v1, "exifGPSLatitude"

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->PROJECTION:Ljava/util/HashMap;

    const-string v1, "exifGPSLatitudeRef"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->PROJECTION:Ljava/util/HashMap;

    const-string v1, "exifGPSLongitude"

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->PROJECTION:Ljava/util/HashMap;

    const-string v1, "exifGPSLongitudeRef"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->PROJECTION:Ljava/util/HashMap;

    const-string v1, "alias_micro_thumbnail"

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->PROJECTION:Ljava/util/HashMap;

    const-string v1, "alias_create_time"

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->PROJECTION:Ljava/util/HashMap;

    const-string v1, "alias_create_date"

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->PROJECTION:Ljava/util/HashMap;

    const-string v1, "alias_sync_state"

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->PROJECTION:Ljava/util/HashMap;

    const-string v1, "secretKey"

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->PROJECTION:Ljava/util/HashMap;

    const-string v1, "exifImageWidth"

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->PROJECTION:Ljava/util/HashMap;

    const-string v1, "exifImageLength"

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->PROJECTION:Ljava/util/HashMap;

    const-string v1, "alias_show_in_homepage"

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->PROJECTION:Ljava/util/HashMap;

    const-string v1, "creatorId"

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->PROJECTION:Ljava/util/HashMap;

    const-string v1, "localFlag"

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->PROJECTION:Ljava/util/HashMap;

    const-string v1, "alias_hidden"

    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->PROJECTION:Ljava/util/HashMap;

    const-string v1, "serverTag"

    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->PROJECTION:Ljava/util/HashMap;

    const-string v1, "serverId"

    const/16 v2, 0x1d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->PROJECTION:Ljava/util/HashMap;

    const-string v1, "dateModified"

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->PROJECTION:Ljava/util/HashMap;

    const-string v1, "alias_modify_date"

    const/16 v2, 0x1f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->PROJECTION:Ljava/util/HashMap;

    const-string v1, "alias_clear_thumbnail"

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->PROJECTION:Ljava/util/HashMap;

    const-string v1, "alias_is_favorite"

    const/16 v2, 0x21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->PROJECTION:Ljava/util/HashMap;

    const-string v1, "groupId"

    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->PROJECTION:Ljava/util/HashMap;

    const-string/jumbo v1, "specialTypeFlags"

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->PROJECTION:Ljava/util/HashMap;

    const-string v1, "alias_sort_time"

    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->PROJECTION:Ljava/util/HashMap;

    const-string v1, "alias_sort_date"

    const/16 v2, 0x25

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->PROJECTION:Ljava/util/HashMap;

    const-string v1, "exifOrientation"

    const/16 v2, 0x26

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1290
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/provider/cache/MediaItem;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/miui/gallery/provider/cache/MediaItem;->getAliasSyncState()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/provider/cache/MediaItem;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mDateModified:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/provider/cache/MediaItem;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mType:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mType:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$102(Lcom/miui/gallery/provider/cache/MediaItem;J)J
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;
    .param p1, "x1"    # J

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mDateModified:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/miui/gallery/provider/cache/MediaItem;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mLocalFlag:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;
    .param p1, "x1"    # Ljava/lang/Long;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mLocalFlag:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/miui/gallery/provider/cache/MediaItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mThumbnail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mThumbnail:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/miui/gallery/provider/cache/MediaItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/miui/gallery/provider/cache/MediaItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mSha1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mSha1:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/miui/gallery/provider/cache/MediaItem;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mServerTag:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;
    .param p1, "x1"    # Ljava/lang/Long;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mServerTag:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/miui/gallery/provider/cache/MediaItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mServerId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mServerId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/miui/gallery/provider/cache/MediaItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;

    .prologue
    .line 30
    iget v0, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAliasCreateDate:I

    return v0
.end method

.method static synthetic access$1702(Lcom/miui/gallery/provider/cache/MediaItem;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAliasCreateDate:I

    return p1
.end method

.method static synthetic access$1800(Lcom/miui/gallery/provider/cache/MediaItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mMimeType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/miui/gallery/provider/cache/MediaItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAlbumServerId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAlbumServerId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/gallery/provider/cache/MediaItem;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAliasSortTime:J

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/miui/gallery/provider/cache/MediaItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mLocation:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->PROJECTION:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mMicroThumb:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;
    .param p1, "x1"    # Ljava/lang/Long;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mDuration:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mLatitude:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Character;)Ljava/lang/Character;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;
    .param p1, "x1"    # Ljava/lang/Character;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mLatitudeRef:Ljava/lang/Character;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mLongitude:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Character;)Ljava/lang/Character;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;
    .param p1, "x1"    # Ljava/lang/Character;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mLongitudeRef:Ljava/lang/Character;

    return-object p1
.end method

.method static synthetic access$2902(Lcom/miui/gallery/provider/cache/MediaItem;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;
    .param p1, "x1"    # [B

    .prologue
    .line 30
    iput-object p1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mSecretKey:[B

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/gallery/provider/cache/MediaItem;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mMixedTime:J

    return-wide v0
.end method

.method static synthetic access$3002(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mServerStatus:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/miui/gallery/provider/cache/MediaItem;J)J
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;
    .param p1, "x1"    # J

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mMixedTime:J

    return-wide p1
.end method

.method static synthetic access$3102(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mCreatorId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/miui/gallery/provider/cache/MediaItem;Lcom/miui/gallery/provider/cache/AlbumDelegate;)Lcom/miui/gallery/provider/cache/AlbumDelegate;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;
    .param p1, "x1"    # Lcom/miui/gallery/provider/cache/AlbumDelegate;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mDelegate:Lcom/miui/gallery/provider/cache/AlbumDelegate;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/miui/gallery/provider/cache/MediaItem;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAliasModifyDate:I

    return p1
.end method

.method static synthetic access$3402(Lcom/miui/gallery/provider/cache/MediaItem;Lcom/miui/gallery/provider/cache/FavoritesDelegate;)Lcom/miui/gallery/provider/cache/FavoritesDelegate;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;
    .param p1, "x1"    # Lcom/miui/gallery/provider/cache/FavoritesDelegate;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mFavoritesDelegate:Lcom/miui/gallery/provider/cache/FavoritesDelegate;

    return-object p1
.end method

.method static synthetic access$3502(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;
    .param p1, "x1"    # Ljava/lang/Long;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mSpecialTypeFlags:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/miui/gallery/provider/cache/MediaItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/miui/gallery/provider/cache/MediaItem;->regenerateSortTimeAndDate()V

    return-void
.end method

.method static synthetic access$3702(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mOrientation:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$3802(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mIsSyncing:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$400(Lcom/miui/gallery/provider/cache/MediaItem;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mId:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/miui/gallery/provider/cache/MediaItem;J)J
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;
    .param p1, "x1"    # J

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mId:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/miui/gallery/provider/cache/MediaItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/miui/gallery/provider/cache/MediaItem;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mSize:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$602(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;
    .param p1, "x1"    # Ljava/lang/Long;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mSize:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$700(Lcom/miui/gallery/provider/cache/MediaItem;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mWidth:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$702(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mWidth:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$800(Lcom/miui/gallery/provider/cache/MediaItem;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mHeight:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$802(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mHeight:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$900(Lcom/miui/gallery/provider/cache/MediaItem;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAlbumId:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$902(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaItem;
    .param p1, "x1"    # Ljava/lang/Long;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAlbumId:Ljava/lang/Long;

    return-object p1
.end method

.method private getAliasSyncState()Ljava/lang/Long;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 479
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mLocalFlag:Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 480
    const-string v1, ".provider.cache.MediaItem"

    const-string v2, "localFlag is null!"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-wide/32 v2, 0x7fffffff

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 499
    :goto_0
    return-object v1

    .line 482
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mLocalFlag:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 483
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    .line 484
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mLocalFlag:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x5

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mLocalFlag:Ljava/lang/Long;

    .line 485
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x6

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mLocalFlag:Ljava/lang/Long;

    .line 486
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x9

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    .line 487
    :cond_2
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    .line 488
    :cond_3
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAlbumId:Ljava/lang/Long;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mDelegate:Lcom/miui/gallery/provider/cache/AlbumDelegate;

    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAlbumId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/provider/cache/AlbumDelegate;->isAutoUpload(J)Z

    move-result v1

    if-nez v1, :cond_5

    .line 489
    :cond_4
    const-wide/16 v2, 0x4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    .line 491
    :cond_5
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mIsSyncing:Ljava/lang/Boolean;

    if-nez v1, :cond_6

    .line 492
    new-instance v0, Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;

    sget-object v1, Lcom/miui/gallery/sdk/uploadstatus/ItemType;->OWNER:Lcom/miui/gallery/sdk/uploadstatus/ItemType;

    iget-wide v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;-><init>(Lcom/miui/gallery/sdk/uploadstatus/ItemType;Ljava/lang/String;)V

    .line 493
    .local v0, "item":Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;
    invoke-static {}, Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;->getInstance()Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;->getUploadStatusProxy()Lcom/miui/gallery/sdk/uploadstatus/UploadStatusProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/gallery/sdk/uploadstatus/UploadStatusProxy;->getUploadStatus(Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;)Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;

    move-result-object v0

    .line 494
    if-eqz v0, :cond_7

    iget-object v1, v0, Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;->mStatus:Lcom/miui/gallery/sdk/SyncStatus;

    sget-object v2, Lcom/miui/gallery/sdk/SyncStatus;->STATUS_INIT:Lcom/miui/gallery/sdk/SyncStatus;

    if-ne v1, v2, :cond_7

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mIsSyncing:Ljava/lang/Boolean;

    .line 496
    .end local v0    # "item":Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;
    :cond_6
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mIsSyncing:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 497
    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto/16 :goto_0

    .line 494
    .restart local v0    # "item":Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;
    :cond_7
    const/4 v1, 0x0

    goto :goto_1

    .line 499
    .end local v0    # "item":Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;
    :cond_8
    const-wide/16 v2, 0x3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private regenerateSortTimeAndDate()V
    .locals 4

    .prologue
    .line 505
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAlbumId:Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 506
    iget-wide v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mMixedTime:J

    iput-wide v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAliasSortTime:J

    .line 507
    iget v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAliasCreateDate:I

    iput v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAliasSortDate:I

    .line 523
    :goto_0
    return-void

    .line 509
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mDelegate:Lcom/miui/gallery/provider/cache/AlbumDelegate;

    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAlbumId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/provider/cache/AlbumDelegate;->getSortDate(J)Lcom/miui/gallery/provider/MediaSortDateHelper$SortDate;

    move-result-object v0

    .line 510
    .local v0, "sortDate":Lcom/miui/gallery/provider/MediaSortDateHelper$SortDate;
    sget-object v1, Lcom/miui/gallery/provider/cache/MediaItem$1;->$SwitchMap$com$miui$gallery$provider$MediaSortDateHelper$SortDate:[I

    invoke-virtual {v0}, Lcom/miui/gallery/provider/MediaSortDateHelper$SortDate;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 520
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported sort date "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 512
    :pswitch_0
    iget-wide v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mMixedTime:J

    iput-wide v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAliasSortTime:J

    .line 513
    iget v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAliasCreateDate:I

    iput v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAliasSortDate:I

    goto :goto_0

    .line 516
    :pswitch_1
    iget-wide v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mDateModified:J

    iput-wide v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAliasSortTime:J

    .line 517
    iget v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAliasModifyDate:I

    iput v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAliasSortDate:I

    goto :goto_0

    .line 510
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public columnEquals(Lcom/miui/gallery/provider/cache/CacheItem;I)Z
    .locals 1
    .param p1, "item"    # Lcom/miui/gallery/provider/cache/CacheItem;
    .param p2, "columnIndex"    # I

    .prologue
    .line 82
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/provider/cache/CacheUtils;->columnEquals(Lcom/miui/gallery/provider/cache/CacheItem;Lcom/miui/gallery/provider/cache/CacheItem;I)Z

    move-result v0

    return v0
.end method

.method public fillWindow(Landroid/database/CursorWindow;III)Z
    .locals 4
    .param p1, "window"    # Landroid/database/CursorWindow;
    .param p2, "row"    # I
    .param p3, "column"    # I
    .param p4, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 87
    packed-switch p4, :pswitch_data_0

    .line 206
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, " not recognized column."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    :pswitch_0
    iget-wide v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v1, p2, p3}, Lcom/miui/gallery/provider/cache/ParseUtils;->putLong(Landroid/database/CursorWindow;Ljava/lang/Number;II)Z

    move-result v0

    .line 208
    .local v0, "success":Z
    :goto_0
    return v0

    .line 92
    .end local v0    # "success":Z
    :pswitch_1
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mSha1:Ljava/lang/String;

    invoke-static {p1, v1, p2, p3}, Lcom/miui/gallery/provider/cache/ParseUtils;->putString(Landroid/database/CursorWindow;Ljava/lang/String;II)Z

    move-result v0

    .line 93
    .restart local v0    # "success":Z
    goto :goto_0

    .line 95
    .end local v0    # "success":Z
    :pswitch_2
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAlbumId:Ljava/lang/Long;

    invoke-static {p1, v1, p2, p3}, Lcom/miui/gallery/provider/cache/ParseUtils;->putLong(Landroid/database/CursorWindow;Ljava/lang/Number;II)Z

    move-result v0

    .line 96
    .restart local v0    # "success":Z
    goto :goto_0

    .line 98
    .end local v0    # "success":Z
    :pswitch_3
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mMicroThumb:Ljava/lang/String;

    invoke-static {p1, v1, p2, p3}, Lcom/miui/gallery/provider/cache/ParseUtils;->putString(Landroid/database/CursorWindow;Ljava/lang/String;II)Z

    move-result v0

    .line 99
    .restart local v0    # "success":Z
    goto :goto_0

    .line 101
    .end local v0    # "success":Z
    :pswitch_4
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mThumbnail:Ljava/lang/String;

    invoke-static {p1, v1, p2, p3}, Lcom/miui/gallery/provider/cache/ParseUtils;->putString(Landroid/database/CursorWindow;Ljava/lang/String;II)Z

    move-result v0

    .line 102
    .restart local v0    # "success":Z
    goto :goto_0

    .line 104
    .end local v0    # "success":Z
    :pswitch_5
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-static {p1, v1, p2, p3}, Lcom/miui/gallery/provider/cache/ParseUtils;->putString(Landroid/database/CursorWindow;Ljava/lang/String;II)Z

    move-result v0

    .line 105
    .restart local v0    # "success":Z
    goto :goto_0

    .line 107
    .end local v0    # "success":Z
    :pswitch_6
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mType:Ljava/lang/Integer;

    invoke-static {p1, v1, p2, p3}, Lcom/miui/gallery/provider/cache/ParseUtils;->putLong(Landroid/database/CursorWindow;Ljava/lang/Number;II)Z

    move-result v0

    .line 108
    .restart local v0    # "success":Z
    goto :goto_0

    .line 110
    .end local v0    # "success":Z
    :pswitch_7
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mTitle:Ljava/lang/String;

    invoke-static {p1, v1, p2, p3}, Lcom/miui/gallery/provider/cache/ParseUtils;->putString(Landroid/database/CursorWindow;Ljava/lang/String;II)Z

    move-result v0

    .line 111
    .restart local v0    # "success":Z
    goto :goto_0

    .line 113
    .end local v0    # "success":Z
    :pswitch_8
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mDuration:Ljava/lang/Long;

    invoke-static {p1, v1, p2, p3}, Lcom/miui/gallery/provider/cache/ParseUtils;->putLong(Landroid/database/CursorWindow;Ljava/lang/Number;II)Z

    move-result v0

    .line 114
    .restart local v0    # "success":Z
    goto :goto_0

    .line 116
    .end local v0    # "success":Z
    :pswitch_9
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mDescription:Ljava/lang/String;

    invoke-static {p1, v1, p2, p3}, Lcom/miui/gallery/provider/cache/ParseUtils;->putString(Landroid/database/CursorWindow;Ljava/lang/String;II)Z

    move-result v0

    .line 117
    .restart local v0    # "success":Z
    goto :goto_0

    .line 119
    .end local v0    # "success":Z
    :pswitch_a
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mSize:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3, p2, p3}, Landroid/database/CursorWindow;->putLong(JII)Z

    move-result v0

    .line 120
    .restart local v0    # "success":Z
    goto :goto_0

    .line 122
    .end local v0    # "success":Z
    :pswitch_b
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mMimeType:Ljava/lang/String;

    invoke-static {p1, v1, p2, p3}, Lcom/miui/gallery/provider/cache/ParseUtils;->putString(Landroid/database/CursorWindow;Ljava/lang/String;II)Z

    move-result v0

    .line 123
    .restart local v0    # "success":Z
    goto :goto_0

    .line 125
    .end local v0    # "success":Z
    :pswitch_c
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mLocation:Ljava/lang/String;

    invoke-static {p1, v1, p2, p3}, Lcom/miui/gallery/provider/cache/ParseUtils;->putString(Landroid/database/CursorWindow;Ljava/lang/String;II)Z

    move-result v0

    .line 126
    .restart local v0    # "success":Z
    goto :goto_0

    .line 128
    .end local v0    # "success":Z
    :pswitch_d
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mLatitude:Ljava/lang/String;

    invoke-static {p1, v1, p2, p3}, Lcom/miui/gallery/provider/cache/ParseUtils;->putString(Landroid/database/CursorWindow;Ljava/lang/String;II)Z

    move-result v0

    .line 129
    .restart local v0    # "success":Z
    goto :goto_0

    .line 131
    .end local v0    # "success":Z
    :pswitch_e
    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mLatitudeRef:Ljava/lang/Character;

    if-nez v2, :cond_0

    :goto_1
    invoke-static {p1, v1, p2, p3}, Lcom/miui/gallery/provider/cache/ParseUtils;->putString(Landroid/database/CursorWindow;Ljava/lang/String;II)Z

    move-result v0

    .line 132
    .restart local v0    # "success":Z
    goto :goto_0

    .line 131
    .end local v0    # "success":Z
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mLatitudeRef:Ljava/lang/Character;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 134
    :pswitch_f
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mLongitude:Ljava/lang/String;

    invoke-static {p1, v1, p2, p3}, Lcom/miui/gallery/provider/cache/ParseUtils;->putString(Landroid/database/CursorWindow;Ljava/lang/String;II)Z

    move-result v0

    .line 135
    .restart local v0    # "success":Z
    goto :goto_0

    .line 137
    .end local v0    # "success":Z
    :pswitch_10
    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mLongitudeRef:Ljava/lang/Character;

    if-nez v2, :cond_1

    :goto_2
    invoke-static {p1, v1, p2, p3}, Lcom/miui/gallery/provider/cache/ParseUtils;->putString(Landroid/database/CursorWindow;Ljava/lang/String;II)Z

    move-result v0

    .line 138
    .restart local v0    # "success":Z
    goto :goto_0

    .line 137
    .end local v0    # "success":Z
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mLongitudeRef:Ljava/lang/Character;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 140
    :pswitch_11
    iget-wide v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mMixedTime:J

    invoke-virtual {p1, v2, v3, p2, p3}, Landroid/database/CursorWindow;->putLong(JII)Z

    move-result v0

    .line 141
    .restart local v0    # "success":Z
    goto/16 :goto_0

    .line 143
    .end local v0    # "success":Z
    :pswitch_12
    iget v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAliasCreateDate:I

    int-to-long v2, v1

    invoke-virtual {p1, v2, v3, p2, p3}, Landroid/database/CursorWindow;->putLong(JII)Z

    move-result v0

    .line 144
    .restart local v0    # "success":Z
    goto/16 :goto_0

    .line 146
    .end local v0    # "success":Z
    :pswitch_13
    invoke-virtual {p0}, Lcom/miui/gallery/provider/cache/MediaItem;->getAliasMicroThumbnail()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p2, p3}, Lcom/miui/gallery/provider/cache/ParseUtils;->putString(Landroid/database/CursorWindow;Ljava/lang/String;II)Z

    move-result v0

    .line 147
    .restart local v0    # "success":Z
    goto/16 :goto_0

    .line 149
    .end local v0    # "success":Z
    :pswitch_14
    invoke-direct {p0}, Lcom/miui/gallery/provider/cache/MediaItem;->getAliasSyncState()Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v1, p2, p3}, Lcom/miui/gallery/provider/cache/ParseUtils;->putLong(Landroid/database/CursorWindow;Ljava/lang/Number;II)Z

    move-result v0

    .line 150
    .restart local v0    # "success":Z
    goto/16 :goto_0

    .line 152
    .end local v0    # "success":Z
    :pswitch_15
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mSecretKey:[B

    invoke-static {p1, v1, p2, p3}, Lcom/miui/gallery/provider/cache/ParseUtils;->putBlob(Landroid/database/CursorWindow;[BII)Z

    move-result v0

    .line 153
    .restart local v0    # "success":Z
    goto/16 :goto_0

    .line 155
    .end local v0    # "success":Z
    :pswitch_16
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mWidth:Ljava/lang/Integer;

    invoke-static {p1, v1, p2, p3}, Lcom/miui/gallery/provider/cache/ParseUtils;->putLong(Landroid/database/CursorWindow;Ljava/lang/Number;II)Z

    move-result v0

    .line 156
    .restart local v0    # "success":Z
    goto/16 :goto_0

    .line 158
    .end local v0    # "success":Z
    :pswitch_17
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mHeight:Ljava/lang/Integer;

    invoke-static {p1, v1, p2, p3}, Lcom/miui/gallery/provider/cache/ParseUtils;->putLong(Landroid/database/CursorWindow;Ljava/lang/Number;II)Z

    move-result v0

    .line 159
    .restart local v0    # "success":Z
    goto/16 :goto_0

    .line 161
    .end local v0    # "success":Z
    :pswitch_18
    invoke-virtual {p0}, Lcom/miui/gallery/provider/cache/MediaItem;->getAliasShowInHomePage()Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v1, p2, p3}, Lcom/miui/gallery/provider/cache/ParseUtils;->putLong(Landroid/database/CursorWindow;Ljava/lang/Number;II)Z

    move-result v0

    .line 162
    .restart local v0    # "success":Z
    goto/16 :goto_0

    .line 164
    .end local v0    # "success":Z
    :pswitch_19
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mCreatorId:Ljava/lang/String;

    invoke-static {p1, v1, p2, p3}, Lcom/miui/gallery/provider/cache/ParseUtils;->putString(Landroid/database/CursorWindow;Ljava/lang/String;II)Z

    move-result v0

    .line 165
    .restart local v0    # "success":Z
    goto/16 :goto_0

    .line 167
    .end local v0    # "success":Z
    :pswitch_1a
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mLocalFlag:Ljava/lang/Long;

    invoke-static {p1, v1, p2, p3}, Lcom/miui/gallery/provider/cache/ParseUtils;->putLong(Landroid/database/CursorWindow;Ljava/lang/Number;II)Z

    move-result v0

    .line 168
    .restart local v0    # "success":Z
    goto/16 :goto_0

    .line 170
    .end local v0    # "success":Z
    :pswitch_1b
    invoke-virtual {p0}, Lcom/miui/gallery/provider/cache/MediaItem;->getAliasHidden()Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v1, p2, p3}, Lcom/miui/gallery/provider/cache/ParseUtils;->putLong(Landroid/database/CursorWindow;Ljava/lang/Number;II)Z

    move-result v0

    .line 171
    .restart local v0    # "success":Z
    goto/16 :goto_0

    .line 173
    .end local v0    # "success":Z
    :pswitch_1c
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mServerTag:Ljava/lang/Long;

    invoke-static {p1, v1, p2, p3}, Lcom/miui/gallery/provider/cache/ParseUtils;->putLong(Landroid/database/CursorWindow;Ljava/lang/Number;II)Z

    move-result v0

    .line 174
    .restart local v0    # "success":Z
    goto/16 :goto_0

    .line 176
    .end local v0    # "success":Z
    :pswitch_1d
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mServerId:Ljava/lang/String;

    invoke-static {p1, v1, p2, p3}, Lcom/miui/gallery/provider/cache/ParseUtils;->putString(Landroid/database/CursorWindow;Ljava/lang/String;II)Z

    move-result v0

    .line 177
    .restart local v0    # "success":Z
    goto/16 :goto_0

    .line 179
    .end local v0    # "success":Z
    :pswitch_1e
    iget-wide v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mDateModified:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v1, p2, p3}, Lcom/miui/gallery/provider/cache/ParseUtils;->putLong(Landroid/database/CursorWindow;Ljava/lang/Number;II)Z

    move-result v0

    .line 180
    .restart local v0    # "success":Z
    goto/16 :goto_0

    .line 182
    .end local v0    # "success":Z
    :pswitch_1f
    iget v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAliasModifyDate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1, p2, p3}, Lcom/miui/gallery/provider/cache/ParseUtils;->putLong(Landroid/database/CursorWindow;Ljava/lang/Number;II)Z

    move-result v0

    .line 183
    .restart local v0    # "success":Z
    goto/16 :goto_0

    .line 185
    .end local v0    # "success":Z
    :pswitch_20
    invoke-virtual {p0}, Lcom/miui/gallery/provider/cache/MediaItem;->getAliasClearThumbnail()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p2, p3}, Lcom/miui/gallery/provider/cache/ParseUtils;->putString(Landroid/database/CursorWindow;Ljava/lang/String;II)Z

    move-result v0

    .line 186
    .restart local v0    # "success":Z
    goto/16 :goto_0

    .line 188
    .end local v0    # "success":Z
    :pswitch_21
    invoke-virtual {p0}, Lcom/miui/gallery/provider/cache/MediaItem;->getAliasIsFavorite()Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v1, p2, p3}, Lcom/miui/gallery/provider/cache/ParseUtils;->putLong(Landroid/database/CursorWindow;Ljava/lang/Number;II)Z

    move-result v0

    .line 189
    .restart local v0    # "success":Z
    goto/16 :goto_0

    .line 191
    .end local v0    # "success":Z
    :pswitch_22
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAlbumServerId:Ljava/lang/String;

    invoke-static {p1, v1, p2, p3}, Lcom/miui/gallery/provider/cache/ParseUtils;->putString(Landroid/database/CursorWindow;Ljava/lang/String;II)Z

    move-result v0

    .line 192
    .restart local v0    # "success":Z
    goto/16 :goto_0

    .line 194
    .end local v0    # "success":Z
    :pswitch_23
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mSpecialTypeFlags:Ljava/lang/Long;

    invoke-static {p1, v1, p2, p3}, Lcom/miui/gallery/provider/cache/ParseUtils;->putLong(Landroid/database/CursorWindow;Ljava/lang/Number;II)Z

    move-result v0

    .line 195
    .restart local v0    # "success":Z
    goto/16 :goto_0

    .line 197
    .end local v0    # "success":Z
    :pswitch_24
    iget-wide v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAliasSortTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v1, p2, p3}, Lcom/miui/gallery/provider/cache/ParseUtils;->putLong(Landroid/database/CursorWindow;Ljava/lang/Number;II)Z

    move-result v0

    .line 198
    .restart local v0    # "success":Z
    goto/16 :goto_0

    .line 200
    .end local v0    # "success":Z
    :pswitch_25
    iget v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAliasSortDate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1, p2, p3}, Lcom/miui/gallery/provider/cache/ParseUtils;->putLong(Landroid/database/CursorWindow;Ljava/lang/Number;II)Z

    move-result v0

    .line 201
    .restart local v0    # "success":Z
    goto/16 :goto_0

    .line 203
    .end local v0    # "success":Z
    :pswitch_26
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mOrientation:Ljava/lang/Integer;

    invoke-static {p1, v1, p2, p3}, Lcom/miui/gallery/provider/cache/ParseUtils;->putLong(Landroid/database/CursorWindow;Ljava/lang/Number;II)Z

    move-result v0

    .line 204
    .restart local v0    # "success":Z
    goto/16 :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_13
        :pswitch_11
        :pswitch_12
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
    .end packed-switch
.end method

.method public get(IZ)Ljava/lang/Object;
    .locals 5
    .param p1, "index"    # I
    .param p2, "useDefault"    # Z

    .prologue
    const/16 v4, 0x20

    const/4 v2, 0x0

    .line 212
    packed-switch p1, :pswitch_data_0

    .line 294
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, " not recognized column. "

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 214
    :pswitch_0
    iget-wide v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mMixedTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 292
    :cond_0
    :goto_0
    return-object v2

    .line 216
    :pswitch_1
    iget-object v3, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mSha1:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mSha1:Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_0

    const-string v2, ""

    goto :goto_0

    .line 218
    :pswitch_2
    iget-wide v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    .line 220
    :pswitch_3
    iget-object v3, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAlbumId:Ljava/lang/Long;

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAlbumId:Ljava/lang/Long;

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_0

    sget-object v2, Lcom/miui/gallery/provider/cache/MediaItem;->DEFAULT_LONG:Ljava/lang/Long;

    goto :goto_0

    .line 222
    :pswitch_4
    iget-object v3, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mMicroThumb:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mMicroThumb:Ljava/lang/String;

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_0

    const-string v2, ""

    goto :goto_0

    .line 224
    :pswitch_5
    iget-object v3, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mThumbnail:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mThumbnail:Ljava/lang/String;

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_0

    const-string v2, ""

    goto :goto_0

    .line 226
    :pswitch_6
    iget-object v3, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mFilePath:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mFilePath:Ljava/lang/String;

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_0

    const-string v2, ""

    goto :goto_0

    .line 228
    :pswitch_7
    iget-object v3, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mType:Ljava/lang/Integer;

    if-eqz v3, :cond_6

    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mType:Ljava/lang/Integer;

    goto :goto_0

    :cond_6
    if-eqz p2, :cond_0

    sget-object v2, Lcom/miui/gallery/provider/cache/MediaItem;->DEFAULT_INT:Ljava/lang/Integer;

    goto :goto_0

    .line 230
    :pswitch_8
    iget-object v3, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mTitle:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mTitle:Ljava/lang/String;

    goto :goto_0

    :cond_7
    if-eqz p2, :cond_0

    const-string v2, ""

    goto :goto_0

    .line 232
    :pswitch_9
    iget-object v3, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mDuration:Ljava/lang/Long;

    if-eqz v3, :cond_8

    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mDuration:Ljava/lang/Long;

    goto :goto_0

    :cond_8
    if-eqz p2, :cond_0

    sget-object v2, Lcom/miui/gallery/provider/cache/MediaItem;->DEFAULT_LONG:Ljava/lang/Long;

    goto :goto_0

    .line 234
    :pswitch_a
    iget-object v3, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mDescription:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mDescription:Ljava/lang/String;

    goto :goto_0

    :cond_9
    if-eqz p2, :cond_0

    const-string v2, ""

    goto :goto_0

    .line 236
    :pswitch_b
    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mSize:Ljava/lang/Long;

    goto :goto_0

    .line 238
    :pswitch_c
    iget-object v3, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mMimeType:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mMimeType:Ljava/lang/String;

    goto :goto_0

    :cond_a
    if-eqz p2, :cond_0

    const-string v2, ""

    goto/16 :goto_0

    .line 240
    :pswitch_d
    iget-object v3, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mLocation:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mLocation:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    if-eqz p2, :cond_0

    const-string v2, ""

    goto/16 :goto_0

    .line 242
    :pswitch_e
    iget-object v3, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mLatitude:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mLatitude:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    if-eqz p2, :cond_0

    sget-object v2, Lcom/miui/gallery/provider/cache/MediaItem;->DEFAULT_LONG:Ljava/lang/Long;

    goto/16 :goto_0

    .line 244
    :pswitch_f
    iget-object v3, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mLatitudeRef:Ljava/lang/Character;

    if-eqz v3, :cond_d

    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mLatitudeRef:Ljava/lang/Character;

    goto/16 :goto_0

    :cond_d
    if-eqz p2, :cond_0

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    goto/16 :goto_0

    .line 246
    :pswitch_10
    iget-object v3, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mLongitude:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mLongitude:Ljava/lang/String;

    goto/16 :goto_0

    :cond_e
    if-eqz p2, :cond_0

    sget-object v2, Lcom/miui/gallery/provider/cache/MediaItem;->DEFAULT_LONG:Ljava/lang/Long;

    goto/16 :goto_0

    .line 248
    :pswitch_11
    iget-object v3, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mLongitudeRef:Ljava/lang/Character;

    if-eqz v3, :cond_f

    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mLongitudeRef:Ljava/lang/Character;

    goto/16 :goto_0

    :cond_f
    if-eqz p2, :cond_0

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    goto/16 :goto_0

    .line 250
    :pswitch_12
    iget v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAliasCreateDate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_0

    .line 252
    :pswitch_13
    invoke-virtual {p0}, Lcom/miui/gallery/provider/cache/MediaItem;->getAliasMicroThumbnail()Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "thumbnail":Ljava/lang/String;
    if-eqz v1, :cond_10

    .end local v1    # "thumbnail":Ljava/lang/String;
    :goto_1
    move-object v2, v1

    goto/16 :goto_0

    .restart local v1    # "thumbnail":Ljava/lang/String;
    :cond_10
    if-eqz p2, :cond_11

    sget-object v1, Lcom/miui/gallery/provider/cache/MediaItem;->DEFAULT_LONG:Ljava/lang/Long;

    goto :goto_1

    :cond_11
    move-object v1, v2

    goto :goto_1

    .line 255
    .end local v1    # "thumbnail":Ljava/lang/String;
    :pswitch_14
    invoke-direct {p0}, Lcom/miui/gallery/provider/cache/MediaItem;->getAliasSyncState()Ljava/lang/Long;

    move-result-object v2

    goto/16 :goto_0

    .line 257
    :pswitch_15
    iget-object v3, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mSecretKey:[B

    if-eqz v3, :cond_12

    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mSecretKey:[B

    goto/16 :goto_0

    :cond_12
    if-eqz p2, :cond_0

    const/4 v2, 0x0

    new-array v2, v2, [B

    goto/16 :goto_0

    .line 259
    :pswitch_16
    iget-object v3, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mWidth:Ljava/lang/Integer;

    if-eqz v3, :cond_13

    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mWidth:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_13
    if-eqz p2, :cond_0

    sget-object v2, Lcom/miui/gallery/provider/cache/MediaItem;->DEFAULT_INT:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 261
    :pswitch_17
    iget-object v3, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mHeight:Ljava/lang/Integer;

    if-eqz v3, :cond_14

    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mHeight:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_14
    if-eqz p2, :cond_0

    sget-object v2, Lcom/miui/gallery/provider/cache/MediaItem;->DEFAULT_INT:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 263
    :pswitch_18
    sget-object v2, Lcom/miui/gallery/provider/cache/MediaItem;->TRUE:Ljava/lang/Long;

    goto/16 :goto_0

    .line 265
    :pswitch_19
    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mCreatorId:Ljava/lang/String;

    goto/16 :goto_0

    .line 267
    :pswitch_1a
    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mLocalFlag:Ljava/lang/Long;

    goto/16 :goto_0

    .line 269
    :pswitch_1b
    invoke-virtual {p0}, Lcom/miui/gallery/provider/cache/MediaItem;->getAliasHidden()Ljava/lang/Long;

    move-result-object v2

    goto/16 :goto_0

    .line 271
    :pswitch_1c
    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mServerTag:Ljava/lang/Long;

    goto/16 :goto_0

    .line 273
    :pswitch_1d
    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mServerId:Ljava/lang/String;

    goto/16 :goto_0

    .line 275
    :pswitch_1e
    iget-wide v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mDateModified:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto/16 :goto_0

    .line 277
    :pswitch_1f
    iget v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAliasModifyDate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_0

    .line 279
    :pswitch_20
    invoke-virtual {p0}, Lcom/miui/gallery/provider/cache/MediaItem;->getAliasClearThumbnail()Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "clearThumbnail":Ljava/lang/String;
    if-eqz v0, :cond_15

    .end local v0    # "clearThumbnail":Ljava/lang/String;
    :goto_2
    move-object v2, v0

    goto/16 :goto_0

    .restart local v0    # "clearThumbnail":Ljava/lang/String;
    :cond_15
    if-eqz p2, :cond_16

    const-string v0, ""

    goto :goto_2

    :cond_16
    move-object v0, v2

    goto :goto_2

    .line 282
    .end local v0    # "clearThumbnail":Ljava/lang/String;
    :pswitch_21
    invoke-virtual {p0}, Lcom/miui/gallery/provider/cache/MediaItem;->getAliasIsFavorite()Ljava/lang/Long;

    move-result-object v2

    goto/16 :goto_0

    .line 284
    :pswitch_22
    iget-object v3, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAlbumServerId:Ljava/lang/String;

    if-eqz v3, :cond_17

    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAlbumServerId:Ljava/lang/String;

    goto/16 :goto_0

    :cond_17
    if-eqz p2, :cond_0

    const-string v2, ""

    goto/16 :goto_0

    .line 286
    :pswitch_23
    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mSpecialTypeFlags:Ljava/lang/Long;

    goto/16 :goto_0

    .line 288
    :pswitch_24
    iget v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAliasSortDate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_0

    .line 290
    :pswitch_25
    iget-wide v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAliasSortTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto/16 :goto_0

    .line 292
    :pswitch_26
    iget-object v3, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mOrientation:Ljava/lang/Integer;

    if-eqz v3, :cond_18

    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mOrientation:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_18
    if-eqz p2, :cond_0

    sget-object v2, Lcom/miui/gallery/provider/cache/MediaItem;->DEFAULT_INT:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_13
        :pswitch_0
        :pswitch_12
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_25
        :pswitch_24
        :pswitch_26
    .end packed-switch
.end method

.method public getAliasClearThumbnail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mFilePath:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mThumbnail:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mThumbnail:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mMicroThumb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mMicroThumb:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAliasHidden()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 445
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAlbumId:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 446
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->FALSE:Ljava/lang/Long;

    .line 448
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mDelegate:Lcom/miui/gallery/provider/cache/AlbumDelegate;

    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAlbumId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/provider/cache/AlbumDelegate;->isHidden(J)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->TRUE:Ljava/lang/Long;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->FALSE:Ljava/lang/Long;

    goto :goto_0
.end method

.method public getAliasIsFavorite()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mSha1:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 453
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->FALSE:Ljava/lang/Long;

    .line 455
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mFavoritesDelegate:Lcom/miui/gallery/provider/cache/FavoritesDelegate;

    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mSha1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/provider/cache/FavoritesDelegate;->isFavorite(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->TRUE:Ljava/lang/Long;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->FALSE:Ljava/lang/Long;

    goto :goto_0
.end method

.method public getAliasMicroThumbnail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mMicroThumb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mMicroThumb:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mThumbnail:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mThumbnail:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mFilePath:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAliasShowInHomePage()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 438
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAlbumId:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 439
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->FALSE:Ljava/lang/Long;

    .line 441
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mDelegate:Lcom/miui/gallery/provider/cache/AlbumDelegate;

    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAlbumId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/provider/cache/AlbumDelegate;->isShowInHomePage(J)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->TRUE:Ljava/lang/Long;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem;->FALSE:Ljava/lang/Long;

    goto :goto_0
.end method

.method public getAliasSortDate()I
    .locals 1

    .prologue
    .line 467
    iget v0, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAliasSortDate:I

    return v0
.end method

.method public getAliasSortTime()J
    .locals 2

    .prologue
    .line 471
    iget-wide v0, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAliasSortTime:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 459
    iget-wide v0, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mId:J

    return-wide v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getType(I)I
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 300
    packed-switch p1, :pswitch_data_0

    .line 382
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, " not recognized column. "

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 304
    :pswitch_0
    iget-object v4, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mSha1:Ljava/lang/String;

    if-eqz v4, :cond_1

    :goto_0
    move v4, v2

    .line 380
    :cond_0
    :goto_1
    :pswitch_1
    return v4

    :cond_1
    move v2, v3

    .line 304
    goto :goto_0

    .line 308
    :pswitch_2
    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAlbumId:Ljava/lang/Long;

    if-eqz v2, :cond_2

    move v3, v4

    :cond_2
    move v4, v3

    goto :goto_1

    .line 310
    :pswitch_3
    iget-object v4, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mMicroThumb:Ljava/lang/String;

    if-eqz v4, :cond_3

    :goto_2
    move v4, v2

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2

    .line 312
    :pswitch_4
    iget-object v4, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mThumbnail:Ljava/lang/String;

    if-eqz v4, :cond_4

    :goto_3
    move v4, v2

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_3

    .line 314
    :pswitch_5
    iget-object v4, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mFilePath:Ljava/lang/String;

    if-eqz v4, :cond_5

    :goto_4
    move v4, v2

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_4

    .line 316
    :pswitch_6
    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mType:Ljava/lang/Integer;

    if-nez v2, :cond_0

    move v4, v3

    goto :goto_1

    .line 318
    :pswitch_7
    iget-object v4, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mTitle:Ljava/lang/String;

    if-eqz v4, :cond_6

    :goto_5
    move v4, v2

    goto :goto_1

    :cond_6
    move v2, v3

    goto :goto_5

    .line 320
    :pswitch_8
    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mDuration:Ljava/lang/Long;

    if-nez v2, :cond_0

    move v4, v3

    goto :goto_1

    .line 322
    :pswitch_9
    iget-object v4, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mDescription:Ljava/lang/String;

    if-eqz v4, :cond_7

    :goto_6
    move v4, v2

    goto :goto_1

    :cond_7
    move v2, v3

    goto :goto_6

    .line 326
    :pswitch_a
    iget-object v4, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mMimeType:Ljava/lang/String;

    if-eqz v4, :cond_8

    :goto_7
    move v4, v2

    goto :goto_1

    :cond_8
    move v2, v3

    goto :goto_7

    .line 328
    :pswitch_b
    iget-object v4, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mLocation:Ljava/lang/String;

    if-eqz v4, :cond_9

    :goto_8
    move v4, v2

    goto :goto_1

    :cond_9
    move v2, v3

    goto :goto_8

    .line 330
    :pswitch_c
    iget-object v4, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mLatitude:Ljava/lang/String;

    if-eqz v4, :cond_a

    :goto_9
    move v4, v2

    goto :goto_1

    :cond_a
    move v2, v3

    goto :goto_9

    .line 332
    :pswitch_d
    iget-object v4, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mLatitudeRef:Ljava/lang/Character;

    if-eqz v4, :cond_b

    :goto_a
    move v4, v2

    goto :goto_1

    :cond_b
    move v2, v3

    goto :goto_a

    .line 334
    :pswitch_e
    iget-object v4, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mLongitude:Ljava/lang/String;

    if-eqz v4, :cond_c

    :goto_b
    move v4, v2

    goto :goto_1

    :cond_c
    move v2, v3

    goto :goto_b

    .line 336
    :pswitch_f
    iget-object v4, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mLongitudeRef:Ljava/lang/Character;

    if-eqz v4, :cond_d

    :goto_c
    move v4, v2

    goto :goto_1

    :cond_d
    move v2, v3

    goto :goto_c

    .line 340
    :pswitch_10
    invoke-virtual {p0}, Lcom/miui/gallery/provider/cache/MediaItem;->getAliasMicroThumbnail()Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, "thumbnail":Ljava/lang/String;
    if-eqz v1, :cond_e

    :goto_d
    move v4, v2

    goto :goto_1

    :cond_e
    move v2, v3

    goto :goto_d

    .line 345
    .end local v1    # "thumbnail":Ljava/lang/String;
    :pswitch_11
    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mSecretKey:[B

    if-eqz v2, :cond_f

    const/4 v3, 0x4

    :cond_f
    move v4, v3

    goto :goto_1

    .line 347
    :pswitch_12
    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mWidth:Ljava/lang/Integer;

    if-nez v2, :cond_0

    move v4, v3

    goto/16 :goto_1

    .line 349
    :pswitch_13
    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mHeight:Ljava/lang/Integer;

    if-nez v2, :cond_0

    move v4, v3

    goto/16 :goto_1

    :pswitch_14
    move v4, v2

    .line 353
    goto/16 :goto_1

    :pswitch_15
    move v4, v2

    .line 361
    goto/16 :goto_1

    .line 367
    :pswitch_16
    invoke-virtual {p0}, Lcom/miui/gallery/provider/cache/MediaItem;->getAliasClearThumbnail()Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "clearThumbnail":Ljava/lang/String;
    if-eqz v0, :cond_10

    :goto_e
    move v4, v2

    goto/16 :goto_1

    :cond_10
    move v2, v3

    goto :goto_e

    .line 372
    .end local v0    # "clearThumbnail":Ljava/lang/String;
    :pswitch_17
    iget-object v4, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAlbumServerId:Ljava/lang/String;

    if-eqz v4, :cond_11

    :goto_f
    move v4, v2

    goto/16 :goto_1

    :cond_11
    move v2, v3

    goto :goto_f

    .line 380
    :pswitch_18
    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mOrientation:Ljava/lang/Integer;

    if-nez v2, :cond_0

    move v4, v3

    goto/16 :goto_1

    .line 300
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_1
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_1
        :pswitch_14
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_15
        :pswitch_1
        :pswitch_1
        :pswitch_16
        :pswitch_1
        :pswitch_17
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_18
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaItem{mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSha1=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mSha1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAlbumId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAlbumId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMicroThumb=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mMicroThumb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mThumbnail=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mThumbnail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFilePath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mType:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTitle=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMimeType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLocalFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mLocalFlag:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsSyncing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mIsSyncing:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSecretKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mSecretKey:[B

    .line 539
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMixedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mMixedTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAliasCreateDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAliasCreateDate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDateModified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mDateModified:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAilasSortTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAliasSortTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAlbumServerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mAlbumServerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSpecialTypeFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem;->mSpecialTypeFlags:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
