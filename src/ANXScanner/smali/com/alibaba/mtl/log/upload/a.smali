.class public abstract Lcom/alibaba/mtl/log/upload/a;
.super Ljava/lang/Object;
.source "UploadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static A:I

.field private static volatile G:Z

.field private static H:Z


# instance fields
.field B:I

.field C:I

.field a:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    sput-boolean v0, Lcom/alibaba/mtl/log/upload/a;->G:Z

    .line 42
    sput-boolean v0, Lcom/alibaba/mtl/log/upload/a;->H:Z

    .line 44
    sput v0, Lcom/alibaba/mtl/log/upload/a;->A:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/mtl/log/upload/a;->B:I

    .line 45
    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Lcom/alibaba/mtl/log/upload/a;->a:F

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/mtl/log/upload/a;->C:I

    return-void
.end method

.method private J()V
    .locals 18

    .prologue
    .line 64
    const-string v2, "UploadTask"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Upload"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    sget-boolean v2, Lcom/alibaba/mtl/log/a;->s:Z

    if-nez v2, :cond_1

    .line 66
    const-string v2, "UploadTask"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Upload is disabled"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-static {}, Lcom/alibaba/mtl/log/d/l;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    sget-boolean v2, Lcom/alibaba/mtl/log/upload/a;->H:Z

    if-nez v2, :cond_0

    .line 76
    sget-boolean v2, Lcom/alibaba/mtl/log/upload/a;->G:Z

    if-nez v2, :cond_0

    .line 77
    const/4 v2, 0x1

    sput-boolean v2, Lcom/alibaba/mtl/log/upload/a;->G:Z

    .line 81
    const/4 v3, 0x0

    .line 84
    invoke-static {}, Lcom/alibaba/mtl/log/a/d;->a()Lcom/alibaba/mtl/log/a/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/mtl/log/a/d;->b()Ljava/util/Map;

    move-result-object v8

    .line 86
    const/4 v2, 0x0

    move v7, v2

    :goto_1
    const/4 v2, 0x3

    if-ge v7, v2, :cond_2

    .line 87
    const/4 v6, 0x0

    .line 88
    invoke-static {}, Lcom/alibaba/mtl/log/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/mtl/log/d/k;->c(Landroid/content/Context;)Z

    move-result v2

    .line 89
    if-nez v2, :cond_3

    .line 90
    const-string v2, "UploadTask"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Other Process is Uploading, break"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    :cond_2
    :goto_2
    const/4 v2, 0x0

    sput-boolean v2, Lcom/alibaba/mtl/log/upload/a;->G:Z

    .line 183
    invoke-static {}, Lcom/alibaba/mtl/log/d/k;->release()V

    goto :goto_0

    .line 93
    :cond_3
    invoke-static {}, Lcom/alibaba/mtl/log/c/c;->a()Lcom/alibaba/mtl/log/c/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/mtl/log/c/c;->store()V

    .line 94
    const/4 v2, 0x0

    .line 96
    if-eqz v8, :cond_14

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_14

    move v4, v3

    .line 97
    :goto_3
    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v3

    if-ge v4, v3, :cond_13

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/mtl/log/a/c;

    .line 100
    const/4 v3, 0x0

    .line 101
    iget-object v5, v2, Lcom/alibaba/mtl/log/a/c;->a:Ljava/util/ArrayList;

    if-eqz v5, :cond_6

    iget-object v5, v2, Lcom/alibaba/mtl/log/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 102
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    const-string v3, "eventId"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " in ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const/4 v3, 0x0

    move v5, v3

    :goto_4
    iget-object v3, v2, Lcom/alibaba/mtl/log/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v5, v3, :cond_5

    .line 105
    if-eqz v5, :cond_4

    .line 106
    const-string v3, " , "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_4
    iget-object v3, v2, Lcom/alibaba/mtl/log/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_4

    .line 110
    :cond_5
    const-string v3, " ) "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 113
    :cond_6
    invoke-static {}, Lcom/alibaba/mtl/log/c/c;->a()Lcom/alibaba/mtl/log/c/c;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/alibaba/mtl/log/upload/a;->g()I

    move-result v9

    invoke-virtual {v5, v3, v9}, Lcom/alibaba/mtl/log/c/c;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 114
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_9

    .line 115
    iget-object v2, v2, Lcom/alibaba/mtl/log/a/c;->host:Ljava/lang/String;

    move v5, v4

    move-object v4, v2

    move-object v2, v3

    .line 120
    :goto_5
    if-eqz v2, :cond_7

    if-eqz v2, :cond_12

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_12

    .line 121
    :cond_7
    invoke-static {}, Lcom/alibaba/mtl/log/c/c;->a()Lcom/alibaba/mtl/log/c/c;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/alibaba/mtl/log/upload/a;->g()I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lcom/alibaba/mtl/log/c/c;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    move-object v3, v2

    .line 125
    :goto_6
    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_a

    .line 126
    :cond_8
    const/4 v2, 0x0

    sput-boolean v2, Lcom/alibaba/mtl/log/upload/a;->G:Z

    goto/16 :goto_2

    .line 97
    :cond_9
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v2, v3

    goto/16 :goto_3

    .line 129
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/alibaba/mtl/log/upload/a;->b(Ljava/util/List;)I

    move-result v6

    .line 130
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/alibaba/mtl/log/upload/a;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v9

    .line 131
    if-eqz v9, :cond_b

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_c

    .line 132
    :cond_b
    const/4 v2, 0x0

    sput-boolean v2, Lcom/alibaba/mtl/log/upload/a;->G:Z

    goto/16 :goto_2

    .line 136
    :cond_c
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 137
    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->g()Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_d

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "http://"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/rest/sur"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 142
    :cond_d
    const/4 v4, 0x0

    invoke-static {v2, v4, v9}, Lcom/alibaba/mtl/log/d/t;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 143
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9}, Lcom/alibaba/mtl/log/upload/a;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/alibaba/mtl/log/d/a$a;

    move-result-object v2

    .line 144
    iget-boolean v4, v2, Lcom/alibaba/mtl/log/d/a$a;->I:Z

    .line 146
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 148
    sub-long v14, v12, v10

    .line 149
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14, v15}, Lcom/alibaba/mtl/log/upload/a;->a(Ljava/lang/Boolean;J)I

    .line 150
    if-eqz v4, :cond_10

    .line 151
    invoke-static {}, Lcom/alibaba/mtl/log/c/c;->a()Lcom/alibaba/mtl/log/c/c;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/alibaba/mtl/log/c/c;->a(Ljava/util/List;)I

    move-result v2

    .line 152
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v6

    if-ge v2, v9, :cond_e

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/mtl/log/upload/a;->I()V

    .line 155
    :cond_e
    invoke-static {v3, v2}, Lcom/alibaba/mtl/log/b/a;->a(Ljava/util/List;I)V

    .line 156
    invoke-static {}, Lcom/alibaba/mtl/log/b/a;->s()V

    .line 168
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 169
    const-string v2, "UploadTask"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "logs.size():"

    aput-object v17, v9, v16

    const/16 v16, 0x1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v16

    const/4 v3, 0x2

    const-string v16, " selfMonitorLogCount:"

    aput-object v16, v9, v3

    const/4 v3, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v3

    invoke-static {v2, v9}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    const-string v2, "UploadTask"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v9, "upload isSendSuccess:"

    aput-object v9, v3, v6

    const/4 v6, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string v6, " consume:"

    aput-object v6, v3, v4

    const/4 v4, 0x3

    sub-long v10, v12, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x4

    const-string v6, " delete consume:"

    aput-object v6, v3, v4

    const/4 v4, 0x5

    sub-long v10, v14, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :try_start_1
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x1388

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    :goto_7
    invoke-static {}, Lcom/alibaba/mtl/log/d/k;->release()V

    .line 86
    :goto_8
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move v3, v5

    goto/16 :goto_1

    .line 158
    :cond_10
    :try_start_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v6

    invoke-static {v9}, Lcom/alibaba/mtl/log/b/a;->d(I)V

    .line 159
    invoke-static {}, Lcom/alibaba/mtl/log/b/a;->t()V

    .line 160
    invoke-virtual {v2}, Lcom/alibaba/mtl/log/d/a$a;->g()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v9

    if-eqz v9, :cond_11

    .line 179
    invoke-static {}, Lcom/alibaba/mtl/log/d/k;->release()V

    goto/16 :goto_2

    .line 162
    :cond_11
    :try_start_3
    invoke-virtual {v2}, Lcom/alibaba/mtl/log/d/a$a;->h()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 163
    const/4 v2, 0x1

    sput-boolean v2, Lcom/alibaba/mtl/log/upload/a;->H:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 179
    invoke-static {}, Lcom/alibaba/mtl/log/d/k;->release()V

    goto/16 :goto_2

    .line 173
    :catch_0
    move-exception v2

    .line 174
    :try_start_4
    const-string v3, "UploadTask"

    const-string v4, "thread sleep interrupted"

    invoke-static {v3, v4, v2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7

    .line 177
    :catch_1
    move-exception v2

    .line 179
    invoke-static {}, Lcom/alibaba/mtl/log/d/k;->release()V

    goto :goto_8

    :catchall_0
    move-exception v2

    invoke-static {}, Lcom/alibaba/mtl/log/d/k;->release()V

    throw v2

    :cond_12
    move-object v3, v2

    goto/16 :goto_6

    :cond_13
    move v5, v4

    move-object v4, v6

    goto/16 :goto_5

    :cond_14
    move-object v4, v6

    move v5, v3

    goto/16 :goto_5
.end method

.method private a(Ljava/lang/Boolean;J)I
    .locals 8

    .prologue
    const/16 v6, 0x15e

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 242
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 243
    iget v0, p0, Lcom/alibaba/mtl/log/upload/a;->B:I

    .line 266
    :goto_0
    return v0

    .line 245
    :cond_0
    iget v0, p0, Lcom/alibaba/mtl/log/upload/a;->C:I

    .line 246
    int-to-float v0, v0

    long-to-float v1, p2

    div-float/2addr v0, v1

    .line 248
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 249
    const-wide/32 v2, 0xafc8

    cmp-long v1, p2, v2

    if-lez v1, :cond_1

    .line 250
    iget v0, p0, Lcom/alibaba/mtl/log/upload/a;->B:I

    goto :goto_0

    .line 252
    :cond_1
    const v1, 0x472fc800    # 45000.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    .line 253
    iget v2, p0, Lcom/alibaba/mtl/log/upload/a;->a:F

    float-to-double v2, v2

    div-double/2addr v0, v2

    sget v2, Lcom/alibaba/mtl/log/upload/a;->A:I

    int-to-double v2, v2

    sub-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/alibaba/mtl/log/upload/a;->B:I

    .line 259
    :goto_1
    iget v0, p0, Lcom/alibaba/mtl/log/upload/a;->B:I

    if-ge v0, v4, :cond_4

    .line 260
    iput v4, p0, Lcom/alibaba/mtl/log/upload/a;->B:I

    .line 261
    sput v5, Lcom/alibaba/mtl/log/upload/a;->A:I

    .line 265
    :cond_2
    :goto_2
    const-string v0, "UploadTask"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "winsize:"

    aput-object v2, v1, v5

    iget v2, p0, Lcom/alibaba/mtl/log/upload/a;->B:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    iget v0, p0, Lcom/alibaba/mtl/log/upload/a;->B:I

    goto :goto_0

    .line 256
    :cond_3
    iget v0, p0, Lcom/alibaba/mtl/log/upload/a;->B:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/alibaba/mtl/log/upload/a;->B:I

    .line 257
    sget v0, Lcom/alibaba/mtl/log/upload/a;->A:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alibaba/mtl/log/upload/a;->A:I

    goto :goto_1

    .line 262
    :cond_4
    iget v0, p0, Lcom/alibaba/mtl/log/upload/a;->B:I

    if-le v0, v6, :cond_2

    .line 263
    iput v6, p0, Lcom/alibaba/mtl/log/upload/a;->B:I

    goto :goto_2
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)Lcom/alibaba/mtl/log/d/a$a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/alibaba/mtl/log/d/a$a;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 220
    if-eqz p1, :cond_0

    .line 221
    invoke-static {v5, p1, p2, v4}, Lcom/alibaba/mtl/log/d/e;->a(ILjava/lang/String;Ljava/util/Map;Z)Lcom/alibaba/mtl/log/d/e$a;

    move-result-object v0

    .line 222
    iget-object v2, v0, Lcom/alibaba/mtl/log/d/e$a;->data:[B

    .line 223
    const-string v0, "UploadTask"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v3, "url:"

    aput-object v3, v1, v4

    aput-object p1, v1, v6

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    if-eqz v2, :cond_0

    .line 225
    const/4 v1, 0x0

    .line 227
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    if-eqz v0, :cond_0

    .line 232
    const-string v1, "UploadTask"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "result:"

    aput-object v3, v2, v4

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    invoke-static {v0}, Lcom/alibaba/mtl/log/d/a;->a(Ljava/lang/String;)Lcom/alibaba/mtl/log/d/a$a;

    move-result-object v0

    .line 237
    :goto_1
    return-object v0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 237
    :cond_0
    sget-object v0, Lcom/alibaba/mtl/log/d/a$a;->a:Lcom/alibaba/mtl/log/d/a$a;

    goto :goto_1
.end method

.method private a(Lcom/alibaba/mtl/log/model/a;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/mtl/log/model/a;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    iget-object v0, p1, Lcom/alibaba/mtl/log/model/a;->S:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/mtl/log/a/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 329
    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/mtl/log/model/a;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 270
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 271
    :cond_0
    const/4 v0, 0x0

    .line 299
    :goto_0
    return-object v0

    .line 273
    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move v1, v2

    .line 274
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 275
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/log/model/a;

    invoke-direct {p0, v0}, Lcom/alibaba/mtl/log/upload/a;->a(Lcom/alibaba/mtl/log/model/a;)Ljava/util/List;

    move-result-object v6

    .line 276
    if-eqz v6, :cond_3

    move v3, v2

    .line 277
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 278
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 279
    if-nez v0, :cond_2

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v0

    .line 285
    :goto_3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/log/model/a;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/a;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 283
    :cond_2
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v0

    goto :goto_3

    .line 274
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 290
    :cond_4
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 291
    iput v2, p0, Lcom/alibaba/mtl/log/upload/a;->C:I

    .line 292
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 293
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alibaba/mtl/log/upload/a;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 294
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget v0, p0, Lcom/alibaba/mtl/log/upload/a;->C:I

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/mtl/log/upload/a;->C:I

    goto :goto_4

    .line 297
    :cond_5
    iget v0, p0, Lcom/alibaba/mtl/log/upload/a;->C:I

    int-to-float v0, v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/alibaba/mtl/log/upload/a;->a:F

    .line 298
    const-string v0, "UploadTask"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "averagePackageSize:"

    aput-object v4, v1, v2

    const/4 v2, 0x1

    iget v4, p0, Lcom/alibaba/mtl/log/upload/a;->a:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v3

    .line 299
    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;)[B
    .locals 4

    .prologue
    .line 303
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 304
    const/4 v2, 0x0

    .line 306
    :try_start_0
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    :try_start_1
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 308
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 312
    if-eqz v1, :cond_0

    .line 314
    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 319
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v1, "QrMgt8GGYI6T52ZY5AnhtxkLzb8egpFn3j5JELI8H6wtACbUnZ5cc3aYTsTRbmkAkRJeYbtx92LPBWm7nBO9UIl7y5i5MQNmUZNf5QENurR5tGyo7yJ2G0MBjWvy6iAtlAbacKP0SwOUeUWx5dsBdyhxa7Id1APtybSdDgicBDuNjI0mlZFUzZSS9dmN8lBD0WTVOMz0pRZbR3cysomRXOO1ghqjJdTcyDIxzpNAEszN8RMGjrzyU7Hjbmwi6YNK"

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/n;->a([BLjava/lang/String;)[B

    move-result-object v0

    .line 321
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 324
    :goto_1
    return-object v0

    .line 309
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 310
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 312
    if-eqz v1, :cond_0

    .line 314
    :try_start_5
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 315
    :catch_1
    move-exception v0

    goto :goto_0

    .line 312
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_1

    .line 314
    :try_start_6
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 316
    :cond_1
    :goto_4
    throw v0

    .line 315
    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_4

    .line 322
    :catch_4
    move-exception v1

    goto :goto_1

    .line 312
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 309
    :catch_5
    move-exception v0

    goto :goto_2
.end method

.method private b(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/mtl/log/model/a;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 187
    if-nez p1, :cond_0

    .line 199
    :goto_0
    return v0

    :cond_0
    move v1, v0

    move v2, v0

    .line 191
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 192
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/log/model/a;

    iget-object v0, v0, Lcom/alibaba/mtl/log/model/a;->S:Ljava/lang/String;

    .line 193
    if-eqz v0, :cond_1

    .line 194
    const-string v3, "6005"

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    add-int/lit8 v2, v2, 0x1

    .line 191
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move v0, v2

    .line 199
    goto :goto_0
.end method

.method private g()I
    .locals 2

    .prologue
    .line 203
    iget v0, p0, Lcom/alibaba/mtl/log/upload/a;->B:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 205
    invoke-static {}, Lcom/alibaba/mtl/log/d/l;->t()Ljava/lang/String;

    move-result-object v0

    .line 206
    const-string v1, "wifi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/mtl/log/upload/a;->B:I

    .line 216
    :cond_0
    :goto_0
    iget v0, p0, Lcom/alibaba/mtl/log/upload/a;->B:I

    return v0

    .line 208
    :cond_1
    const-string v1, "4G"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 209
    const/16 v0, 0x10

    iput v0, p0, Lcom/alibaba/mtl/log/upload/a;->B:I

    goto :goto_0

    .line 210
    :cond_2
    const-string v1, "3G"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    const/16 v0, 0xc

    iput v0, p0, Lcom/alibaba/mtl/log/upload/a;->B:I

    goto :goto_0

    .line 213
    :cond_3
    const/16 v0, 0x8

    iput v0, p0, Lcom/alibaba/mtl/log/upload/a;->B:I

    goto :goto_0
.end method

.method public static isRunning()Z
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/alibaba/mtl/log/upload/a;->G:Z

    return v0
.end method


# virtual methods
.method public abstract H()V
.end method

.method public abstract I()V
.end method

.method public run()V
    .locals 1

    .prologue
    .line 52
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/mtl/log/upload/a;->J()V

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/mtl/log/upload/a;->H()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    goto :goto_0
.end method
