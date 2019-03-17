.class public Lcom/alibaba/mtl/appmonitor/d/c;
.super Lcom/alibaba/mtl/appmonitor/d/a;
.source "AccurateSampling.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/mtl/appmonitor/d/a",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/mtl/appmonitor/d/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/alibaba/mtl/appmonitor/d/a;-><init>(I)V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/c;->q:Ljava/util/Map;

    .line 19
    return-void
.end method


# virtual methods
.method public a(ILjava/util/Map;)Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 49
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/c;->q:Ljava/util/Map;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 60
    :goto_0
    return-object v0

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/c;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 53
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 55
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/d/c;->q:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/mtl/appmonitor/d/b;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/d/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v2

    .line 56
    goto :goto_0

    .line 60
    :cond_3
    invoke-virtual {p0, p1}, Lcom/alibaba/mtl/appmonitor/d/c;->a(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/alibaba/mtl/appmonitor/d/c;->a(Lorg/json/JSONObject;)V

    .line 46
    return-void
.end method
