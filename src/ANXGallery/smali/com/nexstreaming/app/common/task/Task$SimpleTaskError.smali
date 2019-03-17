.class public Lcom/nexstreaming/app/common/task/Task$SimpleTaskError;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lcom/nexstreaming/app/common/task/Task$TaskError;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/app/common/task/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleTaskError"
.end annotation


# instance fields
.field private final mException:Ljava/lang/Exception;

.field private final mMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput-object p1, p0, Lcom/nexstreaming/app/common/task/Task$SimpleTaskError;->mException:Ljava/lang/Exception;

    .line 332
    iput-object p2, p0, Lcom/nexstreaming/app/common/task/Task$SimpleTaskError;->mMessage:Ljava/lang/String;

    .line 333
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task$SimpleTaskError;->mException:Ljava/lang/Exception;

    return-object v0
.end method

.method public getLocalizedMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task$SimpleTaskError;->mMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task$SimpleTaskError;->mMessage:Ljava/lang/String;

    .line 360
    :goto_0
    return-object v0

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task$SimpleTaskError;->mException:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task$SimpleTaskError;->mException:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task$SimpleTaskError;->mException:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 358
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task$SimpleTaskError;->mException:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 360
    :cond_2
    const-string v0, "Unknown"

    goto :goto_0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task$SimpleTaskError;->mMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task$SimpleTaskError;->mMessage:Ljava/lang/String;

    .line 347
    :goto_0
    return-object v0

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task$SimpleTaskError;->mException:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task$SimpleTaskError;->mException:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 347
    :cond_1
    const-string v0, "Unknown"

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/nexstreaming/app/common/task/Task$SimpleTaskError;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<SimpleTaskError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nexstreaming/app/common/task/Task$SimpleTaskError;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 370
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<SimpleTaskError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nexstreaming/app/common/task/Task$SimpleTaskError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
