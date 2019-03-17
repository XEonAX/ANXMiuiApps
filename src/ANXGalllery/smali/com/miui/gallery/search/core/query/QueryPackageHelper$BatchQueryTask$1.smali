.class Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$1;
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
    .line 126
    iput-object p1, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$1;->this$0:Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lcom/miui/gallery/search/core/result/SourceResult;)Z
    .locals 11
    .param p1, "value"    # Lcom/miui/gallery/search/core/result/SourceResult;

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 129
    iget-object v3, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$1;->this$0:Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;

    invoke-static {v3}, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->access$000(Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v6, v1

    .line 170
    :cond_0
    :goto_0
    return v6

    .line 132
    :cond_1
    if-nez p1, :cond_2

    .line 133
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Receive a null source result!"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v9, "results":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/result/SourceResult;>;"
    invoke-interface {v9, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v3, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$1;->this$0:Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;

    invoke-static {v3}, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->access$100(Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;)Lcom/miui/gallery/search/core/query/QueryResult;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/miui/gallery/search/core/query/QueryResult;->addSourceResults(Ljava/util/List;)Z

    move-result v6

    .line 140
    .local v6, "accepted":Z
    if-eqz v6, :cond_3

    iget-object v3, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$1;->this$0:Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;

    invoke-static {v3}, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->access$200(Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 142
    new-instance v3, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$SourceResultDataSetObserver;

    iget-object v4, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$1;->this$0:Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;

    invoke-direct {v3, v4, p1}, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$SourceResultDataSetObserver;-><init>(Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;Lcom/miui/gallery/search/core/result/SourceResult;)V

    invoke-interface {p1, v3}, Lcom/miui/gallery/search/core/result/SourceResult;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 143
    new-instance v3, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$SourceResultContentObserver;

    iget-object v4, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$1;->this$0:Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;

    invoke-direct {v3, v4, p1}, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$SourceResultContentObserver;-><init>(Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;Lcom/miui/gallery/search/core/result/SourceResult;)V

    invoke-interface {p1, v3}, Lcom/miui/gallery/search/core/result/SourceResult;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 146
    :cond_3
    invoke-interface {p1}, Lcom/miui/gallery/search/core/result/SourceResult;->getSource()Lcom/miui/gallery/search/core/source/Source;

    move-result-object v2

    .line 147
    .local v2, "source":Lcom/miui/gallery/search/core/source/Source;
    if-eqz v2, :cond_0

    .line 149
    iget-object v3, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$1;->this$0:Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;

    invoke-static {v3}, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->access$300(Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    .line 150
    .local v10, "sourceIndex":I
    if-ltz v10, :cond_4

    .line 151
    iget-object v3, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$1;->this$0:Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;

    invoke-static {v3}, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->access$400(Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;)[Lcom/miui/gallery/search/core/query/QueryTask;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v4, v3, v10

    .line 154
    :cond_4
    invoke-interface {p1}, Lcom/miui/gallery/search/core/result/SourceResult;->getResultExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 155
    invoke-interface {p1}, Lcom/miui/gallery/search/core/result/SourceResult;->getResultExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "need_requery"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    move v8, v5

    .line 156
    .local v8, "needReQuery":Z
    :goto_1
    if-eqz v8, :cond_0

    .line 157
    iget-object v3, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$1;->this$0:Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;

    invoke-static {v3}, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->access$000(Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v6, v1

    goto :goto_0

    .end local v8    # "needReQuery":Z
    :cond_5
    move v8, v1

    .line 155
    goto :goto_1

    .line 158
    .restart local v8    # "needReQuery":Z
    :cond_6
    new-instance v1, Lcom/miui/gallery/search/core/QueryInfo$Builder;

    invoke-direct {v1}, Lcom/miui/gallery/search/core/QueryInfo$Builder;-><init>()V

    iget-object v3, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$1;->this$0:Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;

    invoke-static {v3}, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->access$500(Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;)Lcom/miui/gallery/search/core/QueryInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/gallery/search/core/QueryInfo$Builder;->cloneFrom(Lcom/miui/gallery/search/core/QueryInfo;)Lcom/miui/gallery/search/core/QueryInfo$Builder;

    move-result-object v7

    .line 159
    .local v7, "builder":Lcom/miui/gallery/search/core/QueryInfo$Builder;
    const-string/jumbo v1, "use_persistent_response"

    invoke-virtual {v7, v1}, Lcom/miui/gallery/search/core/QueryInfo$Builder;->removeParam(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    new-instance v0, Lcom/miui/gallery/search/core/query/QueryTask;

    .line 161
    invoke-virtual {v7}, Lcom/miui/gallery/search/core/QueryInfo$Builder;->build()Lcom/miui/gallery/search/core/QueryInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$1;->this$0:Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;

    invoke-static {v3}, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->access$600(Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;)Lcom/miui/gallery/search/core/Consumer;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$1;->this$0:Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;

    invoke-static {v4}, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->access$700(Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;)Landroid/os/Handler;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/search/core/query/QueryTask;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/source/SuggestionResultProvider;Lcom/miui/gallery/search/core/Consumer;Landroid/os/Handler;I)V

    .line 164
    .local v0, "requeryTask":Lcom/miui/gallery/search/core/query/QueryTask;, "Lcom/miui/gallery/search/core/query/QueryTask<Lcom/miui/gallery/search/core/result/SourceResult;>;"
    iget-object v1, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$1;->this$0:Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;

    invoke-static {v1}, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->access$400(Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;)[Lcom/miui/gallery/search/core/query/QueryTask;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$1;->this$0:Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;

    invoke-static {v3}, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->access$300(Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v10

    aput-object v0, v1, v3

    .line 165
    iget-object v1, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$1;->this$0:Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;

    invoke-static {v1}, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->access$800(Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;)Lcom/miui/gallery/search/core/context/TaskExecutor;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/miui/gallery/search/core/context/TaskExecutor;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)V

    .line 166
    const-string v1, "QueryPackageHelper"

    const-string v3, "Submit requery task, source: [%s]"

    invoke-interface {v2}, Lcom/miui/gallery/search/core/source/Source;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic consume(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 126
    check-cast p1, Lcom/miui/gallery/search/core/result/SourceResult;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$1;->consume(Lcom/miui/gallery/search/core/result/SourceResult;)Z

    move-result v0

    return v0
.end method
