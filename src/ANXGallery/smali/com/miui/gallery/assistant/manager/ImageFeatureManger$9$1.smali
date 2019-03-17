.class Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9$1;
.super Ljava/lang/Object;
.source "ImageFeatureManger.java"

# interfaces
.implements Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;->run()V
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
.field final synthetic this$1:Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;

    .prologue
    .line 641
    iput-object p1, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9$1;->this$1:Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;

    iput-object p2, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 651
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9$1;->this$1:Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;

    iget-object v0, v0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;->val$imageFileInfo:Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;

    iget-object v0, v0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;->listener:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9$1;->this$1:Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;

    iget-object v0, v0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;->val$imageFileInfo:Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;

    iget-object v0, v0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;->listener:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;

    invoke-interface {v0}, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;->onCancel()V

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9$1;->this$1:Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;

    iget-object v0, v0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;->this$0:Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    invoke-static {v0}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->access$910(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;)I

    .line 655
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9$1;->this$1:Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;

    iget-object v0, v0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;->this$0:Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    invoke-static {v0}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->access$1000(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;)V

    .line 656
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9$1;->this$1:Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;

    iget-object v0, v0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;->this$0:Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    iget-object v1, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->access$1100(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;Landroid/graphics/Bitmap;)V

    .line 657
    return-void
.end method

.method public bridge synthetic onComputeComplete(Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;)V
    .locals 0

    .prologue
    .line 641
    check-cast p1, Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9$1;->onComputeComplete(Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;)V

    return-void
.end method

.method public onComputeComplete(Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;)V
    .locals 2
    .param p1, "result"    # Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;

    .prologue
    .line 661
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9$1;->this$1:Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;

    iget-object v0, v0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;->val$imageFileInfo:Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;

    iget-object v0, v0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;->listener:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9$1;->this$1:Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;

    iget-object v0, v0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;->val$imageFileInfo:Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;

    iget-object v0, v0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;->listener:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;

    invoke-interface {v0, p1}, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;->onComputeComplete(Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;)V

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9$1;->this$1:Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;

    iget-object v0, v0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;->this$0:Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    invoke-static {v0}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->access$910(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;)I

    .line 665
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9$1;->this$1:Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;

    iget-object v0, v0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;->this$0:Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    invoke-static {v0}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->access$1000(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;)V

    .line 666
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9$1;->this$1:Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;

    iget-object v0, v0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;->this$0:Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    iget-object v1, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->access$1100(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;Landroid/graphics/Bitmap;)V

    .line 667
    return-void
.end method

.method public bridge synthetic onSaveComplete(Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;)V
    .locals 0

    .prologue
    .line 641
    check-cast p1, Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9$1;->onSaveComplete(Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;)V

    return-void
.end method

.method public onSaveComplete(Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;)V
    .locals 1
    .param p1, "result"    # Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;

    .prologue
    .line 671
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9$1;->this$1:Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;

    iget-object v0, v0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;->val$imageFileInfo:Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;

    iget-object v0, v0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;->listener:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9$1;->this$1:Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;

    iget-object v0, v0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;->val$imageFileInfo:Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;

    iget-object v0, v0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;->listener:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;

    invoke-interface {v0, p1}, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;->onSaveComplete(Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;)V

    .line 674
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9$1;->this$1:Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;

    iget-object v0, v0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;->val$imageFileInfo:Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;

    iget-object v0, v0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;->listener:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9$1;->this$1:Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;

    iget-object v0, v0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;->val$imageFileInfo:Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;

    iget-object v0, v0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;->listener:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;

    invoke-interface {v0}, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;->onStart()V

    .line 647
    :cond_0
    return-void
.end method
