.class Lmiui/media/Mp3Recorder$EventHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/media/Mp3Recorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic Cl:Lmiui/media/Mp3Recorder;


# direct methods
.method public constructor <init>(Lmiui/media/Mp3Recorder;Landroid/os/Looper;)V
    .locals 0

    .line 571
    iput-object p1, p0, Lmiui/media/Mp3Recorder$EventHandler;->Cl:Lmiui/media/Mp3Recorder;

    .line 572
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 573
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 577
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 579
    :cond_0
    iget-object v0, p0, Lmiui/media/Mp3Recorder$EventHandler;->Cl:Lmiui/media/Mp3Recorder;

    invoke-static {v0}, Lmiui/media/Mp3Recorder;->i(Lmiui/media/Mp3Recorder;)Lmiui/media/Mp3Recorder$RecordingErrorListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 580
    iget-object v0, p0, Lmiui/media/Mp3Recorder$EventHandler;->Cl:Lmiui/media/Mp3Recorder;

    invoke-static {v0}, Lmiui/media/Mp3Recorder;->i(Lmiui/media/Mp3Recorder;)Lmiui/media/Mp3Recorder$RecordingErrorListener;

    move-result-object v0

    iget-object v1, p0, Lmiui/media/Mp3Recorder$EventHandler;->Cl:Lmiui/media/Mp3Recorder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2}, Lmiui/media/Mp3Recorder$RecordingErrorListener;->onError(Lmiui/media/Mp3Recorder;I)V

    .line 587
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 588
    return-void
.end method
