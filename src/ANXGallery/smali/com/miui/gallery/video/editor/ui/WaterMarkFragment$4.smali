.class Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$4;
.super Ljava/lang/Object;
.source "WaterMarkFragment.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ILoadWaterMarkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->refreshData(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

.field final synthetic val$styleArrayList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$4;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    iput-object p2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$4;->val$styleArrayList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished([Ljava/lang/String;)V
    .locals 2
    .param p1, "ids"    # [Ljava/lang/String;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$4;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$400(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Lcom/miui/gallery/video/editor/manager/WaterMarkManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$4;->val$styleArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Lcom/miui/gallery/video/editor/manager/WaterMarkManager;->initDataWithTemplate([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 234
    new-instance v0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$4$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$4$1;-><init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$4;)V

    invoke-static {v0}, Lcom/miui/gallery/threadpool/ThreadManager;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 244
    return-void
.end method
