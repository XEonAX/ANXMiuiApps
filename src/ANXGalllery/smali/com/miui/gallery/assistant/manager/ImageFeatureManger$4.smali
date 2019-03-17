.class Lcom/miui/gallery/assistant/manager/ImageFeatureManger$4;
.super Ljava/lang/Object;
.source "ImageFeatureManger.java"

# interfaces
.implements Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->scheduleNewImages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/assistant/manager/ImageFeatureManger;


# direct methods
.method constructor <init>(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$4;->this$0:Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$4;->this$0:Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->access$500(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;Z)Z

    .line 278
    return-void
.end method

.method public onComputeComplete(Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;)V
    .locals 0
    .param p1, "result"    # Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;

    .prologue
    .line 282
    return-void
.end method

.method public onSaveComplete(Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;)V
    .locals 2
    .param p1, "result"    # Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;

    .prologue
    const/4 v1, 0x0

    .line 286
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$4;->this$0:Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    invoke-static {v0, v1}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->access$500(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;Z)Z

    .line 287
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$4;->this$0:Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    invoke-static {v0}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->access$600(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$4;->this$0:Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    invoke-static {v0, v1}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->access$602(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;Z)Z

    .line 289
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$4;->this$0:Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    invoke-virtual {v0}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->triggerNewImageCalculation()V

    .line 291
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 273
    return-void
.end method
