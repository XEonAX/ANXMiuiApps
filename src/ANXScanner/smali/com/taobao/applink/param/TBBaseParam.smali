.class public abstract Lcom/taobao/applink/param/TBBaseParam;
.super Ljava/lang/Object;


# static fields
.field protected static final ACTION:Ljava/lang/String; = "action"

.field protected static final APPKEY:Ljava/lang/String; = "appkey"

.field protected static final APPNAME:Ljava/lang/String; = "appName"

.field protected static final APPSERCET:Ljava/lang/String; = "AppSecret"

.field protected static final BACKURL:Ljava/lang/String; = "backURL"

.field protected static final E:Ljava/lang/String; = "e"

.field protected static final EXTRAPARAMS:Ljava/lang/String; = "params"

.field protected static final H5URL:Ljava/lang/String; = "h5Url"

.field protected static final ITMEID:Ljava/lang/String; = "itemId"

.field protected static final MODULE:Ljava/lang/String; = "module"

.field protected static final PACKAGENAME:Ljava/lang/String; = "packageName"

.field protected static final PID:Ljava/lang/String; = "pid"

.field protected static final SDKVERSION:Ljava/lang/String; = "v"

.field protected static final SHOPID:Ljava/lang/String; = "shopId"

.field protected static final SIGN:Ljava/lang/String; = "sign"

.field protected static final SOURCE:Ljava/lang/String; = "source"

.field protected static final TAG:Ljava/lang/String; = "tag"

.field protected static final TIME:Ljava/lang/String; = "time"

.field protected static final TTID:Ljava/lang/String; = "TTID"

.field protected static final TYPE:Ljava/lang/String; = "type"

.field protected static final UTDID:Ljava/lang/String; = "utdid"

.field protected static final YBHPSS:Ljava/lang/String; = "ybhpss"


# instance fields
.field public linkKey:Ljava/lang/String;

.field protected mExtraParams:Ljava/util/HashMap;

.field public mListener:Lcom/taobao/applink/auth/TBAppLinkAuthListener;

.field protected mParams:Ljava/util/HashMap;

.field public mTBAPIType:Lcom/taobao/applink/a/a;


# direct methods
.method protected constructor <init>(Lcom/taobao/applink/a/a;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/applink/param/TBBaseParam;->mParams:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/applink/param/TBBaseParam;->mExtraParams:Ljava/util/HashMap;

    const-string v0, "taobao_scheme"

    iput-object v0, p0, Lcom/taobao/applink/param/TBBaseParam;->linkKey:Ljava/lang/String;

    iput-object p1, p0, Lcom/taobao/applink/param/TBBaseParam;->mTBAPIType:Lcom/taobao/applink/a/a;

    invoke-static {}, Lcom/taobao/applink/TBAppLinkSDK;->getInstance()Lcom/taobao/applink/TBAppLinkSDK;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/applink/TBAppLinkSDK;->sOpenParam:Lcom/taobao/applink/TBAppLinkParam;

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/taobao/applink/TBAppLinkSDK;->getInstance()Lcom/taobao/applink/TBAppLinkSDK;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/applink/TBAppLinkSDK;->sOpenParam:Lcom/taobao/applink/TBAppLinkParam;

    iget-object v0, v0, Lcom/taobao/applink/TBAppLinkParam;->mBackUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/applink/util/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/applink/param/TBBaseParam;->mParams:Ljava/util/HashMap;

    const-string v1, "backURL"

    invoke-static {}, Lcom/taobao/applink/TBAppLinkSDK;->getInstance()Lcom/taobao/applink/TBAppLinkSDK;

    move-result-object v2

    iget-object v2, v2, Lcom/taobao/applink/TBAppLinkSDK;->sOpenParam:Lcom/taobao/applink/TBAppLinkParam;

    iget-object v2, v2, Lcom/taobao/applink/TBAppLinkParam;->mBackUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lcom/taobao/applink/TBAppLinkSDK;->getInstance()Lcom/taobao/applink/TBAppLinkSDK;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/applink/TBAppLinkSDK;->sOpenParam:Lcom/taobao/applink/TBAppLinkParam;

    iget-object v0, v0, Lcom/taobao/applink/TBAppLinkParam;->mAppkey:Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/applink/util/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/taobao/applink/param/TBBaseParam;->mParams:Ljava/util/HashMap;

    const-string v1, "appkey"

    invoke-static {}, Lcom/taobao/applink/TBAppLinkSDK;->getInstance()Lcom/taobao/applink/TBAppLinkSDK;

    move-result-object v2

    iget-object v2, v2, Lcom/taobao/applink/TBAppLinkSDK;->sOpenParam:Lcom/taobao/applink/TBAppLinkParam;

    iget-object v2, v2, Lcom/taobao/applink/TBAppLinkParam;->mAppkey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {}, Lcom/taobao/applink/TBAppLinkSDK;->getInstance()Lcom/taobao/applink/TBAppLinkSDK;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/applink/TBAppLinkSDK;->sOpenParam:Lcom/taobao/applink/TBAppLinkParam;

    iget-object v0, v0, Lcom/taobao/applink/TBAppLinkParam;->mPid:Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/applink/util/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/taobao/applink/param/TBBaseParam;->mExtraParams:Ljava/util/HashMap;

    const-string v1, "pid"

    invoke-static {}, Lcom/taobao/applink/TBAppLinkSDK;->getInstance()Lcom/taobao/applink/TBAppLinkSDK;

    move-result-object v2

    iget-object v2, v2, Lcom/taobao/applink/TBAppLinkSDK;->sOpenParam:Lcom/taobao/applink/TBAppLinkParam;

    iget-object v2, v2, Lcom/taobao/applink/TBAppLinkParam;->mPid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {}, Lcom/taobao/applink/TBAppLinkSDK;->getInstance()Lcom/taobao/applink/TBAppLinkSDK;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/applink/TBAppLinkSDK;->sOpenParam:Lcom/taobao/applink/TBAppLinkParam;

    iget-object v0, v0, Lcom/taobao/applink/TBAppLinkParam;->mTtid:Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/applink/util/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/taobao/applink/param/TBBaseParam;->mParams:Ljava/util/HashMap;

    const-string v1, "TTID"

    invoke-static {}, Lcom/taobao/applink/TBAppLinkSDK;->getInstance()Lcom/taobao/applink/TBAppLinkSDK;

    move-result-object v2

    iget-object v2, v2, Lcom/taobao/applink/TBAppLinkSDK;->sOpenParam:Lcom/taobao/applink/TBAppLinkParam;

    iget-object v2, v2, Lcom/taobao/applink/TBAppLinkParam;->mTtid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-static {}, Lcom/taobao/applink/TBAppLinkSDK;->getInstance()Lcom/taobao/applink/TBAppLinkSDK;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/applink/TBAppLinkSDK;->sOpenParam:Lcom/taobao/applink/TBAppLinkParam;

    iget-object v0, v0, Lcom/taobao/applink/TBAppLinkParam;->mTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/applink/util/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/taobao/applink/param/TBBaseParam;->mParams:Ljava/util/HashMap;

    const-string v1, "tag"

    invoke-static {}, Lcom/taobao/applink/TBAppLinkSDK;->getInstance()Lcom/taobao/applink/TBAppLinkSDK;

    move-result-object v2

    iget-object v2, v2, Lcom/taobao/applink/TBAppLinkSDK;->sOpenParam:Lcom/taobao/applink/TBAppLinkParam;

    iget-object v2, v2, Lcom/taobao/applink/TBAppLinkParam;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-static {}, Lcom/taobao/applink/TBAppLinkSDK;->getInstance()Lcom/taobao/applink/TBAppLinkSDK;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/applink/TBAppLinkSDK;->sOpenParam:Lcom/taobao/applink/TBAppLinkParam;

    iget-object v0, v0, Lcom/taobao/applink/TBAppLinkParam;->mUtdid:Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/applink/util/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/taobao/applink/param/TBBaseParam;->mParams:Ljava/util/HashMap;

    const-string v1, "utdid"

    invoke-static {}, Lcom/taobao/applink/TBAppLinkSDK;->getInstance()Lcom/taobao/applink/TBAppLinkSDK;

    move-result-object v2

    iget-object v2, v2, Lcom/taobao/applink/TBAppLinkSDK;->sOpenParam:Lcom/taobao/applink/TBAppLinkParam;

    iget-object v2, v2, Lcom/taobao/applink/TBAppLinkParam;->mUtdid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-static {}, Lcom/taobao/applink/TBAppLinkSDK;->getInstance()Lcom/taobao/applink/TBAppLinkSDK;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/applink/TBAppLinkSDK;->sOpenParam:Lcom/taobao/applink/TBAppLinkParam;

    iget-object v0, v0, Lcom/taobao/applink/TBAppLinkParam;->mSource:Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/applink/util/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/taobao/applink/param/TBBaseParam;->mParams:Ljava/util/HashMap;

    const-string v1, "source"

    invoke-static {}, Lcom/taobao/applink/TBAppLinkSDK;->getInstance()Lcom/taobao/applink/TBAppLinkSDK;

    move-result-object v2

    iget-object v2, v2, Lcom/taobao/applink/TBAppLinkSDK;->sOpenParam:Lcom/taobao/applink/TBAppLinkParam;

    iget-object v2, v2, Lcom/taobao/applink/TBAppLinkParam;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void
.end method


# virtual methods
.method public addExtraParams(Ljava/util/HashMap;)Lcom/taobao/applink/param/TBBaseParam;
    .locals 4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/taobao/applink/util/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/taobao/applink/util/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/taobao/applink/param/TBBaseParam;->mExtraParams:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public abstract checkParams(Lorg/json/JSONObject;)Z
.end method

.method public getExtraAplus()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "module"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v0, p0, Lcom/taobao/applink/param/TBBaseParam;->mParams:Ljava/util/HashMap;

    const-string v3, "module"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&clientType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v0, p0, Lcom/taobao/applink/param/TBBaseParam;->linkKey:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "taobao_scheme"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/applink/param/TBBaseParam;->linkKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public abstract getH5URL()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/applink/exception/TBAppLinkException;
        }
    .end annotation
.end method

.method protected getH5URL(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/applink/exception/TBAppLinkException;
        }
    .end annotation

    invoke-static {p1}, Lcom/taobao/applink/util/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lcom/taobao/applink/param/TBBaseParam;->mExtraParams:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/taobao/applink/param/TBBaseParam;->mExtraParams:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/taobao/applink/util/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/taobao/applink/util/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "AppLink"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/taobao/applink/param/TBBaseParam;->mParams:Ljava/util/HashMap;

    const-string v1, "TTID"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/applink/util/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :try_start_1
    const-string v0, "TTID"

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/taobao/applink/param/TBBaseParam;->mParams:Ljava/util/HashMap;

    const-string v3, "TTID"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/taobao/applink/param/TBBaseParam;->mParams:Ljava/util/HashMap;

    const-string v1, "tag"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/applink/util/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :try_start_2
    const-string v0, "tag"

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/taobao/applink/param/TBBaseParam;->mParams:Ljava/util/HashMap;

    const-string v3, "tag"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/taobao/applink/param/TBBaseParam;->mParams:Ljava/util/HashMap;

    const-string v1, "utdid"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/applink/util/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :try_start_3
    const-string v0, "utdid"

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/taobao/applink/param/TBBaseParam;->mParams:Ljava/util/HashMap;

    const-string v3, "utdid"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/taobao/applink/param/TBBaseParam;->mParams:Ljava/util/HashMap;

    const-string v1, "source"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/applink/util/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    :try_start_4
    const-string v0, "source"

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/taobao/applink/param/TBBaseParam;->mParams:Ljava/util/HashMap;

    const-string v3, "source"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    :cond_6
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AppLink"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_2
    move-exception v0

    const-string v1, "AppLink"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catch_3
    move-exception v0

    const-string v1, "AppLink"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_4
    move-exception v0

    const-string v1, "AppLink"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getJumpUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/applink/exception/TBAppLinkException;
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "tbopen://m.taobao.com/tbopen/index.html?"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/taobao/applink/param/TBBaseParam;->mParams:Ljava/util/HashMap;

    const-string v1, "appName"

    invoke-static {p1}, Lcom/taobao/applink/b/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/taobao/applink/param/TBBaseParam;->mParams:Ljava/util/HashMap;

    const-string v1, "packageName"

    invoke-static {p1}, Lcom/taobao/applink/b/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/taobao/applink/param/TBBaseParam;->mParams:Ljava/util/HashMap;

    const-string v1, "v"

    const-string v3, "2.0.0"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/taobao/applink/param/TBBaseParam;->mParams:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/taobao/applink/util/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/taobao/applink/util/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AppLink"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/taobao/applink/TBAppLinkSDK;->getInstance()Lcom/taobao/applink/TBAppLinkSDK;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/applink/TBAppLinkSDK;->mTBAppLinkSecret:Lcom/taobao/applink/secret/TBAppLinkSecret;

    if-eqz v0, :cond_4

    :try_start_1
    invoke-static {}, Lcom/taobao/applink/TBAppLinkSDK;->getInstance()Lcom/taobao/applink/TBAppLinkSDK;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/applink/TBAppLinkSDK;->mTBAppLinkSecret:Lcom/taobao/applink/secret/TBAppLinkSecret;

    invoke-virtual {p0, p1}, Lcom/taobao/applink/param/TBBaseParam;->getSignContent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/taobao/applink/secret/TBAppLinkSecret;->sign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/applink/util/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/taobao/applink/param/TBBaseParam;->mExtraParams:Ljava/util/HashMap;

    const-string v3, "sign"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :cond_2
    :goto_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/taobao/applink/param/TBBaseParam;->mExtraParams:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/taobao/applink/param/TBBaseParam;->mExtraParams:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/taobao/applink/util/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/taobao/applink/util/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :try_start_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "AppLink"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v1, "AppLink"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Lcom/taobao/applink/param/TBBaseParam;->getSignContent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/applink/util/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/applink/util/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/taobao/applink/param/TBBaseParam;->mExtraParams:Ljava/util/HashMap;

    const-string v3, "sign"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "params"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/taobao/applink/param/TBBaseParam;->mParams:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSignContent(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/taobao/applink/TBAppLinkSDK;->getInstance()Lcom/taobao/applink/TBAppLinkSDK;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/applink/TBAppLinkSDK;->sOpenParam:Lcom/taobao/applink/TBAppLinkParam;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/applink/param/TBBaseParam;->mExtraParams:Ljava/util/HashMap;

    const-string v3, "time"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "appkey"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {}, Lcom/taobao/applink/TBAppLinkSDK;->getInstance()Lcom/taobao/applink/TBAppLinkSDK;

    move-result-object v4

    iget-object v4, v4, Lcom/taobao/applink/TBAppLinkSDK;->sOpenParam:Lcom/taobao/applink/TBAppLinkParam;

    iget-object v4, v4, Lcom/taobao/applink/TBAppLinkParam;->mAppkey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "packagename"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {p1}, Lcom/taobao/applink/b/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "time"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/taobao/applink/TBAppLinkSDK;->getInstance()Lcom/taobao/applink/TBAppLinkSDK;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/applink/TBAppLinkSDK;->mTBAppLinkSecret:Lcom/taobao/applink/secret/TBAppLinkSecret;

    if-nez v1, :cond_2

    invoke-static {}, Lcom/taobao/applink/TBAppLinkSDK;->getInstance()Lcom/taobao/applink/TBAppLinkSDK;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/applink/TBAppLinkSDK;->sOpenParam:Lcom/taobao/applink/TBAppLinkParam;

    iget-object v1, v1, Lcom/taobao/applink/TBAppLinkParam;->mAppSecret:Ljava/lang/String;

    invoke-static {v1}, Lcom/taobao/applink/util/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    invoke-static {}, Lcom/taobao/applink/TBAppLinkSDK;->getInstance()Lcom/taobao/applink/TBAppLinkSDK;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/applink/TBAppLinkSDK;->sOpenParam:Lcom/taobao/applink/TBAppLinkParam;

    iget-object v1, v1, Lcom/taobao/applink/TBAppLinkParam;->mAppSecret:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Lcom/taobao/applink/TBAppLinkSDK;->getInstance()Lcom/taobao/applink/TBAppLinkSDK;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/applink/TBAppLinkSDK;->sOpenParam:Lcom/taobao/applink/TBAppLinkParam;

    iget-object v1, v1, Lcom/taobao/applink/TBAppLinkParam;->mAppSecret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setAppType(Ljava/lang/String;)Lcom/taobao/applink/param/TBBaseParam;
    .locals 1

    invoke-static {p1}, Lcom/taobao/applink/util/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/taobao/applink/param/TBBaseParam;->linkKey:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public setBackUrl(Ljava/lang/String;)Lcom/taobao/applink/param/TBBaseParam;
    .locals 2

    invoke-static {p1}, Lcom/taobao/applink/util/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/applink/param/TBBaseParam;->mParams:Ljava/util/HashMap;

    const-string v1, "backURL"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public setE(Ljava/lang/String;)Lcom/taobao/applink/param/TBBaseParam;
    .locals 2

    invoke-static {p1}, Lcom/taobao/applink/util/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/applink/param/TBBaseParam;->mExtraParams:Ljava/util/HashMap;

    const-string v1, "e"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public abstract setParams(Lorg/json/JSONObject;)V
.end method

.method public setSign(Ljava/lang/String;)Lcom/taobao/applink/param/TBBaseParam;
    .locals 2

    invoke-static {p1}, Lcom/taobao/applink/util/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/applink/param/TBBaseParam;->mExtraParams:Ljava/util/HashMap;

    const-string v1, "sign"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/taobao/applink/param/TBBaseParam;
    .locals 2

    invoke-static {p1}, Lcom/taobao/applink/util/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/applink/param/TBBaseParam;->mExtraParams:Ljava/util/HashMap;

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public setYbhpss(Ljava/lang/String;)Lcom/taobao/applink/param/TBBaseParam;
    .locals 2

    invoke-static {p1}, Lcom/taobao/applink/util/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/applink/param/TBBaseParam;->mParams:Ljava/util/HashMap;

    const-string v1, "ybhpss"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method
