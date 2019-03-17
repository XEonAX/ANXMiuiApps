.class Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$3;
.super Ljava/lang/Object;
.source "QueryPackageHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Ljava/util/List;Lcom/miui/gallery/search/core/context/TaskExecutor;Z)V
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
        "Lcom/miui/gallery/search/core/source/Source;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;

.field final synthetic val$queryInfo:Lcom/miui/gallery/search/core/QueryInfo;


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;Lcom/miui/gallery/search/core/QueryInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$3;->this$0:Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;

    iput-object p2, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$3;->val$queryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/gallery/search/core/source/Source;Lcom/miui/gallery/search/core/source/Source;)I
    .locals 2
    .param p1, "o1"    # Lcom/miui/gallery/search/core/source/Source;
    .param p2, "o2"    # Lcom/miui/gallery/search/core/source/Source;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$3;->val$queryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    invoke-interface {p1, v0}, Lcom/miui/gallery/search/core/source/Source;->getPriority(Lcom/miui/gallery/search/core/QueryInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$3;->val$queryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    invoke-interface {p2, v1}, Lcom/miui/gallery/search/core/source/Source;->getPriority(Lcom/miui/gallery/search/core/QueryInfo;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gallery/search/SearchConstants;->comparePriority(II)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 219
    check-cast p1, Lcom/miui/gallery/search/core/source/Source;

    check-cast p2, Lcom/miui/gallery/search/core/source/Source;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$3;->compare(Lcom/miui/gallery/search/core/source/Source;Lcom/miui/gallery/search/core/source/Source;)I

    move-result v0

    return v0
.end method
