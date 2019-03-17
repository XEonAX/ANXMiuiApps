.class public final Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;
.super Ljava/lang/Object;
.source "nexVideoClipEdit.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static kAutoTrim_Divided:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static kAutoTrim_Interval:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final kSpeedControl_MaxValue:I = 0x640

.field public static final kSpeedControl_MinValue:I = 0x3


# instance fields
.field private mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

.field mFreezeDuration:I

.field private mMasterSpeedControl:I

.field mTrimEndDuration:I

.field mTrimStartDuration:I

.field mUpdated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    sput v0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->kAutoTrim_Divided:I

    .line 81
    const/4 v0, 0x2

    sput v0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->kAutoTrim_Interval:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/16 v0, 0x64

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mMasterSpeedControl:I

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mFreezeDuration:I

    .line 83
    return-void
.end method

.method private constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexClip;)V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/16 v0, 0x64

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mMasterSpeedControl:I

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mFreezeDuration:I

    .line 86
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    .line 87
    return-void
.end method

.method constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexClip;Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexVideoClipEditOf;)V
    .locals 1

    .prologue
    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/16 v0, 0x64

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mMasterSpeedControl:I

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mFreezeDuration:I

    .line 400
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexVideoClipEditOf;->mTrimStartDuration:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mTrimStartDuration:I

    .line 401
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexVideoClipEditOf;->mTrimEndDuration:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mTrimEndDuration:I

    .line 402
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexVideoClipEditOf;->mMasterSpeedControl:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mMasterSpeedControl:I

    .line 403
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    .line 404
    return-void
.end method

.method protected static clone(Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;)Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;
    .locals 2

    .prologue
    .line 51
    const/4 v1, 0x0

    .line 53
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-object v0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method static getnexVideoClipEdit(Lcom/nexstreaming/nexeditorsdk/nexClip;)Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 91
    const/4 v0, 0x0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    invoke-direct {v0, p0}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;-><init>(Lcom/nexstreaming/nexeditorsdk/nexClip;)V

    goto :goto_0
.end method

.method private speedControlTab(I)I
    .locals 4

    .prologue
    const/16 v0, 0xd

    const/16 v1, 0x640

    .line 372
    const-string v2, "Xiaomi"

    const-string v3, "Gionee"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 374
    if-ge p1, v0, :cond_1

    move p1, v0

    .line 386
    :cond_0
    :goto_0
    return p1

    .line 375
    :cond_1
    if-le p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    .line 378
    :cond_2
    const/16 v0, 0xe

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    .line 380
    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 381
    aget v3, v2, v0

    if-lt v3, p1, :cond_4

    .line 382
    aget v1, v2, v0

    :cond_3
    move p1, v1

    .line 386
    goto :goto_0

    .line 380
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 378
    :array_0
    .array-data 4
        0x3
        0x6
        0xd
        0x19
        0x32
        0x4b
        0x64
        0x7d
        0x96
        0xaf
        0xc8
        0x190
        0x320
        0x640
    .end array-data
.end method


# virtual methods
.method public addTrim(III)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 182
    return-void
.end method

.method public clearTrim()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 321
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mTrimStartDuration:I

    .line 322
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mTrimEndDuration:I

    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mUpdated:Z

    .line 324
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setProjectUpdateSignal(Z)V

    .line 325
    return-void
.end method

.method public getDuration()I
    .locals 4

    .prologue
    .line 341
    .line 342
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mTrimStartDuration:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mTrimEndDuration:I

    if-eqz v0, :cond_3

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTotalTime()I

    move-result v0

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mTrimStartDuration:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mTrimEndDuration:I

    sub-int/2addr v0, v1

    .line 348
    :goto_0
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mMasterSpeedControl:I

    const/16 v2, 0x64

    if-eq v1, v2, :cond_1

    .line 350
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mMasterSpeedControl:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 351
    mul-int/lit8 v0, v0, 0x32

    .line 363
    :cond_1
    :goto_1
    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_2

    .line 364
    const-string v1, "nexVideoClipEdit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clip duration under 500! duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", speed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mMasterSpeedControl:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", trim_start="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mTrimStartDuration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", trim_end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mTrimEndDuration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_2
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mFreezeDuration:I

    add-int/2addr v0, v1

    .line 368
    return v0

    .line 345
    :cond_3
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTotalTime()I

    move-result v0

    goto :goto_0

    .line 352
    :cond_4
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mMasterSpeedControl:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 353
    mul-int/lit8 v0, v0, 0x20

    goto :goto_1

    .line 354
    :cond_5
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mMasterSpeedControl:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    .line 355
    mul-int/lit8 v0, v0, 0x10

    goto :goto_1

    .line 356
    :cond_6
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mMasterSpeedControl:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_7

    .line 357
    mul-int/lit8 v0, v0, 0x8

    goto :goto_1

    .line 359
    :cond_7
    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mMasterSpeedControl:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_1
.end method

.method public getEndTrimTime()I
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTotalTime()I

    move-result v0

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mTrimEndDuration:I

    sub-int/2addr v0, v1

    return v0
.end method

.method getSaveData()Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexVideoClipEditOf;
    .locals 2

    .prologue
    .line 391
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexVideoClipEditOf;

    invoke-direct {v0}, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexVideoClipEditOf;-><init>()V

    .line 392
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mTrimStartDuration:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexVideoClipEditOf;->mTrimStartDuration:I

    .line 393
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mTrimEndDuration:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexVideoClipEditOf;->mTrimEndDuration:I

    .line 394
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mMasterSpeedControl:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexVideoClipEditOf;->mMasterSpeedControl:I

    .line 396
    return-object v0
.end method

.method public getSpeedControl()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mMasterSpeedControl:I

    return v0
.end method

.method public getStartTrimTime()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mTrimStartDuration:I

    return v0
.end method

.method public getTrimCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public removeTrim(I)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 195
    const/4 v0, -0x1

    return v0
.end method

.method public setAutoTrim(II)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 308
    const/4 v0, 0x0

    return v0
.end method

.method protected setFreezeDuration(I)V
    .locals 0

    .prologue
    .line 328
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mFreezeDuration:I

    .line 329
    return-void
.end method

.method public setSpeedControl(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 253
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getAudioOnOff()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 254
    invoke-direct {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->speedControlTab(I)I

    move-result p1

    .line 264
    :cond_0
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mMasterSpeedControl:I

    if-eq v0, p1, :cond_1

    .line 265
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mUpdated:Z

    .line 266
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setProjectUpdateSignal(Z)V

    .line 267
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mMasterSpeedControl:I

    .line 269
    :cond_1
    return-void
.end method

.method public setTrim(II)V
    .locals 3

    .prologue
    .line 110
    if-gt p2, p1, :cond_0

    .line 111
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    invoke-direct {v0, p1, p2}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(II)V

    throw v0

    .line 119
    :cond_0
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mTrimStartDuration:I

    .line 120
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTotalTime()I

    move-result v0

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mTrimEndDuration:I

    .line 122
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mTrimEndDuration:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mTrimStartDuration:I

    if-gez v0, :cond_2

    .line 123
    :cond_1
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mTrimStartDuration:I

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mTrimEndDuration:I

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(II)V

    throw v0

    .line 126
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mUpdated:Z

    .line 127
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setProjectUpdateSignal(Z)V

    .line 128
    return-void
.end method
