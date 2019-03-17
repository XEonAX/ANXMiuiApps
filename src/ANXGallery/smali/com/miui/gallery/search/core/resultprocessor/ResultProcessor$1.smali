.class Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor$1;
.super Ljava/lang/Object;
.source "ResultProcessor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;->getSortedSourceResults(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/miui/gallery/search/core/result/SourceResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;

    .prologue
    .line 61
    .local p0, "this":Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor$1;, "Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor$1;"
    iput-object p1, p0, Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor$1;->this$0:Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/gallery/search/core/result/SourceResult;Lcom/miui/gallery/search/core/result/SourceResult;)I
    .locals 3
    .param p1, "lhs"    # Lcom/miui/gallery/search/core/result/SourceResult;
    .param p2, "rhs"    # Lcom/miui/gallery/search/core/result/SourceResult;

    .prologue
    .line 64
    .local p0, "this":Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor$1;, "Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor$1;"
    invoke-interface {p1}, Lcom/miui/gallery/search/core/result/SourceResult;->getSource()Lcom/miui/gallery/search/core/source/Source;

    move-result-object v0

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x1

    .line 69
    :goto_0
    return v0

    .line 66
    :cond_0
    invoke-interface {p2}, Lcom/miui/gallery/search/core/result/SourceResult;->getSource()Lcom/miui/gallery/search/core/source/Source;

    move-result-object v0

    if-nez v0, :cond_1

    .line 67
    const/4 v0, -0x1

    goto :goto_0

    .line 68
    :cond_1
    invoke-interface {p1}, Lcom/miui/gallery/search/core/result/SourceResult;->getSource()Lcom/miui/gallery/search/core/source/Source;

    move-result-object v0

    invoke-interface {p1}, Lcom/miui/gallery/search/core/result/SourceResult;->getQueryInfo()Lcom/miui/gallery/search/core/QueryInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/gallery/search/core/source/Source;->getPriority(Lcom/miui/gallery/search/core/QueryInfo;)I

    move-result v0

    .line 69
    invoke-interface {p2}, Lcom/miui/gallery/search/core/result/SourceResult;->getSource()Lcom/miui/gallery/search/core/source/Source;

    move-result-object v1

    invoke-interface {p2}, Lcom/miui/gallery/search/core/result/SourceResult;->getQueryInfo()Lcom/miui/gallery/search/core/QueryInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/miui/gallery/search/core/source/Source;->getPriority(Lcom/miui/gallery/search/core/QueryInfo;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 61
    .local p0, "this":Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor$1;, "Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor$1;"
    check-cast p1, Lcom/miui/gallery/search/core/result/SourceResult;

    check-cast p2, Lcom/miui/gallery/search/core/result/SourceResult;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor$1;->compare(Lcom/miui/gallery/search/core/result/SourceResult;Lcom/miui/gallery/search/core/result/SourceResult;)I

    move-result v0

    return v0
.end method
