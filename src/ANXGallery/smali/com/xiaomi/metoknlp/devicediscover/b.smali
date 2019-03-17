.class public Lcom/xiaomi/metoknlp/devicediscover/b;
.super Ljava/lang/Object;
.source "WifiCampStatistics.java"


# instance fields
.field private b:Ljava/lang/String;

.field private c:J

.field private d:J

.field private e:J

.field private mContext:Landroid/content/Context;

.field private mDuration:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p1, p0, Lcom/xiaomi/metoknlp/devicediscover/b;->mContext:Landroid/content/Context;

    .line 283
    invoke-virtual {p0}, Lcom/xiaomi/metoknlp/devicediscover/b;->reset()V

    .line 284
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/xiaomi/metoknlp/devicediscover/b;->save()V

    .line 320
    invoke-virtual {p0}, Lcom/xiaomi/metoknlp/devicediscover/b;->reset()V

    .line 321
    invoke-virtual {p0, p1}, Lcom/xiaomi/metoknlp/devicediscover/b;->b(Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 299
    iget-wide v0, p0, Lcom/xiaomi/metoknlp/devicediscover/b;->c:J

    return-wide v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 337
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/b;->mContext:Landroid/content/Context;

    const-string v1, "none"

    invoke-static {v0, p1, v1}, Lcom/xiaomi/metoknlp/devicediscover/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    if-eqz v0, :cond_0

    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 342
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/metoknlp/devicediscover/b;->reset()V

    .line 343
    iput-object p1, p0, Lcom/xiaomi/metoknlp/devicediscover/b;->b:Ljava/lang/String;

    .line 344
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/metoknlp/devicediscover/b;->e:J

    iput-wide v0, p0, Lcom/xiaomi/metoknlp/devicediscover/b;->d:J

    iput-wide v0, p0, Lcom/xiaomi/metoknlp/devicediscover/b;->c:J

    .line 356
    :goto_0
    return-void

    .line 348
    :cond_1
    :try_start_0
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 349
    iput-object p1, p0, Lcom/xiaomi/metoknlp/devicediscover/b;->b:Ljava/lang/String;

    .line 350
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/metoknlp/devicediscover/b;->c:J

    .line 351
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/metoknlp/devicediscover/b;->mDuration:J

    .line 352
    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/metoknlp/devicediscover/b;->d:J

    .line 353
    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/metoknlp/devicediscover/b;->e:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 354
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 307
    iget-wide v0, p0, Lcom/xiaomi/metoknlp/devicediscover/b;->e:J

    return-wide v0
.end method

.method public d()V
    .locals 6

    .prologue
    .line 311
    iget-wide v0, p0, Lcom/xiaomi/metoknlp/devicediscover/b;->mDuration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaomi/metoknlp/devicediscover/b;->c:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/xiaomi/metoknlp/devicediscover/b;->mDuration:J

    .line 312
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/metoknlp/devicediscover/b;->e:J

    .line 316
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/xiaomi/metoknlp/devicediscover/b;->d()V

    .line 326
    invoke-virtual {p0}, Lcom/xiaomi/metoknlp/devicediscover/b;->save()V

    .line 327
    invoke-virtual {p0}, Lcom/xiaomi/metoknlp/devicediscover/b;->reset()V

    .line 328
    return-void
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 303
    iget-wide v0, p0, Lcom/xiaomi/metoknlp/devicediscover/b;->mDuration:J

    return-wide v0
.end method

.method public reset()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/b;->b:Ljava/lang/String;

    .line 288
    iput-wide v2, p0, Lcom/xiaomi/metoknlp/devicediscover/b;->c:J

    .line 289
    iput-wide v2, p0, Lcom/xiaomi/metoknlp/devicediscover/b;->mDuration:J

    .line 290
    iput-wide v2, p0, Lcom/xiaomi/metoknlp/devicediscover/b;->d:J

    .line 291
    iput-wide v2, p0, Lcom/xiaomi/metoknlp/devicediscover/b;->e:J

    .line 292
    return-void
.end method

.method public save()V
    .locals 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/b;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/metoknlp/devicediscover/b;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/metoknlp/devicediscover/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xiaomi/metoknlp/devicediscover/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 360
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    iget-object v1, p0, Lcom/xiaomi/metoknlp/devicediscover/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/xiaomi/metoknlp/devicediscover/b;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/xiaomi/metoknlp/devicediscover/b;->mDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/xiaomi/metoknlp/devicediscover/b;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/xiaomi/metoknlp/devicediscover/b;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 369
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
