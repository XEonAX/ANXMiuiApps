.class public Lcom/xiaomi/scanner/camera/SoundPlayer;
.super Ljava/lang/Object;
.source "SoundPlayer.java"


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private mIsReleased:Z

.field private final mResourceToSoundId:Landroid/util/SparseIntArray;

.field private final mSoundPool:Landroid/media/SoundPool;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "sound"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/camera/SoundPlayer;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/SoundPlayer;->mResourceToSoundId:Landroid/util/SparseIntArray;

    .line 23
    iput-boolean v3, p0, Lcom/xiaomi/scanner/camera/SoundPlayer;->mIsReleased:Z

    .line 29
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/SoundPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 30
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    .line 31
    return-void
.end method


# virtual methods
.method public isCanPlaySound()Z
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/SoundPlayer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/camera/SoundPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReleased()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/SoundPlayer;->mIsReleased:Z

    return v0
.end method

.method public isUseHeadset()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    iget-object v4, p0, Lcom/xiaomi/scanner/camera/SoundPlayer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v4, :cond_0

    .line 65
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-ge v4, v5, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v2

    .line 68
    :cond_1
    iget-object v4, p0, Lcom/xiaomi/scanner/camera/SoundPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v3}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    .line 69
    .local v0, "deviceInfos":[Landroid/media/AudioDeviceInfo;
    if-eqz v0, :cond_0

    .line 70
    array-length v5, v0

    move v4, v2

    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .line 71
    .local v1, "info":Landroid/media/AudioDeviceInfo;
    invoke-virtual {v1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    .line 72
    invoke-virtual {v1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_2

    .line 73
    invoke-virtual {v1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_3

    :cond_2
    move v2, v3

    .line 74
    goto :goto_0

    .line 70
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public loadSound(I)V
    .locals 5
    .param p1, "resourceId"    # I

    .prologue
    .line 38
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p1, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    .line 39
    .local v1, "soundId":I
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/SoundPlayer;->mResourceToSoundId:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v1    # "soundId":I
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/xiaomi/scanner/camera/SoundPlayer;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadSound error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public play(IF)V
    .locals 8
    .param p1, "resourceId"    # I
    .param p2, "volume"    # F

    .prologue
    const/4 v4, 0x0

    .line 50
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/SoundPlayer;->isCanPlaySound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/SoundPlayer;->mResourceToSoundId:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 52
    .local v7, "soundId":Ljava/lang/Integer;
    if-nez v7, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Sound not loaded. Must call #loadSound first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/high16 v6, 0x3f800000    # 1.0f

    move v2, p2

    move v3, p2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 57
    .end local v7    # "soundId":Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/scanner/camera/SoundPlayer;->mIsReleased:Z

    .line 99
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 100
    return-void
.end method

.method public unloadSound(I)V
    .locals 3
    .param p1, "resourceId"    # I

    .prologue
    .line 86
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/SoundPlayer;->mResourceToSoundId:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 87
    .local v0, "soundId":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 88
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Sound not loaded. Must call #loadSound first."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->unload(I)Z

    .line 91
    return-void
.end method
