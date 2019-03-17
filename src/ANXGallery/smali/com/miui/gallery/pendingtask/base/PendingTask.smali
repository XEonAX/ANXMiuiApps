.class public abstract Lcom/miui/gallery/pendingtask/base/PendingTask;
.super Ljava/lang/Object;
.source "PendingTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/pendingtask/base/PendingTask$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private isCancelled:Z

.field private mCallback:Lcom/miui/gallery/pendingtask/base/PendingTask$Callback;

.field private mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 9
    .local p0, "this":Lcom/miui/gallery/pendingtask/base/PendingTask;, "Lcom/miui/gallery/pendingtask/base/PendingTask<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/pendingtask/base/PendingTask;->isCancelled:Z

    .line 7
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/pendingtask/base/PendingTask;->mType:I

    .line 10
    iput p1, p0, Lcom/miui/gallery/pendingtask/base/PendingTask;->mType:I

    .line 11
    return-void
.end method


# virtual methods
.method public getMinLatency()J
    .locals 2

    .prologue
    .line 33
    .local p0, "this":Lcom/miui/gallery/pendingtask/base/PendingTask;, "Lcom/miui/gallery/pendingtask/base/PendingTask<TT;>;"
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public abstract getNetworkType()I
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 14
    .local p0, "this":Lcom/miui/gallery/pendingtask/base/PendingTask;, "Lcom/miui/gallery/pendingtask/base/PendingTask<TT;>;"
    iget v0, p0, Lcom/miui/gallery/pendingtask/base/PendingTask;->mType:I

    return v0
.end method

.method protected isCancelled()Z
    .locals 1

    .prologue
    .line 53
    .local p0, "this":Lcom/miui/gallery/pendingtask/base/PendingTask;, "Lcom/miui/gallery/pendingtask/base/PendingTask<TT;>;"
    iget-boolean v0, p0, Lcom/miui/gallery/pendingtask/base/PendingTask;->isCancelled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/pendingtask/base/PendingTask;->mCallback:Lcom/miui/gallery/pendingtask/base/PendingTask$Callback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/pendingtask/base/PendingTask;->mCallback:Lcom/miui/gallery/pendingtask/base/PendingTask$Callback;

    invoke-interface {v0}, Lcom/miui/gallery/pendingtask/base/PendingTask$Callback;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract parseData([B)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract process(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract requireCharging()Z
.end method

.method public abstract requireDeviceIdle()Z
.end method

.method public setCallback(Lcom/miui/gallery/pendingtask/base/PendingTask$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/miui/gallery/pendingtask/base/PendingTask$Callback;

    .prologue
    .line 45
    .local p0, "this":Lcom/miui/gallery/pendingtask/base/PendingTask;, "Lcom/miui/gallery/pendingtask/base/PendingTask<TT;>;"
    iput-object p1, p0, Lcom/miui/gallery/pendingtask/base/PendingTask;->mCallback:Lcom/miui/gallery/pendingtask/base/PendingTask$Callback;

    .line 46
    return-void
.end method

.method public abstract wrapData(Ljava/lang/Object;)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
