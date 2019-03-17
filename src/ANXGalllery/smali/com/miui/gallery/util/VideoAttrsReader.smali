.class public Lcom/miui/gallery/util/VideoAttrsReader;
.super Ljava/lang/Object;
.source "VideoAttrsReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/VideoAttrsReader$VideoAttrsUnretrivableException;
    }
.end annotation


# instance fields
.field private mDateTaken:J

.field private mDuration:J

.field private mHeight:I

.field private final mPath:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, -0x1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v0, p0, Lcom/miui/gallery/util/VideoAttrsReader;->mWidth:I

    .line 20
    iput v0, p0, Lcom/miui/gallery/util/VideoAttrsReader;->mHeight:I

    .line 21
    iput-wide v2, p0, Lcom/miui/gallery/util/VideoAttrsReader;->mDuration:J

    .line 22
    iput-wide v2, p0, Lcom/miui/gallery/util/VideoAttrsReader;->mDateTaken:J

    .line 35
    iput-object p1, p0, Lcom/miui/gallery/util/VideoAttrsReader;->mPath:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/miui/gallery/util/VideoAttrsReader;->mPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/gallery/util/VideoAttrsReader;->initByMediaMediaPlayer(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method private calculateTaken(Ljava/lang/String;)J
    .locals 6
    .param p1, "dateStr"    # Ljava/lang/String;

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "date":Ljava/util/Date;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 97
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyyMMdd\'T\'HHmmss.SSS\'Z\'"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 98
    .local v2, "format":Ljava/text/SimpleDateFormat;
    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 100
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 106
    .end local v2    # "format":Ljava/text/SimpleDateFormat;
    :cond_0
    if-nez v0, :cond_1

    const-wide/16 v4, 0x0

    :goto_0
    return-wide v4

    .line 101
    .restart local v2    # "format":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "VideoAttrsReader"

    const-string/jumbo v4, "simple format error %s"

    invoke-static {v3, v4, p1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3, p1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    goto :goto_0

    .line 106
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "format":Ljava/text/SimpleDateFormat;
    :cond_1
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    goto :goto_0
.end method

.method private dump(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "file="

    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/util/VideoAttrsReader;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "title="

    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/util/VideoAttrsReader;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "width="

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/gallery/util/VideoAttrsReader;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height="

    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/gallery/util/VideoAttrsReader;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "duration="

    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/miui/gallery/util/VideoAttrsReader;->mDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "datataken="

    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/miui/gallery/util/VideoAttrsReader;->mDateTaken:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 135
    const-string v1, "VideoAttrsReader"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method private initByMediaMediaPlayer(Ljava/lang/String;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 62
    .local v0, "attrsRetriver":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .end local v0    # "attrsRetriver":Landroid/media/MediaMetadataRetriever;
    .local v1, "attrsRetriver":Landroid/media/MediaMetadataRetriever;
    :try_start_1
    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 65
    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/gallery/util/VideoAttrsReader;->mTitle:Ljava/lang/String;

    .line 66
    const/16 v4, 0x12

    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/miui/gallery/util/VideoAttrsReader;->parseIntSafely(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/miui/gallery/util/VideoAttrsReader;->mWidth:I

    .line 67
    const/16 v4, 0x13

    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/miui/gallery/util/VideoAttrsReader;->parseIntSafely(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/miui/gallery/util/VideoAttrsReader;->mHeight:I

    .line 68
    const/16 v4, 0x9

    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/miui/gallery/util/VideoAttrsReader;->parseLongSafely(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/gallery/util/VideoAttrsReader;->mDuration:J

    .line 69
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "timezone":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/miui/gallery/util/VideoAttrsReader;->calculateTaken(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/gallery/util/VideoAttrsReader;->mDateTaken:J
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    if-eqz v1, :cond_0

    .line 76
    :try_start_2
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 84
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/miui/gallery/util/VideoAttrsReader;->mTitle:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 85
    invoke-static {p1}, Lcom/miui/gallery/util/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/util/FileUtils;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/gallery/util/VideoAttrsReader;->mTitle:Ljava/lang/String;

    .line 87
    :cond_1
    iget-wide v4, p0, Lcom/miui/gallery/util/VideoAttrsReader;->mDateTaken:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    .line 88
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/gallery/util/VideoAttrsReader;->mDateTaken:J

    .line 91
    :cond_2
    const-string v4, "final result"

    invoke-direct {p0, v4}, Lcom/miui/gallery/util/VideoAttrsReader;->dump(Ljava/lang/String;)V

    .line 92
    return-void

    .line 71
    .end local v1    # "attrsRetriver":Landroid/media/MediaMetadataRetriever;
    .end local v3    # "timezone":Ljava/lang/String;
    .restart local v0    # "attrsRetriver":Landroid/media/MediaMetadataRetriever;
    :catch_0
    move-exception v2

    .line 72
    .local v2, "e":Ljava/lang/RuntimeException;
    :goto_1
    :try_start_3
    new-instance v4, Lcom/miui/gallery/util/VideoAttrsReader$VideoAttrsUnretrivableException;

    invoke-direct {v4, p1, v2}, Lcom/miui/gallery/util/VideoAttrsReader$VideoAttrsUnretrivableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 74
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v4

    .line 75
    :goto_2
    if-eqz v0, :cond_3

    .line 76
    :try_start_4
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    .line 80
    :cond_3
    :goto_3
    throw v4

    .line 78
    .end local v0    # "attrsRetriver":Landroid/media/MediaMetadataRetriever;
    .restart local v1    # "attrsRetriver":Landroid/media/MediaMetadataRetriever;
    .restart local v3    # "timezone":Ljava/lang/String;
    :catch_1
    move-exception v4

    goto :goto_0

    .end local v1    # "attrsRetriver":Landroid/media/MediaMetadataRetriever;
    .end local v3    # "timezone":Ljava/lang/String;
    .restart local v0    # "attrsRetriver":Landroid/media/MediaMetadataRetriever;
    :catch_2
    move-exception v5

    goto :goto_3

    .line 74
    .end local v0    # "attrsRetriver":Landroid/media/MediaMetadataRetriever;
    .restart local v1    # "attrsRetriver":Landroid/media/MediaMetadataRetriever;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "attrsRetriver":Landroid/media/MediaMetadataRetriever;
    .restart local v0    # "attrsRetriver":Landroid/media/MediaMetadataRetriever;
    goto :goto_2

    .line 71
    .end local v0    # "attrsRetriver":Landroid/media/MediaMetadataRetriever;
    .restart local v1    # "attrsRetriver":Landroid/media/MediaMetadataRetriever;
    :catch_3
    move-exception v2

    move-object v0, v1

    .end local v1    # "attrsRetriver":Landroid/media/MediaMetadataRetriever;
    .restart local v0    # "attrsRetriver":Landroid/media/MediaMetadataRetriever;
    goto :goto_1
.end method

.method private parseIntSafely(Ljava/lang/String;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 111
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 114
    :goto_0
    return v0

    .line 112
    :catch_0
    move-exception v0

    .line 114
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private parseLongSafely(Ljava/lang/String;)J
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 119
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 122
    :goto_0
    return-wide v0

    .line 120
    :catch_0
    move-exception v0

    .line 122
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static read(Ljava/lang/String;)Lcom/miui/gallery/util/VideoAttrsReader;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lcom/miui/gallery/util/VideoAttrsReader;

    invoke-direct {v0, p0}, Lcom/miui/gallery/util/VideoAttrsReader;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getDateTaken()J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/miui/gallery/util/VideoAttrsReader;->mDateTaken:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/miui/gallery/util/VideoAttrsReader;->mDuration:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/gallery/util/VideoAttrsReader;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/miui/gallery/util/VideoAttrsReader;->mHeight:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/miui/gallery/util/VideoAttrsReader;->mWidth:I

    return v0
.end method
