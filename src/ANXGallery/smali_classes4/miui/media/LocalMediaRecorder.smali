.class Lmiui/media/LocalMediaRecorder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/media/Recorder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/media/LocalMediaRecorder$RecorderAppendThread;
    }
.end annotation


# static fields
.field private static final Aq:Lmiui/reflect/Method;

.field private static final TAG:Ljava/lang/String; = "Media:LocalMediaRecorder"


# instance fields
.field private AA:J

.field private AB:I

.field private AH:J

.field private AJ:I

.field private AK:Landroid/media/MediaRecorder$OnErrorListener;

.field private AP:Landroid/media/MediaRecorder$OnInfoListener;

.field private AQ:Lmiui/media/Recorder$OnErrorListener;

.field private AV:Z

.field private AX:J

.field private AY:I

.field private Ao:Ljava/lang/Object;

.field private Ap:Landroid/media/MediaRecorder;

.field private Ar:Landroid/os/ParcelFileDescriptor;

.field private As:Lmiui/media/LocalMediaRecorder$RecorderAppendThread;

.field private At:Ljava/lang/String;

.field private Au:Ljava/lang/String;

.field private Av:I

.field private Aw:I

.field private Ax:I

.field private Ay:I

.field private Az:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    nop

    .line 33
    :try_start_0
    const-class v0, Landroid/media/MediaRecorder;

    const-string v1, "setParameter"

    const-string v2, "(Ljava/lang/String;)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    const-string v1, "Media:LocalMediaRecorder"

    const-string v2, "Could not get method:setParameter"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lmiui/media/LocalMediaRecorder;->Aq:Lmiui/reflect/Method;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/media/LocalMediaRecorder;->Ao:Ljava/lang/Object;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lmiui/media/LocalMediaRecorder;->Av:I

    .line 43
    iput v0, p0, Lmiui/media/LocalMediaRecorder;->Aw:I

    .line 44
    iput v0, p0, Lmiui/media/LocalMediaRecorder;->Ax:I

    .line 45
    iput v0, p0, Lmiui/media/LocalMediaRecorder;->Ay:I

    .line 46
    iput v0, p0, Lmiui/media/LocalMediaRecorder;->Az:I

    .line 47
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lmiui/media/LocalMediaRecorder;->AA:J

    .line 48
    iput v0, p0, Lmiui/media/LocalMediaRecorder;->AB:I

    .line 49
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lmiui/media/LocalMediaRecorder;->AH:J

    .line 50
    iput v0, p0, Lmiui/media/LocalMediaRecorder;->AJ:I

    .line 56
    iput-wide v1, p0, Lmiui/media/LocalMediaRecorder;->AX:J

    .line 60
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lmiui/media/LocalMediaRecorder;->Ap:Landroid/media/MediaRecorder;

    .line 61
    return-void
.end method

.method private A(Ljava/lang/String;)V
    .locals 5

    .line 358
    sget-object v0, Lmiui/media/LocalMediaRecorder;->Aq:Lmiui/reflect/Method;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    sget-object v0, Lmiui/media/LocalMediaRecorder;->Aq:Lmiui/reflect/Method;

    const-class v1, Landroid/media/MediaRecorder;

    iget-object v2, p0, Lmiui/media/LocalMediaRecorder;->Ap:Landroid/media/MediaRecorder;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 361
    :cond_0
    return-void
.end method

.method static synthetic a(Lmiui/media/LocalMediaRecorder;)Lmiui/media/Recorder$OnErrorListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lmiui/media/LocalMediaRecorder;->AQ:Lmiui/media/Recorder$OnErrorListener;

    return-object p0
.end method

.method static synthetic b(Lmiui/media/LocalMediaRecorder;)Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lmiui/media/LocalMediaRecorder;->At:Ljava/lang/String;

    return-object p0
.end method

.method private cx()V
    .locals 4

    .line 419
    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->As:Lmiui/media/LocalMediaRecorder$RecorderAppendThread;

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->As:Lmiui/media/LocalMediaRecorder$RecorderAppendThread;

    invoke-static {v0}, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->a(Lmiui/media/LocalMediaRecorder$RecorderAppendThread;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    monitor-enter v0

    .line 421
    :goto_0
    :try_start_0
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->As:Lmiui/media/LocalMediaRecorder$RecorderAppendThread;

    invoke-static {v1}, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->a(Lmiui/media/LocalMediaRecorder$RecorderAppendThread;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 423
    :try_start_1
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->As:Lmiui/media/LocalMediaRecorder$RecorderAppendThread;

    invoke-static {v1}, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->a(Lmiui/media/LocalMediaRecorder$RecorderAppendThread;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    :goto_1
    goto :goto_0

    .line 424
    :catch_0
    move-exception v1

    .line 425
    :try_start_2
    const-string v2, "Media:LocalMediaRecorder"

    const-string v3, "InterruptedException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 428
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 429
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/media/LocalMediaRecorder;->As:Lmiui/media/LocalMediaRecorder$RecorderAppendThread;

    goto :goto_2

    .line 428
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 431
    :cond_1
    :goto_2
    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 2

    .line 182
    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->Ao:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    const/4 v1, 0x0

    :try_start_0
    monitor-exit v0

    return v1

    .line 184
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected cv()I
    .locals 1

    .line 434
    const/4 v0, 0x0

    return v0
.end method

.method protected cw()V
    .locals 4

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/media/LocalMediaRecorder;->At:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lmiui/media/LocalMediaRecorder;->Au:Ljava/lang/String;

    .line 66
    const/4 v1, -0x1

    iput v1, p0, Lmiui/media/LocalMediaRecorder;->Av:I

    .line 67
    iput v1, p0, Lmiui/media/LocalMediaRecorder;->Aw:I

    .line 68
    iput v1, p0, Lmiui/media/LocalMediaRecorder;->Ay:I

    .line 69
    iput v1, p0, Lmiui/media/LocalMediaRecorder;->Ax:I

    .line 70
    iput v1, p0, Lmiui/media/LocalMediaRecorder;->Az:I

    .line 71
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lmiui/media/LocalMediaRecorder;->AA:J

    .line 72
    iput v1, p0, Lmiui/media/LocalMediaRecorder;->AJ:I

    .line 73
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lmiui/media/LocalMediaRecorder;->AH:J

    .line 74
    iput-object v0, p0, Lmiui/media/LocalMediaRecorder;->AK:Landroid/media/MediaRecorder$OnErrorListener;

    .line 75
    iput-object v0, p0, Lmiui/media/LocalMediaRecorder;->AP:Landroid/media/MediaRecorder$OnInfoListener;

    .line 76
    iput-object v0, p0, Lmiui/media/LocalMediaRecorder;->AQ:Lmiui/media/Recorder$OnErrorListener;

    .line 77
    return-void
.end method

.method public getMaxAmplitude()I
    .locals 2

    .line 175
    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->Ao:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_0
    iget-boolean v1, p0, Lmiui/media/LocalMediaRecorder;->AV:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->Ap:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v1

    :goto_0
    monitor-exit v0

    return v1

    .line 177
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRecordingTimeInMillis()J
    .locals 4

    .line 319
    invoke-virtual {p0}, Lmiui/media/LocalMediaRecorder;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iget v0, p0, Lmiui/media/LocalMediaRecorder;->AY:I

    int-to-long v0, v0

    goto :goto_0

    .line 322
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lmiui/media/LocalMediaRecorder;->AX:J

    sub-long/2addr v0, v2

    iget v2, p0, Lmiui/media/LocalMediaRecorder;->AY:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 324
    :goto_0
    return-wide v0
.end method

.method public isPaused()Z
    .locals 2

    .line 260
    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->Ao:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    :try_start_0
    iget-boolean v1, p0, Lmiui/media/LocalMediaRecorder;->AV:Z

    monitor-exit v0

    return v1

    .line 262
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pause()V
    .locals 7

    .line 189
    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->Ao:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lmiui/media/LocalMediaRecorder;->AV:Z

    .line 191
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->Ap:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    .line 192
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->Ap:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 193
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/media/LocalMediaRecorder;->Ap:Landroid/media/MediaRecorder;

    .line 194
    iget v1, p0, Lmiui/media/LocalMediaRecorder;->AY:I

    int-to-long v1, v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lmiui/media/LocalMediaRecorder;->AX:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lmiui/media/LocalMediaRecorder;->AY:I

    .line 195
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->Ar:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 197
    :try_start_1
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->Ar:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    nop

    .line 201
    :try_start_2
    invoke-direct {p0}, Lmiui/media/LocalMediaRecorder;->cx()V

    goto :goto_0

    .line 198
    :catch_0
    move-exception v1

    .line 199
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 203
    :cond_0
    :goto_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lmiui/media/LocalMediaRecorder;->At:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, p0, Lmiui/media/LocalMediaRecorder;->AH:J

    .line 204
    monitor-exit v0

    .line 205
    return-void

    .line 204
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public prepare()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->Ao:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->Ap:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->prepare()V

    .line 123
    monitor-exit v0

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 2

    .line 136
    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->Ao:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_0
    invoke-virtual {p0}, Lmiui/media/LocalMediaRecorder;->cw()V

    .line 138
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->Ap:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->Ap:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 140
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/media/LocalMediaRecorder;->Ap:Landroid/media/MediaRecorder;

    .line 142
    :cond_0
    monitor-exit v0

    .line 143
    return-void

    .line 142
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reset()V
    .locals 2

    .line 128
    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->Ao:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    invoke-virtual {p0}, Lmiui/media/LocalMediaRecorder;->cw()V

    .line 130
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->Ap:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V

    .line 131
    monitor-exit v0

    .line 132
    return-void

    .line 131
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resume()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->Ao:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_0
    iget-boolean v1, p0, Lmiui/media/LocalMediaRecorder;->AV:Z

    if-eqz v1, :cond_b

    .line 211
    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v1, p0, Lmiui/media/LocalMediaRecorder;->Ap:Landroid/media/MediaRecorder;

    .line 212
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->Au:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->Au:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmiui/media/LocalMediaRecorder;->setExtraParameters(Ljava/lang/String;)V

    .line 215
    :cond_0
    iget v1, p0, Lmiui/media/LocalMediaRecorder;->Av:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 216
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->Ap:Landroid/media/MediaRecorder;

    iget v3, p0, Lmiui/media/LocalMediaRecorder;->Av:I

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 218
    :cond_1
    iget v1, p0, Lmiui/media/LocalMediaRecorder;->Aw:I

    if-eq v1, v2, :cond_2

    .line 219
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->Ap:Landroid/media/MediaRecorder;

    iget v3, p0, Lmiui/media/LocalMediaRecorder;->Aw:I

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 221
    :cond_2
    iget v1, p0, Lmiui/media/LocalMediaRecorder;->Ax:I

    if-eq v1, v2, :cond_3

    .line 222
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->Ap:Landroid/media/MediaRecorder;

    iget v3, p0, Lmiui/media/LocalMediaRecorder;->Ax:I

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 224
    :cond_3
    iget v1, p0, Lmiui/media/LocalMediaRecorder;->Ay:I

    if-eq v1, v2, :cond_4

    .line 225
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->Ap:Landroid/media/MediaRecorder;

    iget v3, p0, Lmiui/media/LocalMediaRecorder;->Ay:I

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 227
    :cond_4
    iget v1, p0, Lmiui/media/LocalMediaRecorder;->Az:I

    if-eq v1, v2, :cond_5

    .line 228
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->Ap:Landroid/media/MediaRecorder;

    iget v3, p0, Lmiui/media/LocalMediaRecorder;->Az:I

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 230
    :cond_5
    iget v1, p0, Lmiui/media/LocalMediaRecorder;->AJ:I

    if-eq v1, v2, :cond_6

    .line 231
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->Ap:Landroid/media/MediaRecorder;

    iget v3, p0, Lmiui/media/LocalMediaRecorder;->AJ:I

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 233
    :cond_6
    iget-wide v3, p0, Lmiui/media/LocalMediaRecorder;->AA:J

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    .line 234
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->Ap:Landroid/media/MediaRecorder;

    iget-wide v3, p0, Lmiui/media/LocalMediaRecorder;->AA:J

    iget-wide v5, p0, Lmiui/media/LocalMediaRecorder;->AH:J

    sub-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 236
    :cond_7
    iget v1, p0, Lmiui/media/LocalMediaRecorder;->AB:I

    if-eq v1, v2, :cond_8

    .line 237
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->Ap:Landroid/media/MediaRecorder;

    iget v2, p0, Lmiui/media/LocalMediaRecorder;->AB:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 239
    :cond_8
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->AK:Landroid/media/MediaRecorder$OnErrorListener;

    if-eqz v1, :cond_9

    .line 240
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->Ap:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lmiui/media/LocalMediaRecorder;->AK:Landroid/media/MediaRecorder$OnErrorListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 242
    :cond_9
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->AP:Landroid/media/MediaRecorder$OnInfoListener;

    if-eqz v1, :cond_a

    .line 243
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->Ap:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lmiui/media/LocalMediaRecorder;->AP:Landroid/media/MediaRecorder$OnInfoListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 245
    :cond_a
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 246
    const/4 v2, 0x1

    aget-object v2, v1, v2

    iput-object v2, p0, Lmiui/media/LocalMediaRecorder;->Ar:Landroid/os/ParcelFileDescriptor;

    .line 247
    new-instance v2, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-direct {v2, p0, v1}, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;-><init>(Lmiui/media/LocalMediaRecorder;Landroid/os/ParcelFileDescriptor;)V

    iput-object v2, p0, Lmiui/media/LocalMediaRecorder;->As:Lmiui/media/LocalMediaRecorder$RecorderAppendThread;

    .line 248
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->Ap:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lmiui/media/LocalMediaRecorder;->Ar:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 249
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->As:Lmiui/media/LocalMediaRecorder$RecorderAppendThread;

    invoke-virtual {v1}, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->start()V

    .line 250
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->Ap:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->prepare()V

    .line 251
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->Ap:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    .line 252
    iput-boolean v3, p0, Lmiui/media/LocalMediaRecorder;->AV:Z

    .line 253
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lmiui/media/LocalMediaRecorder;->AX:J

    .line 255
    :cond_b
    monitor-exit v0

    .line 256
    return-void

    .line 255
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAudioChannel(I)V
    .locals 2

    .line 333
    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->Ao:Ljava/lang/Object;

    monitor-enter v0

    .line 334
    const/16 v1, 0x10

    if-ne p1, v1, :cond_0

    .line 335
    const/4 p1, 0x1

    :try_start_0
    iput p1, p0, Lmiui/media/LocalMediaRecorder;->AJ:I

    goto :goto_0

    .line 340
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 337
    :cond_0
    const/4 p1, 0x2

    iput p1, p0, Lmiui/media/LocalMediaRecorder;->AJ:I

    .line 339
    :goto_0
    iget-object p1, p0, Lmiui/media/LocalMediaRecorder;->Ap:Landroid/media/MediaRecorder;

    iget v1, p0, Lmiui/media/LocalMediaRecorder;->AJ:I

    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 340
    monitor-exit v0

    .line 341
    return-void

    .line 340
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setAudioEncoder(I)V
    .locals 2

    .line 105
    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->Ao:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_0
    iput p1, p0, Lmiui/media/LocalMediaRecorder;->Ay:I

    .line 107
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->Ap:Landroid/media/MediaRecorder;

    invoke-virtual {v1, p1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 108
    monitor-exit v0

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setAudioEncodingBitRate(I)V
    .locals 2

    .line 267
    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->Ao:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_0
    iput p1, p0, Lmiui/media/LocalMediaRecorder;->Az:I

    .line 269
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->Ap:Landroid/media/MediaRecorder;

    invoke-virtual {v1, p1}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 270
    monitor-exit v0

    .line 271
    return-void

    .line 270
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setAudioSamplingRate(I)V
    .locals 2

    .line 89
    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->Ao:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_0
    iput p1, p0, Lmiui/media/LocalMediaRecorder;->Aw:I

    .line 91
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->Ap:Landroid/media/MediaRecorder;

    invoke-virtual {v1, p1}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 92
    monitor-exit v0

    .line 93
    return-void

    .line 92
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setAudioSource(I)V
    .locals 2

    .line 81
    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->Ao:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_0
    iput p1, p0, Lmiui/media/LocalMediaRecorder;->Av:I

    .line 83
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->Ap:Landroid/media/MediaRecorder;

    invoke-virtual {v1, p1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 84
    monitor-exit v0

    .line 85
    return-void

    .line 84
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setExtraParameters(Ljava/lang/String;)V
    .locals 1

    .line 291
    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->Ao:Ljava/lang/Object;

    monitor-enter v0

    .line 292
    :try_start_0
    iput-object p1, p0, Lmiui/media/LocalMediaRecorder;->Au:Ljava/lang/String;

    .line 293
    invoke-direct {p0, p1}, Lmiui/media/LocalMediaRecorder;->A(Ljava/lang/String;)V

    .line 294
    monitor-exit v0

    .line 295
    return-void

    .line 294
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setMaxDuration(I)V
    .locals 2

    .line 283
    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->Ao:Ljava/lang/Object;

    monitor-enter v0

    .line 284
    :try_start_0
    iput p1, p0, Lmiui/media/LocalMediaRecorder;->AB:I

    .line 285
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->Ap:Landroid/media/MediaRecorder;

    invoke-virtual {v1, p1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 286
    monitor-exit v0

    .line 287
    return-void

    .line 286
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setMaxFileSize(J)V
    .locals 2

    .line 275
    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->Ao:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_0
    iput-wide p1, p0, Lmiui/media/LocalMediaRecorder;->AA:J

    .line 277
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->Ap:Landroid/media/MediaRecorder;

    invoke-virtual {v1, p1, p2}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 278
    monitor-exit v0

    .line 279
    return-void

    .line 278
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V
    .locals 2

    .line 344
    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->Ao:Ljava/lang/Object;

    monitor-enter v0

    .line 345
    :try_start_0
    iput-object p1, p0, Lmiui/media/LocalMediaRecorder;->AK:Landroid/media/MediaRecorder$OnErrorListener;

    .line 346
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->Ap:Landroid/media/MediaRecorder;

    invoke-virtual {v1, p1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 347
    monitor-exit v0

    .line 348
    return-void

    .line 347
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setOnErrorListener(Lmiui/media/Recorder$OnErrorListener;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lmiui/media/LocalMediaRecorder;->AQ:Lmiui/media/Recorder$OnErrorListener;

    .line 300
    new-instance p1, Lmiui/media/LocalMediaRecorder$1;

    invoke-direct {p1, p0}, Lmiui/media/LocalMediaRecorder$1;-><init>(Lmiui/media/LocalMediaRecorder;)V

    invoke-virtual {p0, p1}, Lmiui/media/LocalMediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 307
    new-instance p1, Lmiui/media/LocalMediaRecorder$2;

    invoke-direct {p1, p0}, Lmiui/media/LocalMediaRecorder$2;-><init>(Lmiui/media/LocalMediaRecorder;)V

    invoke-virtual {p0, p1}, Lmiui/media/LocalMediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 314
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    .locals 2

    .line 351
    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->Ao:Ljava/lang/Object;

    monitor-enter v0

    .line 352
    :try_start_0
    iput-object p1, p0, Lmiui/media/LocalMediaRecorder;->AP:Landroid/media/MediaRecorder$OnInfoListener;

    .line 353
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->Ap:Landroid/media/MediaRecorder;

    invoke-virtual {v1, p1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 354
    monitor-exit v0

    .line 355
    return-void

    .line 354
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .locals 2

    .line 113
    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->Ao:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_0
    iput-object p1, p0, Lmiui/media/LocalMediaRecorder;->At:Ljava/lang/String;

    .line 115
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->Ap:Landroid/media/MediaRecorder;

    invoke-virtual {v1, p1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 116
    monitor-exit v0

    .line 117
    return-void

    .line 116
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setOutputFormat(I)V
    .locals 2

    .line 97
    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->Ao:Ljava/lang/Object;

    monitor-enter v0

    .line 98
    :try_start_0
    iput p1, p0, Lmiui/media/LocalMediaRecorder;->Ax:I

    .line 99
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->Ap:Landroid/media/MediaRecorder;

    invoke-virtual {v1, p1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 100
    monitor-exit v0

    .line 101
    return-void

    .line 100
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setQuality(I)V
    .locals 0

    .line 329
    return-void
.end method

.method public start()V
    .locals 3

    .line 147
    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->Ao:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_0
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->Ap:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    .line 149
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lmiui/media/LocalMediaRecorder;->AX:J

    .line 150
    const/4 v1, 0x0

    iput v1, p0, Lmiui/media/LocalMediaRecorder;->AY:I

    .line 151
    monitor-exit v0

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stop()V
    .locals 3

    .line 156
    iget-object v0, p0, Lmiui/media/LocalMediaRecorder;->Ao:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_0
    invoke-virtual {p0}, Lmiui/media/LocalMediaRecorder;->cw()V

    .line 158
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->Ap:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->Ap:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    .line 160
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->Ar:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 162
    :try_start_1
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder;->Ar:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    nop

    .line 166
    :try_start_2
    invoke-direct {p0}, Lmiui/media/LocalMediaRecorder;->cx()V

    goto :goto_0

    .line 163
    :catch_0
    move-exception v1

    .line 164
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 169
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/media/LocalMediaRecorder;->AV:Z

    .line 170
    monitor-exit v0

    .line 171
    return-void

    .line 170
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
