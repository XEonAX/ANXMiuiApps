.class Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$14;
.super Landroid/os/AsyncTask;
.source "MediaInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->P()Lcom/nexstreaming/app/common/task/ResultTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;",
        "Ljava/lang/Integer;",
        "Lcom/nexstreaming/kminternal/kinemaster/mediainfo/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/app/common/task/ResultTask;

.field final synthetic b:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;


# direct methods
.method constructor <init>(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;Lcom/nexstreaming/app/common/task/ResultTask;)V
    .locals 0

    .prologue
    .line 851
    iput-object p1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$14;->b:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;

    iput-object p2, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$14;->a:Lcom/nexstreaming/app/common/task/ResultTask;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)Lcom/nexstreaming/kminternal/kinemaster/mediainfo/b;
    .locals 4

    .prologue
    .line 855
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 856
    invoke-static {v0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->f(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 857
    invoke-static {v0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->f(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x32000

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 859
    :try_start_0
    new-array v1, v0, [B

    .line 860
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$14;->b:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;

    invoke-static {v3}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->f(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 863
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 865
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 867
    if-lt v3, v0, :cond_0

    .line 868
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/b;

    invoke-direct {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/b;-><init>([B)V

    .line 874
    :goto_0
    return-object v0

    .line 865
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 870
    :catch_0
    move-exception v0

    .line 871
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 874
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/b;)V
    .locals 4

    .prologue
    .line 879
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$14;->a:Lcom/nexstreaming/app/common/task/ResultTask;

    invoke-virtual {v0, p1}, Lcom/nexstreaming/app/common/task/ResultTask;->setResult(Ljava/lang/Object;)V

    .line 880
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$14;->a:Lcom/nexstreaming/app/common/task/ResultTask;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/nexstreaming/app/common/task/Task$Event;

    const/4 v2, 0x0

    sget-object v3, Lcom/nexstreaming/app/common/task/Task$Event;->RESULT_AVAILABLE:Lcom/nexstreaming/app/common/task/Task$Event;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/nexstreaming/app/common/task/Task$Event;->SUCCESS:Lcom/nexstreaming/app/common/task/Task$Event;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/nexstreaming/app/common/task/Task$Event;->COMPLETE:Lcom/nexstreaming/app/common/task/Task$Event;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/task/ResultTask;->signalEvent([Lcom/nexstreaming/app/common/task/Task$Event;)V

    .line 881
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 851
    check-cast p1, [Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;

    invoke-virtual {p0, p1}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$14;->a([Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)Lcom/nexstreaming/kminternal/kinemaster/mediainfo/b;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 851
    check-cast p1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/b;

    invoke-virtual {p0, p1}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$14;->a(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/b;)V

    return-void
.end method
