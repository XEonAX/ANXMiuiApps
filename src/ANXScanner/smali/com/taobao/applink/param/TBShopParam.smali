.class public Lcom/taobao/applink/param/TBShopParam;
.super Lcom/taobao/applink/param/TBNavParam;


# static fields
.field private static final MODEL_NAME:Ljava/lang/String; = "shop"


# instance fields
.field private mShopID:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/taobao/applink/param/TBNavParam;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/taobao/applink/param/TBNavParam;-><init>()V

    iget-object v0, p0, Lcom/taobao/applink/param/TBShopParam;->mParams:Ljava/util/HashMap;

    const-string v1, "module"

    const-string v2, "shop"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/taobao/applink/param/TBShopParam;->mShopID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkParams(Lorg/json/JSONObject;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "shopId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/applink/util/e;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "AppLink"

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/taobao/applink/param/TBShopParam;->mParams:Ljava/util/HashMap;

    const-string v2, "module"

    const-string v3, "shop"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, p0, Lcom/taobao/applink/param/TBShopParam;->mShopID:Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getH5URL()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/applink/exception/TBAppLinkException;
        }
    .end annotation

    iget-object v0, p0, Lcom/taobao/applink/param/TBShopParam;->mShopID:Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/applink/util/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/taobao/applink/exception/TBAppLinkException;

    sget-object v1, Lcom/taobao/applink/exception/a;->c:Lcom/taobao/applink/exception/a;

    invoke-direct {v0, v1}, Lcom/taobao/applink/exception/TBAppLinkException;-><init>(Lcom/taobao/applink/exception/a;)V

    throw v0

    :cond_0
    const-string v0, "http://shop.m.taobao.com/shop/shopIndex.htm?shop_id=%s&"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/taobao/applink/param/TBShopParam;->mShopID:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/taobao/applink/param/TBNavParam;->getH5URL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJumpUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/applink/exception/TBAppLinkException;
        }
    .end annotation

    iget-object v0, p0, Lcom/taobao/applink/param/TBShopParam;->mShopID:Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/applink/util/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/taobao/applink/exception/TBAppLinkException;

    sget-object v1, Lcom/taobao/applink/exception/a;->c:Lcom/taobao/applink/exception/a;

    invoke-direct {v0, v1}, Lcom/taobao/applink/exception/TBAppLinkException;-><init>(Lcom/taobao/applink/exception/a;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/applink/param/TBShopParam;->mExtraParams:Ljava/util/HashMap;

    const-string v1, "shopId"

    iget-object v2, p0, Lcom/taobao/applink/param/TBShopParam;->mShopID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1}, Lcom/taobao/applink/param/TBNavParam;->getJumpUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
