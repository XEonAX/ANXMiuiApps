.class Lmiui/media/a;
.super Lmiui/media/LocalMediaRecorder;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lmiui/media/LocalMediaRecorder;-><init>()V

    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .line 16
    const/4 v0, 0x1

    return v0
.end method

.method public setAudioSource(I)V
    .locals 0

    .line 9
    invoke-super {p0, p1}, Lmiui/media/LocalMediaRecorder;->setAudioSource(I)V

    .line 10
    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lmiui/media/a;->setOutputFormat(I)V

    .line 11
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lmiui/media/a;->setAudioEncoder(I)V

    .line 12
    return-void
.end method
