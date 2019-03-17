.class final Lcom/nexstreaming/app/common/task/Task$4;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/app/common/task/Task;->waitForAll([Lcom/nexstreaming/app/common/task/Task;)Lcom/nexstreaming/app/common/task/Task$MultiplexTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:[Lcom/nexstreaming/app/common/task/Task;

.field final synthetic b:[Lcom/nexstreaming/app/common/task/Task$Event;

.field final synthetic c:Lcom/nexstreaming/app/common/task/Task$MultiplexTask;


# direct methods
.method constructor <init>([Lcom/nexstreaming/app/common/task/Task;[Lcom/nexstreaming/app/common/task/Task$Event;Lcom/nexstreaming/app/common/task/Task$MultiplexTask;)V
    .locals 0

    .prologue
    .line 1497
    iput-object p1, p0, Lcom/nexstreaming/app/common/task/Task$4;->a:[Lcom/nexstreaming/app/common/task/Task;

    iput-object p2, p0, Lcom/nexstreaming/app/common/task/Task$4;->b:[Lcom/nexstreaming/app/common/task/Task$Event;

    iput-object p3, p0, Lcom/nexstreaming/app/common/task/Task$4;->c:Lcom/nexstreaming/app/common/task/Task$MultiplexTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskEvent(Lcom/nexstreaming/app/common/task/Task;Lcom/nexstreaming/app/common/task/Task$Event;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1500
    sget-object v2, Lcom/nexstreaming/app/common/task/Task$Event;->COMPLETE:Lcom/nexstreaming/app/common/task/Task$Event;

    move v0, v1

    .line 1501
    :goto_0
    iget-object v3, p0, Lcom/nexstreaming/app/common/task/Task$4;->a:[Lcom/nexstreaming/app/common/task/Task;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 1502
    iget-object v3, p0, Lcom/nexstreaming/app/common/task/Task$4;->a:[Lcom/nexstreaming/app/common/task/Task;

    aget-object v3, v3, v0

    if-ne v3, p1, :cond_1

    .line 1503
    iget-object v3, p0, Lcom/nexstreaming/app/common/task/Task$4;->b:[Lcom/nexstreaming/app/common/task/Task$Event;

    aput-object p2, v3, v0

    :cond_0
    move v0, v1

    .line 1507
    :goto_1
    iget-object v3, p0, Lcom/nexstreaming/app/common/task/Task$4;->a:[Lcom/nexstreaming/app/common/task/Task;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    .line 1508
    iget-object v3, p0, Lcom/nexstreaming/app/common/task/Task$4;->b:[Lcom/nexstreaming/app/common/task/Task$Event;

    aget-object v3, v3, v0

    if-nez v3, :cond_2

    .line 1517
    :goto_2
    return-void

    .line 1501
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1510
    :cond_2
    iget-object v3, p0, Lcom/nexstreaming/app/common/task/Task$4;->b:[Lcom/nexstreaming/app/common/task/Task$Event;

    aget-object v3, v3, v0

    sget-object v4, Lcom/nexstreaming/app/common/task/Task$Event;->FAIL:Lcom/nexstreaming/app/common/task/Task$Event;

    if-ne v3, v4, :cond_4

    .line 1511
    sget-object v2, Lcom/nexstreaming/app/common/task/Task$Event;->FAIL:Lcom/nexstreaming/app/common/task/Task$Event;

    .line 1507
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1512
    :cond_4
    iget-object v3, p0, Lcom/nexstreaming/app/common/task/Task$4;->b:[Lcom/nexstreaming/app/common/task/Task$Event;

    aget-object v3, v3, v0

    sget-object v4, Lcom/nexstreaming/app/common/task/Task$Event;->CANCEL:Lcom/nexstreaming/app/common/task/Task$Event;

    if-ne v3, v4, :cond_3

    sget-object v3, Lcom/nexstreaming/app/common/task/Task$Event;->COMPLETE:Lcom/nexstreaming/app/common/task/Task$Event;

    if-ne v2, v3, :cond_3

    .line 1513
    sget-object v2, Lcom/nexstreaming/app/common/task/Task$Event;->CANCEL:Lcom/nexstreaming/app/common/task/Task$Event;

    goto :goto_3

    .line 1516
    :cond_5
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task$4;->c:Lcom/nexstreaming/app/common/task/Task$MultiplexTask;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/nexstreaming/app/common/task/Task$Event;

    aput-object v2, v3, v1

    invoke-virtual {v0, v3}, Lcom/nexstreaming/app/common/task/Task$MultiplexTask;->signalEvent([Lcom/nexstreaming/app/common/task/Task$Event;)V

    goto :goto_2
.end method
