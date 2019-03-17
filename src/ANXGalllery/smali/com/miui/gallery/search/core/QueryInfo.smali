.class public Lcom/miui/gallery/search/core/QueryInfo;
.super Ljava/lang/Object;
.source "QueryInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/search/core/QueryInfo$Builder;
    }
.end annotation


# instance fields
.field private mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchType:Lcom/miui/gallery/search/SearchConstants$SearchType;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/search/core/QueryInfo$Builder;)V
    .locals 3
    .param p1, "builder"    # Lcom/miui/gallery/search/core/QueryInfo$Builder;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-static {p1}, Lcom/miui/gallery/search/core/QueryInfo$Builder;->access$200(Lcom/miui/gallery/search/core/QueryInfo$Builder;)Lcom/miui/gallery/search/SearchConstants$SearchType;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/search/core/QueryInfo;->mSearchType:Lcom/miui/gallery/search/SearchConstants$SearchType;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/search/core/QueryInfo;->mParams:Ljava/util/Map;

    .line 116
    invoke-static {p1}, Lcom/miui/gallery/search/core/QueryInfo$Builder;->access$300(Lcom/miui/gallery/search/core/QueryInfo$Builder;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/miui/gallery/search/core/QueryInfo;->mParams:Ljava/util/Map;

    invoke-static {p1}, Lcom/miui/gallery/search/core/QueryInfo$Builder;->access$300(Lcom/miui/gallery/search/core/QueryInfo$Builder;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 119
    :cond_0
    invoke-static {p1}, Lcom/miui/gallery/search/core/QueryInfo$Builder;->access$400(Lcom/miui/gallery/search/core/QueryInfo$Builder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/miui/gallery/search/core/QueryInfo;->mParams:Ljava/util/Map;

    const-string v1, "serialId"

    invoke-static {}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->getCurrentSerial()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/search/core/QueryInfo;)Lcom/miui/gallery/search/SearchConstants$SearchType;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/core/QueryInfo;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/miui/gallery/search/core/QueryInfo;->mSearchType:Lcom/miui/gallery/search/SearchConstants$SearchType;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/search/core/QueryInfo;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/core/QueryInfo;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/miui/gallery/search/core/QueryInfo;->mParams:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public getParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/gallery/search/core/QueryInfo;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/gallery/search/core/QueryInfo;->mParams:Ljava/util/Map;

    return-object v0
.end method

.method public getSearchType()Lcom/miui/gallery/search/SearchConstants$SearchType;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/search/core/QueryInfo;->mSearchType:Lcom/miui/gallery/search/SearchConstants$SearchType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "search type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/search/core/QueryInfo;->mSearchType:Lcom/miui/gallery/search/SearchConstants$SearchType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", params = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/search/core/QueryInfo;->mParams:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
