.class public Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;
.super Ljava/lang/Object;
.source "MediaInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;,
        Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$e;,
        Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$d;,
        Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;,
        Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;,
        Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$a;,
        Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$f;
    }
.end annotation


# static fields
.field private static B:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c",
            "<",
            "Lcom/nexstreaming/kminternal/kinemaster/mediainfo/h;",
            "Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$f;",
            ">;>;"
        }
    .end annotation
.end field

.field private static C:I

.field private static D:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c",
            "<",
            "Lcom/nexstreaming/kminternal/kinemaster/mediainfo/b;",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private static E:Lcom/nexstreaming/app/common/task/Task;

.field private static F:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c",
            "<**>;>;"
        }
    .end annotation
.end field

.field private static G:Z

.field private static H:Z

.field private static I:Ljava/lang/Object;

.field private static J:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$k;

.field private static K:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$j;

.field private static L:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$h;

.field private static M:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$m;

.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static b:Lcom/nexstreaming/kminternal/kinemaster/config/ExclusionList;

.field private static v:Ljava/util/concurrent/Executor;

.field private static w:Ljava/util/concurrent/Executor;

.field private static y:Ljava/io/File;

.field private static z:Ljava/io/File;


# instance fields
.field private A:Z

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/io/File;

.field private f:Ljava/io/File;

.field private g:Ljava/io/File;

.field private h:Ljava/io/File;

.field private i:Ljava/io/File;

.field private j:Ljava/io/File;

.field private k:Ljava/io/File;

.field private l:Ljava/io/File;

.field private m:Ljava/lang/String;

.field private n:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

.field private o:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c",
            "<",
            "Lcom/nexstreaming/kminternal/kinemaster/mediainfo/h;",
            "Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$f;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c",
            "<",
            "Lcom/nexstreaming/kminternal/kinemaster/mediainfo/b;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/nexstreaming/app/common/task/ResultTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nexstreaming/app/common/task/ResultTask",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/nexstreaming/app/common/task/ResultTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nexstreaming/app/common/task/ResultTask",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/nexstreaming/app/common/task/ResultTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nexstreaming/app/common/task/ResultTask",
            "<[I>;"
        }
    .end annotation
.end field

.field private t:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

.field private x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 76
    sput-object v2, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->a:Ljava/util/Map;

    .line 102
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->v:Ljava/util/concurrent/Executor;

    .line 103
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->w:Ljava/util/concurrent/Executor;

    .line 471
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->B:Ljava/util/Deque;

    .line 529
    sput v1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->C:I

    .line 887
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->D:Ljava/util/Deque;

    .line 1321
    sput-object v2, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->E:Lcom/nexstreaming/app/common/task/Task;

    .line 1553
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->F:Landroid/util/SparseArray;

    .line 1658
    sput-boolean v1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->G:Z

    .line 1659
    sput-boolean v1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->H:Z

    .line 1687
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->I:Ljava/lang/Object;

    .line 1759
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$4;

    invoke-direct {v0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$4;-><init>()V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->J:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$k;

    .line 1772
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$5;

    invoke-direct {v0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$5;-><init>()V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->K:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$j;

    .line 1784
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$6;

    invoke-direct {v0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$6;-><init>()V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->L:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$h;

    .line 1798
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$7;

    invoke-direct {v0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$7;-><init>()V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->M:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$m;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 11

    .prologue
    const/16 v10, 0x9

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->d:I

    .line 94
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->NONE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->n:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 95
    iput-object v3, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->o:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;

    .line 96
    iput-object v3, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->p:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;

    .line 97
    iput-object v3, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->q:Lcom/nexstreaming/app/common/task/ResultTask;

    .line 98
    iput-object v3, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->r:Lcom/nexstreaming/app/common/task/ResultTask;

    .line 99
    iput-object v3, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->s:Lcom/nexstreaming/app/common/task/ResultTask;

    .line 100
    iput-object v3, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->t:Landroid/os/AsyncTask;

    .line 109
    iput-boolean v4, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->A:Z

    .line 272
    iput-object p1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->c:Ljava/lang/String;

    .line 273
    iput p2, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->d:I

    .line 275
    if-nez p2, :cond_1

    .line 276
    invoke-static {p1}, Lcom/nexstreaming/app/common/util/FileType;->fromFile(Ljava/lang/String;)Lcom/nexstreaming/app/common/util/FileType;

    move-result-object v0

    .line 278
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nexstreaming/app/common/util/FileType;->isImage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    invoke-virtual {v0}, Lcom/nexstreaming/app/common/util/FileType;->isSupportedFormat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    invoke-direct {p0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->M()V

    .line 413
    :goto_0
    return-void

    .line 283
    :cond_0
    iput-boolean v4, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->x:Z

    goto :goto_0

    .line 289
    :cond_1
    new-instance v2, Ljava/io/File;

    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->y:Ljava/io/File;

    const-string v1, ".km_mediainfo"

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 290
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 291
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "none_%08X"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v0, v1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 292
    if-nez p2, :cond_2

    .line 293
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 297
    :goto_1
    const-string v0, "MediaInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mediaInfoDir="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_info.dat"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->e:Ljava/io/File;

    .line 300
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_seek.dat"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->f:Ljava/io/File;

    .line 301
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_vthumb.dat"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->g:Ljava/io/File;

    .line 302
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_vthumb_large.dat"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->h:Ljava/io/File;

    .line 303
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_vthumb_large_end.dat"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->i:Ljava/io/File;

    .line 304
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_vthumb_raw.dat"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->j:Ljava/io/File;

    .line 305
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_pcm.dat"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->k:Ljava/io/File;

    .line 306
    iput-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->l:Ljava/io/File;

    .line 307
    iput-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->m:Ljava/lang/String;

    .line 308
    iput-boolean p3, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->A:Z

    .line 311
    if-eqz p3, :cond_3

    .line 312
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 314
    const-string v0, "MediaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getInfo("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ") info file exists -> attemptng to read"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    if-nez v3, :cond_c

    new-instance v0, Lcom/google/gson_nex/Gson;

    invoke-direct {v0}, Lcom/google/gson_nex/Gson;-><init>()V

    move-object v2, v0

    .line 318
    :goto_2
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    iget-object v7, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->e:Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson_nex/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/gson_nex/JsonIOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 320
    :try_start_1
    const-class v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    invoke-virtual {v2, v6, v0}, Lcom/google/gson_nex/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    :try_start_2
    invoke-virtual {v6}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/google/gson_nex/JsonSyntaxException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/google/gson_nex/JsonIOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 332
    :goto_3
    if-eqz v0, :cond_4

    iget v6, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->a:I

    if-ne v6, v10, :cond_4

    .line 333
    const-string v1, "MediaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInfo("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") info from disk cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    goto/16 :goto_0

    .line 294
    :cond_2
    if-ne p2, v4, :cond_d

    .line 295
    invoke-static {p1}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_1

    .line 322
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v6}, Ljava/io/Reader;->close()V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/google/gson_nex/JsonSyntaxException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/google/gson_nex/JsonIOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 324
    :catch_0
    move-exception v0

    move-object v0, v3

    goto :goto_3

    :cond_3
    move-object v2, v3

    .line 340
    :cond_4
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->b:Lcom/nexstreaming/kminternal/kinemaster/config/ExclusionList;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->b:Lcom/nexstreaming/kminternal/kinemaster/config/ExclusionList;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/config/ExclusionList;->isExcluded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 341
    const-string v0, "MediaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInfo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") skip due to exclusion"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iput-boolean v4, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->x:Z

    goto/16 :goto_0

    .line 346
    :cond_5
    new-instance v6, Lcom/nexstreaming/kminternal/nexvideoeditor/NexClipInfo;

    invoke-direct {v6}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexClipInfo;-><init>()V

    .line 348
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->Q()Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v0

    .line 349
    if-nez v0, :cond_6

    .line 350
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->NO_INSTANCE_AVAILABLE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->n:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 351
    const-string v0, "MediaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInfo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") failure:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->n:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 355
    :cond_6
    sget-object v7, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->b:Lcom/nexstreaming/kminternal/kinemaster/config/ExclusionList;

    invoke-virtual {v7, v1}, Lcom/nexstreaming/kminternal/kinemaster/config/ExclusionList;->add(Ljava/lang/String;)V

    .line 356
    const-string v7, "MediaInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getInfo("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") call editor for info"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-virtual {v0, p1, v6, v5, v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Ljava/lang/String;Lcom/nexstreaming/kminternal/nexvideoeditor/NexClipInfo;ZI)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->n:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 358
    const-string v0, "MediaInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getInfo("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") returned from editor"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->b:Lcom/nexstreaming/kminternal/kinemaster/config/ExclusionList;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/config/ExclusionList;->remove(Ljava/lang/String;)V

    .line 361
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    invoke-direct {v0, v3}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;-><init>(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$1;)V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    .line 363
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->n:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    sget-object v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->NONE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    if-eq v0, v1, :cond_7

    .line 364
    const-string v0, "MediaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInfo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") failure:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->n:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 368
    :cond_7
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iput v10, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->a:I

    .line 369
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iput-object p1, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->b:Ljava/lang/String;

    .line 370
    iget-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget v0, v6, Lcom/nexstreaming/kminternal/nexvideoeditor/NexClipInfo;->mExistAudio:I

    if-eqz v0, :cond_a

    move v0, v4

    :goto_4
    iput-boolean v0, v1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->d:Z

    .line 371
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget v1, v6, Lcom/nexstreaming/kminternal/nexvideoeditor/NexClipInfo;->mExistVideo:I

    if-eqz v1, :cond_b

    :goto_5
    iput-boolean v4, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->e:Z

    .line 372
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iput-boolean v5, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->f:Z

    .line 373
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget v1, v6, Lcom/nexstreaming/kminternal/nexvideoeditor/NexClipInfo;->mAudioDuration:I

    iput v1, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->k:I

    .line 374
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget v1, v6, Lcom/nexstreaming/kminternal/nexvideoeditor/NexClipInfo;->mVideoDuration:I

    iput v1, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->l:I

    .line 375
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    invoke-direct {p0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->N()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->c:J

    .line 376
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget v1, v6, Lcom/nexstreaming/kminternal/nexvideoeditor/NexClipInfo;->mVideoWidth:I

    iput v1, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->g:I

    .line 377
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget v1, v6, Lcom/nexstreaming/kminternal/nexvideoeditor/NexClipInfo;->mVideoHeight:I

    iput v1, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->h:I

    .line 378
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget v1, v6, Lcom/nexstreaming/kminternal/nexvideoeditor/NexClipInfo;->mDisplayVideoWidth:I

    iput v1, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->i:I

    .line 379
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget v1, v6, Lcom/nexstreaming/kminternal/nexvideoeditor/NexClipInfo;->mDisplayVideoHeight:I

    iput v1, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->j:I

    .line 380
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget v1, v6, Lcom/nexstreaming/kminternal/nexvideoeditor/NexClipInfo;->mSeekPointCount:I

    iput v1, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->m:I

    .line 381
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget v1, v6, Lcom/nexstreaming/kminternal/nexvideoeditor/NexClipInfo;->mFPS:I

    iput v1, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->n:I

    .line 382
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget v1, v6, Lcom/nexstreaming/kminternal/nexvideoeditor/NexClipInfo;->mVideoH264Profile:I

    iput v1, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->o:I

    .line 383
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget v1, v6, Lcom/nexstreaming/kminternal/nexvideoeditor/NexClipInfo;->mVideoH264Level:I

    iput v1, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->p:I

    .line 384
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget v1, v6, Lcom/nexstreaming/kminternal/nexvideoeditor/NexClipInfo;->mVideoH264Interlaced:I

    iput v1, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->q:I

    .line 385
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget v1, v6, Lcom/nexstreaming/kminternal/nexvideoeditor/NexClipInfo;->mVideoOrientation:I

    iput v1, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->v:I

    .line 386
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget v1, v6, Lcom/nexstreaming/kminternal/nexvideoeditor/NexClipInfo;->mVideoBitRate:I

    iput v1, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->r:I

    .line 387
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget v1, v6, Lcom/nexstreaming/kminternal/nexvideoeditor/NexClipInfo;->mAudioBitRate:I

    iput v1, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->s:I

    .line 388
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget v1, v6, Lcom/nexstreaming/kminternal/nexvideoeditor/NexClipInfo;->mAudioSampleRate:I

    iput v1, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->t:I

    .line 389
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget v1, v6, Lcom/nexstreaming/kminternal/nexvideoeditor/NexClipInfo;->mAudioChannels:I

    iput v1, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->u:I

    .line 390
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget v1, v6, Lcom/nexstreaming/kminternal/nexvideoeditor/NexClipInfo;->mVideoRenderType:I

    iput v1, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->w:I

    .line 391
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget v1, v6, Lcom/nexstreaming/kminternal/nexvideoeditor/NexClipInfo;->mVideoCodecType:I

    iput v1, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->x:I

    .line 392
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget v1, v6, Lcom/nexstreaming/kminternal/nexvideoeditor/NexClipInfo;->mAudioCodecType:I

    iput v1, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->y:I

    .line 393
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget v1, v6, Lcom/nexstreaming/kminternal/nexvideoeditor/NexClipInfo;->mVideoHDRType:I

    iput v1, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->z:I

    .line 395
    if-eqz p3, :cond_9

    .line 396
    if-nez v2, :cond_8

    new-instance v2, Lcom/google/gson_nex/Gson;

    invoke-direct {v2}, Lcom/google/gson_nex/Gson;-><init>()V

    .line 398
    :cond_8
    const-string v0, "MediaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInfo("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") writing:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->e:Ljava/io/File;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :try_start_4
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->e:Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 403
    :try_start_5
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    invoke-virtual {v2, v0, v1}, Lcom/google/gson_nex/Gson;->toJson(Ljava/lang/Object;Ljava/lang/Appendable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 405
    :try_start_6
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 406
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->e:Ljava/io/File;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/File;->setReadable(Z)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 412
    :cond_9
    :goto_6
    const-string v0, "MediaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInfo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") out"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    move v0, v5

    .line 370
    goto/16 :goto_4

    :cond_b
    move v4, v5

    .line 371
    goto/16 :goto_5

    .line 405
    :catchall_1
    move-exception v0

    :try_start_7
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 406
    iget-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->e:Ljava/io/File;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/File;->setReadable(Z)Z

    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 408
    :catch_1
    move-exception v0

    .line 409
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 330
    :catch_2
    move-exception v0

    move-object v0, v3

    goto/16 :goto_3

    :catch_3
    move-exception v6

    goto/16 :goto_3

    .line 329
    :catch_4
    move-exception v0

    move-object v0, v3

    goto/16 :goto_3

    :catch_5
    move-exception v6

    goto/16 :goto_3

    .line 324
    :catch_6
    move-exception v6

    goto/16 :goto_3

    :cond_c
    move-object v2, v3

    goto/16 :goto_2

    :cond_d
    move-object v1, v0

    goto/16 :goto_1
.end method

.method static synthetic E()V
    .locals 0

    .prologue
    .line 73
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->S()V

    return-void
.end method

.method static synthetic F()Ljava/util/Deque;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->B:Ljava/util/Deque;

    return-object v0
.end method

.method static synthetic G()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->v:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic H()Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->Q()Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic I()Ljava/util/Deque;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->D:Ljava/util/Deque;

    return-object v0
.end method

.method static synthetic J()V
    .locals 0

    .prologue
    .line 73
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->R()V

    return-void
.end method

.method static synthetic K()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->F:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic L()Lcom/nexstreaming/app/common/task/Task;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->E:Lcom/nexstreaming/app/common/task/Task;

    return-object v0
.end method

.method private M()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/16 v3, 0x9

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 227
    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->d:I

    if-eqz v0, :cond_0

    .line 228
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    invoke-direct {v0, v5}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;-><init>(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$1;)V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    .line 229
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iput v3, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->a:I

    .line 259
    :goto_0
    return-void

    .line 233
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 235
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 236
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 237
    new-instance v2, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    invoke-direct {v2, v5}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;-><init>(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$1;)V

    iput-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    .line 238
    iget-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iput v3, v2, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->a:I

    .line 239
    iget-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->b:Ljava/lang/String;

    .line 240
    iget-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iput-boolean v6, v2, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->d:Z

    .line 241
    iget-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iput-boolean v6, v2, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->e:Z

    .line 242
    iget-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iput-boolean v4, v2, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->f:Z

    .line 243
    iget-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iput v6, v2, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->k:I

    .line 244
    iget-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iput v6, v2, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->l:I

    .line 245
    iget-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->c:J

    .line 246
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v2, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->g:I

    .line 247
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->h:I

    .line 248
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iput v6, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->m:I

    .line 249
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iput v6, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->n:I

    .line 250
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iput v6, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->o:I

    .line 251
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iput v6, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->p:I

    .line 252
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iput v6, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->q:I

    .line 253
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iput v6, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->w:I

    .line 254
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iput v6, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->x:I

    .line 255
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iput v6, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->y:I

    .line 256
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iput v6, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->z:I

    .line 257
    iput-boolean v6, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->x:Z

    .line 258
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->NONE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->n:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    goto :goto_0
.end method

.method private N()J
    .locals 3

    .prologue
    .line 262
    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->d:I

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 267
    :goto_0
    return-wide v0

    .line 264
    :cond_0
    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 265
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->c:Ljava/lang/String;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 267
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private O()Lcom/nexstreaming/app/common/task/Task;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 474
    new-instance v6, Lcom/nexstreaming/app/common/task/Task;

    invoke-direct {v6}, Lcom/nexstreaming/app/common/task/Task;-><init>()V

    .line 476
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->y:Ljava/io/File;

    const-string v2, ".km_mediainfo"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 477
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 479
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$1;

    iget-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->j:Ljava/io/File;

    iget-object v3, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->g:Ljava/io/File;

    iget-object v4, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->h:Ljava/io/File;

    iget-object v5, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->i:Ljava/io/File;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$1;-><init>(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Lcom/nexstreaming/app/common/task/Task;)V

    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->v:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    .line 494
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 496
    return-object v6
.end method

.method private P()Lcom/nexstreaming/app/common/task/ResultTask;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nexstreaming/app/common/task/ResultTask",
            "<",
            "Lcom/nexstreaming/kminternal/kinemaster/mediainfo/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 850
    new-instance v0, Lcom/nexstreaming/app/common/task/ResultTask;

    invoke-direct {v0}, Lcom/nexstreaming/app/common/task/ResultTask;-><init>()V

    .line 851
    new-instance v1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$14;

    invoke-direct {v1, p0, v0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$14;-><init>(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;Lcom/nexstreaming/app/common/task/ResultTask;)V

    sget-object v2, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->w:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    .line 883
    invoke-virtual {v1, v2, v3}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$14;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 884
    return-object v0
.end method

.method private static Q()Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;
    .locals 3

    .prologue
    .line 1646
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->a()Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1647
    const-string v0, "MediaInfo"

    const-string v1, "getEditor : NULL EDITOR"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    const/4 v0, 0x0

    .line 1655
    :goto_0
    return-object v0

    .line 1650
    :cond_0
    const-string v0, "MediaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEditor : setting sClipInfoDoneListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->K:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$j;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->a()Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v0

    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->K:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$j;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$j;)V

    .line 1652
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->a()Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v0

    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->M:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$m;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$m;)V

    .line 1653
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->a()Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v0

    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->L:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$h;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$h;)V

    .line 1654
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->a()Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v0

    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->J:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$k;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$k;)V

    .line 1655
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->a()Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v0

    goto :goto_0
.end method

.method private static R()V
    .locals 4

    .prologue
    .line 1674
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->D:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1675
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->Q()Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v1

    .line 1676
    if-nez v1, :cond_1

    .line 1685
    :cond_0
    :goto_0
    return-void

    .line 1679
    :cond_1
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->D:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;

    .line 1681
    invoke-static {v0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->b(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;)Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->c:Ljava/lang/String;

    .line 1682
    invoke-static {v0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->b(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;)Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->k:Ljava/io/File;

    .line 1683
    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->getTaskId()I

    move-result v0

    .line 1680
    invoke-virtual {v1, v2, v3, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Ljava/lang/String;Ljava/io/File;I)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    goto :goto_0
.end method

.method private static S()V
    .locals 13

    .prologue
    .line 1690
    sget-object v12, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->I:Ljava/lang/Object;

    monitor-enter v12

    .line 1691
    :try_start_0
    const-string v1, "MediaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startPendingThumbnailTask taskcount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->B:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->B:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1695
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->Q()Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v1

    .line 1696
    if-nez v1, :cond_0

    .line 1697
    monitor-exit v12

    .line 1756
    :goto_0
    return-void

    .line 1699
    :cond_0
    const/4 v2, 0x0

    .line 1700
    const/4 v3, 0x1

    .line 1701
    :goto_1
    sget-object v4, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->B:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1702
    sget-object v2, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->B:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;

    .line 1703
    iget-boolean v4, v2, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->b:Z

    if-eqz v4, :cond_1

    .line 1704
    const-string v4, "MediaInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startPendingThumbnailTask cancel thumbnail TaskId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->getTaskId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    sget-object v4, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->GETCLIPINFO_USER_CANCEL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-virtual {v2, v4}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->sendFailure(Lcom/nexstreaming/app/common/task/Task$TaskError;)V

    goto :goto_1

    .line 1755
    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1707
    :cond_1
    const/4 v3, 0x0

    move-object v11, v2

    move v2, v3

    .line 1712
    :goto_2
    if-eqz v2, :cond_2

    .line 1713
    :try_start_1
    const-string v1, "MediaInfo"

    const-string/jumbo v2, "startPendingThumbnailTask all canceled."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    monitor-exit v12

    goto :goto_0

    .line 1717
    :cond_2
    invoke-static {v11}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->a(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$f;

    move-object v9, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1720
    :try_start_2
    iget-object v2, v9, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$f;->i:[I

    if-eqz v2, :cond_3

    .line 1722
    const-string v2, "MediaInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startPendingThumbnailTask use TimeTable sThumbnailsRunTaskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->getTaskId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    iget-object v2, v9, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$f;->a:Ljava/lang/String;

    iget-object v3, v9, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$f;->b:Ljava/io/File;

    iget v4, v9, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$f;->c:I

    iget v5, v9, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$f;->d:I

    iget-object v6, v9, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$f;->i:[I

    array-length v6, v6

    iget-object v7, v9, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$f;->i:[I

    iget v8, v9, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$f;->h:I

    .line 1732
    invoke-virtual {v11}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->getTaskId()I

    move-result v9

    .line 1724
    invoke-virtual/range {v1 .. v9}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Ljava/lang/String;Ljava/io/File;III[III)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1755
    :goto_3
    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 1734
    :cond_3
    :try_start_4
    const-string v2, "MediaInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startPendingThumbnailTask range time sThumbnailsRunTaskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->getTaskId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    iget-object v2, v9, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$f;->a:Ljava/lang/String;

    iget-object v3, v9, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$f;->b:Ljava/io/File;

    iget v4, v9, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$f;->c:I

    iget v5, v9, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$f;->d:I

    iget v6, v9, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$f;->e:I

    iget v7, v9, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$f;->f:I

    iget v8, v9, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$f;->g:I

    iget v9, v9, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$f;->h:I

    .line 1745
    invoke-virtual {v11}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->getTaskId()I

    move-result v10

    .line 1736
    invoke-virtual/range {v1 .. v10}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Ljava/lang/String;Ljava/io/File;IIIIIII)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 1747
    :catch_0
    move-exception v1

    .line 1748
    :try_start_5
    invoke-static {v1}, Lcom/nexstreaming/app/common/task/Task;->makeTaskError(Ljava/lang/Exception;)Lcom/nexstreaming/app/common/task/Task$TaskError;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->sendFailure(Lcom/nexstreaming/app/common/task/Task$TaskError;)V

    goto :goto_3

    .line 1753
    :cond_4
    const-string v1, "MediaInfo"

    const-string/jumbo v2, "startPendingThumbnailTask all run end."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :cond_5
    move-object v11, v2

    move v2, v3

    goto/16 :goto_2
.end method

.method static synthetic a(I)I
    .locals 0

    .prologue
    .line 73
    sput p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->C:I

    return p0
.end method

.method static synthetic a(Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 0

    .prologue
    .line 73
    sput-object p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->F:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic a(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;Ljava/io/File;)Lcom/nexstreaming/app/common/task/ResultTask;
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->c(Ljava/io/File;)Lcom/nexstreaming/app/common/task/ResultTask;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;
    .locals 1

    .prologue
    .line 152
    if-nez p0, :cond_0

    .line 153
    const/4 v0, 0x0

    .line 156
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->a(Ljava/lang/String;Z)Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Z)Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;
    .locals 5

    .prologue
    .line 161
    if-nez p0, :cond_1

    .line 162
    const/4 v0, 0x0

    .line 207
    :cond_0
    :goto_0
    return-object v0

    .line 165
    :cond_1
    const-string v0, "MediaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInfo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->a:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 168
    const-string v0, "MediaInfo"

    const-string v1, "getInfo : init cache"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->a:Ljava/util/Map;

    .line 172
    :cond_2
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->b:Lcom/nexstreaming/kminternal/kinemaster/config/ExclusionList;

    if-nez v0, :cond_3

    .line 173
    const-string v0, "MediaInfo"

    const-string v1, "getInfo : init exclusion list"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->y:Ljava/io/File;

    const-string v2, ".km_mediainfo"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 175
    new-instance v1, Ljava/io/File;

    const-string v2, "mediainfo_exclude.dat"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/nexstreaming/kminternal/kinemaster/config/ExclusionList;->exclusionListBackedBy(Ljava/io/File;)Lcom/nexstreaming/kminternal/kinemaster/config/ExclusionList;

    move-result-object v0

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->b:Lcom/nexstreaming/kminternal/kinemaster/config/ExclusionList;

    .line 179
    :cond_3
    invoke-static {p0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->b(Ljava/lang/String;)I

    move-result v2

    .line 180
    if-nez v2, :cond_6

    .line 181
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 184
    :goto_1
    if-eqz p1, :cond_4

    .line 186
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 187
    if-eqz v0, :cond_4

    .line 188
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;

    .line 189
    if-eqz v0, :cond_4

    .line 190
    const-string v1, "MediaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInfo("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") using cache. duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->p()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 195
    :cond_4
    const/4 v0, 0x1

    if-ne v2, v0, :cond_5

    .line 196
    const/4 p1, 0x0

    .line 198
    :cond_5
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;

    invoke-direct {v0, p0, v2, p1}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;-><init>(Ljava/lang/String;IZ)V

    .line 200
    iget-object v2, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->n:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    sget-object v3, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->NO_INSTANCE_AVAILABLE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    if-eq v2, v3, :cond_0

    .line 204
    const-string v2, "MediaInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInfo("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") adding to cache duration="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->p()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    sget-object v2, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->a:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_6
    move-object v1, p0

    goto :goto_1
.end method

.method static synthetic a(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)Ljava/io/File;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->j:Ljava/io/File;

    return-object v0
.end method

.method static synthetic a(Ljava/util/Deque;)Ljava/util/Deque;
    .locals 0

    .prologue
    .line 73
    sput-object p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->B:Ljava/util/Deque;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->y:Ljava/io/File;

    .line 149
    return-void
.end method

.method public static a(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 144
    sput-object p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->z:Ljava/io/File;

    .line 145
    return-void
.end method

.method public static a()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 502
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->Q()Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v4

    .line 503
    if-nez v4, :cond_0

    .line 526
    :goto_0
    return v2

    .line 508
    :cond_0
    const-string v0, "MediaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelAllGetThumbnails : Pending size="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->B:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const-string v0, "MediaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelAllGetThumbnails : Active size="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->F:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 511
    :goto_1
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->F:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 512
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->F:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;

    .line 513
    iput v2, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->a:I

    .line 514
    iput-boolean v3, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->b:Z

    .line 511
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 517
    :cond_1
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->B:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 518
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;

    .line 519
    const-string v5, "MediaInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cancelAllGetThumbnails : id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->getTaskId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iput v2, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->a:I

    .line 521
    iput-boolean v3, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->b:Z

    goto :goto_2

    .line 524
    :cond_2
    invoke-virtual {v4, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->l(I)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    move v2, v3

    .line 526
    goto/16 :goto_0
.end method

.method private static b(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 133
    if-eqz p0, :cond_1

    .line 134
    const-string v0, "nexasset://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const/4 v0, 0x1

    .line 140
    :goto_0
    return v0

    .line 137
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 140
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Ljava/io/File;)Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v7, 0x20

    const/4 v8, 0x0

    .line 422
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 423
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 424
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 425
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 426
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v7, :cond_0

    .line 427
    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 429
    :cond_0
    const-wide/32 v6, 0xcaa8261

    mul-long/2addr v2, v6

    const-wide/32 v6, 0xb9d3415

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    int-to-long v4, v1

    add-long/2addr v2, v4

    const-wide/32 v4, 0xfffffff

    rem-long/2addr v2, v4

    long-to-int v1, v2

    .line 430
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%08X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/io/File;)Lcom/nexstreaming/app/common/task/ResultTask;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/nexstreaming/app/common/task/ResultTask",
            "<",
            "Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 810
    new-instance v0, Lcom/nexstreaming/app/common/task/ResultTask;

    invoke-direct {v0}, Lcom/nexstreaming/app/common/task/ResultTask;-><init>()V

    .line 812
    new-instance v1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$13;

    invoke-direct {v1, p0, v0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$13;-><init>(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;Lcom/nexstreaming/app/common/task/ResultTask;)V

    sget-object v2, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->w:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/io/File;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 845
    invoke-virtual {v1, v2, v3}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$13;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 846
    return-object v0
.end method

.method static synthetic c(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->o:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 416
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 417
    const/16 v1, 0x3a

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nexasset_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)Ljava/io/File;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->g:Ljava/io/File;

    return-object v0
.end method

.method static synthetic e(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)Lcom/nexstreaming/app/common/task/Task;
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->O()Lcom/nexstreaming/app/common/task/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)Ljava/io/File;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->k:Ljava/io/File;

    return-object v0
.end method

.method static synthetic g(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)Lcom/nexstreaming/app/common/task/ResultTask;
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->P()Lcom/nexstreaming/app/common/task/ResultTask;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->p:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;

    return-object v0
.end method

.method static synthetic i(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)Ljava/io/File;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->f:Ljava/io/File;

    return-object v0
.end method

.method static synthetic j(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)Lcom/nexstreaming/app/common/task/ResultTask;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->s:Lcom/nexstreaming/app/common/task/ResultTask;

    return-object v0
.end method

.method public static k()Z
    .locals 1

    .prologue
    .line 1318
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->F:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public A()I
    .locals 1

    .prologue
    .line 1489
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->x:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->n:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1490
    :cond_0
    const/4 v0, 0x0

    .line 1492
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget v0, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->w:I

    goto :goto_0
.end method

.method public B()I
    .locals 1

    .prologue
    .line 1497
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->x:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->n:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1498
    :cond_0
    const/4 v0, 0x0

    .line 1500
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget v0, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->x:I

    goto :goto_0
.end method

.method public C()I
    .locals 1

    .prologue
    .line 1505
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->x:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->n:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1506
    :cond_0
    const/4 v0, 0x0

    .line 1508
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget v0, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->y:I

    goto :goto_0
.end method

.method public D()I
    .locals 1

    .prologue
    .line 1513
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->x:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->n:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1514
    :cond_0
    const/4 v0, 0x0

    .line 1516
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget v0, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->z:I

    goto :goto_0
.end method

.method public a(IIIIII[ILcom/nexstreaming/kminternal/kinemaster/mediainfo/c;)Lcom/nexstreaming/app/common/task/Task;
    .locals 10

    .prologue
    .line 532
    sget v1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->C:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->C:I

    .line 534
    iget-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->l:Ljava/io/File;

    .line 535
    sget-object v2, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->z:Ljava/io/File;

    if-eqz v2, :cond_0

    .line 536
    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->z:Ljava/io/File;

    .line 537
    const-string v2, "MediaInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDetailThumbnails::temp cache dir="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 541
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 544
    :cond_1
    new-instance v3, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->m:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_detail_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->C:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 547
    if-eqz p7, :cond_3

    .line 548
    new-instance v1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$f;

    iget-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->c:Ljava/lang/String;

    move v4, p1

    move v5, p2

    move-object/from16 v6, p7

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$f;-><init>(Ljava/lang/String;Ljava/io/File;II[II)V

    .line 553
    :goto_0
    new-instance v2, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;

    new-instance v4, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$9;

    move-object/from16 v0, p8

    invoke-direct {v4, p0, v3, v0, p5}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$9;-><init>(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;Ljava/io/File;Lcom/nexstreaming/kminternal/kinemaster/mediainfo/c;I)V

    new-instance v3, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$10;

    move-object/from16 v0, p8

    invoke-direct {v3, p0, v0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$10;-><init>(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;Lcom/nexstreaming/kminternal/kinemaster/mediainfo/c;)V

    invoke-direct {v2, p0, v1, v4, v3}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;-><init>(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;Ljava/lang/Object;Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$d;Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$e;)V

    .line 661
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->Q()Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v1

    .line 662
    if-eqz v1, :cond_4

    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->B:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    .line 663
    :goto_1
    sget-object v3, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->B:Ljava/util/Deque;

    invoke-interface {v3, v2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 664
    if-eqz v1, :cond_2

    .line 665
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->S()V

    .line 668
    :cond_2
    return-object v2

    .line 550
    :cond_3
    new-instance v1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$f;

    iget-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->c:Ljava/lang/String;

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$f;-><init>(Ljava/lang/String;Ljava/io/File;IIIIII)V

    goto :goto_0

    .line 662
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public a(ZZ)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1092
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->Q()Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v2

    .line 1093
    if-nez v2, :cond_0

    .line 1094
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->GENERAL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 1106
    :goto_0
    return-object v0

    .line 1098
    :cond_0
    if-eqz p1, :cond_2

    .line 1099
    const/16 v0, 0x100

    .line 1101
    :goto_1
    if-eqz p2, :cond_1

    .line 1102
    or-int/lit8 v0, v0, 0x10

    .line 1104
    :cond_1
    new-instance v3, Lcom/nexstreaming/kminternal/nexvideoeditor/NexClipInfo;

    invoke-direct {v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexClipInfo;-><init>()V

    .line 1105
    iget-object v4, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->c:Ljava/lang/String;

    invoke-virtual {v2, v4, v3, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Ljava/lang/String;Lcom/nexstreaming/kminternal/nexvideoeditor/NexClipInfo;II)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public b()Lcom/nexstreaming/app/common/task/ResultTask;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nexstreaming/app/common/task/ResultTask",
            "<",
            "Lcom/nexstreaming/kminternal/kinemaster/mediainfo/h;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 672
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->g:Ljava/io/File;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->j:Ljava/io/File;

    if-nez v0, :cond_0

    .line 673
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;->ThumbnailsNotAvailable:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;

    invoke-static {v0}, Lcom/nexstreaming/app/common/task/ResultTask;->failedResultTask(Lcom/nexstreaming/app/common/task/Task$TaskError;)Lcom/nexstreaming/app/common/task/ResultTask;

    move-result-object v0

    .line 773
    :goto_0
    return-object v0

    .line 676
    :cond_0
    const-string v0, "MediaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getThumbnails("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") sPendingThumbnailTasks="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->B:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->o:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->o:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;

    sget-object v1, Lcom/nexstreaming/app/common/task/Task$Event;->FAIL:Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->didSignalEvent(Lcom/nexstreaming/app/common/task/Task$Event;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 680
    const-string v0, "MediaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getThumbnails("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") returning existing task"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->o:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;

    goto :goto_0

    .line 684
    :cond_1
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$f;

    iget-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->j:Ljava/io/File;

    const/16 v3, 0x280

    const/16 v4, 0x168

    invoke-virtual {p0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->r()I

    move-result v6

    const/16 v7, 0x1e

    move v8, v5

    invoke-direct/range {v0 .. v8}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$f;-><init>(Ljava/lang/String;Ljava/io/File;IIIIII)V

    .line 686
    new-instance v1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;

    new-instance v2, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$11;

    invoke-direct {v2, p0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$11;-><init>(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)V

    invoke-direct {v1, p0, v0, v2}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;-><init>(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;Ljava/lang/Object;Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$d;)V

    iput-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->o:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;

    .line 745
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->g:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->c(Ljava/io/File;)Lcom/nexstreaming/app/common/task/ResultTask;

    move-result-object v0

    new-instance v1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$12;

    invoke-direct {v1, p0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$12;-><init>(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)V

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/task/ResultTask;->onResultAvailable(Lcom/nexstreaming/app/common/task/ResultTask$OnResultAvailableListener;)Lcom/nexstreaming/app/common/task/ResultTask;

    .line 772
    const-string v0, "MediaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getThumbnails("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") returning NEW task"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->o:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;

    goto/16 :goto_0
.end method

.method public c()Lcom/nexstreaming/app/common/task/ResultTask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nexstreaming/app/common/task/ResultTask",
            "<",
            "Lcom/nexstreaming/kminternal/kinemaster/mediainfo/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 910
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->k:Ljava/io/File;

    if-nez v0, :cond_0

    .line 911
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;->PCMLevelsNotAvailable:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;

    invoke-static {v0}, Lcom/nexstreaming/app/common/task/ResultTask;->failedResultTask(Lcom/nexstreaming/app/common/task/Task$TaskError;)Lcom/nexstreaming/app/common/task/ResultTask;

    move-result-object v0

    .line 955
    :goto_0
    return-object v0

    .line 914
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->p:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->p:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;

    sget-object v1, Lcom/nexstreaming/app/common/task/Task$Event;->FAIL:Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->didSignalEvent(Lcom/nexstreaming/app/common/task/Task$Event;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 915
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->p:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;

    goto :goto_0

    .line 918
    :cond_1
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;

    const/4 v1, 0x0

    new-instance v2, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$15;

    invoke-direct {v2, p0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$15;-><init>(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;-><init>(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;Ljava/lang/Object;Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$d;)V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->p:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;

    .line 939
    invoke-direct {p0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->P()Lcom/nexstreaming/app/common/task/ResultTask;

    move-result-object v0

    new-instance v1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$2;

    invoke-direct {v1, p0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$2;-><init>(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)V

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/task/ResultTask;->onResultAvailable(Lcom/nexstreaming/app/common/task/ResultTask$OnResultAvailableListener;)Lcom/nexstreaming/app/common/task/ResultTask;

    .line 955
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->p:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;

    goto :goto_0
.end method

.method public d()[I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1058
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->t:Landroid/os/AsyncTask;

    if-nez v0, :cond_0

    .line 1059
    invoke-virtual {p0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->e()Lcom/nexstreaming/app/common/task/ResultTask;

    .line 1060
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->t:Landroid/os/AsyncTask;

    if-nez v0, :cond_0

    .line 1061
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1065
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->t:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1071
    :goto_0
    return-object v0

    .line 1066
    :catch_0
    move-exception v0

    .line 1067
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    move-object v0, v1

    .line 1068
    goto :goto_0

    .line 1069
    :catch_1
    move-exception v0

    .line 1070
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    move-object v0, v1

    .line 1071
    goto :goto_0
.end method

.method public e()Lcom/nexstreaming/app/common/task/ResultTask;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nexstreaming/app/common/task/ResultTask",
            "<[I>;"
        }
    .end annotation

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->f:Ljava/io/File;

    if-nez v0, :cond_0

    .line 1113
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;->SeekPointsNotAvailable:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$MediaInfoError;

    invoke-static {v0}, Lcom/nexstreaming/app/common/task/ResultTask;->failedResultTask(Lcom/nexstreaming/app/common/task/Task$TaskError;)Lcom/nexstreaming/app/common/task/ResultTask;

    move-result-object v0

    .line 1202
    :goto_0
    return-object v0

    .line 1116
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->s:Lcom/nexstreaming/app/common/task/ResultTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->s:Lcom/nexstreaming/app/common/task/ResultTask;

    sget-object v1, Lcom/nexstreaming/app/common/task/Task$Event;->FAIL:Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/task/ResultTask;->didSignalEvent(Lcom/nexstreaming/app/common/task/Task$Event;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1117
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->s:Lcom/nexstreaming/app/common/task/ResultTask;

    goto :goto_0

    .line 1120
    :cond_1
    const-string v0, "MediaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSeekPoints("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    new-instance v0, Lcom/nexstreaming/app/common/task/ResultTask;

    invoke-direct {v0}, Lcom/nexstreaming/app/common/task/ResultTask;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->s:Lcom/nexstreaming/app/common/task/ResultTask;

    .line 1124
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$3;

    invoke-direct {v0, p0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$3;-><init>(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)V

    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->w:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 1201
    invoke-virtual {v0, v1, v2}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->t:Landroid/os/AsyncTask;

    .line 1202
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->s:Lcom/nexstreaming/app/common/task/ResultTask;

    goto :goto_0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 1222
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->x:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->n:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1223
    :cond_0
    const/4 v0, 0x0

    .line 1225
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget v0, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->m:I

    goto :goto_0
.end method

.method public g()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1266
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getDeviceProfile()Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;

    move-result-object v1

    .line 1267
    invoke-virtual {v1}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getMaxResolution()I

    move-result v1

    .line 1268
    iget-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->n:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    sget-object v3, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->UNSUPPORT_MAX_RESOLUTION:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    if-ne v2, v3, :cond_1

    .line 1273
    :cond_0
    :goto_0
    return v0

    .line 1270
    :cond_1
    invoke-virtual {p0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->o()I

    move-result v2

    invoke-virtual {p0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->n()I

    move-result v3

    mul-int/2addr v2, v3

    mul-int/lit8 v1, v1, 0x6e

    div-int/lit8 v1, v1, 0x64

    if-gt v2, v1, :cond_0

    .line 1273
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public h()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1280
    iget-boolean v1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->x:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->n:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-virtual {v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->isError()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1286
    :cond_0
    :goto_0
    return v0

    .line 1283
    :cond_1
    invoke-virtual {p0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1286
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 1290
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->x:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->n:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()I
    .locals 2

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->n:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1295
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$8;->a:[I

    iget-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->n:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-virtual {v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1306
    const/16 v0, -0xc

    .line 1309
    :goto_0
    return v0

    .line 1296
    :pswitch_0
    const/4 v0, -0x2

    goto :goto_0

    .line 1297
    :pswitch_1
    const/4 v0, -0x3

    goto :goto_0

    .line 1298
    :pswitch_2
    const/4 v0, -0x4

    goto :goto_0

    .line 1299
    :pswitch_3
    const/4 v0, -0x5

    goto :goto_0

    .line 1300
    :pswitch_4
    const/4 v0, -0x6

    goto :goto_0

    .line 1301
    :pswitch_5
    const/4 v0, -0x7

    goto :goto_0

    .line 1302
    :pswitch_6
    const/4 v0, -0x8

    goto :goto_0

    .line 1303
    :pswitch_7
    const/16 v0, -0x9

    goto :goto_0

    .line 1304
    :pswitch_8
    const/16 v0, -0xa

    goto :goto_0

    .line 1305
    :pswitch_9
    const/16 v0, -0xb

    goto :goto_0

    .line 1309
    :cond_0
    invoke-virtual {p0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 1295
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 1342
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->x:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->n:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1343
    :cond_0
    const/4 v0, 0x0

    .line 1345
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget-boolean v0, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->d:Z

    goto :goto_0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 1350
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->x:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->n:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1351
    :cond_0
    const/4 v0, 0x0

    .line 1353
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget-boolean v0, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->e:Z

    goto :goto_0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 1366
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->x:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->n:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1367
    :cond_0
    const/4 v0, 0x0

    .line 1369
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget v0, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->g:I

    goto :goto_0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 1374
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->x:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->n:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1375
    :cond_0
    const/4 v0, 0x0

    .line 1377
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget v0, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->h:I

    goto :goto_0
.end method

.method public p()I
    .locals 1

    .prologue
    .line 1398
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->x:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->n:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1399
    :cond_0
    const/4 v0, 0x0

    .line 1404
    :goto_0
    return v0

    .line 1401
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget-boolean v0, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->d:Z

    if-eqz v0, :cond_2

    .line 1402
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget v0, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->k:I

    goto :goto_0

    .line 1404
    :cond_2
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget v0, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->l:I

    goto :goto_0
.end method

.method public q()I
    .locals 1

    .prologue
    .line 1409
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->x:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->n:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1410
    :cond_0
    const/4 v0, 0x0

    .line 1412
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget v0, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->k:I

    goto :goto_0
.end method

.method public r()I
    .locals 1

    .prologue
    .line 1417
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->x:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->n:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1418
    :cond_0
    const/4 v0, 0x0

    .line 1420
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget v0, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->l:I

    goto :goto_0
.end method

.method public s()I
    .locals 1

    .prologue
    .line 1425
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->x:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->n:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1426
    :cond_0
    const/4 v0, 0x0

    .line 1428
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget v0, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->n:I

    goto :goto_0
.end method

.method public t()I
    .locals 1

    .prologue
    .line 1433
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->x:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->n:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1434
    :cond_0
    const/4 v0, 0x0

    .line 1436
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget v0, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->v:I

    goto :goto_0
.end method

.method public u()I
    .locals 1

    .prologue
    .line 1441
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->x:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->n:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1442
    :cond_0
    const/4 v0, 0x0

    .line 1444
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget v0, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->o:I

    goto :goto_0
.end method

.method public v()I
    .locals 1

    .prologue
    .line 1449
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->x:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->n:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1450
    :cond_0
    const/4 v0, 0x0

    .line 1452
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget v0, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->p:I

    goto :goto_0
.end method

.method public w()I
    .locals 1

    .prologue
    .line 1457
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->x:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->n:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1458
    :cond_0
    const/4 v0, 0x0

    .line 1460
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget v0, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->r:I

    goto :goto_0
.end method

.method public x()I
    .locals 1

    .prologue
    .line 1465
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->x:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->n:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1466
    :cond_0
    const/4 v0, 0x0

    .line 1468
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget v0, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->s:I

    goto :goto_0
.end method

.method public y()I
    .locals 1

    .prologue
    .line 1473
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->x:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->n:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1474
    :cond_0
    const/4 v0, 0x0

    .line 1476
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget v0, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->t:I

    goto :goto_0
.end method

.method public z()I
    .locals 1

    .prologue
    .line 1481
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->x:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->n:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1482
    :cond_0
    const/4 v0, 0x0

    .line 1484
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->u:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;

    iget v0, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$b;->u:I

    goto :goto_0
.end method
