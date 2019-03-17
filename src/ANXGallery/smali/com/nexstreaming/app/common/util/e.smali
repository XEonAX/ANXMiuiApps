.class public final Lcom/nexstreaming/app/common/util/e;
.super Ljava/lang/Object;
.source "FreeSpaceChecker.java"


# direct methods
.method public static a(Ljava/io/File;)J
    .locals 8

    .prologue
    const-wide v0, 0x7fffffffffffffffL

    .line 38
    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 39
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    goto :goto_0

    .line 40
    :cond_0
    if-nez p0, :cond_1

    .line 48
    :goto_1
    return-wide v0

    .line 44
    :cond_1
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v4, v3

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v4

    goto :goto_1

    .line 46
    :catch_0
    move-exception v2

    .line 47
    const-string v3, "FreeSpaceChecker"

    const-string v4, "KM-1618 : "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
