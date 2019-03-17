.class Lcom/uploader/implement/a/b;
.super Ljava/lang/Object;
.source "ActionNotifiable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/uploader/export/ITaskListener;

.field final b:Lcom/uploader/export/IUploaderTask;

.field final c:Ljava/lang/Object;

.field final d:I


# direct methods
.method private constructor <init>(ILcom/uploader/export/IUploaderTask;Lcom/uploader/export/ITaskListener;Ljava/lang/Object;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "task"    # Lcom/uploader/export/IUploaderTask;
    .param p3, "listener"    # Lcom/uploader/export/ITaskListener;
    .param p4, "object"    # Ljava/lang/Object;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/uploader/implement/a/b;->d:I

    .line 54
    iput-object p2, p0, Lcom/uploader/implement/a/b;->b:Lcom/uploader/export/IUploaderTask;

    .line 55
    iput-object p3, p0, Lcom/uploader/implement/a/b;->a:Lcom/uploader/export/ITaskListener;

    .line 56
    iput-object p4, p0, Lcom/uploader/implement/a/b;->c:Ljava/lang/Object;

    .line 57
    return-void
.end method

.method static a(Landroid/os/Handler;ILcom/uploader/export/IUploaderTask;Lcom/uploader/export/ITaskListener;Ljava/lang/Object;)V
    .locals 1
    .param p0, "scheduler"    # Landroid/os/Handler;
    .param p1, "type"    # I
    .param p2, "task"    # Lcom/uploader/export/IUploaderTask;
    .param p3, "listener"    # Lcom/uploader/export/ITaskListener;
    .param p4, "object"    # Ljava/lang/Object;

    .prologue
    .line 41
    if-nez p3, :cond_0

    .line 50
    :goto_0
    return-void

    .line 44
    :cond_0
    new-instance v0, Lcom/uploader/implement/a/b;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/uploader/implement/a/b;-><init>(ILcom/uploader/export/IUploaderTask;Lcom/uploader/export/ITaskListener;Ljava/lang/Object;)V

    .line 45
    .local v0, "notifiable":Ljava/lang/Runnable;
    if-nez p0, :cond_1

    .line 46
    invoke-static {v0}, Lcom/uploader/implement/e/b;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 61
    iget v0, p0, Lcom/uploader/implement/a/b;->d:I

    packed-switch v0, :pswitch_data_0

    .line 89
    :goto_0
    return-void

    .line 63
    :pswitch_0
    iget-object v1, p0, Lcom/uploader/implement/a/b;->a:Lcom/uploader/export/ITaskListener;

    iget-object v2, p0, Lcom/uploader/implement/a/b;->b:Lcom/uploader/export/IUploaderTask;

    iget-object v0, p0, Lcom/uploader/implement/a/b;->c:Ljava/lang/Object;

    check-cast v0, Lcom/uploader/export/ITaskResult;

    invoke-interface {v1, v2, v0}, Lcom/uploader/export/ITaskListener;->onSuccess(Lcom/uploader/export/IUploaderTask;Lcom/uploader/export/ITaskResult;)V

    goto :goto_0

    .line 66
    :pswitch_1
    iget-object v0, p0, Lcom/uploader/implement/a/b;->a:Lcom/uploader/export/ITaskListener;

    iget-object v1, p0, Lcom/uploader/implement/a/b;->b:Lcom/uploader/export/IUploaderTask;

    invoke-interface {v0, v1}, Lcom/uploader/export/ITaskListener;->onCancel(Lcom/uploader/export/IUploaderTask;)V

    goto :goto_0

    .line 69
    :pswitch_2
    iget-object v1, p0, Lcom/uploader/implement/a/b;->a:Lcom/uploader/export/ITaskListener;

    iget-object v2, p0, Lcom/uploader/implement/a/b;->b:Lcom/uploader/export/IUploaderTask;

    iget-object v0, p0, Lcom/uploader/implement/a/b;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/uploader/export/ITaskListener;->onProgress(Lcom/uploader/export/IUploaderTask;I)V

    goto :goto_0

    .line 72
    :pswitch_3
    iget-object v1, p0, Lcom/uploader/implement/a/b;->a:Lcom/uploader/export/ITaskListener;

    iget-object v2, p0, Lcom/uploader/implement/a/b;->b:Lcom/uploader/export/IUploaderTask;

    iget-object v0, p0, Lcom/uploader/implement/a/b;->c:Ljava/lang/Object;

    check-cast v0, Lcom/uploader/export/TaskError;

    invoke-interface {v1, v2, v0}, Lcom/uploader/export/ITaskListener;->onFailure(Lcom/uploader/export/IUploaderTask;Lcom/uploader/export/TaskError;)V

    goto :goto_0

    .line 75
    :pswitch_4
    iget-object v0, p0, Lcom/uploader/implement/a/b;->a:Lcom/uploader/export/ITaskListener;

    iget-object v1, p0, Lcom/uploader/implement/a/b;->b:Lcom/uploader/export/IUploaderTask;

    invoke-interface {v0, v1}, Lcom/uploader/export/ITaskListener;->onPause(Lcom/uploader/export/IUploaderTask;)V

    goto :goto_0

    .line 78
    :pswitch_5
    iget-object v0, p0, Lcom/uploader/implement/a/b;->a:Lcom/uploader/export/ITaskListener;

    iget-object v1, p0, Lcom/uploader/implement/a/b;->b:Lcom/uploader/export/IUploaderTask;

    invoke-interface {v0, v1}, Lcom/uploader/export/ITaskListener;->onStart(Lcom/uploader/export/IUploaderTask;)V

    goto :goto_0

    .line 81
    :pswitch_6
    iget-object v0, p0, Lcom/uploader/implement/a/b;->a:Lcom/uploader/export/ITaskListener;

    iget-object v1, p0, Lcom/uploader/implement/a/b;->b:Lcom/uploader/export/IUploaderTask;

    invoke-interface {v0, v1}, Lcom/uploader/export/ITaskListener;->onResume(Lcom/uploader/export/IUploaderTask;)V

    goto :goto_0

    .line 84
    :pswitch_7
    iget-object v0, p0, Lcom/uploader/implement/a/b;->a:Lcom/uploader/export/ITaskListener;

    iget-object v1, p0, Lcom/uploader/implement/a/b;->b:Lcom/uploader/export/IUploaderTask;

    invoke-interface {v0, v1}, Lcom/uploader/export/ITaskListener;->onWait(Lcom/uploader/export/IUploaderTask;)V

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
