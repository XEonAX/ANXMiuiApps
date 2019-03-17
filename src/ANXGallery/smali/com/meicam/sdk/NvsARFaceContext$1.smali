.class Lcom/meicam/sdk/NvsARFaceContext$1;
.super Ljava/lang/Object;
.source "NvsARFaceContext.java"

# interfaces
.implements Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meicam/sdk/NvsARFaceContext;->setContextCallback(Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meicam/sdk/NvsARFaceContext;


# direct methods
.method constructor <init>(Lcom/meicam/sdk/NvsARFaceContext;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/meicam/sdk/NvsARFaceContext$1;->this$0:Lcom/meicam/sdk/NvsARFaceContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyFaceItemLoadingBegin(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 64
    iget-object v0, p0, Lcom/meicam/sdk/NvsARFaceContext$1;->this$0:Lcom/meicam/sdk/NvsARFaceContext;

    iget-object v0, v0, Lcom/meicam/sdk/NvsARFaceContext;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/meicam/sdk/NvsARFaceContext$RunnableExt;

    iget-object v2, p0, Lcom/meicam/sdk/NvsARFaceContext$1;->this$0:Lcom/meicam/sdk/NvsARFaceContext;

    iget-object v3, p0, Lcom/meicam/sdk/NvsARFaceContext$1;->this$0:Lcom/meicam/sdk/NvsARFaceContext;

    iget-object v3, v3, Lcom/meicam/sdk/NvsARFaceContext;->m_callback:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextCallback;

    invoke-direct {v1, v2, p1, v3}, Lcom/meicam/sdk/NvsARFaceContext$RunnableExt;-><init>(Lcom/meicam/sdk/NvsARFaceContext;Ljava/lang/String;Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    return-void
.end method

.method public notifyFaceItemLoadingFinish()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/meicam/sdk/NvsARFaceContext$1;->this$0:Lcom/meicam/sdk/NvsARFaceContext;

    iget-object v0, v0, Lcom/meicam/sdk/NvsARFaceContext;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/meicam/sdk/NvsARFaceContext$1$1;

    invoke-direct {v1, p0}, Lcom/meicam/sdk/NvsARFaceContext$1$1;-><init>(Lcom/meicam/sdk/NvsARFaceContext$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    return-void
.end method
