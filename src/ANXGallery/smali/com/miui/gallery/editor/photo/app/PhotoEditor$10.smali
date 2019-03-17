.class Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/app/ExportFragment$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/PhotoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mStartTime:J

.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    .prologue
    .line 939
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private sampleExportTime(Ljava/lang/String;J)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "milli"    # J

    .prologue
    .line 978
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$900(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/Sampler;

    move-result-object v0

    const-string v1, "_main"

    const-wide/16 v2, 0x64

    div-long v2, p2, v2

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/miui/gallery/editor/photo/app/Sampler;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 979
    return-void
.end method


# virtual methods
.method public doExport()Z
    .locals 8

    .prologue
    .line 944
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$100(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/DraftManager;

    move-result-object v0

    .line 945
    .local v0, "draftManager":Lcom/miui/gallery/editor/photo/app/DraftManager;
    if-nez v0, :cond_0

    .line 946
    const/4 v1, 0x0

    .line 955
    :goto_0
    return v1

    .line 948
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;->mStartTime:J

    .line 949
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$700(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->prepareToExport(Lcom/miui/gallery/editor/photo/app/DraftManager;)V

    .line 950
    const-string v2, "PhotoEditor"

    const-string v3, "doExport start"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$200(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$700(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->getExportUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;->doExport(Lcom/miui/gallery/editor/photo/app/DraftManager;Landroid/net/Uri;)Z

    move-result v1

    .line 952
    .local v1, "finish":Z
    const-string v2, "PhotoEditor"

    const-string v3, "doExport end, use time: %d"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;->mStartTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 953
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$700(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->onExport(ZLcom/miui/gallery/editor/photo/app/DraftManager;)Z

    move-result v1

    .line 954
    const-string v2, "compress_finished"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;->mStartTime:J

    sub-long/2addr v4, v6

    invoke-direct {p0, v2, v4, v5}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;->sampleExportTime(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public onCancelled(Z)V
    .locals 6
    .param p1, "success"    # Z

    .prologue
    .line 960
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$700(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->onCancelled(Z)V

    .line 961
    const-string v0, "compress_cancelled"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;->mStartTime:J

    sub-long/2addr v2, v4

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;->sampleExportTime(Ljava/lang/String;J)V

    .line 962
    return-void
.end method

.method public onExported(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    .line 966
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$700(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->onPostExport(Z)V

    .line 967
    if-eqz p1, :cond_0

    .line 968
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$700(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->access$1700(Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;)V

    .line 969
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$600(Lcom/miui/gallery/editor/photo/app/PhotoEditor;Z)V

    .line 970
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v0}, Lcom/miui/gallery/compat/app/ActivityCompat;->finishAfterTransition(Landroid/app/Activity;)V

    .line 975
    :goto_0
    return-void

    .line 972
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$700(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->closeExportDialog()V

    .line 973
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    const v1, 0x7f0c0299

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    goto :goto_0
.end method
