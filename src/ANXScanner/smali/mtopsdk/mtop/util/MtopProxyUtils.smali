.class public Lmtopsdk/mtop/util/MtopProxyUtils;
.super Ljava/lang/Object;
.source "MtopProxyUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopProxyUtils"

.field private static final apiWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "mtop.common.gettimestamp$*"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lmtopsdk/mtop/util/MtopProxyUtils;->apiWhiteList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertCallbackListener(Lmtopsdk/mtop/MtopProxy;)Lmtopsdk/mtop/common/a;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 26
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lmtopsdk/mtop/MtopProxy;->getCallback()Lmtopsdk/mtop/common/MtopListener;

    move-result-object v2

    if-nez v2, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-object v1

    .line 31
    :cond_1
    :try_start_0
    new-instance v3, Lmtopsdk/mtop/common/a;

    invoke-direct {v3, p0}, Lmtopsdk/mtop/common/a;-><init>(Lmtopsdk/mtop/MtopProxy;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :try_start_1
    invoke-virtual {p0}, Lmtopsdk/mtop/MtopProxy;->getCallback()Lmtopsdk/mtop/common/MtopListener;

    move-result-object v2

    .line 34
    instance-of v1, v2, Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;

    if-eqz v1, :cond_2

    .line 35
    move-object v0, v2

    check-cast v0, Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;

    move-object v1, v0

    iput-object v1, v3, Lmtopsdk/mtop/common/a;->a:Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;

    .line 38
    :cond_2
    instance-of v1, v2, Lmtopsdk/mtop/common/MtopCallback$MtopHeaderListener;

    if-eqz v1, :cond_3

    .line 39
    check-cast v2, Lmtopsdk/mtop/common/MtopCallback$MtopHeaderListener;

    iput-object v2, v3, Lmtopsdk/mtop/common/a;->b:Lmtopsdk/mtop/common/MtopCallback$MtopHeaderListener;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    move-object v1, v3

    .line 43
    goto :goto_0

    .line 41
    :catch_0
    move-exception v2

    .line 42
    :goto_1
    const-string v3, "mtopsdk.MtopProxyUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[convertCallbackListener] convert NetworkListenerAdapter error. apiKey="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmtopsdk/mtop/MtopProxy;->getMtopRequest()Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v5

    invoke-virtual {v5}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 41
    :catch_1
    move-exception v1

    move-object v2, v1

    move-object v1, v3

    goto :goto_1
.end method

.method public static getApiWhiteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    sget-object v0, Lmtopsdk/mtop/util/MtopProxyUtils;->apiWhiteList:Ljava/util/List;

    return-object v0
.end method
