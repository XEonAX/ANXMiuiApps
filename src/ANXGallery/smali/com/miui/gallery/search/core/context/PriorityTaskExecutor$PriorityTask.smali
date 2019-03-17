.class public abstract Lcom/miui/gallery/search/core/context/PriorityTaskExecutor$PriorityTask;
.super Ljava/lang/Object;
.source "PriorityTaskExecutor.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PriorityTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/miui/gallery/search/core/context/PriorityTaskExecutor$PriorityTask;",
        ">;"
    }
.end annotation


# instance fields
.field private final mNewTime:J

.field protected mPriority:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor$PriorityTask;->mNewTime:J

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/miui/gallery/search/core/context/PriorityTaskExecutor$PriorityTask;)I
    .locals 4
    .param p1, "another"    # Lcom/miui/gallery/search/core/context/PriorityTaskExecutor$PriorityTask;

    .prologue
    .line 153
    if-nez p1, :cond_1

    .line 154
    const/4 v0, -0x1

    .line 161
    :cond_0
    :goto_0
    return v0

    .line 156
    :cond_1
    if-ne p0, p1, :cond_2

    .line 157
    const/4 v0, 0x0

    goto :goto_0

    .line 160
    :cond_2
    iget v1, p0, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor$PriorityTask;->mPriority:I

    invoke-virtual {p1}, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor$PriorityTask;->getPriority()I

    move-result v2

    sub-int v0, v1, v2

    .line 161
    .local v0, "priority":I
    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor$PriorityTask;->getNewTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor$PriorityTask;->mNewTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 135
    check-cast p1, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor$PriorityTask;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor$PriorityTask;->compareTo(Lcom/miui/gallery/search/core/context/PriorityTaskExecutor$PriorityTask;)I

    move-result v0

    return v0
.end method

.method public getNewTime()J
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor$PriorityTask;->mNewTime:J

    return-wide v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor$PriorityTask;->mPriority:I

    return v0
.end method
