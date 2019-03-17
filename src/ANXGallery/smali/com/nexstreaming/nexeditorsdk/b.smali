.class Lcom/nexstreaming/nexeditorsdk/b;
.super Ljava/lang/Object;
.source "nexObserver.java"


# instance fields
.field protected mClipTimeUpdated:Z

.field protected mEffectLoad2Engine:I

.field protected mNeedLoadList:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/b;->mClipTimeUpdated:Z

    .line 20
    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/b;->mNeedLoadList:Z

    .line 25
    return-void
.end method


# virtual methods
.method setEffectLoad(I)Z
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/b;->mEffectLoad2Engine:I

    if-ne v0, p1, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 41
    :goto_0
    return v0

    .line 40
    :cond_0
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/b;->mEffectLoad2Engine:I

    .line 41
    const/4 v0, 0x1

    goto :goto_0
.end method

.method updateTimeLine(Z)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/b;->mNeedLoadList:Z

    .line 29
    if-nez p1, :cond_0

    .line 30
    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/b;->mClipTimeUpdated:Z

    .line 32
    :cond_0
    return-void
.end method
