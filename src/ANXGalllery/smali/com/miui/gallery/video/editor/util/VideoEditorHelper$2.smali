.class Lcom/miui/gallery/video/editor/util/VideoEditorHelper$2;
.super Ljava/lang/Object;
.source "VideoEditorHelper.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/ui/EncodeProgressDialog$OnCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->onSave()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/util/VideoEditorHelper;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/util/VideoEditorHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/util/VideoEditorHelper;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper$2;->this$0:Lcom/miui/gallery/video/editor/util/VideoEditorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/String;ZII)V
    .locals 6
    .param p1, "outputPath"    # Ljava/lang/String;
    .param p2, "success"    # Z
    .param p3, "errorCode"    # I
    .param p4, "state"    # I

    .prologue
    const/4 v5, 0x0

    .line 225
    const-string v1, "VideoEditorHelper"

    const-string/jumbo v2, "video save success: %s, and video encode error errorCode :%s"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 226
    if-eqz p2, :cond_0

    .line 227
    const-string/jumbo v1, "video_editor"

    const-string/jumbo v2, "video_editor_export_success"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper$2;->this$0:Lcom/miui/gallery/video/editor/util/VideoEditorHelper;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->access$200(Lcom/miui/gallery/video/editor/util/VideoEditorHelper;)Lcom/miui/gallery/video/editor/util/VideoEditorHelper$VideoSaveManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper$VideoSaveManager;->handleVideoSave(Ljava/lang/String;)V

    .line 240
    :goto_0
    return-void

    .line 230
    :cond_0
    const/4 v1, -0x1

    if-ne p4, v1, :cond_1

    .line 231
    iget-object v1, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper$2;->this$0:Lcom/miui/gallery/video/editor/util/VideoEditorHelper;

    invoke-virtual {v1, v5}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->setVideoSaving(Z)V

    goto :goto_0

    .line 234
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 235
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "errorCode"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string/jumbo v1, "video_editor"

    const-string/jumbo v2, "video_editor_export_failed"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 237
    iget-object v1, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper$2;->this$0:Lcom/miui/gallery/video/editor/util/VideoEditorHelper;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->access$300(Lcom/miui/gallery/video/editor/util/VideoEditorHelper;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper$2;->this$0:Lcom/miui/gallery/video/editor/util/VideoEditorHelper;

    invoke-static {v2}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->access$300(Lcom/miui/gallery/video/editor/util/VideoEditorHelper;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c052c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 238
    iget-object v1, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper$2;->this$0:Lcom/miui/gallery/video/editor/util/VideoEditorHelper;

    invoke-virtual {v1, v5}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->setVideoSaving(Z)V

    goto :goto_0
.end method
