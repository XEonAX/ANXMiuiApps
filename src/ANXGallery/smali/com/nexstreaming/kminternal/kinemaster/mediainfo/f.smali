.class abstract Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;
.super Landroid/os/AsyncTask;
.source "ThumbnailConversionTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Lcom/nexstreaming/app/common/task/Task$TaskError;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/io/File;

.field private b:Ljava/io/File;

.field private c:Ljava/io/File;

.field private d:Ljava/io/File;

.field private e:J

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Bitmap;

.field private h:Landroid/graphics/Bitmap;

.field private i:[I


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 49
    iput-object p2, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;->a:Ljava/io/File;

    .line 50
    iput-object p1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;->d:Ljava/io/File;

    .line 51
    iput-object p3, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;->b:Ljava/io/File;

    .line 52
    iput-object p4, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;->c:Ljava/io/File;

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;->f:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private a(Ljava/io/InputStream;)Lcom/nexstreaming/app/common/task/Task$TaskError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;->e:J

    const/16 v2, 0x32

    new-instance v3, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f$1;

    invoke-direct {v3, p0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f$1;-><init>(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;)V

    invoke-static {p1, v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/g;->a(Ljava/io/InputStream;JILcom/nexstreaming/kminternal/kinemaster/mediainfo/c;)Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;

    move-result-object v0

    return-object v0
.end method

.method private a([ILandroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 174
    const-string v1, "KMMediaInfo_ThumbConv"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeBitmapToFile("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_0

    const-string v0, "no index"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 177
    if-eqz p1, :cond_1

    .line 178
    const/16 v0, 0xa0

    :try_start_0
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 179
    const/16 v0, 0x5a

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 180
    array-length v0, p1

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 181
    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 182
    aget v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 174
    :cond_0
    const-string/jumbo v0, "width index"

    goto :goto_0

    .line 185
    :cond_1
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x46

    invoke-virtual {p2, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 188
    invoke-virtual {p3, v3}, Ljava/io/File;->setReadable(Z)Z

    .line 190
    return-void

    .line 187
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 188
    invoke-virtual {p3, v3}, Ljava/io/File;->setReadable(Z)Z

    throw v0
.end method

.method static synthetic a(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;)[I
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;->i:[I

    return-object v0
.end method

.method static synthetic a(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;[I)[I
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;->i:[I

    return-object p1
.end method

.method static synthetic b(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;->g:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private b()Lcom/nexstreaming/app/common/task/Task$TaskError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;->d:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 148
    :try_start_0
    invoke-direct {p0, v0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;->a(Ljava/io/InputStream;)Lcom/nexstreaming/app/common/task/Task$TaskError;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 150
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 148
    return-object v1

    .line 150
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method

.method static synthetic c(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;->h:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 168
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;->g:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;->b:Ljava/io/File;

    invoke-direct {p0, v2, v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;->a([ILandroid/graphics/Bitmap;Ljava/io/File;)V

    .line 169
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;->h:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;->g:Landroid/graphics/Bitmap;

    :goto_0
    iget-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;->c:Ljava/io/File;

    invoke-direct {p0, v2, v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;->a([ILandroid/graphics/Bitmap;Ljava/io/File;)V

    .line 170
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;->i:[I

    iget-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;->f:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;->a:Ljava/io/File;

    invoke-direct {p0, v0, v1, v2}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;->a([ILandroid/graphics/Bitmap;Ljava/io/File;)V

    .line 171
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;->h:Landroid/graphics/Bitmap;

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Integer;)Lcom/nexstreaming/app/common/task/Task$TaskError;
    .locals 4

    .prologue
    .line 57
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    const-string v0, "KMMediaInfo_ThumbConv"

    const-string v1, "doInBackground : raw thumbnail file not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;->RawFileNotFound:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;

    .line 83
    :goto_0
    return-object v0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;->e:J

    .line 63
    const-string v0, "KMMediaInfo_ThumbConv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doInBackground : mThumbFileSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-wide v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;->e:J

    const-wide/16 v2, 0x8

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 66
    const-string v0, "KMMediaInfo_ThumbConv"

    const-string v1, "doInBackground : raw thumbnail file too small"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;->RawFileTooSmall:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;

    goto :goto_0

    .line 71
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;->b()Lcom/nexstreaming/app/common/task/Task$TaskError;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_2

    .line 73
    const-string v1, "KMMediaInfo_ThumbConv"

    const-string v2, "doInBackground : raw thumbnail file parse error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    const-string v1, "KMMediaInfo_ThumbConv"

    const-string v2, "doInBackground : EXCEPTION"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    invoke-static {v0}, Lcom/nexstreaming/app/common/task/Task;->makeTaskError(Ljava/lang/Exception;)Lcom/nexstreaming/app/common/task/Task$TaskError;

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;->c()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 81
    const-string v0, "KMMediaInfo_ThumbConv"

    const-string v1, "doInBackground : out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract a()V
.end method

.method protected abstract a(Lcom/nexstreaming/app/common/task/Task$TaskError;)V
.end method

.method protected final b(Lcom/nexstreaming/app/common/task/Task$TaskError;)V
    .locals 0

    .prologue
    .line 156
    if-nez p1, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;->a()V

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;->a(Lcom/nexstreaming/app/common/task/Task$TaskError;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;->a([Ljava/lang/Integer;)Lcom/nexstreaming/app/common/task/Task$TaskError;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lcom/nexstreaming/app/common/task/Task$TaskError;

    invoke-virtual {p0, p1}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;->b(Lcom/nexstreaming/app/common/task/Task$TaskError;)V

    return-void
.end method
