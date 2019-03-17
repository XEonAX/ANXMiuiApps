.class Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$3;
.super Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$OnInstallPackageListener;
.source "NexAssetTemplateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;->installProcess(ILcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ILoadAssetTemplate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;

.field final synthetic val$iLoadAssetTemplate:Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ILoadAssetTemplate;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ILoadAssetTemplate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$3;->this$0:Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;

    iput-object p2, p0, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$3;->val$iLoadAssetTemplate:Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ILoadAssetTemplate;

    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$OnInstallPackageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(II)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "assetIdx"    # I

    .prologue
    .line 118
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$3;->val$iLoadAssetTemplate:Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ILoadAssetTemplate;

    invoke-interface {v0}, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ILoadAssetTemplate;->onFail()V

    .line 120
    iget-object v0, p0, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$3;->this$0:Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;->access$200(Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Install a new  asset package to NexEditorSDK Fail! "

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$3;->val$iLoadAssetTemplate:Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ILoadAssetTemplate;

    invoke-interface {v0}, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ILoadAssetTemplate;->onSuccess()V

    .line 124
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->updatePluginLut()V

    .line 125
    iget-object v0, p0, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$3;->this$0:Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;->access$200(Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Install a new asset package to NexEditorSDK Success! "

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onProgress(III)V
    .locals 0
    .param p1, "countPackage"    # I
    .param p2, "totalPackages"    # I
    .param p3, "progressInstalling"    # I

    .prologue
    .line 114
    return-void
.end method
