.class Lcom/alibaba/imagesearch/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uploader/export/ITaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/imagesearch/c;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/imagesearch/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field b:J

.field final synthetic c:Lcom/alibaba/imagesearch/a;

.field final synthetic d:Ljava/lang/ref/WeakReference;

.field final synthetic e:Ljava/util/Map;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/alibaba/imagesearch/c;


# direct methods
.method constructor <init>(Lcom/alibaba/imagesearch/c;Lcom/alibaba/imagesearch/a;Ljava/lang/ref/WeakReference;Ljava/util/Map;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/alibaba/imagesearch/c$2;->g:Lcom/alibaba/imagesearch/c;

    iput-object p2, p0, Lcom/alibaba/imagesearch/c$2;->c:Lcom/alibaba/imagesearch/a;

    iput-object p3, p0, Lcom/alibaba/imagesearch/c$2;->d:Ljava/lang/ref/WeakReference;

    iput-object p4, p0, Lcom/alibaba/imagesearch/c$2;->e:Ljava/util/Map;

    iput-object p5, p0, Lcom/alibaba/imagesearch/c$2;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/imagesearch/c$2;->a:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/imagesearch/c$2;->b:J

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/uploader/export/IUploaderTask;)V
    .locals 1

    const-string v0, "searchImage upload onCancel"

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->searchLogD(Ljava/lang/String;)V

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

    const-string v1, "PailitaoLoading"

    const-string v2, "upload_error"

    invoke-static {v1, v2, v0}, Lcom/alibaba/imagesearch/utils/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/alibaba/imagesearch/c$2;->c:Lcom/alibaba/imagesearch/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/imagesearch/c$2;->c:Lcom/alibaba/imagesearch/a;

    const-string v1, "upload_failed"

    iget-object v2, p2, Lcom/uploader/export/TaskError;->info:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/imagesearch/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/imagesearch/c$2;->a:Z

    iget-object v0, p0, Lcom/alibaba/imagesearch/c$2;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/b;->a(Ljava/lang/String;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "searchImage upload onFailure["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/uploader/export/TaskError;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/uploader/export/TaskError;->info:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->searchLogE(Ljava/lang/String;)V

    return-void
.end method

.method public onPause(Lcom/uploader/export/IUploaderTask;)V
    .locals 1

    const-string v0, "upload onPause"

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->searchLogD(Ljava/lang/String;)V

    return-void
.end method

.method public onProgress(Lcom/uploader/export/IUploaderTask;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/imagesearch/c$2;->a:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alibaba/imagesearch/c$2;->c:Lcom/alibaba/imagesearch/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/imagesearch/c$2;->c:Lcom/alibaba/imagesearch/a;

    invoke-interface {v0, p2}, Lcom/alibaba/imagesearch/a;->a(I)V

    goto :goto_0
.end method

.method public onResume(Lcom/uploader/export/IUploaderTask;)V
    .locals 1

    const-string v0, "upload onResume"

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->searchLogD(Ljava/lang/String;)V

    return-void
.end method

.method public onStart(Lcom/uploader/export/IUploaderTask;)V
    .locals 2

    const-string v0, "PailitaoLoading"

    const-string v1, "upload_start"

    invoke-static {v0, v1}, Lcom/alibaba/imagesearch/utils/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/alibaba/imagesearch/c$2;->a:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/imagesearch/c$2;->b:J

    iget-object v0, p0, Lcom/alibaba/imagesearch/c$2;->c:Lcom/alibaba/imagesearch/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/imagesearch/c$2;->c:Lcom/alibaba/imagesearch/a;

    invoke-interface {v0}, Lcom/alibaba/imagesearch/a;->a()V

    :cond_1
    const-string v0, "searchImage upload onStart"

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->searchLogD(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSuccess(Lcom/uploader/export/IUploaderTask;Lcom/uploader/export/ITaskResult;)V
    .locals 6

    const-string v0, "searchImage upload onSuccess"

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->searchLogD(Ljava/lang/String;)V

    const-string v0, "PailitaoLoading"

    const-string v1, "upload_finish"

    invoke-static {v0, v1}, Lcom/alibaba/imagesearch/utils/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/alibaba/imagesearch/c$2;->a:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alibaba/imagesearch/c$2;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lcom/uploader/export/ITaskResult;->getFileUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/imagesearch/c$2;->e:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/alibaba/imagesearch/utils/c;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/imagesearch/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/alibaba/imagesearch/c$2;->c:Lcom/alibaba/imagesearch/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/imagesearch/c$2;->c:Lcom/alibaba/imagesearch/a;

    const/4 v1, 0x0

    invoke-interface {p2}, Lcom/uploader/export/ITaskResult;->getFileUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alibaba/imagesearch/a;->a(ZLjava/lang/String;)V

    :cond_2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upload finish, use "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alibaba/imagesearch/c$2;->b:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms fileSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alibaba/imagesearch/c$2;->f:Ljava/lang/String;

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

    :goto_1
    iget-object v0, p0, Lcom/alibaba/imagesearch/c$2;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/b;->a(Ljava/lang/String;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onWait(Lcom/uploader/export/IUploaderTask;)V
    .locals 1

    const-string v0, "searchImage upload onWait"

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->searchLogD(Ljava/lang/String;)V

    return-void
.end method
