.class public Lcom/miui/gallery/search/core/QueryInfo$Builder;
.super Ljava/lang/Object;
.source "QueryInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/core/QueryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAppendSerialInfo:Z

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
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/search/core/QueryInfo$Builder;->mAppendSerialInfo:Z

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/search/SearchConstants$SearchType;)V
    .locals 2
    .param p1, "searchType"    # Lcom/miui/gallery/search/SearchConstants$SearchType;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/search/core/QueryInfo$Builder;->mAppendSerialInfo:Z

    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty search type!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    iput-object p1, p0, Lcom/miui/gallery/search/core/QueryInfo$Builder;->mSearchType:Lcom/miui/gallery/search/SearchConstants$SearchType;

    .line 49
    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/search/core/QueryInfo$Builder;)Lcom/miui/gallery/search/SearchConstants$SearchType;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/core/QueryInfo$Builder;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/search/core/QueryInfo$Builder;->mSearchType:Lcom/miui/gallery/search/SearchConstants$SearchType;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/search/core/QueryInfo$Builder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/core/QueryInfo$Builder;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/search/core/QueryInfo$Builder;->mParams:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/search/core/QueryInfo$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/core/QueryInfo$Builder;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/miui/gallery/search/core/QueryInfo$Builder;->mAppendSerialInfo:Z

    return v0
.end method


# virtual methods
.method public addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/search/core/QueryInfo$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/miui/gallery/search/core/QueryInfo$Builder;->mParams:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/search/core/QueryInfo$Builder;->mParams:Ljava/util/Map;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/search/core/QueryInfo$Builder;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-object p0
.end method

.method public addParams(Ljava/util/Map;)Lcom/miui/gallery/search/core/QueryInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/gallery/search/core/QueryInfo$Builder;"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/QueryInfo$Builder;->mParams:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/search/core/QueryInfo$Builder;->mParams:Ljava/util/Map;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/search/core/QueryInfo$Builder;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 61
    return-object p0
.end method

.method public build()Lcom/miui/gallery/search/core/QueryInfo;
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/miui/gallery/search/core/QueryInfo$Builder;->mSearchType:Lcom/miui/gallery/search/SearchConstants$SearchType;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty search type!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    new-instance v0, Lcom/miui/gallery/search/core/QueryInfo;

    invoke-direct {v0, p0}, Lcom/miui/gallery/search/core/QueryInfo;-><init>(Lcom/miui/gallery/search/core/QueryInfo$Builder;)V

    return-object v0
.end method

.method public cloneFrom(Lcom/miui/gallery/search/core/QueryInfo;)Lcom/miui/gallery/search/core/QueryInfo$Builder;
    .locals 2
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;

    .prologue
    .line 107
    invoke-static {p1}, Lcom/miui/gallery/search/core/QueryInfo;->access$000(Lcom/miui/gallery/search/core/QueryInfo;)Lcom/miui/gallery/search/SearchConstants$SearchType;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/search/core/QueryInfo$Builder;->mSearchType:Lcom/miui/gallery/search/SearchConstants$SearchType;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lcom/miui/gallery/search/core/QueryInfo;->access$100(Lcom/miui/gallery/search/core/QueryInfo;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/miui/gallery/search/core/QueryInfo$Builder;->mParams:Ljava/util/Map;

    .line 109
    return-object p0
.end method

.method public removeParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/miui/gallery/search/core/QueryInfo$Builder;->mParams:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 87
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/search/core/QueryInfo$Builder;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public setAppendSerialInfo(Z)Lcom/miui/gallery/search/core/QueryInfo$Builder;
    .locals 0
    .param p1, "appendSerialInfo"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/miui/gallery/search/core/QueryInfo$Builder;->mAppendSerialInfo:Z

    .line 92
    return-object p0
.end method

.method public setSearchType(Lcom/miui/gallery/search/SearchConstants$SearchType;)Lcom/miui/gallery/search/core/QueryInfo$Builder;
    .locals 0
    .param p1, "searchType"    # Lcom/miui/gallery/search/SearchConstants$SearchType;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/miui/gallery/search/core/QueryInfo$Builder;->mSearchType:Lcom/miui/gallery/search/SearchConstants$SearchType;

    .line 53
    return-object p0
.end method
