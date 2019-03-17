.class Lcom/miui/gallery/search/core/query/QueryLoader$1;
.super Landroid/database/DataSetObserver;
.source "QueryLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/search/core/query/QueryLoader;->getSourceDataSetObserver()Landroid/database/DataSetObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/core/query/QueryLoader;


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/core/query/QueryLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/search/core/query/QueryLoader;

    .prologue
    .line 122
    .local p0, "this":Lcom/miui/gallery/search/core/query/QueryLoader$1;, "Lcom/miui/gallery/search/core/query/QueryLoader$1;"
    iput-object p1, p0, Lcom/miui/gallery/search/core/query/QueryLoader$1;->this$0:Lcom/miui/gallery/search/core/query/QueryLoader;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 126
    .local p0, "this":Lcom/miui/gallery/search/core/query/QueryLoader$1;, "Lcom/miui/gallery/search/core/query/QueryLoader$1;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryLoader$1;->this$0:Lcom/miui/gallery/search/core/query/QueryLoader;

    invoke-static {v0}, Lcom/miui/gallery/search/core/query/QueryLoader;->access$000(Lcom/miui/gallery/search/core/query/QueryLoader;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryLoader$1;->this$0:Lcom/miui/gallery/search/core/query/QueryLoader;

    invoke-static {v0}, Lcom/miui/gallery/search/core/query/QueryLoader;->access$100(Lcom/miui/gallery/search/core/query/QueryLoader;)Lcom/miui/gallery/search/core/query/ControllableTask;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryLoader$1;->this$0:Lcom/miui/gallery/search/core/query/QueryLoader;

    invoke-static {v0}, Lcom/miui/gallery/search/core/query/QueryLoader;->access$100(Lcom/miui/gallery/search/core/query/QueryLoader;)Lcom/miui/gallery/search/core/query/ControllableTask;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/search/core/query/ControllableTask;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryLoader$1;->this$0:Lcom/miui/gallery/search/core/query/QueryLoader;

    invoke-static {v0}, Lcom/miui/gallery/search/core/query/QueryLoader;->access$100(Lcom/miui/gallery/search/core/query/QueryLoader;)Lcom/miui/gallery/search/core/query/ControllableTask;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/search/core/query/ControllableTask;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/search/core/query/QueryResult;

    invoke-virtual {v0}, Lcom/miui/gallery/search/core/query/QueryResult;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryLoader$1;->this$0:Lcom/miui/gallery/search/core/query/QueryLoader;

    invoke-virtual {v0}, Lcom/miui/gallery/search/core/query/QueryLoader;->onContentChanged()V

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_1
    const-string v0, "QueryLoader"

    const-string v1, "On block query loader update"

    invoke-static {v0, v1}, Lcom/miui/gallery/search/utils/SearchLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
