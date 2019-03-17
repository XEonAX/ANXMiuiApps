.class public Lcom/alibaba/mtl/log/a;
.super Ljava/lang/Object;
.source "UTDC.java"


# static fields
.field public static B:Ljava/lang/String;

.field public static a:Lcom/alibaba/mtl/log/sign/IRequestAuth;

.field private static a:Z

.field public static b:J

.field public static final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static mContext:Landroid/content/Context;

.field public static o:Z

.field public static p:Z

.field private static q:Z

.field public static r:Z

.field public static s:I

.field public static s:Z

.field public static t:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 31
    sput-boolean v2, Lcom/alibaba/mtl/log/a;->a:Z

    .line 33
    sput-boolean v2, Lcom/alibaba/mtl/log/a;->o:Z

    .line 35
    const/16 v0, 0x2710

    sput v0, Lcom/alibaba/mtl/log/a;->s:I

    .line 37
    sput v2, Lcom/alibaba/mtl/log/a;->t:I

    .line 38
    const-wide/16 v4, -0x1

    sput-wide v4, Lcom/alibaba/mtl/log/a;->b:J

    .line 40
    sput-boolean v2, Lcom/alibaba/mtl/log/a;->p:Z

    .line 42
    sget v0, Lcom/alibaba/mtl/log/a;->t:I

    sget v3, Lcom/alibaba/mtl/log/a;->s:I

    if-gt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/alibaba/mtl/log/a;->q:Z

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/mtl/log/a;->B:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/alibaba/mtl/log/a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 53
    sput-boolean v1, Lcom/alibaba/mtl/log/a;->r:Z

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/mtl/log/a;->a:Lcom/alibaba/mtl/log/sign/IRequestAuth;

    .line 58
    sput-boolean v1, Lcom/alibaba/mtl/log/a;->s:Z

    return-void

    :cond_0
    move v0, v2

    .line 42
    goto :goto_0
.end method

.method public static a()Lcom/alibaba/mtl/log/sign/IRequestAuth;
    .locals 2

    .prologue
    .line 155
    sget-object v0, Lcom/alibaba/mtl/log/a;->a:Lcom/alibaba/mtl/log/sign/IRequestAuth;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/mtl/log/a;->a:Lcom/alibaba/mtl/log/sign/IRequestAuth;

    invoke-interface {v0}, Lcom/alibaba/mtl/log/sign/IRequestAuth;->getAppkey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    :cond_0
    invoke-static {}, Lcom/alibaba/mtl/log/d/i;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "please Set <meta-data android:value=\"YOU KEY\" android:name=\"com.alibaba.apmplus.app_key\"></meta-data> in app AndroidManifest.xml "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_1
    const-string v0, "UTDC"

    const-string v1, "please Set <meta-data android:value=\"YOU KEY\" android:name=\"com.alibaba.apmplus.app_key\"></meta-data> in app AndroidManifest.xml "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_2
    sget-object v0, Lcom/alibaba/mtl/log/a;->a:Lcom/alibaba/mtl/log/sign/IRequestAuth;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 62
    const-class v1, Lcom/alibaba/mtl/log/a;

    monitor-enter v1

    if-nez p0, :cond_1

    .line 63
    :try_start_0
    const-string v0, "UTDC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UTDC init failed ,context:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 66
    :cond_1
    :try_start_1
    sget-boolean v0, Lcom/alibaba/mtl/log/a;->a:Z

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/mtl/log/a;->a:Z

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/alibaba/mtl/log/a;->mContext:Landroid/content/Context;

    .line 69
    invoke-static {}, Lcom/alibaba/mtl/log/upload/UploadEngine;->getInstance()Lcom/alibaba/mtl/log/upload/UploadEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/upload/UploadEngine;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lcom/alibaba/mtl/log/sign/IRequestAuth;)V
    .locals 1

    .prologue
    .line 78
    sput-object p0, Lcom/alibaba/mtl/log/a;->a:Lcom/alibaba/mtl/log/sign/IRequestAuth;

    .line 79
    sget-object v0, Lcom/alibaba/mtl/log/a;->a:Lcom/alibaba/mtl/log/sign/IRequestAuth;

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lcom/alibaba/mtl/log/a;->a:Lcom/alibaba/mtl/log/sign/IRequestAuth;

    invoke-interface {v0}, Lcom/alibaba/mtl/log/sign/IRequestAuth;->getAppkey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/mtl/log/d/b;->n(Ljava/lang/String;)V

    .line 82
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    sget-object v0, Lcom/alibaba/mtl/log/a;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 112
    const-string v0, "UTDC"

    const-string v1, "please call UTDC.init(context) before commit log,and this log will be discarded"

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    :goto_0
    return-void

    .line 115
    :cond_0
    sget-object v0, Lcom/alibaba/mtl/log/a;->a:Lcom/alibaba/mtl/log/sign/IRequestAuth;

    if-nez v0, :cond_1

    .line 116
    const-string v0, "UTDC"

    const-string v1, "please call UTDC.setRequestAuthentication(auth) before commit log,and this log will be discarded"

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 119
    :cond_1
    const-string v0, "UTDC"

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "[commit] page:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v2, 0x2

    const-string v3, "eventId:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const/4 v2, 0x4

    const-string v3, "arg1:"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p2, v1, v2

    const/4 v2, 0x6

    const-string v3, "arg2:"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    aput-object p3, v1, v2

    const/16 v2, 0x8

    const-string v3, "arg3:"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    aput-object p4, v1, v2

    const/16 v2, 0xa

    const-string v3, "args:"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    aput-object p5, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    invoke-static {p1}, Lcom/alibaba/mtl/log/b/a;->k(Ljava/lang/String;)V

    .line 121
    new-instance v0, Lcom/alibaba/mtl/log/model/a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/mtl/log/model/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 122
    invoke-static {}, Lcom/alibaba/mtl/log/c/c;->a()Lcom/alibaba/mtl/log/c/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/log/c/c;->a(Lcom/alibaba/mtl/log/model/a;)V

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/log/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/mtl/log/d/l;->getNetworkState(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 168
    const/4 v1, 0x0

    aget-object v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    return-object v0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    const-string v0, "Unknown"

    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 177
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/log/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/mtl/log/d/l;->getNetworkState(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 178
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v2, "2G/3G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 184
    :goto_0
    return-object v0

    .line 181
    :cond_0
    const-string v0, "Unknown"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    const-string v0, "Unknown"

    goto :goto_0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    const-string v0, ""

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    const-string v0, ""

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/alibaba/mtl/log/a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static k()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 89
    const-string v0, "UTDC"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "[onBackground]"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    sput-boolean v4, Lcom/alibaba/mtl/log/a;->o:Z

    .line 91
    invoke-static {}, Lcom/alibaba/mtl/log/b/a;->D()V

    .line 92
    return-void
.end method

.method public static l()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 95
    const-string v0, "UTDC"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[onForeground]"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    sput-boolean v3, Lcom/alibaba/mtl/log/a;->o:Z

    .line 97
    invoke-static {}, Lcom/alibaba/mtl/log/upload/UploadEngine;->getInstance()Lcom/alibaba/mtl/log/upload/UploadEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/upload/UploadEngine;->start()V

    .line 98
    return-void
.end method

.method public static m()V
    .locals 1

    .prologue
    .line 198
    invoke-static {}, Lcom/alibaba/mtl/log/upload/UploadEngine;->getInstance()Lcom/alibaba/mtl/log/upload/UploadEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/upload/UploadEngine;->start()V

    .line 199
    return-void
.end method

.method public static setChannel(Ljava/lang/String;)V
    .locals 0
    .param p0, "channel"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-static {p0}, Lcom/alibaba/mtl/log/d/b;->m(Ljava/lang/String;)V

    .line 86
    return-void
.end method
