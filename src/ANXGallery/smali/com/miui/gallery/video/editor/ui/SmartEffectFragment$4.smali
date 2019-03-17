.class Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$4;
.super Ljava/lang/Object;
.source "SmartEffectFragment.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ICheckExpiredAssetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->refreshData(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

.field final synthetic val$effectArrayList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$4;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    iput-object p2, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$4;->val$effectArrayList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, "templates":Ljava/util/List;, "Ljava/util/List<Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;>;"
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$4;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->access$400(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;)Lcom/miui/gallery/video/editor/manager/SmartEffectManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$4;->val$effectArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Lcom/miui/gallery/video/editor/manager/SmartEffectManager;->initDataWithTemplate(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 203
    new-instance v0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$4$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$4$1;-><init>(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$4;)V

    invoke-static {v0}, Lcom/miui/gallery/threadpool/ThreadManager;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 213
    return-void
.end method
