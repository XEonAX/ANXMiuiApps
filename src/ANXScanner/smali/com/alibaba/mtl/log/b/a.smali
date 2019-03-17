.class public Lcom/alibaba/mtl/log/b/a;
.super Ljava/lang/Object;
.source "CoreStatics.java"


# static fields
.field private static a:Ljava/lang/StringBuilder;

.field private static volatile e:J

.field private static f:J

.field private static g:J

.field private static h:J

.field private static i:J

.field private static j:J

.field private static k:J

.field private static l:J

.field private static m:J

.field private static n:J

.field private static o:J

.field private static p:J

.field private static q:J

.field private static r:J

.field private static s:J

.field private static t:J

.field private static u:I

.field private static u:J

.field private static v:I

.field private static v:J

.field private static w:I

.field private static w:J

.field private static x:J

.field private static y:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 33
    sput-wide v0, Lcom/alibaba/mtl/log/b/a;->j:J

    .line 34
    sput-wide v0, Lcom/alibaba/mtl/log/b/a;->k:J

    .line 35
    sput-wide v0, Lcom/alibaba/mtl/log/b/a;->l:J

    .line 36
    sput-wide v0, Lcom/alibaba/mtl/log/b/a;->m:J

    .line 37
    sput v2, Lcom/alibaba/mtl/log/b/a;->v:I

    .line 38
    sput v2, Lcom/alibaba/mtl/log/b/a;->w:I

    .line 41
    sput-wide v0, Lcom/alibaba/mtl/log/b/a;->n:J

    .line 42
    sput-wide v0, Lcom/alibaba/mtl/log/b/a;->o:J

    .line 43
    sput-wide v0, Lcom/alibaba/mtl/log/b/a;->p:J

    .line 44
    sput-wide v0, Lcom/alibaba/mtl/log/b/a;->q:J

    .line 45
    sput-wide v0, Lcom/alibaba/mtl/log/b/a;->r:J

    .line 46
    sput-wide v0, Lcom/alibaba/mtl/log/b/a;->s:J

    .line 47
    sput-wide v0, Lcom/alibaba/mtl/log/b/a;->t:J

    .line 48
    sput-wide v0, Lcom/alibaba/mtl/log/b/a;->u:J

    .line 50
    sput-wide v0, Lcom/alibaba/mtl/log/b/a;->v:J

    .line 51
    sput-wide v0, Lcom/alibaba/mtl/log/b/a;->w:J

    .line 52
    sput-wide v0, Lcom/alibaba/mtl/log/b/a;->x:J

    .line 53
    sput-wide v0, Lcom/alibaba/mtl/log/b/a;->y:J

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/log/b/a;->a:Ljava/lang/StringBuilder;

    return-void
.end method

.method public static declared-synchronized A()V
    .locals 6

    .prologue
    .line 160
    const-class v1, Lcom/alibaba/mtl/log/b/a;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lcom/alibaba/mtl/log/b/a;->t:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/alibaba/mtl/log/b/a;->t:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit v1

    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized B()V
    .locals 6

    .prologue
    .line 164
    const-class v1, Lcom/alibaba/mtl/log/b/a;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lcom/alibaba/mtl/log/b/a;->u:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/alibaba/mtl/log/b/a;->u:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit v1

    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static C()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x1

    .line 263
    invoke-static {}, Lcom/alibaba/mtl/log/d/l;->t()Ljava/lang/String;

    move-result-object v0

    .line 264
    const-string v1, "wifi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    sget-wide v0, Lcom/alibaba/mtl/log/b/a;->m:J

    add-long/2addr v0, v2

    sput-wide v0, Lcom/alibaba/mtl/log/b/a;->m:J

    .line 275
    :goto_0
    return-void

    .line 266
    :cond_0
    const-string v1, "3G"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    sget-wide v0, Lcom/alibaba/mtl/log/b/a;->k:J

    add-long/2addr v0, v2

    sput-wide v0, Lcom/alibaba/mtl/log/b/a;->k:J

    goto :goto_0

    .line 268
    :cond_1
    const-string v1, "4G"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 269
    sget-wide v0, Lcom/alibaba/mtl/log/b/a;->l:J

    add-long/2addr v0, v2

    sput-wide v0, Lcom/alibaba/mtl/log/b/a;->l:J

    goto :goto_0

    .line 270
    :cond_2
    const-string v1, "2G"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 271
    sget-wide v0, Lcom/alibaba/mtl/log/b/a;->j:J

    add-long/2addr v0, v2

    sput-wide v0, Lcom/alibaba/mtl/log/b/a;->j:J

    goto :goto_0

    .line 273
    :cond_3
    sget v0, Lcom/alibaba/mtl/log/b/a;->v:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alibaba/mtl/log/b/a;->v:I

    goto :goto_0
.end method

.method public static declared-synchronized D()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 312
    const-class v1, Lcom/alibaba/mtl/log/b/a;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/alibaba/mtl/log/b/a;->w:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alibaba/mtl/log/b/a;->w:I

    .line 313
    sget-wide v2, Lcom/alibaba/mtl/log/b/a;->e:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    sget-wide v2, Lcom/alibaba/mtl/log/b/a;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 320
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 317
    :cond_1
    :try_start_1
    sget-boolean v0, Lcom/alibaba/mtl/log/a;->o:Z

    if-nez v0, :cond_2

    sget v0, Lcom/alibaba/mtl/log/b/a;->w:I

    const/4 v2, 0x6

    if-lt v0, v2, :cond_0

    .line 318
    :cond_2
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/alibaba/mtl/log/b/a;->commit(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/util/List;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/mtl/log/model/a;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 95
    const-class v3, Lcom/alibaba/mtl/log/b/a;

    monitor-enter v3

    if-nez p0, :cond_1

    .line 121
    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    :cond_1
    move v2, v0

    move v1, v0

    .line 99
    :goto_1
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 100
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/log/model/a;

    .line 101
    if-eqz v0, :cond_3

    .line 102
    const-string v4, "6005"

    iget-object v5, v0, Lcom/alibaba/mtl/log/model/a;->S:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 103
    add-int/lit8 v1, v1, 0x1

    .line 105
    :cond_2
    sget-object v4, Lcom/alibaba/mtl/log/b/a;->a:Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/alibaba/mtl/log/model/a;->W:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v2, v0, :cond_3

    .line 107
    sget-object v0, Lcom/alibaba/mtl/log/b/a;->a:Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    move v0, v1

    .line 99
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 114
    :cond_4
    const-string v0, "CoreStatics"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "[uploadInc]:"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    sget-wide v6, Lcom/alibaba/mtl/log/b/a;->g:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "count:"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    sget-wide v4, Lcom/alibaba/mtl/log/b/a;->g:J

    int-to-long v6, p1

    add-long/2addr v4, v6

    sput-wide v4, Lcom/alibaba/mtl/log/b/a;->g:J

    .line 116
    const-string v0, "CoreStatics"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "[uploadInc]:"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    sget-wide v6, Lcom/alibaba/mtl/log/b/a;->g:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    if-eq v1, p1, :cond_0

    .line 118
    const-string v0, "CoreStatics"

    const-string v1, "Mutil Process Upload Error"

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public static declared-synchronized commit(Z)V
    .locals 1
    .param p0, "auto"    # Z

    .prologue
    .line 260
    const-class v0, Lcom/alibaba/mtl/log/b/a;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized d(I)V
    .locals 2

    .prologue
    .line 124
    const-class v1, Lcom/alibaba/mtl/log/b/a;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/alibaba/mtl/log/b/a;->u:I

    add-int/2addr v0, p0

    sput v0, Lcom/alibaba/mtl/log/b/a;->u:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit v1

    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static e(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 323
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    const/4 v0, 0x0

    .line 326
    :goto_0
    return v0

    :cond_0
    const-string v0, "6005"

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static declared-synchronized k(Ljava/lang/String;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1

    .line 57
    const-class v1, Lcom/alibaba/mtl/log/b/a;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/alibaba/mtl/log/b/a;->e(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    :goto_0
    monitor-exit v1

    return-void

    .line 60
    :cond_0
    :try_start_1
    const-string v0, "65501"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    sget-wide v2, Lcom/alibaba/mtl/log/b/a;->y:J

    add-long/2addr v2, v4

    sput-wide v2, Lcom/alibaba/mtl/log/b/a;->y:J

    .line 69
    :cond_1
    :goto_1
    sget-wide v2, Lcom/alibaba/mtl/log/b/a;->e:J

    add-long/2addr v2, v4

    sput-wide v2, Lcom/alibaba/mtl/log/b/a;->e:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 62
    :cond_2
    :try_start_2
    const-string v0, "65133"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63
    sget-wide v2, Lcom/alibaba/mtl/log/b/a;->w:J

    add-long/2addr v2, v4

    sput-wide v2, Lcom/alibaba/mtl/log/b/a;->w:J

    goto :goto_1

    .line 64
    :cond_3
    const-string v0, "65502"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 65
    sget-wide v2, Lcom/alibaba/mtl/log/b/a;->x:J

    add-long/2addr v2, v4

    sput-wide v2, Lcom/alibaba/mtl/log/b/a;->x:J

    goto :goto_1

    .line 66
    :cond_4
    const-string v0, "65503"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    sget-wide v2, Lcom/alibaba/mtl/log/b/a;->v:J

    add-long/2addr v2, v4

    sput-wide v2, Lcom/alibaba/mtl/log/b/a;->v:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static declared-synchronized l(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 87
    const-class v1, Lcom/alibaba/mtl/log/b/a;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/alibaba/mtl/log/b/a;->e(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    :goto_0
    monitor-exit v1

    return-void

    .line 90
    :cond_0
    :try_start_1
    sget-wide v2, Lcom/alibaba/mtl/log/b/a;->f:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/alibaba/mtl/log/b/a;->f:J

    .line 91
    invoke-static {}, Lcom/alibaba/mtl/log/b/a;->C()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized s()V
    .locals 6

    .prologue
    .line 128
    const-class v1, Lcom/alibaba/mtl/log/b/a;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lcom/alibaba/mtl/log/b/a;->h:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/alibaba/mtl/log/b/a;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit v1

    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized t()V
    .locals 6

    .prologue
    .line 132
    const-class v1, Lcom/alibaba/mtl/log/b/a;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lcom/alibaba/mtl/log/b/a;->i:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/alibaba/mtl/log/b/a;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit v1

    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized u()V
    .locals 6

    .prologue
    .line 136
    const-class v1, Lcom/alibaba/mtl/log/b/a;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lcom/alibaba/mtl/log/b/a;->n:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/alibaba/mtl/log/b/a;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit v1

    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized v()V
    .locals 6

    .prologue
    .line 140
    const-class v1, Lcom/alibaba/mtl/log/b/a;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lcom/alibaba/mtl/log/b/a;->o:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/alibaba/mtl/log/b/a;->o:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit v1

    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized w()V
    .locals 6

    .prologue
    .line 144
    const-class v1, Lcom/alibaba/mtl/log/b/a;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lcom/alibaba/mtl/log/b/a;->p:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/alibaba/mtl/log/b/a;->p:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit v1

    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized x()V
    .locals 6

    .prologue
    .line 148
    const-class v1, Lcom/alibaba/mtl/log/b/a;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lcom/alibaba/mtl/log/b/a;->q:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/alibaba/mtl/log/b/a;->q:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit v1

    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized y()V
    .locals 6

    .prologue
    .line 152
    const-class v1, Lcom/alibaba/mtl/log/b/a;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lcom/alibaba/mtl/log/b/a;->r:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/alibaba/mtl/log/b/a;->r:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit v1

    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized z()V
    .locals 6

    .prologue
    .line 156
    const-class v1, Lcom/alibaba/mtl/log/b/a;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lcom/alibaba/mtl/log/b/a;->s:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/alibaba/mtl/log/b/a;->s:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit v1

    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
