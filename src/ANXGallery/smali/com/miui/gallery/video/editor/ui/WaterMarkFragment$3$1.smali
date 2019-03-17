.class Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$3$1;
.super Ljava/lang/Object;
.source "WaterMarkFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$3;->onResponseError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$3;

.field final synthetic val$errorCode:Lcom/miui/gallery/net/base/ErrorCode;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$3;Lcom/miui/gallery/net/base/ErrorCode;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$3;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$3$1;->this$1:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$3;

    iput-object p2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$3$1;->val$errorCode:Lcom/miui/gallery/net/base/ErrorCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 195
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$3$1;->this$1:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$3;

    iget-object v2, v2, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$3;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v2}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$200(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$3$1;->this$1:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$3;

    iget-object v2, v2, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$3;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v2}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$200(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 196
    new-instance v0, Lcom/miui/gallery/video/editor/TextStyle;

    const v2, 0x7f02033f

    const-string/jumbo v3, "ve_type_none"

    invoke-direct {v0, v2, v3}, Lcom/miui/gallery/video/editor/TextStyle;-><init>(ILjava/lang/String;)V

    .line 197
    .local v0, "textStyleNone":Lcom/miui/gallery/video/editor/TextStyle;
    new-instance v1, Lcom/miui/gallery/video/editor/TextStyle;

    const v2, 0x7f020355

    const-string/jumbo v3, "ve_type_local"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/video/editor/TextStyle;-><init>(ILjava/lang/String;)V

    .line 198
    .local v1, "textStyleText":Lcom/miui/gallery/video/editor/TextStyle;
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$3$1;->this$1:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$3;

    iget-object v2, v2, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$3;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v2}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$200(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$3$1;->this$1:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$3;

    iget-object v2, v2, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$3;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v2}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$200(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$3$1;->this$1:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$3;

    iget-object v2, v2, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$3;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v2}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$300(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$3$1;->this$1:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$3;

    iget-object v2, v2, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$3;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v2}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$300(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->notifyDataSetChanged()V

    .line 204
    .end local v0    # "textStyleNone":Lcom/miui/gallery/video/editor/TextStyle;
    .end local v1    # "textStyleText":Lcom/miui/gallery/video/editor/TextStyle;
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$3$1;->val$errorCode:Lcom/miui/gallery/net/base/ErrorCode;

    sget-object v3, Lcom/miui/gallery/net/base/ErrorCode;->NETWORK_NOT_CONNECTED:Lcom/miui/gallery/net/base/ErrorCode;

    if-ne v2, v3, :cond_1

    .line 205
    new-instance v2, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$3$1$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$3$1$1;-><init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$3$1;)V

    invoke-static {v2}, Lcom/miui/gallery/threadpool/ThreadManager;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 212
    :cond_1
    return-void
.end method
