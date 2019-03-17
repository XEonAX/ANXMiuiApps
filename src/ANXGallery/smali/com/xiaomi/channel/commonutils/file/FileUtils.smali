.class public Lcom/xiaomi/channel/commonutils/file/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final mFileTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/channel/commonutils/file/FileUtils;->mFileTypes:Ljava/util/HashMap;

    .line 16
    sget-object v0, Lcom/xiaomi/channel/commonutils/file/FileUtils;->mFileTypes:Ljava/util/HashMap;

    const-string v1, "FFD8FF"

    const-string v2, "jpg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/xiaomi/channel/commonutils/file/FileUtils;->mFileTypes:Ljava/util/HashMap;

    const-string v1, "89504E47"

    const-string v2, "png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/xiaomi/channel/commonutils/file/FileUtils;->mFileTypes:Ljava/util/HashMap;

    const-string v1, "47494638"

    const-string v2, "gif"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/xiaomi/channel/commonutils/file/FileUtils;->mFileTypes:Ljava/util/HashMap;

    const-string v1, "474946"

    const-string v2, "gif"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/xiaomi/channel/commonutils/file/FileUtils;->mFileTypes:Ljava/util/HashMap;

    const-string v1, "424D"

    const-string v2, "bmp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    return-void
.end method

.method public static getFolderSize(Ljava/io/File;)J
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 69
    const-wide/16 v4, 0x0

    .line 71
    .local v4, "size":J
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 72
    .local v1, "fileList":[Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 73
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    aget-object v3, v1, v2

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/file/FileUtils;->getFolderSize(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 72
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    :cond_0
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    add-long/2addr v4, v6

    goto :goto_1

    .line 79
    .end local v1    # "fileList":[Ljava/io/File;
    .end local v2    # "i":I
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 82
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-wide v4
.end method
