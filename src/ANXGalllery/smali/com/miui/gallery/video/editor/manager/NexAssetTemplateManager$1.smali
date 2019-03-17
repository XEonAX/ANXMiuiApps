.class Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$1;
.super Ljava/lang/Object;
.source "NexAssetTemplateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;->loadSmartEffectTemplateList(Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ILoadSmartEffectListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;

.field final synthetic val$mKmTemplateManager:Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;

.field final synthetic val$smartEffectListener:Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ILoadSmartEffectListener;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ILoadSmartEffectListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$1;->this$0:Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;

    iput-object p2, p0, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$1;->val$mKmTemplateManager:Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;

    iput-object p3, p0, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$1;->val$smartEffectListener:Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ILoadSmartEffectListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 39
    iget-object v1, p0, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$1;->val$mKmTemplateManager:Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->getTemplates()Ljava/util/List;

    move-result-object v0

    .line 40
    .local v0, "mTemplates":Ljava/util/List;, "Ljava/util/List<Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;>;"
    iget-object v1, p0, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$1;->val$smartEffectListener:Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ILoadSmartEffectListener;

    invoke-interface {v1, v0}, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ILoadSmartEffectListener;->onFinished(Ljava/util/List;)V

    .line 41
    return-void
.end method
