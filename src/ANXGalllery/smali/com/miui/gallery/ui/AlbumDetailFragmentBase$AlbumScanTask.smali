.class Lcom/miui/gallery/ui/AlbumDetailFragmentBase$AlbumScanTask;
.super Ljava/lang/Object;
.source "AlbumDetailFragmentBase.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/AlbumDetailFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlbumScanTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAlbumId:J

.field private final mAlbumLocalPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1, "albumLocalPath"    # Ljava/lang/String;
    .param p2, "albumId"    # J

    .prologue
    .line 863
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 864
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$AlbumScanTask;->mAlbumLocalPath:Ljava/lang/String;

    .line 865
    iput-wide p2, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$AlbumScanTask;->mAlbumId:J

    .line 866
    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 859
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$AlbumScanTask;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 7
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    const/4 v6, 0x0

    .line 870
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 871
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$AlbumScanTask;->mAlbumLocalPath:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/miui/gallery/util/StorageUtils;->getAbsolutePath(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 872
    .local v1, "paths":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 874
    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x3

    .line 873
    invoke-static {v0, v2, v3, v6}, Lcom/miui/gallery/scanner/MediaScannerUtil;->scanDirectories(Landroid/content/Context;Ljava/util/ArrayList;IZ)V

    .line 878
    :cond_0
    iget-wide v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$AlbumScanTask;->mAlbumId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 879
    const/4 v2, 0x4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-wide v4, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$AlbumScanTask;->mAlbumId:J

    .line 881
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    .line 879
    invoke-static {v0, v2, v3}, Lcom/miui/gallery/scanner/MediaScannerUtil;->cleanupByAlbumId(Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 884
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method
