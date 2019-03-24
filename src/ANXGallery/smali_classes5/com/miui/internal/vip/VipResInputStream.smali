.class public Lcom/miui/internal/vip/VipResInputStream;
.super Ljava/io/InputStream;
.source "VipResInputStream.java"


# instance fields
.field mIconName:Ljava/lang/String;

.field mIs:Ljava/io/InputStream;

.field mUserLevel:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "iconName"    # Ljava/lang/String;
    .param p2, "level"    # I

    .line 23
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/miui/internal/vip/VipResInputStream;->mIconName:Ljava/lang/String;

    .line 25
    iput p2, p0, Lcom/miui/internal/vip/VipResInputStream;->mUserLevel:I

    .line 26
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    .line 49
    iget-object v0, p0, Lcom/miui/internal/vip/VipResInputStream;->mIs:Ljava/io/InputStream;

    invoke-static {v0}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 50
    return-void
.end method

.method open()V
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/miui/internal/vip/VipResInputStream;->mIs:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 54
    return-void

    .line 57
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/internal/vip/VipResInputStream;->openIconStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/vip/VipResInputStream;->mIs:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VipResInputStream.open failed, %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method openIconStream()Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/miui/internal/vip/VipResInputStream;->mIconName:Ljava/lang/String;

    const-string v1, "level_icon"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    const-string v0, "https://rs.vip.miui.com/h5/level_icons/icon_level_%d.webp"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/miui/internal/vip/VipResInputStream;->mUserLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "url":Ljava/lang/String;
    invoke-static {}, Lcom/miui/internal/vip/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "level_icon"

    invoke-static {v2, v0, v3, v1}, Lcom/miui/internal/vip/utils/ImageDownloader;->getImageFilePathAndClearUnusedFiles(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 70
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object v3

    .line 72
    :cond_0
    new-instance v3, Lcom/miui/internal/vip/utils/WebContentDownloader;

    invoke-direct {v3, v0, v1}, Lcom/miui/internal/vip/utils/WebContentDownloader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 74
    .end local v0    # "url":Ljava/lang/String;
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lcom/miui/internal/vip/VipResInputStream;->open()V

    .line 31
    iget-object v0, p0, Lcom/miui/internal/vip/VipResInputStream;->mIs:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/miui/internal/vip/VipResInputStream;->mIs:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0

    .line 34
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/miui/internal/vip/VipResInputStream;->open()V

    .line 40
    iget-object v0, p0, Lcom/miui/internal/vip/VipResInputStream;->mIs:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/miui/internal/vip/VipResInputStream;->mIs:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0

    .line 43
    :cond_0
    const/4 v0, -0x1

    return v0
.end method
