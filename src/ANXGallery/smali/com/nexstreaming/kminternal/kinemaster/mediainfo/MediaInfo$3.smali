.class Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$3;
.super Landroid/os/AsyncTask;
.source "MediaInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->e()Lcom/nexstreaming/app/common/task/ResultTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "[I>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;


# direct methods
.method constructor <init>(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)V
    .locals 0

    .prologue
    .line 1124
    iput-object p1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$3;->a:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private a(Ljava/io/File;[I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1174
    const-string v0, "MediaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSeekPoints():writeFile("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1177
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 1178
    aget v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1181
    :cond_0
    const-string v0, "MediaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSeekPoints("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$3;->a:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;

    invoke-static {v3}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->b(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") wrote "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " points"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1183
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 1185
    const-string v0, "MediaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSeekPoints("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$3;->a:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;

    invoke-static {v2}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->b(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") wrote file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    invoke-virtual {p1, v4}, Ljava/io/File;->setReadable(Z)Z

    .line 1188
    return-void

    .line 1183
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 1185
    const-string v1, "MediaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSeekPoints("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$3;->a:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;

    invoke-static {v3}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->b(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") wrote file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    invoke-virtual {p1, v4}, Ljava/io/File;->setReadable(Z)Z

    throw v0
.end method

.method private a(Ljava/io/File;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1158
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1160
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x32000

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    .line 1161
    div-int/lit8 v2, v0, 0x4

    .line 1162
    new-array v3, v2, [I

    .line 1163
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 1164
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    aput v4, v3, v0

    .line 1163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1166
    :cond_0
    const-string v0, "MediaInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSeekPoints():readFile : got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " entries."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1169
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 1167
    return-object v3

    .line 1169
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    throw v0
.end method


# virtual methods
.method protected a([I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1192
    if-nez p1, :cond_0

    .line 1193
    const-string v0, "MediaInfo"

    const-string v1, "onPostExecute : FAIL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$3;->a:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->j(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)Lcom/nexstreaming/app/common/task/ResultTask;

    move-result-object v0

    new-array v1, v4, [Lcom/nexstreaming/app/common/task/Task$Event;

    sget-object v2, Lcom/nexstreaming/app/common/task/Task$Event;->FAIL:Lcom/nexstreaming/app/common/task/Task$Event;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/task/ResultTask;->signalEvent([Lcom/nexstreaming/app/common/task/Task$Event;)V

    .line 1200
    :goto_0
    return-void

    .line 1196
    :cond_0
    const-string v0, "MediaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostExecute : SUCCESS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$3;->a:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->j(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)Lcom/nexstreaming/app/common/task/ResultTask;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nexstreaming/app/common/task/ResultTask;->setResult(Ljava/lang/Object;)V

    .line 1198
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$3;->a:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->j(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)Lcom/nexstreaming/app/common/task/ResultTask;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/nexstreaming/app/common/task/Task$Event;

    sget-object v2, Lcom/nexstreaming/app/common/task/Task$Event;->RESULT_AVAILABLE:Lcom/nexstreaming/app/common/task/Task$Event;

    aput-object v2, v1, v3

    sget-object v2, Lcom/nexstreaming/app/common/task/Task$Event;->SUCCESS:Lcom/nexstreaming/app/common/task/Task$Event;

    aput-object v2, v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/nexstreaming/app/common/task/Task$Event;->COMPLETE:Lcom/nexstreaming/app/common/task/Task$Event;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/task/ResultTask;->signalEvent([Lcom/nexstreaming/app/common/task/Task$Event;)V

    goto :goto_0
.end method

.method protected varargs a([Ljava/lang/String;)[I
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 1128
    const-string v1, "MediaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSeekPoints:doInBackground("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    :try_start_0
    iget-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$3;->a:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;

    invoke-static {v1}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->i(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$3;->a(Ljava/io/File;)[I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1154
    :cond_0
    :goto_0
    return-object v0

    .line 1131
    :catch_0
    move-exception v1

    .line 1133
    const-string v1, "MediaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSeekPoints:doInBackground("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") -> no cache available; making"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->H()Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v1

    .line 1136
    if-eqz v1, :cond_0

    .line 1140
    new-instance v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexClipInfo;

    invoke-direct {v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexClipInfo;-><init>()V

    .line 1141
    aget-object v3, p1, v5

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v2, v4, v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Ljava/lang/String;Lcom/nexstreaming/kminternal/nexvideoeditor/NexClipInfo;ZI)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    move-result-object v1

    .line 1142
    invoke-virtual {v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->isError()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexClipInfo;->mSeekTable:[I

    if-nez v3, :cond_2

    .line 1144
    :cond_1
    const-string v2, "MediaInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSeekPoints("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$3;->a:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;

    invoke-static {v4}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->b(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") FAIL -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1148
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$3;->a:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->i(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)Ljava/io/File;

    move-result-object v0

    iget-object v1, v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexClipInfo;->mSeekTable:[I

    invoke-direct {p0, v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$3;->a(Ljava/io/File;[I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1154
    :goto_1
    iget-object v0, v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexClipInfo;->mSeekTable:[I

    goto :goto_0

    .line 1149
    :catch_1
    move-exception v0

    .line 1151
    const-string v1, "MediaInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSeekPoints("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$3;->a:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;

    invoke-static {v4}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->b(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") FAILED WRITING FILE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1124
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$3;->a([Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1124
    check-cast p1, [I

    invoke-virtual {p0, p1}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$3;->a([I)V

    return-void
.end method
