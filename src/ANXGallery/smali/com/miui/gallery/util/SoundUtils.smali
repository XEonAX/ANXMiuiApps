.class public Lcom/miui/gallery/util/SoundUtils;
.super Ljava/lang/Object;
.source "SoundUtils.java"


# direct methods
.method static synthetic access$000(Landroid/content/Context;I)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .prologue
    .line 18
    invoke-static {p0, p1}, Lcom/miui/gallery/util/SoundUtils;->internalPlaySoundForOperation(Landroid/content/Context;I)V

    return-void
.end method

.method private static getRingtoneUriForOperation(I)Landroid/net/Uri;
    .locals 4
    .param p0, "operationType"    # I

    .prologue
    .line 79
    const/4 v1, 0x0

    .line 80
    .local v1, "filePath":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 85
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 86
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 93
    .end local v0    # "file":Ljava/io/File;
    :goto_1
    return-object v2

    .line 82
    :pswitch_0
    const-string v1, "/system/media/audio/ui/Delete.ogg"

    goto :goto_0

    .line 90
    .restart local v0    # "file":Ljava/io/File;
    :cond_0
    const-string v2, "SoundUtils"

    const-string v3, "Sound file %s do not exist"

    invoke-static {v2, v3, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 80
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static internalPlaySoundForOperation(Landroid/content/Context;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "operationType"    # I

    .prologue
    .line 44
    invoke-static {p0, p1}, Lcom/miui/gallery/util/SoundUtils;->shouldPlaySoundForOperation(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 45
    const-string v2, "SoundUtils"

    const-string v3, "Shouldn\'t play sound for operation %s, just return"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-static {p1}, Lcom/miui/gallery/util/SoundUtils;->getRingtoneUriForOperation(I)Landroid/net/Uri;

    move-result-object v1

    .line 50
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_1

    .line 51
    const-string v2, "SoundUtils"

    const-string v3, "No sound resource found for operation %s"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 55
    :cond_1
    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 56
    .local v0, "ringtone":Landroid/media/Ringtone;
    if-nez v0, :cond_2

    .line 57
    const-string v2, "SoundUtils"

    const-string v3, "Get ringtone failed for operation %s, sound source %s"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 61
    :cond_2
    invoke-static {v0}, Lcom/miui/gallery/util/SoundUtils;->setRingtoneStream(Landroid/media/Ringtone;)V

    .line 62
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    goto :goto_0
.end method

.method public static playSoundForOperation(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "operationType"    # I

    .prologue
    .line 28
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/util/SoundUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/util/SoundUtils$1;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-static {p0, p1}, Lcom/miui/gallery/util/SoundUtils;->internalPlaySoundForOperation(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private static setRingtoneStream(Landroid/media/Ringtone;)V
    .locals 4
    .param p0, "ringtone"    # Landroid/media/Ringtone;

    .prologue
    const/4 v3, 0x1

    .line 97
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 98
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 99
    invoke-virtual {v1, v3}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 100
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 101
    .local v0, "audioAttributes":Landroid/media/AudioAttributes;
    invoke-virtual {p0, v0}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 105
    .end local v0    # "audioAttributes":Landroid/media/AudioAttributes;
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-virtual {p0, v3}, Landroid/media/Ringtone;->setStreamType(I)V

    goto :goto_0
.end method

.method private static shouldPlaySoundForOperation(Landroid/content/Context;I)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "operationType"    # I

    .prologue
    const/4 v2, 0x1

    .line 66
    if-nez p1, :cond_0

    .line 68
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "delete_sound_effect"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 69
    .local v1, "setting":I
    const-string v3, "SoundUtils"

    const-string v4, "Got sound setting value %d"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    if-lez v1, :cond_1

    .line 75
    .end local v1    # "setting":I
    :cond_0
    :goto_0
    return v2

    .line 70
    .restart local v1    # "setting":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 71
    .end local v1    # "setting":I
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "SoundUtils"

    invoke-static {v3, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
