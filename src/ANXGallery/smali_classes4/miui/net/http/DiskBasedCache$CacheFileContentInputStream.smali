.class Lmiui/net/http/DiskBasedCache$CacheFileContentInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/net/http/DiskBasedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheFileContentInputStream"
.end annotation


# instance fields
.field private Dk:Lmiui/net/http/DiskBasedCache$DiskCacheEntry;


# direct methods
.method protected constructor <init>(Lmiui/net/http/DiskBasedCache$DiskCacheEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 671
    invoke-static {p1}, Lmiui/net/http/DiskBasedCache$CacheFileContentInputStream;->c(Lmiui/net/http/DiskBasedCache$DiskCacheEntry;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 672
    iget-object v0, p0, Lmiui/net/http/DiskBasedCache$CacheFileContentInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 673
    iput-object p1, p0, Lmiui/net/http/DiskBasedCache$CacheFileContentInputStream;->Dk:Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    .line 675
    :cond_0
    return-void
.end method

.method private static c(Lmiui/net/http/DiskBasedCache$DiskCacheEntry;)Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 678
    invoke-virtual {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->acquire()V

    .line 679
    nop

    .line 681
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 682
    iget-wide v1, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->offset:J

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v1

    iget-wide v3, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->offset:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 685
    nop

    .line 686
    nop

    .line 688
    nop

    .line 686
    return-object v0

    .line 683
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skip failed for file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 688
    :catchall_0
    move-exception v0

    .line 689
    invoke-virtual {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->release()V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 696
    iget-object v0, p0, Lmiui/net/http/DiskBasedCache$CacheFileContentInputStream;->Dk:Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    invoke-virtual {v0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->release()V

    .line 697
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 698
    return-void
.end method
