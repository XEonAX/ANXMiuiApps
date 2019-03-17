.class Lcom/miui/gallery/assistant/manager/ImageFeatureManger$8;
.super Ljava/lang/Object;
.source "ImageFeatureManger.java"

# interfaces
.implements Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->calculateImageGroupAndSaveAsyncInternal(Ljava/util/List;Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener",
        "<",
        "Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

.field final synthetic val$listener:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;


# direct methods
.method constructor <init>(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    .prologue
    .line 551
    iput-object p1, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$8;->this$0:Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    iput-object p2, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$8;->val$listener:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$8;->val$listener:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$8;->val$listener:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;

    invoke-interface {v0}, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;->onCancel()V

    .line 562
    :cond_0
    return-void
.end method

.method public bridge synthetic onComputeComplete(Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;)V
    .locals 0

    .prologue
    .line 551
    check-cast p1, Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$8;->onComputeComplete(Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;)V

    return-void
.end method

.method public onComputeComplete(Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;)V
    .locals 1
    .param p1, "result"    # Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;

    .prologue
    .line 566
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$8;->val$listener:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$8;->val$listener:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;

    invoke-interface {v0, p1}, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;->onComputeComplete(Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;)V

    .line 569
    :cond_0
    return-void
.end method

.method public bridge synthetic onSaveComplete(Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;)V
    .locals 0

    .prologue
    .line 551
    check-cast p1, Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$8;->onSaveComplete(Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;)V

    return-void
.end method

.method public onSaveComplete(Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;)V
    .locals 1
    .param p1, "result"    # Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;

    .prologue
    .line 573
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$8;->val$listener:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$8;->val$listener:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;

    invoke-interface {v0, p1}, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;->onSaveComplete(Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;)V

    .line 576
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 555
    return-void
.end method
