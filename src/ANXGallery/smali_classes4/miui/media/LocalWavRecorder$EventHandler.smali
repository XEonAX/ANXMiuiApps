.class Lmiui/media/LocalWavRecorder$EventHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/media/LocalWavRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic BU:Lmiui/media/LocalWavRecorder;


# direct methods
.method public constructor <init>(Lmiui/media/LocalWavRecorder;Landroid/os/Looper;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lmiui/media/LocalWavRecorder$EventHandler;->BU:Lmiui/media/LocalWavRecorder;

    .line 398
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 399
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 403
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmiui/media/LocalWavRecorder$EventHandler;->BU:Lmiui/media/LocalWavRecorder;

    invoke-static {v0}, Lmiui/media/LocalWavRecorder;->i(Lmiui/media/LocalWavRecorder;)Lmiui/media/Recorder$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lmiui/media/LocalWavRecorder$EventHandler;->BU:Lmiui/media/LocalWavRecorder;

    invoke-static {v0}, Lmiui/media/LocalWavRecorder;->i(Lmiui/media/LocalWavRecorder;)Lmiui/media/Recorder$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lmiui/media/LocalWavRecorder$EventHandler;->BU:Lmiui/media/LocalWavRecorder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lmiui/media/d;->e(IZ)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lmiui/media/Recorder$OnErrorListener;->onError(Lmiui/media/Recorder;I)V

    .line 406
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 407
    return-void
.end method
