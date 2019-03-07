.class public Lcom/xiaomi/stat/b/f;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "RDM"

.field private static final b:Ljava/lang/Object;

.field private static final c:Ljava/lang/String; = "CN"

.field private static final d:Ljava/lang/String; = "INTL"

.field private static final e:Ljava/lang/String; = "IN"

.field private static final f:Ljava/lang/String; = "data.mistat.xiaomi.com"

.field private static final g:Ljava/lang/String; = "data.mistat.intl.xiaomi.com"

.field private static final h:Ljava/lang/String; = "data.mistat.india.xiaomi.com"

.field private static final i:Ljava/lang/String; = "region-url"

.field private static final j:Ljava/lang/String; = "/map_domain"

.field private static final k:Ljava/lang/String; = "region"

.field private static l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static r:Lcom/xiaomi/stat/b/f;


# instance fields
.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Lcom/xiaomi/stat/b/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/stat/b/f;->b:Ljava/lang/Object;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/stat/b/f;->l:Ljava/util/HashMap;

    .line 65
    sget-object v0, Lcom/xiaomi/stat/b/f;->l:Ljava/util/HashMap;

    const-string v1, "CN"

    const-string v2, "data.mistat.xiaomi.com"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/xiaomi/stat/b/f;->l:Ljava/util/HashMap;

    const-string v1, "INTL"

    const-string v2, "data.mistat.intl.xiaomi.com"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/xiaomi/stat/b/f;->l:Ljava/util/HashMap;

    const-string v1, "IN"

    const-string v2, "data.mistat.india.xiaomi.com"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "CN"

    iput-object v0, p0, Lcom/xiaomi/stat/b/f;->m:Ljava/lang/String;

    .line 53
    const-string v0, "data.mistat.xiaomi.com"

    iput-object v0, p0, Lcom/xiaomi/stat/b/f;->n:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/stat/b/f;->o:Ljava/lang/String;

    .line 71
    invoke-static {}, Lcom/xiaomi/stat/I;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/stat/b/f;->a(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method public static a()Lcom/xiaomi/stat/b/f;
    .locals 2

    .prologue
    .line 75
    sget-object v0, Lcom/xiaomi/stat/b/f;->r:Lcom/xiaomi/stat/b/f;

    if-nez v0, :cond_1

    .line 76
    sget-object v1, Lcom/xiaomi/stat/b/f;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    :try_start_0
    sget-object v0, Lcom/xiaomi/stat/b/f;->r:Lcom/xiaomi/stat/b/f;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/xiaomi/stat/b/f;

    invoke-direct {v0}, Lcom/xiaomi/stat/b/f;-><init>()V

    sput-object v0, Lcom/xiaomi/stat/b/f;->r:Lcom/xiaomi/stat/b/f;

    .line 80
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_1
    sget-object v0, Lcom/xiaomi/stat/b/f;->r:Lcom/xiaomi/stat/b/f;

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x1c

    .line 164
    invoke-static {}, Lcom/xiaomi/stat/I;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 165
    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    const-string v0, "https://"

    .line 176
    :goto_0
    iget-object v1, p0, Lcom/xiaomi/stat/b/f;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 169
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_1

    if-lt v0, v2, :cond_1

    .line 171
    const-string v0, "https://"

    goto :goto_0

    .line 173
    :cond_1
    const-string v0, "http://"

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 216
    .line 217
    sget-object v0, Lcom/xiaomi/stat/b/f;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 218
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iput-object p1, p0, Lcom/xiaomi/stat/b/f;->m:Ljava/lang/String;

    .line 220
    sget-object v0, Lcom/xiaomi/stat/b/f;->l:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/xiaomi/stat/b/f;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/stat/b/f;->n:Ljava/lang/String;

    .line 221
    const/4 v0, 0x1

    .line 229
    :goto_0
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v1

    const-string v2, "region"

    invoke-virtual {v1, v2, p1}, Lcom/xiaomi/stat/A;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return v0

    .line 223
    :cond_0
    const-string v0, "INTL"

    iput-object v0, p0, Lcom/xiaomi/stat/b/f;->m:Ljava/lang/String;

    .line 224
    sget-object v0, Lcom/xiaomi/stat/b/f;->l:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/xiaomi/stat/b/f;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/stat/b/f;->n:Ljava/lang/String;

    .line 225
    const-string v0, "RDM"

    const-string v1, "unknown region,set to unknown(singapore)\'s domain"

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/k;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/xiaomi/stat/b/f;->o:Ljava/lang/String;

    .line 235
    return-void
.end method

.method private static e()V
    .locals 3

    .prologue
    .line 91
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 92
    const-string v0, "RDM"

    const-string v1, "can not init in main thread!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 101
    invoke-static {}, Lcom/xiaomi/stat/b/f;->e()V

    .line 102
    new-instance v0, Lcom/xiaomi/stat/b/g;

    invoke-direct {v0}, Lcom/xiaomi/stat/b/g;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/stat/b/f;->q:Lcom/xiaomi/stat/b/g;

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stat/b/f;->p:Ljava/lang/String;

    .line 106
    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    const-string v0, "CN"

    iput-object v0, p0, Lcom/xiaomi/stat/b/f;->m:Ljava/lang/String;

    .line 108
    const-string v0, "data.mistat.xiaomi.com"

    iput-object v0, p0, Lcom/xiaomi/stat/b/f;->n:Ljava/lang/String;

    .line 135
    :cond_0
    :goto_0
    const-string v0, "RDM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[file-dir]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/stat/b/f;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n[CurrentRegion]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/stat/b/f;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n[domain]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/stat/b/f;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void

    .line 112
    :cond_1
    invoke-static {}, Lcom/xiaomi/stat/d/m;->g()Ljava/lang/String;

    move-result-object v0

    .line 113
    const-string v1, "RDM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SystemRegion]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v1

    const-string v2, "region"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/stat/A;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 117
    iput-object v0, p0, Lcom/xiaomi/stat/b/f;->m:Ljava/lang/String;

    .line 120
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 121
    iput-object v1, p0, Lcom/xiaomi/stat/b/f;->m:Ljava/lang/String;

    .line 125
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/stat/b/f;->p:Ljava/lang/String;

    const-string v1, "/map_domain"

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/stat/d/h;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 127
    iget-object v1, p0, Lcom/xiaomi/stat/b/f;->q:Lcom/xiaomi/stat/b/g;

    sget-object v2, Lcom/xiaomi/stat/b/f;->l:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/stat/b/g;->a(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/stat/b/f;->l:Ljava/util/HashMap;

    .line 130
    sget-object v0, Lcom/xiaomi/stat/b/f;->l:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/xiaomi/stat/b/f;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 131
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    iput-object v0, p0, Lcom/xiaomi/stat/b/f;->n:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/xiaomi/stat/b/f;->d(Ljava/lang/String;)V

    .line 184
    invoke-direct {p0, p1}, Lcom/xiaomi/stat/b/f;->c(Ljava/lang/String;)Z

    .line 185
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 239
    iget-object v0, p0, Lcom/xiaomi/stat/b/f;->q:Lcom/xiaomi/stat/b/g;

    const-string v1, "region-url"

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/stat/b/g;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v2

    .line 240
    iget-object v0, p0, Lcom/xiaomi/stat/b/f;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/stat/b/f;->m:Ljava/lang/String;

    move-object v1, v0

    .line 242
    :goto_0
    if-eqz v2, :cond_1

    .line 243
    iget-object v0, p0, Lcom/xiaomi/stat/b/f;->q:Lcom/xiaomi/stat/b/g;

    sget-object v3, Lcom/xiaomi/stat/b/f;->l:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v2}, Lcom/xiaomi/stat/b/g;->a(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/stat/b/f;->l:Ljava/util/HashMap;

    .line 244
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    sget-object v0, Lcom/xiaomi/stat/b/f;->l:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 246
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 247
    iput-object v1, p0, Lcom/xiaomi/stat/b/f;->m:Ljava/lang/String;

    .line 248
    iput-object v0, p0, Lcom/xiaomi/stat/b/f;->n:Ljava/lang/String;

    .line 251
    :cond_0
    sget-object v0, Lcom/xiaomi/stat/b/f;->l:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/xiaomi/stat/b/f;->p:Ljava/lang/String;

    const-string v2, "/map_domain"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    :cond_1
    return-void

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/stat/b/f;->o:Ljava/lang/String;

    move-object v1, v0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 191
    if-eqz p1, :cond_2

    .line 193
    const-string v0, "INTL"

    iput-object v0, p0, Lcom/xiaomi/stat/b/f;->m:Ljava/lang/String;

    .line 194
    const-string v0, "data.mistat.intl.xiaomi.com"

    iput-object v0, p0, Lcom/xiaomi/stat/b/f;->n:Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lcom/xiaomi/stat/b/f;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/stat/b/f;->m:Ljava/lang/String;

    move-object v1, v0

    .line 197
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    sget-object v0, Lcom/xiaomi/stat/b/f;->l:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 199
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    iput-object v1, p0, Lcom/xiaomi/stat/b/f;->m:Ljava/lang/String;

    .line 201
    iput-object v0, p0, Lcom/xiaomi/stat/b/f;->n:Ljava/lang/String;

    .line 208
    :cond_0
    :goto_1
    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/stat/b/f;->o:Ljava/lang/String;

    move-object v1, v0

    goto :goto_0

    .line 205
    :cond_2
    const-string v0, "CN"

    iput-object v0, p0, Lcom/xiaomi/stat/b/f;->m:Ljava/lang/String;

    .line 206
    const-string v0, "data.mistat.xiaomi.com"

    iput-object v0, p0, Lcom/xiaomi/stat/b/f;->n:Ljava/lang/String;

    goto :goto_1
.end method

.method b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    const-string v0, "get_all_config"

    invoke-direct {p0, v0}, Lcom/xiaomi/stat/b/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Context;)Z
    .locals 4

    .prologue
    .line 259
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v0

    const-string v1, "key_update_time"

    const-wide/16 v2, 0x0

    .line 260
    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/stat/A;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 261
    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/r;->b(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    const-string v0, "mistats/v3"

    invoke-direct {p0, v0}, Lcom/xiaomi/stat/b/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    const-string v1, "Cannot clone instance of this class"

    invoke-direct {v0, v1}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    const-string v0, "key_get"

    invoke-direct {p0, v0}, Lcom/xiaomi/stat/b/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
