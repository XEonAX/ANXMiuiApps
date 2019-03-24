.class Lmiui/media/LocalMp3Recorder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/media/Mp3Recorder$RecordingErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/media/c;->setOnErrorListener(Lmiui/media/Recorder$OnErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Be:Lmiui/media/c;


# direct methods
.method constructor <init>(Lmiui/media/c;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lmiui/media/LocalMp3Recorder$1;->Be:Lmiui/media/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lmiui/media/Mp3Recorder;I)V
    .locals 2

    .line 36
    iget-object p1, p0, Lmiui/media/LocalMp3Recorder$1;->Be:Lmiui/media/c;

    invoke-static {p1}, Lmiui/media/c;->a(Lmiui/media/c;)Lmiui/media/Recorder$OnErrorListener;

    move-result-object p1

    iget-object v0, p0, Lmiui/media/LocalMp3Recorder$1;->Be:Lmiui/media/c;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lmiui/media/d;->e(IZ)I

    move-result p2

    invoke-interface {p1, v0, p2}, Lmiui/media/Recorder$OnErrorListener;->onError(Lmiui/media/Recorder;I)V

    .line 37
    return-void
.end method
