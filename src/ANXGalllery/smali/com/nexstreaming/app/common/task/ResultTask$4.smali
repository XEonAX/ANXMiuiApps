.class final Lcom/nexstreaming/app/common/task/ResultTask$4;
.super Ljava/lang/Object;
.source "ResultTask.java"

# interfaces
.implements Lcom/nexstreaming/app/common/task/ResultTask$OnResultAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/app/common/task/ResultTask;->combineResults(Ljava/util/Collection;)Lcom/nexstreaming/app/common/task/ResultTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nexstreaming/app/common/task/ResultTask$OnResultAvailableListener",
        "<TRESU",
        "LT_COLLECTION;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/app/common/task/ResultTask;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/nexstreaming/app/common/task/ResultTask;Ljava/util/Map;Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/nexstreaming/app/common/task/ResultTask$4;->a:Lcom/nexstreaming/app/common/task/ResultTask;

    iput-object p2, p0, Lcom/nexstreaming/app/common/task/ResultTask$4;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/nexstreaming/app/common/task/ResultTask$4;->c:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/nexstreaming/app/common/task/ResultTask;Lcom/nexstreaming/app/common/task/Task$Event;Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nexstreaming/app/common/task/ResultTask",
            "<TRESU",
            "LT_COLLECTION;",
            ">;",
            "Lcom/nexstreaming/app/common/task/Task$Event;",
            "TRESU",
            "LT_COLLECTION;",
            ")V"
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/ResultTask$4;->a:Lcom/nexstreaming/app/common/task/ResultTask;

    invoke-virtual {v0}, Lcom/nexstreaming/app/common/task/ResultTask;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/ResultTask$4;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/ResultTask$4;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/nexstreaming/app/common/task/ResultTask$4;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 242
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 243
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/ResultTask$4;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/task/ResultTask;

    .line 244
    iget-object v3, p0, Lcom/nexstreaming/app/common/task/ResultTask$4;->b:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/ResultTask$4;->a:Lcom/nexstreaming/app/common/task/ResultTask;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/task/ResultTask;->sendResult(Ljava/lang/Object;)V

    .line 249
    :cond_1
    return-void
.end method

.method public synthetic onResultAvailable(Lcom/nexstreaming/app/common/task/ResultTask;Lcom/nexstreaming/app/common/task/Task$Event;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 236
    check-cast p3, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2, p3}, Lcom/nexstreaming/app/common/task/ResultTask$4;->a(Lcom/nexstreaming/app/common/task/ResultTask;Lcom/nexstreaming/app/common/task/Task$Event;Ljava/util/Collection;)V

    return-void
.end method
