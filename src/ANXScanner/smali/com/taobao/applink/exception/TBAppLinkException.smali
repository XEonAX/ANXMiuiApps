.class public Lcom/taobao/applink/exception/TBAppLinkException;
.super Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/taobao/applink/exception/a;)V
    .locals 4

    invoke-static {p1}, Lcom/taobao/applink/exception/TBAppLinkException;->getErrorMsg(Lcom/taobao/applink/exception/a;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/taobao/applink/c/b;->a()Lcom/taobao/applink/c/b;

    move-result-object v0

    invoke-static {}, Lcom/taobao/applink/util/TBAppLinkUtil;->getCrashUrl()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/taobao/applink/exception/a;->f:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/applink/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/taobao/applink/c/b;->a()Lcom/taobao/applink/c/b;

    move-result-object v0

    invoke-static {}, Lcom/taobao/applink/util/TBAppLinkUtil;->getCrashUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/taobao/applink/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static getErrorMsg(Lcom/taobao/applink/exception/a;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string v0, "AppLinkSDK error!"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppLinkSDK error! code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/taobao/applink/exception/a;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
