.class Lcn/kuaipan/android/http/client/KscHttpRoutePlanner$KscHttpParams;
.super Lorg/apache/http/params/AbstractHttpParams;
.source "KscHttpRoutePlanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/kuaipan/android/http/client/KscHttpRoutePlanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KscHttpParams"
.end annotation


# instance fields
.field private final mExtParams:Lorg/apache/http/params/HttpParams;

.field private final mOrgParams:Lorg/apache/http/params/HttpParams;

.field final synthetic this$0:Lcn/kuaipan/android/http/client/KscHttpRoutePlanner;


# direct methods
.method public constructor <init>(Lcn/kuaipan/android/http/client/KscHttpRoutePlanner;Lorg/apache/http/params/HttpParams;)V
    .locals 1
    .param p2, "orgParams"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 41
    iput-object p1, p0, Lcn/kuaipan/android/http/client/KscHttpRoutePlanner$KscHttpParams;->this$0:Lcn/kuaipan/android/http/client/KscHttpRoutePlanner;

    invoke-direct {p0}, Lorg/apache/http/params/AbstractHttpParams;-><init>()V

    .line 42
    iput-object p2, p0, Lcn/kuaipan/android/http/client/KscHttpRoutePlanner$KscHttpParams;->mOrgParams:Lorg/apache/http/params/HttpParams;

    .line 43
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object v0, p0, Lcn/kuaipan/android/http/client/KscHttpRoutePlanner$KscHttpParams;->mExtParams:Lorg/apache/http/params/HttpParams;

    .line 44
    return-void
.end method

.method private constructor <init>(Lcn/kuaipan/android/http/client/KscHttpRoutePlanner;Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V
    .locals 0
    .param p2, "orgParams"    # Lorg/apache/http/params/HttpParams;
    .param p3, "extParams"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 46
    iput-object p1, p0, Lcn/kuaipan/android/http/client/KscHttpRoutePlanner$KscHttpParams;->this$0:Lcn/kuaipan/android/http/client/KscHttpRoutePlanner;

    invoke-direct {p0}, Lorg/apache/http/params/AbstractHttpParams;-><init>()V

    .line 47
    iput-object p2, p0, Lcn/kuaipan/android/http/client/KscHttpRoutePlanner$KscHttpParams;->mOrgParams:Lorg/apache/http/params/HttpParams;

    .line 48
    iput-object p3, p0, Lcn/kuaipan/android/http/client/KscHttpRoutePlanner$KscHttpParams;->mExtParams:Lorg/apache/http/params/HttpParams;

    .line 49
    return-void
.end method


# virtual methods
.method public copy()Lorg/apache/http/params/HttpParams;
    .locals 4

    .prologue
    .line 69
    new-instance v0, Lcn/kuaipan/android/http/client/KscHttpRoutePlanner$KscHttpParams;

    iget-object v1, p0, Lcn/kuaipan/android/http/client/KscHttpRoutePlanner$KscHttpParams;->this$0:Lcn/kuaipan/android/http/client/KscHttpRoutePlanner;

    iget-object v2, p0, Lcn/kuaipan/android/http/client/KscHttpRoutePlanner$KscHttpParams;->mOrgParams:Lorg/apache/http/params/HttpParams;

    iget-object v3, p0, Lcn/kuaipan/android/http/client/KscHttpRoutePlanner$KscHttpParams;->mExtParams:Lorg/apache/http/params/HttpParams;

    invoke-interface {v3}, Lorg/apache/http/params/HttpParams;->copy()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcn/kuaipan/android/http/client/KscHttpRoutePlanner$KscHttpParams;-><init>(Lcn/kuaipan/android/http/client/KscHttpRoutePlanner;Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    .line 70
    .local v0, "copyed":Lcn/kuaipan/android/http/client/KscHttpRoutePlanner$KscHttpParams;
    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v1, p0, Lcn/kuaipan/android/http/client/KscHttpRoutePlanner$KscHttpParams;->mExtParams:Lorg/apache/http/params/HttpParams;

    invoke-interface {v1, p1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 54
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 55
    iget-object v1, p0, Lcn/kuaipan/android/http/client/KscHttpRoutePlanner$KscHttpParams;->mOrgParams:Lorg/apache/http/params/HttpParams;

    invoke-interface {v1, p1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 58
    :cond_0
    return-object v0
.end method

.method public removeParameter(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v1, p0, Lcn/kuaipan/android/http/client/KscHttpRoutePlanner$KscHttpParams;->mExtParams:Lorg/apache/http/params/HttpParams;

    invoke-interface {v1, p1}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z

    move-result v0

    .line 76
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 78
    :try_start_0
    iget-object v1, p0, Lcn/kuaipan/android/http/client/KscHttpRoutePlanner$KscHttpParams;->mOrgParams:Lorg/apache/http/params/HttpParams;

    invoke-interface {v1, p1}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 83
    :cond_0
    :goto_0
    return v0

    .line 79
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 63
    iget-object v0, p0, Lcn/kuaipan/android/http/client/KscHttpRoutePlanner$KscHttpParams;->mExtParams:Lorg/apache/http/params/HttpParams;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 64
    return-object p0
.end method
