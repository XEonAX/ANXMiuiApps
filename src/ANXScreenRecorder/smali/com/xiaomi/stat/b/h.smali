.class public Lcom/xiaomi/stat/b/h;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "SecretKeyManager"

.field private static final b:Ljava/lang/String; = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCA1ynlvPE46RxIPx6qrb8f20DU\n\rkAJgwHtD3zCEkgOjcvFY2mLl0UGnK1F0Vsh4LvImSCa8o8qYYfBguROgIXRdJGZ+\n\rk9stSV7vWmcsxphMfHEE9R4q+QWqgPBSzwyWmwmAQ7PZmHifOrEYl9t/l0YtmjnW\n\r8Zs3aL7Ap9CGse2kWwIDAQAB\r"

.field private static final c:Ljava/lang/String; = "sid"

.field private static final d:Ljava/lang/String; = "sk"

.field private static final e:Ljava/lang/String; = "rt"

.field private static final f:Ljava/lang/String; = "rc"

.field private static final g:Ljava/lang/String; = "request_history"

.field private static final h:Ljava/lang/String; = "last_aes_content"

.field private static final i:Ljava/lang/String; = "last_success_time"

.field private static final j:Ljava/lang/String; = "4ef8b4ac42dbc3f95320b73ae0edbd43"

.field private static final k:Ljava/lang/String; = "050f03d86eeafeb29cf38986462d957c"

.field private static final l:I = 0x1

.field private static final m:I = 0x2

.field private static final n:Ljava/lang/String; = "1"

.field private static final o:Ljava/lang/String; = "0"

.field private static final p:I = 0x7

.field private static final q:I = 0xf

.field private static volatile r:Lcom/xiaomi/stat/b/h;


# instance fields
.field private s:Landroid/content/Context;

.field private t:[B

.field private u:[B

.field private v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/stat/b/h;->r:Lcom/xiaomi/stat/b/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {}, Lcom/xiaomi/stat/I;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stat/b/h;->s:Landroid/content/Context;

    .line 93
    invoke-direct {p0}, Lcom/xiaomi/stat/b/h;->d()V

    .line 94
    return-void
.end method

.method public static a()Lcom/xiaomi/stat/b/h;
    .locals 2

    .prologue
    .line 97
    sget-object v0, Lcom/xiaomi/stat/b/h;->r:Lcom/xiaomi/stat/b/h;

    if-nez v0, :cond_1

    .line 98
    const-class v1, Lcom/xiaomi/stat/b/h;

    monitor-enter v1

    .line 99
    :try_start_0
    sget-object v0, Lcom/xiaomi/stat/b/h;->r:Lcom/xiaomi/stat/b/h;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/xiaomi/stat/b/h;

    invoke-direct {v0}, Lcom/xiaomi/stat/b/h;-><init>()V

    sput-object v0, Lcom/xiaomi/stat/b/h;->r:Lcom/xiaomi/stat/b/h;

    .line 102
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :cond_1
    sget-object v0, Lcom/xiaomi/stat/b/h;->r:Lcom/xiaomi/stat/b/h;

    return-object v0

    .line 102
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b(Z)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 208
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_0

    .line 209
    const-string v1, "SecretKeyManager"

    const-string v2, "under 4.3,use randomly generated key"

    invoke-static {v1, v2}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :goto_0
    return v0

    .line 213
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/stat/b/h;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    invoke-direct {p0}, Lcom/xiaomi/stat/b/h;->k()V

    .line 217
    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/stat/b/h;->g()Lorg/json/JSONObject;

    move-result-object v1

    .line 218
    if-eqz v1, :cond_2

    .line 219
    const-string v2, "sid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 220
    const-string v3, "sk"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    if-nez p1, :cond_2

    .line 222
    const-string v1, "SecretKeyManager"

    const-string v2, "key and sid already requested successfully in recent 7 days!"

    invoke-static {v1, v2}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/stat/b/h;->h()Lorg/json/JSONObject;

    move-result-object v1

    .line 229
    const-string v2, "rt"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 230
    const-string v4, "rc"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 231
    invoke-static {v2, v3}, Lcom/xiaomi/stat/d/r;->b(J)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xf

    if-lt v1, v2, :cond_3

    if-nez p1, :cond_3

    .line 232
    const-string v1, "SecretKeyManager"

    const-string v2, "request count > max count today, skip..."

    invoke-static {v1, v2}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :cond_3
    invoke-direct {p0}, Lcom/xiaomi/stat/b/h;->f()Z

    move-result v0

    goto :goto_0
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 108
    invoke-static {}, Lcom/xiaomi/stat/d/a;->a()[B

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stat/b/h;->u:[B

    .line 111
    iget-object v0, p0, Lcom/xiaomi/stat/b/h;->u:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/stat/b/h;->u:[B

    array-length v0, v0

    if-gtz v0, :cond_1

    .line 112
    :cond_0
    const-string v0, "050f03d86eeafeb29cf38986462d957c"

    invoke-static {v0}, Lcom/xiaomi/stat/d/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stat/b/h;->u:[B

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/stat/b/h;->u:[B

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/g;->a([BZ)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    :try_start_0
    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/xiaomi/stat/d/g;->a([BZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 122
    :goto_0
    invoke-static {v0}, Lcom/xiaomi/stat/d/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "4ef8b4ac42dbc3f95320b73ae0edbd43"

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/a;->a([BLjava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stat/b/h;->t:[B

    .line 124
    return-void

    .line 119
    :catch_0
    move-exception v1

    .line 120
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private e()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 138
    .line 140
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_2

    .line 141
    invoke-direct {p0}, Lcom/xiaomi/stat/b/h;->g()Lorg/json/JSONObject;

    move-result-object v2

    .line 142
    if-eqz v2, :cond_2

    .line 143
    const-string v0, "sk"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    const-string v0, "sid"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/stat/b/h;->u:[B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/g;->a([BZ)Ljava/lang/String;

    move-result-object v1

    .line 153
    :cond_1
    return-object v1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method private f()Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 241
    .line 246
    :try_start_0
    invoke-static {}, Lcom/xiaomi/stat/d/a;->a()[B

    move-result-object v2

    .line 247
    const-string v3, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCA1ynlvPE46RxIPx6qrb8f20DU\n\rkAJgwHtD3zCEkgOjcvFY2mLl0UGnK1F0Vsh4LvImSCa8o8qYYfBguROgIXRdJGZ+\n\rk9stSV7vWmcsxphMfHEE9R4q+QWqgPBSzwyWmwmAQ7PZmHifOrEYl9t/l0YtmjnW\n\r8Zs3aL7Ap9CGse2kWwIDAQAB\r"

    invoke-static {v3}, Lcom/xiaomi/stat/d/d;->a(Ljava/lang/String;)[B

    move-result-object v3

    .line 248
    invoke-static {v3, v2}, Lcom/xiaomi/stat/d/o;->a([B[B)[B

    move-result-object v3

    .line 249
    invoke-static {v3}, Lcom/xiaomi/stat/d/d;->a([B)Ljava/lang/String;

    move-result-object v3

    .line 250
    invoke-direct {p0}, Lcom/xiaomi/stat/b/h;->i()V

    .line 252
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 253
    const-string v5, "skey_rsa"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-static {}, Lcom/xiaomi/stat/b/f;->a()Lcom/xiaomi/stat/b/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/stat/b/f;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/xiaomi/stat/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v3

    .line 257
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 258
    const-string v4, "SecretKeyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "result:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 260
    const-string v3, "msg"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 261
    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 262
    const-string v6, "curTime"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 263
    const-string v8, "result"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 264
    if-ne v5, v1, :cond_0

    if-eqz v4, :cond_0

    .line 266
    :try_start_1
    const-string v1, "sid"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 267
    const-string v3, "key"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 269
    invoke-static {v3, v2}, Lcom/xiaomi/stat/d/a;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v2

    .line 271
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 272
    const-string v4, "sk"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    const-string v2, "sid"

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/stat/b/h;->v:Ljava/lang/String;

    .line 276
    iget-object v1, p0, Lcom/xiaomi/stat/b/h;->s:Landroid/content/Context;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/stat/d/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v2

    const-string v3, "last_aes_content"

    invoke-virtual {v2, v3, v1}, Lcom/xiaomi/stat/A;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v1

    const-string v2, "last_success_time"

    invoke-virtual {v1, v2, v6, v7}, Lcom/xiaomi/stat/A;->b(Ljava/lang/String;J)V

    .line 279
    invoke-static {v6, v7}, Lcom/xiaomi/stat/d/r;->a(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 287
    :goto_0
    return v0

    .line 280
    :cond_0
    const/4 v0, 0x2

    if-ne v5, v0, :cond_1

    .line 281
    :try_start_2
    const-string v0, "SecretKeyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update secret-key failed: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    move-object v9, v0

    move v0, v1

    move-object v1, v9

    .line 285
    :goto_1
    const-string v2, "SecretKeyManager"

    const-string v3, "updateSecretKey e"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 284
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private g()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 292
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v0

    const-string v1, "last_aes_content"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/A;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 296
    iget-object v1, p0, Lcom/xiaomi/stat/b/h;->v:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 297
    iget-object v0, p0, Lcom/xiaomi/stat/b/h;->v:Ljava/lang/String;

    move-object v1, v0

    .line 303
    :goto_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 308
    :goto_1
    return-object v0

    .line 300
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/stat/b/h;->s:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    iput-object v0, p0, Lcom/xiaomi/stat/b/h;->v:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    .line 305
    :catch_0
    move-exception v0

    .line 306
    const-string v1, "SecretKeyManager"

    const-string v2, "decodeFromAndroidKeyStore e"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 308
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private h()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 313
    :try_start_0
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v0

    const-string v1, "request_history"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/A;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 314
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :goto_0
    return-object v0

    .line 317
    :catch_0
    move-exception v0

    .line 318
    const-string v1, "SecretKeyManager"

    const-string v2, "getRequestHistory e"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 320
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method private i()V
    .locals 4

    .prologue
    .line 325
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/stat/b/h;->h()Lorg/json/JSONObject;

    move-result-object v0

    .line 326
    const-string v1, "rt"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 327
    const-string v1, "rc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 328
    invoke-static {v2, v3}, Lcom/xiaomi/stat/d/r;->b(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 329
    const-string v2, "rc"

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 333
    :goto_0
    const-string v1, "rt"

    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 334
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v1

    const-string v2, "request_history"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/stat/A;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :goto_1
    return-void

    .line 331
    :cond_0
    const-string v1, "rc"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    const-string v1, "SecretKeyManager"

    const-string v2, "updateSecretKey e"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private j()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 341
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v0

    const-string v1, "last_success_time"

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/stat/A;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 342
    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-wide/32 v2, 0x240c8400

    .line 343
    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/stat/d/r;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 342
    :goto_0
    return v0

    .line 343
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 347
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v0

    .line 348
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/stat/b/h;->v:Ljava/lang/String;

    .line 349
    const-string v1, "last_aes_content"

    invoke-virtual {v0, v1}, Lcom/xiaomi/stat/A;->b(Ljava/lang/String;)V

    .line 350
    const-string v1, "last_success_time"

    invoke-virtual {v0, v1}, Lcom/xiaomi/stat/A;->b(Ljava/lang/String;)V

    .line 351
    return-void
.end method

.method private declared-synchronized l()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 354
    monitor-enter p0

    .line 355
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/stat/b/h;->g()Lorg/json/JSONObject;

    move-result-object v1

    .line 356
    if-eqz v1, :cond_0

    .line 357
    const-string v2, "sk"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 358
    const-string v3, "sid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 359
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 361
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 359
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Z)V
    .locals 4

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/xiaomi/stat/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/stat/b;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 180
    :cond_0
    const-string v0, "SecretKeyManager"

    const-string v1, "update abort: statistic or network is not enabled"

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 184
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/xiaomi/stat/d/l;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 185
    const/4 v1, 0x3

    .line 186
    const/4 v0, 0x1

    :goto_1
    if-gt v0, v1, :cond_1

    .line 187
    invoke-direct {p0, p1}, Lcom/xiaomi/stat/b/h;->b(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 188
    if-eqz v2, :cond_1

    if-eq v0, v1, :cond_1

    .line 192
    const-wide/16 v2, 0x2710

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 193
    :catch_0
    move-exception v2

    .line 194
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 199
    :cond_3
    :try_start_4
    const-string v0, "SecretKeyManager"

    const-string v1, "network not connected!"

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized a([B)[B
    .locals 2

    .prologue
    .line 130
    monitor-enter p0

    if-nez p1, :cond_0

    .line 131
    :try_start_0
    const-string v0, "SecretKeyManager"

    const-string v1, "encrypt content is empty"

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    const/4 v0, 0x0

    .line 134
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/xiaomi/stat/b/h;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/stat/d/a;->a([BLjava/lang/String;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 157
    monitor-enter p0

    .line 159
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_2

    .line 160
    invoke-direct {p0}, Lcom/xiaomi/stat/b/h;->g()Lorg/json/JSONObject;

    move-result-object v2

    .line 161
    if-eqz v2, :cond_2

    .line 162
    const-string v0, "sid"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    const-string v0, "sk"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 168
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/stat/b/h;->t:[B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/g;->a([BZ)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 172
    :cond_1
    monitor-exit p0

    return-object v0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 369
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/stat/b/h;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    :cond_0
    const-string v0, "1"

    .line 372
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "0"

    goto :goto_0
.end method
