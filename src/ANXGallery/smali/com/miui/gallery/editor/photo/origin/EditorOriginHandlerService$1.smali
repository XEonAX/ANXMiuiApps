.class Lcom/miui/gallery/editor/photo/origin/EditorOriginHandlerService$1;
.super Lcom/miui/gallery/editor/photo/origin/EditorOriginFunc$Stub;
.source "EditorOriginHandlerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/origin/EditorOriginHandlerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/origin/EditorOriginHandlerService;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/origin/EditorOriginHandlerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/origin/EditorOriginHandlerService;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandlerService$1;->this$0:Lcom/miui/gallery/editor/photo/origin/EditorOriginHandlerService;

    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/origin/EditorOriginFunc$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public handlerOrigin(Lcom/miui/gallery/editor/photo/origin/OriginRenderData;)Z
    .locals 5
    .param p1, "originRenderData"    # Lcom/miui/gallery/editor/photo/origin/OriginRenderData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 27
    const-string v2, "EditorOriginHandlerService"

    const-string v3, "handlerOrigin start"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcom/miui/gallery/editor/photo/app/DraftManager;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandlerService$1;->this$0:Lcom/miui/gallery/editor/photo/origin/EditorOriginHandlerService;

    iget-object v3, p1, Lcom/miui/gallery/editor/photo/origin/OriginRenderData;->mSource:Landroid/net/Uri;

    iget-object v4, p1, Lcom/miui/gallery/editor/photo/origin/OriginRenderData;->mBundle:Landroid/os/Bundle;

    invoke-direct {v0, v2, v3, v4}, Lcom/miui/gallery/editor/photo/app/DraftManager;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 29
    .local v0, "draftManager":Lcom/miui/gallery/editor/photo/app/DraftManager;
    iget-object v2, p1, Lcom/miui/gallery/editor/photo/origin/OriginRenderData;->mRenderDataList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/editor/photo/app/DraftManager;->setRenderDataList(Ljava/util/List;)V

    .line 30
    iget-object v2, p1, Lcom/miui/gallery/editor/photo/origin/OriginRenderData;->mOut:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/editor/photo/app/DraftManager;->export(Landroid/net/Uri;)Z

    move-result v1

    .line 31
    .local v1, "success":Z
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/DraftManager;->release()V

    .line 32
    const-string v2, "EditorOriginHandlerService"

    const-string v3, "handlerOrigin end"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return v1
.end method
