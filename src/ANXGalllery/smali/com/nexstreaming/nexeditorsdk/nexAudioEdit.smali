.class public Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;
.super Ljava/lang/Object;
.source "nexAudioEdit.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final TAG:Ljava/lang/String; = "nexAudioEdit"

.field public static final kMusicEffect_LIVE_CONCERT:I = 0x1

.field public static final kMusicEffect_MUSIC_ENHANCER:I = 0x3

.field public static final kMusicEffect_NONE:I = 0x0

.field public static final kMusicEffect_STEREO_CHORUS:I = 0x2

.field public static final kVoiceFactor_CHIPMUNK:I = 0x1

.field public static final kVoiceFactor_DEEP:I = 0x3

.field public static final kVoiceFactor_MODULATION:I = 0x4

.field public static final kVoiceFactor_NONE:I = 0x0

.field public static final kVoiceFactor_ROBOT:I = 0x2


# instance fields
.field private VCfactor:I

.field private mBassStrength:I

.field private mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

.field private mCompressor:I

.field private mEnhancedAudioFilter:Ljava/lang/String;

.field private mMusicEffect:I

.field private mPanLeft:I

.field private mPanRight:I

.field private mPitch:I

.field private mProcessorStrength:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/16 v1, -0x6f

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->VCfactor:I

    .line 41
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mPitch:I

    .line 42
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mCompressor:I

    .line 43
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mProcessorStrength:I

    .line 44
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mBassStrength:I

    .line 45
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mMusicEffect:I

    .line 46
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mPanLeft:I

    .line 47
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mPanRight:I

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mEnhancedAudioFilter:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexClip;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/16 v1, -0x6f

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->VCfactor:I

    .line 41
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mPitch:I

    .line 42
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mCompressor:I

    .line 43
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mProcessorStrength:I

    .line 44
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mBassStrength:I

    .line 45
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mMusicEffect:I

    .line 46
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mPanLeft:I

    .line 47
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mPanRight:I

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mEnhancedAudioFilter:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    .line 56
    return-void
.end method

.method constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexClip;Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEditOf;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/16 v1, -0x6f

    const/4 v0, 0x0

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->VCfactor:I

    .line 41
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mPitch:I

    .line 42
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mCompressor:I

    .line 43
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mProcessorStrength:I

    .line 44
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mBassStrength:I

    .line 45
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mMusicEffect:I

    .line 46
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mPanLeft:I

    .line 47
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mPanRight:I

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mEnhancedAudioFilter:Ljava/lang/String;

    .line 435
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEditOf;->VCfactor:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->VCfactor:I

    .line 436
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEditOf;->mPitch:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mPitch:I

    .line 437
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEditOf;->mCompressor:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mCompressor:I

    .line 438
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEditOf;->mProcessorStrength:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mProcessorStrength:I

    .line 439
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEditOf;->mBassStrength:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mBassStrength:I

    .line 440
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEditOf;->mMusicEffect:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mMusicEffect:I

    .line 441
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEditOf;->mPanLeft:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mPanLeft:I

    .line 442
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEditOf;->mPanRight:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mPanRight:I

    .line 443
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    .line 444
    return-void
.end method

.method protected static clone(Lcom/nexstreaming/nexeditorsdk/nexClip;Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;)Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;
    .locals 3

    .prologue
    .line 59
    const/4 v1, 0x0

    .line 61
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :try_start_1
    iput-object p0, v0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    :goto_0
    return-object v0

    .line 63
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    .line 64
    :goto_1
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0

    .line 63
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static getnexAudioEdit(Lcom/nexstreaming/nexeditorsdk/nexClip;)Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 74
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;

    invoke-direct {v0, p0}, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;-><init>(Lcom/nexstreaming/nexeditorsdk/nexClip;)V

    goto :goto_0
.end method


# virtual methods
.method public getBassStrength()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mBassStrength:I

    return v0
.end method

.method public getCompressor()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mCompressor:I

    return v0
.end method

.method public getEnhancedAudioFilter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mEnhancedAudioFilter:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicEffect()I
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mMusicEffect:I

    return v0
.end method

.method public getPanLeft()I
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mPanLeft:I

    return v0
.end method

.method public getPanRight()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mPanRight:I

    return v0
.end method

.method public getPitch()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mPitch:I

    return v0
.end method

.method public getProcessorStrength()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mProcessorStrength:I

    return v0
.end method

.method getSaveData()Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEditOf;
    .locals 2

    .prologue
    .line 422
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEditOf;

    invoke-direct {v0}, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEditOf;-><init>()V

    .line 423
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->VCfactor:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEditOf;->VCfactor:I

    .line 424
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mPitch:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEditOf;->mPitch:I

    .line 425
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mCompressor:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEditOf;->mCompressor:I

    .line 426
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mProcessorStrength:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEditOf;->mProcessorStrength:I

    .line 427
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mBassStrength:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEditOf;->mBassStrength:I

    .line 428
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mMusicEffect:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEditOf;->mMusicEffect:I

    .line 429
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mPanLeft:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEditOf;->mPanLeft:I

    .line 430
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mPanRight:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEditOf;->mPanRight:I

    .line 431
    return-object v0
.end method

.method public getVoiceChangerFactor()I
    .locals 1

    .prologue
    .line 397
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->VCfactor:I

    return v0
.end method

.method public setBassStrength(I)V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getAttachmentState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    const-string v0, "nexAudioEdit"

    const-string/jumbo v1, "setBassStrength getInfo fail!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :goto_0
    return-void

    .line 254
    :cond_0
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mBassStrength:I

    goto :goto_0
.end method

.method public setCompressor(I)V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getAttachmentState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    const-string v0, "nexAudioEdit"

    const-string/jumbo v1, "setCompressor getInfo fail!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :goto_0
    return-void

    .line 200
    :cond_0
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mCompressor:I

    goto :goto_0
.end method

.method public setEnhancedAudioFilter(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mEnhancedAudioFilter:Ljava/lang/String;

    .line 419
    return-void
.end method

.method public setMusicEffect(I)V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getAttachmentState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    const-string v0, "nexAudioEdit"

    const-string/jumbo v1, "setMusicEffect getInfo fail!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :goto_0
    return-void

    .line 287
    :cond_0
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mMusicEffect:I

    goto :goto_0
.end method

.method public setPanLeft(I)V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getAttachmentState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    const-string v0, "nexAudioEdit"

    const-string/jumbo v1, "setPanleft getInfo fail!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :goto_0
    return-void

    .line 331
    :cond_0
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mPanLeft:I

    goto :goto_0
.end method

.method public setPanRight(I)V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getAttachmentState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    const-string v0, "nexAudioEdit"

    const-string/jumbo v1, "setPanRight getInfo fail!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :goto_0
    return-void

    .line 360
    :cond_0
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mPanRight:I

    goto :goto_0
.end method

.method public setPitch(I)V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getAttachmentState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    const-string v0, "nexAudioEdit"

    const-string/jumbo v1, "setPitch getInfo fail!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_0
    return-void

    .line 172
    :cond_0
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mPitch:I

    goto :goto_0
.end method

.method public setProcessorStrength(I)V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getAttachmentState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    const-string v0, "nexAudioEdit"

    const-string/jumbo v1, "setProcessorStrength getInfo fail!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :goto_0
    return-void

    .line 227
    :cond_0
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->mProcessorStrength:I

    goto :goto_0
.end method

.method public setVoiceChangerFactor(I)V
    .locals 0

    .prologue
    .line 379
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEdit;->VCfactor:I

    .line 380
    return-void
.end method
