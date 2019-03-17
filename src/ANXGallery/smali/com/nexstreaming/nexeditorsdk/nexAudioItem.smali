.class public final Lcom/nexstreaming/nexeditorsdk/nexAudioItem;
.super Ljava/lang/Object;
.source "nexAudioItem.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static sLastId:I


# instance fields
.field protected mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

.field private mId:I

.field private mSpeedControl:I

.field protected mTrimEndDuration:I

.field protected mTrimStartDuration:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    sput v0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->sLastId:I

    return-void
.end method

.method constructor <init>(Lcom/nexstreaming/nexeditorsdk/b;Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioItemOf;)V
    .locals 2

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/16 v0, 0x64

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mSpeedControl:I

    .line 259
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioItemOf;->mId:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mId:I

    .line 260
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    iget-object v1, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioItemOf;->mClip:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;

    invoke-direct {v0, p1, v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;-><init>(Lcom/nexstreaming/nexeditorsdk/b;Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;)V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    .line 261
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioItemOf;->mTrimStartDuration:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mTrimStartDuration:I

    .line 262
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioItemOf;->mTrimEndDuration:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mTrimEndDuration:I

    .line 263
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioItemOf;->mSpeedControl:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mSpeedControl:I

    .line 264
    return-void
.end method

.method protected constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexClip;II)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/16 v0, 0x64

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mSpeedControl:I

    .line 63
    if-gt p3, p2, :cond_0

    .line 64
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    invoke-direct {v0, p2, p3}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(II)V

    throw v0

    .line 67
    :cond_0
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    .line 68
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    iput p2, v0, Lcom/nexstreaming/nexeditorsdk/nexClip;->mStartTime:I

    .line 69
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    iput p3, v0, Lcom/nexstreaming/nexeditorsdk/nexClip;->mEndTime:I

    .line 70
    sget v0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->sLastId:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mId:I

    .line 71
    sget v0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->sLastId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->sLastId:I

    .line 72
    return-void
.end method

.method protected static clone(Lcom/nexstreaming/nexeditorsdk/nexAudioItem;)Lcom/nexstreaming/nexeditorsdk/nexAudioItem;
    .locals 3

    .prologue
    .line 51
    const/4 v1, 0x0

    .line 53
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :try_start_1
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-static {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->clone(Lcom/nexstreaming/nexeditorsdk/nexClip;)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v1

    iput-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 59
    :goto_0
    return-object v0

    .line 56
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    .line 57
    :goto_1
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0

    .line 56
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public getClip()Lcom/nexstreaming/nexeditorsdk/nexClip;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    return-object v0
.end method

.method public getEndTime()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    iget v0, v0, Lcom/nexstreaming/nexeditorsdk/nexClip;->mEndTime:I

    return v0
.end method

.method public getEndTrimTime()I
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTotalTime()I

    move-result v0

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mTrimEndDuration:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mId:I

    return v0
.end method

.method getSaveData()Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioItemOf;
    .locals 2

    .prologue
    .line 249
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioItemOf;

    invoke-direct {v0}, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioItemOf;-><init>()V

    .line 250
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mId:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioItemOf;->mId:I

    .line 251
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getSaveData()Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;

    move-result-object v1

    iput-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioItemOf;->mClip:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;

    .line 252
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mTrimStartDuration:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioItemOf;->mTrimStartDuration:I

    .line 253
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mTrimEndDuration:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioItemOf;->mTrimEndDuration:I

    .line 254
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mSpeedControl:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioItemOf;->mSpeedControl:I

    .line 255
    return-object v0
.end method

.method public getSpeedControl()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mSpeedControl:I

    return v0
.end method

.method public getStartTime()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    iget v0, v0, Lcom/nexstreaming/nexeditorsdk/nexClip;->mStartTime:I

    return v0
.end method

.method public getStartTrimTime()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mTrimStartDuration:I

    return v0
.end method

.method public removeTrim()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 199
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mTrimStartDuration:I

    .line 200
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mTrimEndDuration:I

    .line 201
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getAudioEnvelop()Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;

    move-result-object v0

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTotalTime()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->updateTrimTime(II)V

    .line 202
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    iget v1, v1, Lcom/nexstreaming/nexeditorsdk/nexClip;->mStartTime:I

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTotalTime()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexClip;->mEndTime:I

    .line 203
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setProjectUpdateSignal(Z)V

    .line 204
    return-void
.end method

.method protected setProjectTime(II)V
    .locals 3

    .prologue
    .line 105
    if-gt p2, p1, :cond_0

    .line 106
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    invoke-direct {v0, p1, p2}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(II)V

    throw v0

    .line 108
    :cond_0
    if-gez p1, :cond_1

    .line 109
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexClip;->mEndTime:I

    invoke-direct {v0, v1, v2, p1}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(III)V

    throw v0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    iput p1, v0, Lcom/nexstreaming/nexeditorsdk/nexClip;->mStartTime:I

    .line 112
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    iput p2, v0, Lcom/nexstreaming/nexeditorsdk/nexClip;->mEndTime:I

    .line 113
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setProjectUpdateSignal(Z)V

    .line 114
    return-void
.end method

.method public setSpeedControl(I)V
    .locals 0

    .prologue
    .line 241
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mSpeedControl:I

    .line 242
    return-void
.end method

.method public setTrim(II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 166
    if-gt p2, p1, :cond_0

    .line 167
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    invoke-direct {v0, p1, p2}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(II)V

    throw v0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTotalTime()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 170
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTotalTime()I

    move-result v1

    invoke-direct {v0, v2, v1, p1}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(III)V

    throw v0

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTotalTime()I

    move-result v0

    if-le p2, v0, :cond_2

    .line 173
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTotalTime()I

    move-result v1

    invoke-direct {v0, v2, v1, p2}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(III)V

    throw v0

    .line 175
    :cond_2
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mTrimStartDuration:I

    .line 176
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTotalTime()I

    move-result v0

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mTrimEndDuration:I

    .line 177
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getAudioEnvelop()Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->updateTrimTime(II)V

    .line 185
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setProjectUpdateSignal(Z)V

    .line 186
    return-void
.end method
