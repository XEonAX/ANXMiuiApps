.class public Lcom/miui/gallery/search/resultpage/DataListResultProcessor;
.super Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;
.source "DataListResultProcessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor",
        "<",
        "Lcom/miui/gallery/search/resultpage/DataListSourceResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic getMergedResult(Ljava/util/List;)Lcom/miui/gallery/search/core/result/SuggestionResult;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/resultpage/DataListResultProcessor;->getMergedResult(Ljava/util/List;)Lcom/miui/gallery/search/resultpage/DataListSourceResult;

    move-result-object v0

    return-object v0
.end method

.method protected getMergedResult(Ljava/util/List;)Lcom/miui/gallery/search/resultpage/DataListSourceResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/core/result/SourceResult;",
            ">;)",
            "Lcom/miui/gallery/search/resultpage/DataListSourceResult;"
        }
    .end annotation

    .prologue
    .line 14
    .local p1, "sourceResults":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/result/SourceResult;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/search/core/result/SourceResult;

    .line 15
    .local v0, "sourceResult":Lcom/miui/gallery/search/core/result/SourceResult;
    instance-of v2, v0, Lcom/miui/gallery/search/resultpage/DataListSourceResult;

    if-eqz v2, :cond_0

    .line 16
    check-cast v0, Lcom/miui/gallery/search/resultpage/DataListSourceResult;

    .line 19
    .end local v0    # "sourceResult":Lcom/miui/gallery/search/core/result/SourceResult;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
