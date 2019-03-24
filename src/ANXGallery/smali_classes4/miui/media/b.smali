.class Lmiui/media/b;
.super Lmiui/media/LocalMediaRecorder;
.source "SourceFile"


# static fields
.field private static final Al:Ljava/lang/String; = "#!AMR-WB\n"

.field private static final Am:Ljava/lang/String; = "#!AMR\n"


# instance fields
.field private An:Z


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

    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method protected cv()I
    .locals 1

    .line 41
    iget-boolean v0, p0, Lmiui/media/b;->An:Z

    if-eqz v0, :cond_0

    const-string v0, "#!AMR-WB\n"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_1

    :cond_0
    const-string v0, "#!AMR\n"

    goto :goto_0

    :goto_1
    return v0
.end method

.method public release()V
    .locals 1

    .line 30
    invoke-super {p0}, Lmiui/media/LocalMediaRecorder;->release()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/media/b;->An:Z

    .line 32
    return-void
.end method

.method public reset()V
    .locals 1

    .line 24
    invoke-super {p0}, Lmiui/media/LocalMediaRecorder;->reset()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/media/b;->An:Z

    .line 26
    return-void
.end method

.method public setAudioEncoder(I)V
    .locals 2

    .line 14
    invoke-super {p0, p1}, Lmiui/media/LocalMediaRecorder;->setAudioEncoder(I)V

    .line 15
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 16
    iput-boolean v0, p0, Lmiui/media/b;->An:Z

    goto :goto_0

    .line 17
    :cond_0
    if-ne p1, v0, :cond_1

    .line 18
    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiui/media/b;->An:Z

    .line 20
    :cond_1
    :goto_0
    return-void
.end method
