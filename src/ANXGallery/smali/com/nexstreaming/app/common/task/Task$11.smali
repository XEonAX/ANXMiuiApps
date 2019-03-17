.class final Lcom/nexstreaming/app/common/task/Task$11;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lcom/nexstreaming/app/common/task/Task$OnProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/app/common/task/Task;->combinedTask(Ljava/util/Collection;)Lcom/nexstreaming/app/common/task/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/nexstreaming/app/common/task/Task;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/nexstreaming/app/common/task/Task;)V
    .locals 0

    .prologue
    .line 1410
    iput-object p1, p0, Lcom/nexstreaming/app/common/task/Task$11;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/nexstreaming/app/common/task/Task$11;->b:Lcom/nexstreaming/app/common/task/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(Lcom/nexstreaming/app/common/task/Task;Lcom/nexstreaming/app/common/task/Task$Event;II)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1414
    const/4 v4, 0x1

    .line 1417
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task$11;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/task/Task;

    .line 1418
    invoke-virtual {v0}, Lcom/nexstreaming/app/common/task/Task;->isProgressAvailable()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1427
    :goto_1
    if-eqz v2, :cond_0

    .line 1428
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task$11;->b:Lcom/nexstreaming/app/common/task/Task;

    invoke-virtual {v0, v3, v1}, Lcom/nexstreaming/app/common/task/Task;->setProgress(II)V

    .line 1431
    :cond_0
    return-void

    .line 1422
    :cond_1
    invoke-virtual {v0}, Lcom/nexstreaming/app/common/task/Task;->getProgress()I

    move-result v6

    add-int/2addr v3, v6

    .line 1423
    invoke-virtual {v0}, Lcom/nexstreaming/app/common/task/Task;->getMaxProgress()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 1425
    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1
.end method
