.class Lmiui/media/c;
.super Lmiui/media/Mp3Recorder;
.source "SourceFile"

# interfaces
.implements Lmiui/media/Recorder;


# instance fields
.field private Bd:Lmiui/media/Recorder$OnErrorListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lmiui/media/Mp3Recorder;-><init>()V

    return-void
.end method

.method static synthetic a(Lmiui/media/c;)Lmiui/media/Recorder$OnErrorListener;
    .locals 0

    .line 3
    iget-object p0, p0, Lmiui/media/c;->Bd:Lmiui/media/Recorder$OnErrorListener;

    return-object p0
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public setAudioEncoder(I)V
    .locals 0

    .line 13
    return-void
.end method

.method public setAudioEncodingBitRate(I)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lmiui/media/Mp3Recorder;->setOutBitRate(I)V

    .line 23
    return-void
.end method

.method public setMaxDuration(I)V
    .locals 2

    .line 27
    int-to-long v0, p1

    invoke-super {p0, v0, v1}, Lmiui/media/Mp3Recorder;->setMaxDuration(J)V

    .line 28
    return-void
.end method

.method public setOnErrorListener(Lmiui/media/Recorder$OnErrorListener;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lmiui/media/c;->Bd:Lmiui/media/Recorder$OnErrorListener;

    .line 33
    new-instance p1, Lmiui/media/LocalMp3Recorder$1;

    invoke-direct {p1, p0}, Lmiui/media/LocalMp3Recorder$1;-><init>(Lmiui/media/c;)V

    invoke-super {p0, p1}, Lmiui/media/Mp3Recorder;->setOnErrorListener(Lmiui/media/Mp3Recorder$RecordingErrorListener;)V

    .line 39
    return-void
.end method

.method public setOutputFormat(I)V
    .locals 0

    .line 9
    return-void
.end method
