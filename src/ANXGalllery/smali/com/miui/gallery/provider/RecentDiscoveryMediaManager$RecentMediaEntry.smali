.class public Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;
.super Ljava/lang/Object;
.source "RecentDiscoveryMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecentMediaEntry"
.end annotation


# instance fields
.field private final mAlbumId:J

.field private final mDateModified:J

.field private final mMediaId:J

.field private final mThumbPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJLjava/lang/String;J)V
    .locals 1
    .param p1, "albumId"    # J
    .param p3, "mediaId"    # J
    .param p5, "thumbPath"    # Ljava/lang/String;
    .param p6, "dateModified"    # J

    .prologue
    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 660
    iput-wide p1, p0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;->mAlbumId:J

    .line 661
    iput-wide p3, p0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;->mMediaId:J

    .line 662
    iput-object p5, p0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;->mThumbPath:Ljava/lang/String;

    .line 663
    iput-wide p6, p0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;->mDateModified:J

    .line 664
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;

    .prologue
    .line 653
    iget-wide v0, p0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;->mAlbumId:J

    return-wide v0
.end method


# virtual methods
.method public getDateModified()J
    .locals 2

    .prologue
    .line 679
    iget-wide v0, p0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;->mDateModified:J

    return-wide v0
.end method

.method public getMediaId()J
    .locals 2

    .prologue
    .line 671
    iget-wide v0, p0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;->mMediaId:J

    return-wide v0
.end method

.method public getThumbPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;->mThumbPath:Ljava/lang/String;

    return-object v0
.end method
