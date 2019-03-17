.class final Lcn/kuaipan/android/http/client/KscHttpClient$1;
.super Ljava/lang/Object;
.source "KscHttpClient.java"

# interfaces
.implements Lorg/apache/http/conn/params/ConnPerRoute;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/kuaipan/android/http/client/KscHttpClient;->getHttpParams(Ljava/lang/String;)Lorg/apache/http/params/HttpParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxForRoute(Lorg/apache/http/conn/routing/HttpRoute;)I
    .locals 1
    .param p1, "httproute"    # Lorg/apache/http/conn/routing/HttpRoute;

    .prologue
    .line 150
    const/16 v0, 0x20

    return v0
.end method
