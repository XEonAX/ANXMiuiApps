.class public Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$AlbumInfo;
.super Ljava/lang/Object;
.source "GalleryCloudProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AlbumInfo"
.end annotation


# static fields
.field protected static final PROJECTION:[Ljava/lang/String;


# instance fields
.field public final mAlbumId:J

.field public final mAttributes:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 904
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "attributes"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$AlbumInfo;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "albumId"    # J
    .param p3, "attributes"    # J

    .prologue
    .line 915
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 916
    iput-wide p1, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$AlbumInfo;->mAlbumId:J

    .line 917
    iput-wide p3, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$AlbumInfo;->mAttributes:J

    .line 918
    return-void
.end method
