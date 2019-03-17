.class Lcom/miui/gallery/assistant/manager/ImageFeatureManger$7;
.super Ljava/lang/Object;
.source "ImageFeatureManger.java"

# interfaces
.implements Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->calculateImageGroupWithAlgorithmAsync(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;Ljava/util/List;Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;)V
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
        "Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

.field final synthetic val$imageCount:[I

.field final synthetic val$images:Ljava/util/List;

.field final synthetic val$listener:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;


# direct methods
.method constructor <init>(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;[ILjava/util/List;Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    .prologue
    .line 483
    iput-object p1, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$7;->this$0:Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    iput-object p2, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$7;->val$imageCount:[I

    iput-object p3, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$7;->val$images:Ljava/util/List;

    iput-object p4, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$7;->val$listener:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 490
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$7;->val$imageCount:[I

    aget v1, v0, v2

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, v2

    .line 491
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$7;->val$imageCount:[I

    aget v0, v0, v2

    if-gtz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$7;->this$0:Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    iget-object v1, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$7;->val$images:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$7;->val$listener:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->access$700(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;Ljava/util/List;Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;)V

    .line 494
    :cond_0
    return-void
.end method

.method public bridge synthetic onComputeComplete(Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;)V
    .locals 0

    .prologue
    .line 483
    check-cast p1, Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$7;->onComputeComplete(Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;)V

    return-void
.end method

.method public onComputeComplete(Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;)V
    .locals 0
    .param p1, "result"    # Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;

    .prologue
    .line 498
    return-void
.end method

.method public bridge synthetic onSaveComplete(Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;)V
    .locals 0

    .prologue
    .line 483
    check-cast p1, Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$7;->onSaveComplete(Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;)V

    return-void
.end method

.method public onSaveComplete(Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;)V
    .locals 3
    .param p1, "result"    # Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;

    .prologue
    const/4 v2, 0x0

    .line 502
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$7;->val$imageCount:[I

    aget v1, v0, v2

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, v2

    .line 503
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$7;->val$imageCount:[I

    aget v0, v0, v2

    if-gtz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$7;->this$0:Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    iget-object v1, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$7;->val$images:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$7;->val$listener:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->access$700(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;Ljava/util/List;Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;)V

    .line 506
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 486
    return-void
.end method
