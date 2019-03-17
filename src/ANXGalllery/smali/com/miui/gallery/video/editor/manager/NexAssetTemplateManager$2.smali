.class Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$2;
.super Ljava/lang/Object;
.source "NexAssetTemplateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;->checkExpiredAsset(Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ICheckExpiredAssetListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;

.field final synthetic val$checkExpiredAssetListener:Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ICheckExpiredAssetListener;

.field final synthetic val$mKmTemplateManager:Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ICheckExpiredAssetListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$2;->this$0:Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;

    iput-object p2, p0, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$2;->val$mKmTemplateManager:Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;

    iput-object p3, p0, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$2;->val$checkExpiredAssetListener:Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ICheckExpiredAssetListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "expired":Z
    iget-object v4, p0, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$2;->val$mKmTemplateManager:Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->getTemplates()Ljava/util/List;

    move-result-object v1

    .line 56
    .local v1, "mTemplates":Ljava/util/List;, "Ljava/util/List<Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;

    .line 57
    .local v2, "template":Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;
    if-eqz v2, :cond_0

    .line 58
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->getAssetPackageManager(Landroid/content/Context;)Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;

    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->packageInfo()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;

    move-result-object v5

    invoke-static {v5}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->checkExpireAsset(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 59
    iget-object v5, p0, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$2;->this$0:Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;

    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;->uninstallPackageById(Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x1

    goto :goto_0

    .line 63
    .end local v2    # "template":Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;
    :cond_1
    if-eqz v0, :cond_2

    .line 64
    iget-object v4, p0, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$2;->this$0:Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;

    invoke-virtual {v4}, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;->getKmTemplateManager()Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->loadTemplate()V

    .line 65
    iget-object v4, p0, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$2;->val$mKmTemplateManager:Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->getTemplates()Ljava/util/List;

    move-result-object v3

    .line 66
    .local v3, "templateList":Ljava/util/List;, "Ljava/util/List<Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;>;"
    iget-object v4, p0, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$2;->val$checkExpiredAssetListener:Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ICheckExpiredAssetListener;

    invoke-interface {v4, v3}, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ICheckExpiredAssetListener;->onFinished(Ljava/util/List;)V

    .line 70
    .end local v3    # "templateList":Ljava/util/List;, "Ljava/util/List<Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;>;"
    :goto_1
    return-void

    .line 68
    :cond_2
    iget-object v4, p0, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$2;->val$checkExpiredAssetListener:Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ICheckExpiredAssetListener;

    invoke-interface {v4, v1}, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ICheckExpiredAssetListener;->onFinished(Ljava/util/List;)V

    goto :goto_1
.end method
