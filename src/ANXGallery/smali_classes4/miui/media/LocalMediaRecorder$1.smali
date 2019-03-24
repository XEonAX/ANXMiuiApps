.class Lmiui/media/LocalMediaRecorder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/media/LocalMediaRecorder;->setOnErrorListener(Lmiui/media/Recorder$OnErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ba:Lmiui/media/LocalMediaRecorder;


# direct methods
.method constructor <init>(Lmiui/media/LocalMediaRecorder;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lmiui/media/LocalMediaRecorder$1;->Ba:Lmiui/media/LocalMediaRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 1

    .line 304
    iget-object p1, p0, Lmiui/media/LocalMediaRecorder$1;->Ba:Lmiui/media/LocalMediaRecorder;

    invoke-static {p1}, Lmiui/media/LocalMediaRecorder;->a(Lmiui/media/LocalMediaRecorder;)Lmiui/media/Recorder$OnErrorListener;

    move-result-object p1

    iget-object p3, p0, Lmiui/media/LocalMediaRecorder$1;->Ba:Lmiui/media/LocalMediaRecorder;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lmiui/media/d;->e(IZ)I

    move-result p2

    invoke-interface {p1, p3, p2}, Lmiui/media/Recorder$OnErrorListener;->onError(Lmiui/media/Recorder;I)V

    .line 305
    return-void
.end method
