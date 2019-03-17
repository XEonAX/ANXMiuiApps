.class Lcom/miui/gallery/assistant/manager/AlgorithmRequest$3;
.super Ljava/lang/Object;
.source "AlgorithmRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/assistant/manager/AlgorithmRequest;


# direct methods
.method constructor <init>(Lcom/miui/gallery/assistant/manager/AlgorithmRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/assistant/manager/AlgorithmRequest;

    .prologue
    .line 164
    .local p0, "this":Lcom/miui/gallery/assistant/manager/AlgorithmRequest$3;, "Lcom/miui/gallery/assistant/manager/AlgorithmRequest$3;"
    iput-object p1, p0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$3;->this$0:Lcom/miui/gallery/assistant/manager/AlgorithmRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 167
    .local p0, "this":Lcom/miui/gallery/assistant/manager/AlgorithmRequest$3;, "Lcom/miui/gallery/assistant/manager/AlgorithmRequest$3;"
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$3;->this$0:Lcom/miui/gallery/assistant/manager/AlgorithmRequest;

    invoke-static {v0}, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->access$000(Lcom/miui/gallery/assistant/manager/AlgorithmRequest;)Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$3;->this$0:Lcom/miui/gallery/assistant/manager/AlgorithmRequest;

    invoke-static {v0}, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->access$000(Lcom/miui/gallery/assistant/manager/AlgorithmRequest;)Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;->onCancel()V

    .line 170
    :cond_0
    return-void
.end method
