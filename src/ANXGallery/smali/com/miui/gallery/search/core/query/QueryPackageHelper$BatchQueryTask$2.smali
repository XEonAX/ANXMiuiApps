.class Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$2;
.super Ljava/lang/Object;
.source "QueryPackageHelper.java"

# interfaces
.implements Lcom/miui/gallery/search/core/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/search/core/Consumer",
        "<",
        "Lcom/miui/gallery/search/core/result/SourceResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$2;->this$0:Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lcom/miui/gallery/search/core/result/SourceResult;)Z
    .locals 7
    .param p1, "value"    # Lcom/miui/gallery/search/core/result/SourceResult;

    .prologue
    const/4 v0, 0x0

    .line 178
    iget-object v4, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$2;->this$0:Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;

    invoke-static {v4}, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->access$000(Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 209
    :cond_0
    :goto_0
    return v0

    .line 180
    :cond_1
    if-nez p1, :cond_2

    .line 181
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Receive a null source result!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 184
    :cond_2
    invoke-interface {p1}, Lcom/miui/gallery/search/core/result/SourceResult;->getSource()Lcom/miui/gallery/search/core/source/Source;

    move-result-object v2

    .line 185
    .local v2, "source":Lcom/miui/gallery/search/core/source/Source;
    if-eqz v2, :cond_3

    .line 187
    iget-object v4, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$2;->this$0:Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;

    invoke-static {v4}, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->access$300(Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 188
    .local v3, "sourceIndex":I
    if-ltz v3, :cond_3

    .line 189
    iget-object v4, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$2;->this$0:Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;

    invoke-static {v4}, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->access$400(Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;)[Lcom/miui/gallery/search/core/query/QueryTask;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$2;->this$0:Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;

    invoke-static {v5}, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->access$300(Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v3

    const/4 v6, 0x0

    aput-object v6, v4, v5

    .line 194
    .end local v3    # "sourceIndex":I
    :cond_3
    invoke-interface {p1}, Lcom/miui/gallery/search/core/result/SourceResult;->getErrorInfo()Lcom/miui/gallery/search/core/result/ErrorInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 195
    invoke-interface {p1}, Lcom/miui/gallery/search/core/result/SourceResult;->getErrorInfo()Lcom/miui/gallery/search/core/result/ErrorInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/search/core/result/ErrorInfo;->getErrorStatus()I

    move-result v4

    invoke-static {v4}, Lcom/miui/gallery/search/SearchConstants;->isErrorStatus(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 199
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/result/SourceResult;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v4, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$2;->this$0:Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;

    invoke-static {v4}, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->access$100(Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;)Lcom/miui/gallery/search/core/query/QueryResult;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/miui/gallery/search/core/query/QueryResult;->addSourceResults(Ljava/util/List;)Z

    move-result v0

    .line 203
    .local v0, "accepted":Z
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$2;->this$0:Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;

    invoke-static {v4}, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->access$200(Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 205
    new-instance v4, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$SourceResultDataSetObserver;

    iget-object v5, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$2;->this$0:Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;

    invoke-direct {v4, v5, p1}, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$SourceResultDataSetObserver;-><init>(Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;Lcom/miui/gallery/search/core/result/SourceResult;)V

    invoke-interface {p1, v4}, Lcom/miui/gallery/search/core/result/SourceResult;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 206
    new-instance v4, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$SourceResultContentObserver;

    iget-object v5, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$2;->this$0:Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;

    invoke-direct {v4, v5, p1}, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$SourceResultContentObserver;-><init>(Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;Lcom/miui/gallery/search/core/result/SourceResult;)V

    invoke-interface {p1, v4}, Lcom/miui/gallery/search/core/result/SourceResult;->registerContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public bridge synthetic consume(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 175
    check-cast p1, Lcom/miui/gallery/search/core/result/SourceResult;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$2;->consume(Lcom/miui/gallery/search/core/result/SourceResult;)Z

    move-result v0

    return v0
.end method
