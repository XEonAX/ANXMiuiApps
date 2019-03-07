.class public Lcom/xiaomi/stat/a/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/stat/a/l$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/xiaomi/stat/H;

.field public e:J

.field public f:Ljava/lang/String;

.field public g:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    return-void
.end method

.method public static a()Lcom/xiaomi/stat/a/l;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 130
    new-instance v1, Lcom/xiaomi/stat/a/l;

    invoke-direct {v1}, Lcom/xiaomi/stat/a/l;-><init>()V

    .line 132
    const-string v2, "mistat_dau"

    iput-object v2, v1, Lcom/xiaomi/stat/a/l;->a:Ljava/lang/String;

    .line 133
    const-string v2, "mistat_basic"

    iput-object v2, v1, Lcom/xiaomi/stat/a/l;->b:Ljava/lang/String;

    .line 134
    const-string v2, "track"

    iput-object v2, v1, Lcom/xiaomi/stat/a/l;->c:Ljava/lang/String;

    .line 135
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/xiaomi/stat/a/l;->e:J

    .line 137
    new-instance v2, Lcom/xiaomi/stat/H;

    invoke-direct {v2}, Lcom/xiaomi/stat/H;-><init>()V

    .line 138
    invoke-static {}, Lcom/xiaomi/stat/b;->q()Z

    move-result v3

    .line 139
    if-eqz v3, :cond_0

    .line 140
    invoke-static {v0}, Lcom/xiaomi/stat/b;->e(Z)V

    .line 142
    :cond_0
    const-string v4, "fo"

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v2, v4, v0}, Lcom/xiaomi/stat/H;->putInt(Ljava/lang/String;I)V

    .line 144
    invoke-static {}, Lcom/xiaomi/stat/I;->a()Landroid/content/Context;

    move-result-object v0

    .line 145
    const-string v3, "ia"

    invoke-static {v0}, Lcom/xiaomi/stat/d/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/stat/H;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v3, "i1"

    invoke-static {v0}, Lcom/xiaomi/stat/d/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/stat/H;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v3, "ib"

    invoke-static {v0}, Lcom/xiaomi/stat/d/e;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/stat/H;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v3, "i2"

    invoke-static {v0}, Lcom/xiaomi/stat/d/e;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/stat/H;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v3, "md"

    invoke-static {v0}, Lcom/xiaomi/stat/d/e;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/stat/H;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v3, "ms"

    invoke-static {v0}, Lcom/xiaomi/stat/d/e;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/stat/H;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v3, "ii"

    invoke-static {}, Lcom/xiaomi/stat/d/e;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/stat/H;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v3, "mcm"

    invoke-static {v0}, Lcom/xiaomi/stat/d/e;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/stat/H;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v3, "mcs"

    invoke-static {v0}, Lcom/xiaomi/stat/d/e;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/stat/H;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v3, "bm"

    invoke-static {v0}, Lcom/xiaomi/stat/d/e;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/stat/H;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v3, "bs"

    invoke-static {v0}, Lcom/xiaomi/stat/d/e;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/stat/H;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v3, "aa"

    invoke-static {v0}, Lcom/xiaomi/stat/d/e;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/stat/H;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v3, "ai"

    invoke-static {v0}, Lcom/xiaomi/stat/d/e;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/stat/H;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v3, "od"

    invoke-static {v0}, Lcom/xiaomi/stat/d/e;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/xiaomi/stat/H;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iput-object v2, v1, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/H;

    .line 161
    invoke-static {v1}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;)V

    .line 163
    return-object v1
.end method

.method public static a(I)Lcom/xiaomi/stat/a/l;
    .locals 4

    .prologue
    .line 281
    new-instance v0, Lcom/xiaomi/stat/a/l;

    invoke-direct {v0}, Lcom/xiaomi/stat/a/l;-><init>()V

    .line 283
    const-string v1, "mistat_app_update"

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->a:Ljava/lang/String;

    .line 284
    const-string v1, "mistat_basic"

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->b:Ljava/lang/String;

    .line 285
    const-string v1, "track"

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->c:Ljava/lang/String;

    .line 286
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/xiaomi/stat/a/l;->e:J

    .line 287
    new-instance v1, Lcom/xiaomi/stat/H;

    invoke-direct {v1}, Lcom/xiaomi/stat/H;-><init>()V

    .line 288
    const-string v2, "pvr"

    invoke-virtual {v1, v2, p0}, Lcom/xiaomi/stat/H;->putInt(Ljava/lang/String;I)V

    .line 289
    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/H;

    .line 291
    invoke-static {v0}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;)V

    .line 293
    return-object v0
.end method

.method public static a(IIJJ)Lcom/xiaomi/stat/a/l;
    .locals 4

    .prologue
    .line 356
    new-instance v0, Lcom/xiaomi/stat/a/l;

    invoke-direct {v0}, Lcom/xiaomi/stat/a/l;-><init>()V

    .line 358
    const-string v1, "mistat_page_monitor"

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->a:Ljava/lang/String;

    .line 359
    const-string v1, "mistat_basic"

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->b:Ljava/lang/String;

    .line 360
    const-string v1, "track"

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->c:Ljava/lang/String;

    .line 361
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/xiaomi/stat/a/l;->e:J

    .line 362
    new-instance v1, Lcom/xiaomi/stat/H;

    invoke-direct {v1}, Lcom/xiaomi/stat/H;-><init>()V

    .line 363
    const-string v2, "rc"

    invoke-virtual {v1, v2, p0}, Lcom/xiaomi/stat/H;->putInt(Ljava/lang/String;I)V

    .line 364
    const-string v2, "pc"

    invoke-virtual {v1, v2, p1}, Lcom/xiaomi/stat/H;->putInt(Ljava/lang/String;I)V

    .line 365
    const-string v2, "sts"

    invoke-virtual {v1, v2, p2, p3}, Lcom/xiaomi/stat/H;->putLong(Ljava/lang/String;J)V

    .line 366
    const-string v2, "ets"

    invoke-virtual {v1, v2, p4, p5}, Lcom/xiaomi/stat/H;->putLong(Ljava/lang/String;J)V

    .line 367
    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/H;

    .line 369
    invoke-static {v0}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;)V

    .line 371
    return-object v0
.end method

.method public static a(Lcom/xiaomi/stat/H;)Lcom/xiaomi/stat/a/l;
    .locals 4

    .prologue
    .line 341
    new-instance v0, Lcom/xiaomi/stat/a/l;

    invoke-direct {v0}, Lcom/xiaomi/stat/a/l;-><init>()V

    .line 343
    const-string v1, "mistat_delete_event"

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->a:Ljava/lang/String;

    .line 344
    const-string v1, "mistat_basic"

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->b:Ljava/lang/String;

    .line 345
    const-string v1, "track"

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->c:Ljava/lang/String;

    .line 346
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/xiaomi/stat/a/l;->e:J

    .line 347
    iput-object p0, v0, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/H;

    .line 349
    invoke-static {v0}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;)V

    .line 351
    return-object v0
.end method

.method public static a(Lcom/xiaomi/stat/HttpEvent;Ljava/lang/String;)Lcom/xiaomi/stat/a/l;
    .locals 6

    .prologue
    .line 318
    new-instance v0, Lcom/xiaomi/stat/a/l;

    invoke-direct {v0}, Lcom/xiaomi/stat/a/l;-><init>()V

    .line 320
    const-string v1, "mistat_net_monitor"

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->a:Ljava/lang/String;

    .line 321
    const-string v1, "mistat_network"

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->b:Ljava/lang/String;

    .line 322
    const-string v1, "track"

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->c:Ljava/lang/String;

    .line 323
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/xiaomi/stat/a/l;->e:J

    .line 325
    new-instance v1, Lcom/xiaomi/stat/H;

    invoke-direct {v1}, Lcom/xiaomi/stat/H;-><init>()V

    .line 326
    const-string v2, "ur"

    invoke-virtual {p0}, Lcom/xiaomi/stat/HttpEvent;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/stat/H;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v2, "dt"

    invoke-virtual {p0}, Lcom/xiaomi/stat/HttpEvent;->getTimeCost()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/xiaomi/stat/H;->putLong(Ljava/lang/String;J)V

    .line 328
    const-string v2, "rc"

    invoke-virtual {p0}, Lcom/xiaomi/stat/HttpEvent;->getResponseCode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/stat/H;->putInt(Ljava/lang/String;I)V

    .line 329
    const-string v2, "nf"

    invoke-virtual {p0}, Lcom/xiaomi/stat/HttpEvent;->getNetFlow()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/xiaomi/stat/H;->putLong(Ljava/lang/String;J)V

    .line 330
    const-string v2, "ecn"

    invoke-virtual {p0}, Lcom/xiaomi/stat/HttpEvent;->getExceptionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/stat/H;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/H;

    .line 333
    invoke-static {v0}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;)V

    .line 334
    invoke-static {v0, p1}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;Ljava/lang/String;)V

    .line 336
    return-object v0
.end method

.method public static a(Lcom/xiaomi/stat/MiStatParams;ZLjava/lang/String;)Lcom/xiaomi/stat/a/l;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 263
    new-instance v1, Lcom/xiaomi/stat/a/l;

    invoke-direct {v1}, Lcom/xiaomi/stat/a/l;-><init>()V

    .line 265
    const-string v2, "profile_set"

    iput-object v2, v1, Lcom/xiaomi/stat/a/l;->c:Ljava/lang/String;

    .line 266
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/xiaomi/stat/a/l;->e:J

    .line 267
    new-instance v2, Lcom/xiaomi/stat/H;

    invoke-direct {v2, p0}, Lcom/xiaomi/stat/H;-><init>(Lcom/xiaomi/stat/MiStatParams;)V

    iput-object v2, v1, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/H;

    .line 269
    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 270
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, v1, Lcom/xiaomi/stat/a/l;->g:Z

    .line 275
    :goto_0
    invoke-static {v1, p2}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;Ljava/lang/String;)V

    .line 277
    return-object v1

    .line 272
    :cond_1
    iput-boolean v0, v1, Lcom/xiaomi/stat/a/l;->g:Z

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lcom/xiaomi/stat/a/l;
    .locals 6

    .prologue
    .line 297
    new-instance v1, Lcom/xiaomi/stat/a/l;

    invoke-direct {v1}, Lcom/xiaomi/stat/a/l;-><init>()V

    .line 299
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 301
    if-eqz v2, :cond_1

    const-string v0, "mistat_signout"

    :goto_0
    iput-object v0, v1, Lcom/xiaomi/stat/a/l;->a:Ljava/lang/String;

    .line 302
    const-string v0, "mistat_basic"

    iput-object v0, v1, Lcom/xiaomi/stat/a/l;->b:Ljava/lang/String;

    .line 303
    const-string v0, "track_signin"

    iput-object v0, v1, Lcom/xiaomi/stat/a/l;->c:Ljava/lang/String;

    .line 304
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/xiaomi/stat/a/l;->e:J

    .line 306
    new-instance v0, Lcom/xiaomi/stat/H;

    invoke-direct {v0}, Lcom/xiaomi/stat/H;-><init>()V

    .line 307
    if-nez v2, :cond_0

    .line 308
    const-string v2, "ud"

    invoke-virtual {v0, v2, p0}, Lcom/xiaomi/stat/H;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_0
    iput-object v0, v1, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/H;

    .line 312
    invoke-static {v1}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;)V

    .line 314
    return-object v1

    .line 301
    :cond_1
    const-string v0, "mistat_signin"

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;JJ)Lcom/xiaomi/stat/a/l;
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 182
    const/4 v6, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v8, v7

    invoke-static/range {v1 .. v8}, Lcom/xiaomi/stat/a/l;->a(Ljava/lang/String;JJZLcom/xiaomi/stat/MiStatParams;Ljava/lang/String;)Lcom/xiaomi/stat/a/l;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;JJLcom/xiaomi/stat/MiStatParams;Ljava/lang/String;)Lcom/xiaomi/stat/a/l;
    .locals 9

    .prologue
    .line 187
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v7, p5

    move-object v8, p6

    invoke-static/range {v1 .. v8}, Lcom/xiaomi/stat/a/l;->a(Ljava/lang/String;JJZLcom/xiaomi/stat/MiStatParams;Ljava/lang/String;)Lcom/xiaomi/stat/a/l;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;JJZLcom/xiaomi/stat/MiStatParams;Ljava/lang/String;)Lcom/xiaomi/stat/a/l;
    .locals 5

    .prologue
    .line 192
    new-instance v1, Lcom/xiaomi/stat/a/l;

    invoke-direct {v1}, Lcom/xiaomi/stat/a/l;-><init>()V

    .line 194
    const-string v0, "mistat_pa"

    iput-object v0, v1, Lcom/xiaomi/stat/a/l;->a:Ljava/lang/String;

    .line 195
    if-eqz p5, :cond_1

    const-string v0, "mistat_basic"

    :goto_0
    iput-object v0, v1, Lcom/xiaomi/stat/a/l;->b:Ljava/lang/String;

    .line 196
    const-string v0, "track"

    iput-object v0, v1, Lcom/xiaomi/stat/a/l;->c:Ljava/lang/String;

    .line 197
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/xiaomi/stat/a/l;->e:J

    .line 199
    new-instance v0, Lcom/xiaomi/stat/H;

    invoke-direct {v0, p6}, Lcom/xiaomi/stat/H;-><init>(Lcom/xiaomi/stat/MiStatParams;)V

    .line 200
    const-string v2, "pg"

    invoke-virtual {v0, v2, p0}, Lcom/xiaomi/stat/H;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v2, "bt"

    invoke-virtual {v0, v2, p1, p2}, Lcom/xiaomi/stat/H;->putLong(Ljava/lang/String;J)V

    .line 202
    const-string v2, "et"

    invoke-virtual {v0, v2, p3, p4}, Lcom/xiaomi/stat/H;->putLong(Ljava/lang/String;J)V

    .line 203
    iput-object v0, v1, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/H;

    .line 205
    invoke-static {v1}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;)V

    .line 207
    if-nez p5, :cond_0

    .line 208
    invoke-static {v1, p7}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;Ljava/lang/String;)V

    .line 211
    :cond_0
    return-object v1

    .line 195
    :cond_1
    const-string v0, "mistat_user_page"

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;Ljava/lang/String;Z)Lcom/xiaomi/stat/a/l;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 217
    new-instance v1, Lcom/xiaomi/stat/a/l;

    invoke-direct {v1}, Lcom/xiaomi/stat/a/l;-><init>()V

    .line 219
    iput-object p0, v1, Lcom/xiaomi/stat/a/l;->a:Ljava/lang/String;

    .line 220
    iput-object p1, v1, Lcom/xiaomi/stat/a/l;->b:Ljava/lang/String;

    .line 221
    const-string v2, "track"

    iput-object v2, v1, Lcom/xiaomi/stat/a/l;->c:Ljava/lang/String;

    .line 222
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/xiaomi/stat/a/l;->e:J

    .line 223
    new-instance v2, Lcom/xiaomi/stat/H;

    invoke-direct {v2, p2}, Lcom/xiaomi/stat/H;-><init>(Lcom/xiaomi/stat/MiStatParams;)V

    iput-object v2, v1, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/H;

    .line 225
    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 226
    if-nez p4, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, v1, Lcom/xiaomi/stat/a/l;->g:Z

    .line 231
    :goto_0
    invoke-static {v1, p3}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;Ljava/lang/String;)V

    .line 233
    return-object v1

    .line 228
    :cond_1
    iput-boolean v0, v1, Lcom/xiaomi/stat/a/l;->g:Z

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/stat/a/l;
    .locals 4

    .prologue
    .line 375
    new-instance v0, Lcom/xiaomi/stat/a/l;

    invoke-direct {v0}, Lcom/xiaomi/stat/a/l;-><init>()V

    .line 377
    iput-object p0, v0, Lcom/xiaomi/stat/a/l;->a:Ljava/lang/String;

    .line 378
    const-string v1, "mistat_plain_text"

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->b:Ljava/lang/String;

    .line 379
    const-string v1, "track"

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->c:Ljava/lang/String;

    .line 380
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/xiaomi/stat/a/l;->e:J

    .line 381
    new-instance v1, Lcom/xiaomi/stat/H;

    invoke-direct {v1}, Lcom/xiaomi/stat/H;-><init>()V

    .line 382
    const-string v2, "ve"

    invoke-virtual {v1, v2, p1}, Lcom/xiaomi/stat/H;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/H;

    .line 385
    invoke-static {v0}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;)V

    .line 386
    invoke-static {v0, p2}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;Ljava/lang/String;)V

    .line 388
    return-object v0
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/String;ZLjava/lang/String;)Lcom/xiaomi/stat/a/l;
    .locals 4

    .prologue
    .line 238
    new-instance v1, Lcom/xiaomi/stat/a/l;

    invoke-direct {v1}, Lcom/xiaomi/stat/a/l;-><init>()V

    .line 240
    const-string v0, "mistat_app_exception"

    iput-object v0, v1, Lcom/xiaomi/stat/a/l;->a:Ljava/lang/String;

    .line 241
    const-string v0, "mistat_crash"

    iput-object v0, v1, Lcom/xiaomi/stat/a/l;->b:Ljava/lang/String;

    .line 242
    const-string v0, "track"

    iput-object v0, v1, Lcom/xiaomi/stat/a/l;->c:Ljava/lang/String;

    .line 243
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/xiaomi/stat/a/l;->e:J

    .line 245
    new-instance v2, Lcom/xiaomi/stat/H;

    invoke-direct {v2}, Lcom/xiaomi/stat/H;-><init>()V

    .line 246
    iput-object v2, v1, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/H;

    .line 247
    const-string v0, "ek"

    invoke-virtual {v2, v0, p1}, Lcom/xiaomi/stat/H;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v3, "et"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0}, Lcom/xiaomi/stat/H;->putInt(Ljava/lang/String;I)V

    .line 249
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 250
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 251
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    const-string v3, "sk"

    invoke-virtual {v2, v3, v0}, Lcom/xiaomi/stat/H;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v0, "em"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/xiaomi/stat/H;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-static {v1}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;)V

    .line 256
    invoke-static {v1, p3}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;Ljava/lang/String;)V

    .line 258
    return-object v1

    .line 248
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/xiaomi/stat/a/l;)V
    .locals 1

    .prologue
    .line 167
    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/stat/a/l;->g:Z

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/stat/a/l;->g:Z

    goto :goto_0
.end method

.method private static a(Lcom/xiaomi/stat/a/l;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 175
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iput-object p1, p0, Lcom/xiaomi/stat/a/l;->f:Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/H;

    const-string v1, "mi_sai"

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/stat/H;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_0
    return-void
.end method
