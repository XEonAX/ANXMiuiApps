.class public final Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;
.super Ljava/lang/Object;
.source "YellowPageContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/yellowpage/YellowPageContract$HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Helper"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMethod:Ljava/lang/String;

.field private mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestCache:Z

.field private mRequestServer:Z

.field private mRequestYellowPage:Z

.field private mRequireLocId:Z

.field private mRequireLogin:Z

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    iput-object p1, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mContext:Landroid/content/Context;

    .line 637
    const-string v0, "GET"

    iput-object v0, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mMethod:Ljava/lang/String;

    .line 638
    iput-object p2, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mUrl:Ljava/lang/String;

    .line 639
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mRequestCache:Z

    .line 640
    iput-boolean v0, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mRequestServer:Z

    .line 641
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mRequireLogin:Z

    .line 642
    iput-boolean v0, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mRequireLocId:Z

    .line 643
    iput-boolean v0, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mRequestYellowPage:Z

    .line 645
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mParams:Ljava/util/Map;

    .line 646
    return-void
.end method

.method private constructParams()Landroid/os/Bundle;
    .locals 5

    .line 680
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 681
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "method"

    iget-object v2, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mMethod:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const-string v1, "url"

    iget-object v2, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const-string v1, "set_attach_location"

    iget-boolean v2, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mRequireLocId:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 684
    const-string v1, "set_attach_user_info"

    iget-boolean v2, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mRequireLogin:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 685
    const-string v1, "set_request_cache"

    iget-boolean v2, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mRequestCache:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 686
    const-string v1, "set_request_server"

    iget-boolean v2, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mRequestServer:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 687
    const-string v1, "set_request_yellowpage"

    iget-boolean v2, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mRequestYellowPage:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 689
    iget-object v1, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mParams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 690
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 691
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mParams:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_0

    .line 694
    :cond_0
    return-object v0
.end method

.method private getResult(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 3
    .param p1, "params"    # Landroid/os/Bundle;

    .line 698
    iget-object v0, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mContext:Landroid/content/Context;

    const-string v1, "request.http"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lmiui/yellowpage/InvocationHandler;->invoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 699
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addParam(Ljava/lang/String;Ljava/lang/String;)Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 660
    iget-object v0, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    return-object p0
.end method

.method public requestLocal()Ljava/lang/String;
    .locals 3

    .line 709
    invoke-direct {p0}, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->constructParams()Landroid/os/Bundle;

    move-result-object v0

    .line 710
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "invoke_request_local"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 711
    invoke-direct {p0, v0}, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->getResult(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public requestServer()Ljava/lang/String;
    .locals 3

    .line 703
    invoke-direct {p0}, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->constructParams()Landroid/os/Bundle;

    move-result-object v0

    .line 704
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "invoke_request_server"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 705
    invoke-direct {p0, v0}, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->getResult(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setRequestCache(Z)Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;
    .locals 0
    .param p1, "request"    # Z

    .line 665
    iput-boolean p1, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mRequestCache:Z

    .line 666
    return-object p0
.end method

.method public setRequestServer(Z)Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;
    .locals 0
    .param p1, "request"    # Z

    .line 670
    iput-boolean p1, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mRequestServer:Z

    .line 671
    return-object p0
.end method

.method public setRequestYellowPage(Z)Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;
    .locals 0
    .param p1, "request"    # Z

    .line 675
    iput-boolean p1, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mRequestYellowPage:Z

    .line 676
    return-object p0
.end method

.method public setRequireLocId(Z)Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;
    .locals 0
    .param p1, "requireLocId"    # Z

    .line 654
    iput-boolean p1, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mRequireLocId:Z

    .line 655
    return-object p0
.end method

.method public setRequireLogin(Z)Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;
    .locals 0
    .param p1, "requireLogin"    # Z

    .line 649
    iput-boolean p1, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mRequireLogin:Z

    .line 650
    return-object p0
.end method
