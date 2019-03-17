.class public Lcom/alibaba/imagesearch/utils/PLog;
.super Ljava/lang/Object;


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "PailitaoSDK"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MaLogD(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/alibaba/imagesearch/utils/PLog;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const-string v0, "PailitaoSDK-MA"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static MaLogE(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "PailitaoSDK-MA"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static PerformanceLog(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "PailitaoSDK-Performance"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static SRPLogD(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/alibaba/imagesearch/utils/PLog;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const-string v0, "PailitaoSDK-SRP"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static SRPLogE(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "PailitaoSDK-SRP"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/alibaba/imagesearch/utils/PLog;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const-string v0, "PailitaoSDK"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {}, Lcom/alibaba/imagesearch/utils/PLog;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "PailitaoSDK"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static dnsLogD(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/alibaba/imagesearch/utils/PLog;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const-string v0, "PailitaoSDK-DNS"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static dnsLogE(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "PailitaoSDK-DNS"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "PailitaoSDK"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "PailitaoSDK"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/alibaba/imagesearch/utils/PLog;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const-string v0, "PailitaoSDK"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static imgHandleLogD(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/alibaba/imagesearch/utils/PLog;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const-string v0, "PailitaoSDK-IMGHANDLE"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static imgHandleLogE(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "PailitaoSDK-IMGHANDLE"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static initLogD(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/alibaba/imagesearch/utils/PLog;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const-string v0, "PailitaoSDK-INIT"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static initLogE(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "PailitaoSDK-INIT"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static isDebuggable()Z
    .locals 1

    invoke-static {}, Lcom/alibaba/imagesearch/utils/c;->c()Lcom/alibaba/imagesearch/PailitaoSettings;

    move-result-object v0

    iget-boolean v0, v0, Lcom/alibaba/imagesearch/PailitaoSettings;->logEnabled:Z

    return v0
.end method

.method public static searchLogD(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/alibaba/imagesearch/utils/PLog;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const-string v0, "PailitaoSDK-SearchIMG"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static searchLogE(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "PailitaoSDK-SearchIMG"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static similarLogD(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/alibaba/imagesearch/utils/PLog;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const-string v0, "PailitaoSDK-SIMILAR"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static similarLogE(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "PailitaoSDK-SIMILAR"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static uploadLogD(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/alibaba/imagesearch/utils/PLog;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const-string v0, "PailitaoSDK-UPLOAD"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static uploadLogE(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "PailitaoSDK-UPLOAD"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
