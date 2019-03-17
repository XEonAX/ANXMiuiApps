.class Lcom/alibaba/alibclinkpartner/a;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .locals 1

    new-instance v0, Lcom/alibaba/alibclinkpartner/d/d/c;

    invoke-direct {v0}, Lcom/alibaba/alibclinkpartner/d/d/c;-><init>()V

    sput-object v0, Lcom/alibaba/alibclinkpartner/b;->a:Lcom/alibaba/alibclinkpartner/d/d/c;

    new-instance v0, Lcom/alibaba/alibclinkpartner/f/a;

    invoke-direct {v0}, Lcom/alibaba/alibclinkpartner/f/a;-><init>()V

    sput-object v0, Lcom/alibaba/alibclinkpartner/b;->c:Lcom/alibaba/alibclinkpartner/f/a;

    new-instance v0, Lcom/alibaba/alibclinkpartner/d/c/a;

    invoke-direct {v0}, Lcom/alibaba/alibclinkpartner/d/c/a;-><init>()V

    sput-object v0, Lcom/alibaba/alibclinkpartner/b;->d:Lcom/alibaba/alibclinkpartner/d/c/a;

    new-instance v0, Lcom/alibaba/alibclinkpartner/d/b/b;

    invoke-direct {v0}, Lcom/alibaba/alibclinkpartner/d/b/b;-><init>()V

    sput-object v0, Lcom/alibaba/alibclinkpartner/b;->e:Lcom/alibaba/alibclinkpartner/d/b/b;

    new-instance v0, Lcom/alibaba/alibclinkpartner/plugin/a;

    invoke-direct {v0}, Lcom/alibaba/alibclinkpartner/plugin/a;-><init>()V

    sput-object v0, Lcom/alibaba/alibclinkpartner/b;->f:Lcom/alibaba/alibclinkpartner/plugin/a;

    new-instance v0, Lcom/alibaba/alibclinkpartner/d/a/d;

    invoke-direct {v0}, Lcom/alibaba/alibclinkpartner/d/a/d;-><init>()V

    sput-object v0, Lcom/alibaba/alibclinkpartner/b;->b:Lcom/alibaba/alibclinkpartner/d/a/d;

    return-void
.end method

.method private static a(Landroid/app/Application;)V
    .locals 2

    new-instance v0, Lcom/alibaba/alibclinkpartner/d/e/a/k;

    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/alibclinkpartner/d/e/a/k;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/alibclinkpartner/d/e/c;->a(Lcom/alibaba/alibclinkpartner/d/e/a/d;)V

    return-void
.end method

.method private static b()V
    .locals 7

    const-wide/16 v2, 0x0

    sget-object v0, Lcom/alibaba/alibclinkpartner/b;->e:Lcom/alibaba/alibclinkpartner/d/b/b;

    const-string v1, "checkInstallAppExpiredTime"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/alibclinkpartner/d/b/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ALPLinkPartnerSDK"

    const-string v4, "sendCheckInstallPoint"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cheinstallapptime is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/alibaba/alibclinkpartner/j/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-wide v0, v2

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const-string v0, "ALPLinkPartnerSDK"

    const-string v1, "sendCheckInstallPoint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentTimeMillis = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\u8fd8\u6ca1\u5230\u8fc7\u671f\u65f6\u95f4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/alibclinkpartner/j/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-string v0, "ALPLinkPartnerSDK"

    const-string v1, "sendCheckInstallPoint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentTimeMillis = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\u8d85\u8fc7\u8fc7\u671f\u65f6\u95f4,\u6253\u70b9"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/alibclinkpartner/j/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/alibclinkpartner/b;->e:Lcom/alibaba/alibclinkpartner/d/b/b;

    const-string v1, "checkInstallAppExpiredTime"

    invoke-static {}, Lcom/alibaba/alibclinkpartner/j/k;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alibclinkpartner/d/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v0, Lcom/alibaba/alibclinkpartner/d/e/a/e;

    invoke-direct {v0}, Lcom/alibaba/alibclinkpartner/d/e/a/e;-><init>()V

    const-string v1, "taobao"

    invoke-static {v1}, Lcom/alibaba/alibclinkpartner/a;->isSupportLinkKey(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/alibclinkpartner/d/e/a/e;->a:Z

    const-string v1, "tmall"

    invoke-static {v1}, Lcom/alibaba/alibclinkpartner/a;->isSupportLinkKey(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/alibclinkpartner/d/e/a/e;->b:Z

    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->a()Lcom/alibaba/alibclinkpartner/param/b;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/alibclinkpartner/param/b;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alibclinkpartner/d/e/a/e;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/alibclinkpartner/d/e/c;->a(Lcom/alibaba/alibclinkpartner/d/e/a/d;)V

    goto :goto_1
.end method

.method private static b(Landroid/app/Application;)V
    .locals 1

    new-instance v0, Lcom/alibaba/alibclinkpartner/d/e/a/j;

    invoke-direct {v0, p0}, Lcom/alibaba/alibclinkpartner/d/e/a/j;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/alibaba/alibclinkpartner/d/e/c;->a(Lcom/alibaba/alibclinkpartner/d/e/a/d;)V

    return-void
.end method

.method public static checkInit()Z
    .locals 1

    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->b()Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized init(Landroid/app/Application;)I
    .locals 2

    const-class v0, Lcom/alibaba/alibclinkpartner/a;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/alibaba/alibclinkpartner/a;->init(Landroid/app/Application;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized init(Landroid/app/Application;Ljava/lang/String;)I
    .locals 4

    const/16 v0, 0xc8

    const-class v1, Lcom/alibaba/alibclinkpartner/a;

    monitor-enter v1

    if-nez p0, :cond_1

    :try_start_0
    const-string v0, "ALPLinkPartnerSDK"

    const-string v2, "init"

    const-string v3, "application/openParam is null"

    invoke-static {v0, v2, v3}, Lcom/alibaba/alibclinkpartner/j/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x12d

    :cond_0
    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->b()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/alibaba/alibclinkpartner/b;->a(Landroid/app/Application;)V

    new-instance v2, Lcom/alibaba/alibclinkpartner/param/b;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/alibclinkpartner/param/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/alibaba/alibclinkpartner/b;->a(Lcom/alibaba/alibclinkpartner/param/b;)V

    invoke-static {}, Lcom/alibaba/alibclinkpartner/a;->a()V

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/alibaba/alibclinkpartner/b;->a(Z)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->a()Lcom/alibaba/alibclinkpartner/param/b;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/alibclinkpartner/param/b;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->a()Lcom/alibaba/alibclinkpartner/param/b;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/alibclinkpartner/param/b;->b:Ljava/lang/String;

    const-string v3, "0000000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-static {p0}, Lcom/alibaba/alibclinkpartner/a;->a(Landroid/app/Application;)V

    :cond_4
    invoke-static {}, Lcom/alibaba/alibclinkpartner/a;->b()V

    invoke-static {p0}, Lcom/alibaba/alibclinkpartner/a;->b(Landroid/app/Application;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isSupportLinkKey(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    const-string v0, "taobao_scheme"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "taobao"

    :cond_0
    :goto_0
    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->e()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/alibaba/alibclinkpartner/j/j;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const-string v0, "tmall_scheme"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "tmall"

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static registerPlugin(Lcom/alibaba/alibclinkpartner/plugin/ALPBasePlugin;)I
    .locals 1

    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x12c

    :goto_0
    return v0

    :cond_0
    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/plugin/ALPBasePlugin;->pluginKey:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_1
    const/16 v0, 0x139

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/alibaba/alibclinkpartner/b;->f:Lcom/alibaba/alibclinkpartner/plugin/a;

    invoke-virtual {v0, p0}, Lcom/alibaba/alibclinkpartner/plugin/a;->a(Lcom/alibaba/alibclinkpartner/plugin/ALPBasePlugin;)V

    const/16 v0, 0xca

    goto :goto_0
.end method

.method public static setAppkey(Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x12c

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->a()Lcom/alibaba/alibclinkpartner/param/b;

    move-result-object v0

    iput-object p0, v0, Lcom/alibaba/alibclinkpartner/param/b;->b:Ljava/lang/String;

    const/16 v0, 0xca

    goto :goto_0

    :cond_1
    const/16 v0, 0x139

    goto :goto_0
.end method

.method public static setOpenType(I)V
    .locals 0

    invoke-static {p0}, Lcom/alibaba/alibclinkpartner/b;->b(I)V

    return-void
.end method

.method public static setSupportDeepLink(Z)V
    .locals 0

    invoke-static {p0}, Lcom/alibaba/alibclinkpartner/b;->c(Z)V

    return-void
.end method

.method public static unRegisterPlugin(Lcom/alibaba/alibclinkpartner/plugin/ALPBasePlugin;)I
    .locals 1

    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x12c

    :goto_0
    return v0

    :cond_0
    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/plugin/ALPBasePlugin;->pluginKey:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_1
    const/16 v0, 0x139

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/alibaba/alibclinkpartner/b;->f:Lcom/alibaba/alibclinkpartner/plugin/a;

    invoke-virtual {v0, p0}, Lcom/alibaba/alibclinkpartner/plugin/a;->b(Lcom/alibaba/alibclinkpartner/plugin/ALPBasePlugin;)V

    const/16 v0, 0xca

    goto :goto_0
.end method
