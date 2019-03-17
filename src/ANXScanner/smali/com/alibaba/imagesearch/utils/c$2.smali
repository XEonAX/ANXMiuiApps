.class final Lcom/alibaba/imagesearch/utils/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uploader/export/ITaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/imagesearch/utils/c;->a(Lcom/alibaba/imagesearch/utils/b$c;Landroid/graphics/Rect;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field a:J

.field final synthetic b:Lcom/alibaba/imagesearch/utils/b$c;


# direct methods
.method constructor <init>(Lcom/alibaba/imagesearch/utils/b$c;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/imagesearch/utils/c$2;->b:Lcom/alibaba/imagesearch/utils/b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/uploader/export/IUploaderTask;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/imagesearch/utils/c$2;->b:Lcom/alibaba/imagesearch/utils/b$c;

    iget-object v0, v0, Lcom/alibaba/imagesearch/utils/b$c;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/b;->a(Ljava/lang/String;)Z

    return-void
.end method

.method public onFailure(Lcom/uploader/export/IUploaderTask;Lcom/uploader/export/TaskError;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "errorCode"

    iget-object v2, p2, Lcom/uploader/export/TaskError;->code:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "errorMsg"

    iget-object v2, p2, Lcom/uploader/export/TaskError;->info:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PailitaoHome"

    const-string v2, "uploadFailed"

    invoke-static {v1, v2, v0}, Lcom/alibaba/imagesearch/utils/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/alibaba/imagesearch/utils/c;->f()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upload onError: errCode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p2, Lcom/uploader/export/TaskError;->code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " errMsg = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p2, Lcom/uploader/export/TaskError;->info:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->similarLogE(Ljava/lang/String;)V

    const-string v0, ""

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/c;->e(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/imagesearch/utils/c$2;->b:Lcom/alibaba/imagesearch/utils/b$c;

    iget-object v0, v0, Lcom/alibaba/imagesearch/utils/b$c;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/b;->a(Ljava/lang/String;)Z

    invoke-static {}, Lcom/alibaba/imagesearch/utils/c;->f()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPause(Lcom/uploader/export/IUploaderTask;)V
    .locals 1

    const-string v0, "upload onPause"

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->similarLogD(Ljava/lang/String;)V

    return-void
.end method

.method public onProgress(Lcom/uploader/export/IUploaderTask;I)V
    .locals 0

    return-void
.end method

.method public onResume(Lcom/uploader/export/IUploaderTask;)V
    .locals 1

    const-string v0, "upload onResume"

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->similarLogD(Ljava/lang/String;)V

    return-void
.end method

.method public onStart(Lcom/uploader/export/IUploaderTask;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/imagesearch/utils/c$2;->a:J

    const-string v0, "upload onStart"

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->similarLogD(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/uploader/export/IUploaderTask;Lcom/uploader/export/ITaskResult;)V
    .locals 6

    invoke-interface {p2}, Lcom/uploader/export/ITaskResult;->getFileUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/c;->e(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upload onFinish fileLocation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/imagesearch/utils/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->similarLogD(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upload finish, use "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alibaba/imagesearch/utils/c$2;->a:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms fileSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alibaba/imagesearch/utils/c$2;->b:Lcom/alibaba/imagesearch/utils/b$c;

    iget-object v2, v2, Lcom/alibaba/imagesearch/utils/b$c;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->PerformanceLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/alibaba/imagesearch/utils/c$2;->b:Lcom/alibaba/imagesearch/utils/b$c;

    iget-object v0, v0, Lcom/alibaba/imagesearch/utils/b$c;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/b;->a(Ljava/lang/String;)Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onWait(Lcom/uploader/export/IUploaderTask;)V
    .locals 1

    const-string v0, "upload onWait"

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->similarLogD(Ljava/lang/String;)V

    return-void
.end method
