.class Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$3;
.super Ljava/lang/Object;
.source "WaterMarkFragment.java"

# interfaces
.implements Lcom/miui/gallery/net/base/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->loadResourceData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$3;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onResponse([Ljava/lang/Object;)V
    .locals 2
    .param p1, "response"    # [Ljava/lang/Object;

    .prologue
    .line 185
    const/4 v1, 0x0

    aget-object v0, p1, v1

    check-cast v0, Ljava/util/List;

    .line 186
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/video/editor/model/VideoEditorBaseLocalResource;>;"
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$3;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v1, v0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$100(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;Ljava/util/List;)V

    .line 187
    return-void
.end method

.method public onResponseError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "errorCode"    # Lcom/miui/gallery/net/base/ErrorCode;
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "responseData"    # Ljava/lang/Object;

    .prologue
    .line 191
    const-string v0, "WaterMarkFragment"

    const-string v1, "errorCode: %s"

    invoke-static {v0, v1, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 192
    new-instance v0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$3$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$3$1;-><init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$3;Lcom/miui/gallery/net/base/ErrorCode;)V

    invoke-static {v0}, Lcom/miui/gallery/threadpool/ThreadManager;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 214
    return-void
.end method
