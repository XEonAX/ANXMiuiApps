.class public Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;
.super Ljava/lang/Object;
.source "ColorFormatChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;
    }
.end annotation


# static fields
.field private static a:Lcom/nexstreaming/app/common/task/ResultTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nexstreaming/app/common/task/ResultTask",
            "<",
            "Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;

.field private c:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;

.field private d:Z

.field private e:Z

.field private f:Landroid/media/MediaFormat;

.field private g:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<[B>;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;->a:Lcom/nexstreaming/app/common/task/ResultTask;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;->d:Z

    .line 81
    iput-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;->e:Z

    .line 89
    return-void
.end method

.method synthetic constructor <init>(Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$1;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;->f:Landroid/media/MediaFormat;

    return-object p1
.end method

.method static synthetic a()Lcom/nexstreaming/app/common/task/ResultTask;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;->a:Lcom/nexstreaming/app/common/task/ResultTask;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/nexstreaming/app/common/task/ResultTask;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/nexstreaming/app/common/task/ResultTask",
            "<",
            "Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 29
    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;->a:Lcom/nexstreaming/app/common/task/ResultTask;

    if-nez v1, :cond_2

    .line 30
    new-instance v1, Lcom/nexstreaming/app/common/task/ResultTask;

    invoke-direct {v1}, Lcom/nexstreaming/app/common/task/ResultTask;-><init>()V

    sput-object v1, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;->a:Lcom/nexstreaming/app/common/task/ResultTask;

    .line 32
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 33
    const-string v1, "km_detected_codec_color_format"

    invoke-interface {v3, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    const-string v1, "km_detected_codec_color_format"

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 35
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;->values()[Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;

    move-result-object v5

    array-length v6, v5

    move v1, v2

    :goto_0
    if-ge v1, v6, :cond_1

    aget-object v7, v5, v1

    .line 36
    invoke-virtual {v7}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 37
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;->a:Lcom/nexstreaming/app/common/task/ResultTask;

    invoke-virtual {v0, v7}, Lcom/nexstreaming/app/common/task/ResultTask;->setResult(Ljava/lang/Object;)V

    .line 38
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;->a:Lcom/nexstreaming/app/common/task/ResultTask;

    .line 71
    :goto_1
    return-object v0

    .line 35
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    :cond_1
    new-instance v1, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$1;

    invoke-direct {v1, v3}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$1;-><init>(Landroid/content/SharedPreferences;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Void;

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v4, v2

    .line 68
    invoke-virtual {v1, v3, v4}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 71
    :cond_2
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;->a:Lcom/nexstreaming/app/common/task/ResultTask;

    goto :goto_1
.end method

.method static synthetic a(Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;)Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;->b()Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;Z)Z
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;)Landroid/media/MediaFormat;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;->f:Landroid/media/MediaFormat;

    return-object v0
.end method

.method private b()Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x7530

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const v10, 0xe1000

    const/4 v5, 0x0

    .line 93
    sget-object v4, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;->UNKNOWN:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;

    .line 94
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;->g:Ljava/util/Vector;

    .line 95
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;->h:Ljava/util/Vector;

    .line 97
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;

    const/16 v6, 0x500

    const/16 v7, 0x2d0

    invoke-direct {v0, v6, v7}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;-><init>(II)V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;->b:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;

    .line 98
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;->b:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;

    new-instance v6, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$2;

    invoke-direct {v6, p0}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$2;-><init>(Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;)V

    invoke-virtual {v0, v6}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->a(Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/d;)V

    .line 150
    const v0, 0x151800

    new-array v8, v0, [B

    .line 152
    const/16 v0, 0x2d

    invoke-static {v8, v5, v10, v0}, Ljava/util/Arrays;->fill([BIIB)V

    move v0, v5

    .line 153
    :goto_0
    const v6, 0x70800

    if-ge v0, v6, :cond_0

    .line 155
    add-int v6, v10, v0

    const/16 v7, -0x2c

    aput-byte v7, v8, v6

    .line 156
    add-int v6, v10, v0

    add-int/lit8 v6, v6, 0x1

    const/16 v7, -0x7f

    aput-byte v7, v8, v6

    .line 153
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    move v0, v5

    move-wide v6, v2

    .line 161
    :goto_1
    const/4 v9, 0x5

    if-ge v0, v9, :cond_1

    .line 163
    iget-object v9, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;->b:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;

    invoke-virtual {v9, v8, v6, v7}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->a([BJ)Z

    .line 164
    add-long/2addr v6, v12

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 167
    :cond_1
    :goto_2
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;->d:Z

    if-nez v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;->b:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;

    invoke-virtual {v0, v1, v6, v7}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->a([BJ)Z

    goto :goto_2

    .line 171
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;->b:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;->a()V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;->b:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/c;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_3
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;->f:Landroid/media/MediaFormat;

    if-eqz v0, :cond_7

    .line 179
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;

    iget-object v6, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;->f:Landroid/media/MediaFormat;

    invoke-direct {v0, v6, v1}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;-><init>(Landroid/media/MediaFormat;Landroid/view/Surface;)V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;->c:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;

    .line 181
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;->c:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;

    new-instance v6, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$3;

    invoke-direct {v6, p0}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$3;-><init>(Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;)V

    invoke-virtual {v0, v6}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->a(Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/d;)V

    .line 217
    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 219
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;->g:Ljava/util/Vector;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 220
    if-eqz v0, :cond_3

    .line 222
    iget-object v6, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;->c:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;

    invoke-virtual {v6, v0, v2, v3}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->a([BJ)Z

    .line 223
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;->g:Ljava/util/Vector;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 224
    add-long/2addr v2, v12

    goto :goto_4

    .line 173
    :catch_0
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 228
    :cond_4
    :goto_5
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;->e:Z

    if-nez v0, :cond_5

    .line 230
    iget-object v6, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;->c:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;

    move-object v0, v1

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v0, v2, v3}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->a(Ljava/nio/ByteBuffer;J)Z

    goto :goto_5

    .line 234
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;->c:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->a()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 239
    :goto_6
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 241
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;->c:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->c()I

    move-result v1

    .line 242
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;->c:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/b;->d()I

    move-result v2

    .line 243
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;->h:Ljava/util/Vector;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 244
    if-eqz v0, :cond_7

    .line 246
    aget-byte v3, v8, v10

    .line 247
    const v4, 0xe1001

    aget-byte v4, v8, v4

    .line 248
    const v5, 0xe1002

    aget-byte v5, v8, v5

    .line 249
    const v6, 0xe1003

    aget-byte v6, v8, v6

    .line 251
    mul-int v7, v1, v2

    aget-byte v7, v0, v7

    .line 252
    mul-int v8, v1, v2

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, v0, v8

    .line 253
    mul-int v9, v1, v2

    add-int/lit8 v9, v9, 0x2

    aget-byte v9, v0, v9

    .line 254
    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x3

    aget-byte v0, v0, v1

    .line 256
    sub-int v1, v3, v7

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 257
    sub-int v2, v4, v8

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 258
    sub-int v2, v5, v9

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 259
    sub-int v0, v6, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v0, v1

    .line 261
    div-int/lit8 v0, v0, 0x4

    .line 263
    const/16 v1, 0xa

    if-le v0, v1, :cond_6

    .line 264
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;->NV21:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;

    .line 271
    :goto_7
    return-object v0

    .line 235
    :catch_1
    move-exception v0

    .line 236
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 266
    :cond_6
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;->NV12:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;

    goto :goto_7

    :cond_7
    move-object v0, v4

    goto :goto_7
.end method

.method static synthetic b(Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;Z)Z
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;->e:Z

    return p1
.end method

.method static synthetic c(Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;->g:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic d(Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;->h:Ljava/util/Vector;

    return-object v0
.end method
