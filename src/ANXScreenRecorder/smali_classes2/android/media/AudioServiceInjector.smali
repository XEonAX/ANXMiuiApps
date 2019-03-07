.class public Landroid/media/AudioServiceInjector;
.super Ljava/lang/Object;
.source "AudioServiceInjector.java"


# static fields
.field public static final ACTION_VOLUME_BOOST:Ljava/lang/String; = "miui.intent.action.VOLUME_BOOST"

.field public static final DEFAULT_VOL_STREAM_NO_PLAYBACK:I = 0x3

.field public static final EXTRA_BOOST_STATE:Ljava/lang/String; = "volume_boost_state"

.field private static final MUTE_TIME_INTERVAL_INDEX:I = 0x3

.field private static final RANDOM_SOUND_DEFALTE_URI:Ljava/lang/String; = "file:///system/media/audio/ui/notice_audition.ogg"

.field private static final RANDOM_SOUND_NUM_INDEX:I = 0x0

.field private static RANDOM_SOUND_PREFIX:Ljava/lang/String; = null

.field private static SEQUENCE_SOUND_PREFIX:Ljava/lang/String; = null

.field private static final SEQ_SOUND_NUM_INDEX:I = 0x1

.field private static final SEQ_TIME_INTERVAL_INDEX:I = 0x2

.field private static final SOUND_SUFFIX:Ljava/lang/String; = ".ogg"

.field private static final TAG:Ljava/lang/String; = "AudioService"

.field private static final availableDevice:I = 0x8c

.field private static final mContentResolverParameters:[Ljava/lang/String;

.field private static final mContentResolverTypes:[Ljava/lang/String;

.field private static mHasPlayedNormalNotification:Z

.field private static mLastNotificationTimeMs:J

.field private static mNotificationRandomSound:Z

.field public static mOriginalIndexWhenSetStreamVolume:I

.field private static mRandomSound:[Z

.field private static mSeqIndex:I

.field private static mTimeAndSoundNumParameters:[I

.field private static mTypes:Ljava/util/HashMap;

.field private static sAppList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 44
    const-string v0, "file:///system/media/audio/ui/notification_beep_sound_"

    sput-object v0, Landroid/media/AudioServiceInjector;->RANDOM_SOUND_PREFIX:Ljava/lang/String;

    .line 46
    const-string v0, "file:///system/media/audio/ui/notification_beep_soundseq_"

    sput-object v0, Landroid/media/AudioServiceInjector;->SEQUENCE_SOUND_PREFIX:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, "notification_sound"

    const-string/jumbo v1, "sms_received_sound"

    const-string/jumbo v2, "sms_received_sound_slot_1"

    const-string/jumbo v3, "sms_received_sound_slot_2"

    const-string v4, "calendar_alert"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/AudioServiceInjector;->mContentResolverTypes:[Ljava/lang/String;

    .line 55
    const-string/jumbo v0, "random_note_mode_random_sound_number"

    const-string/jumbo v1, "random_note_mode_sequence_sound_number"

    const-string/jumbo v2, "random_note_mode_sequence_time_interval_ms"

    const-string/jumbo v3, "random_note_mode_mute_time_interval_ms"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/AudioServiceInjector;->mContentResolverParameters:[Ljava/lang/String;

    .line 60
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    .line 61
    const/4 v0, 0x0

    sput v0, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    .line 62
    sput-boolean v0, Landroid/media/AudioServiceInjector;->mHasPlayedNormalNotification:Z

    .line 63
    const/4 v0, 0x1

    sput-boolean v0, Landroid/media/AudioServiceInjector;->mNotificationRandomSound:Z

    .line 65
    const/4 v1, 0x5

    new-array v1, v1, [Z

    fill-array-data v1, :array_70

    sput-object v1, Landroid/media/AudioServiceInjector;->mRandomSound:[Z

    .line 67
    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_78

    sput-object v1, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    .line 72
    new-instance v1, Landroid/media/AudioServiceInjector$1;

    invoke-direct {v1}, Landroid/media/AudioServiceInjector$1;-><init>()V

    sput-object v1, Landroid/media/AudioServiceInjector;->mTypes:Ljava/util/HashMap;

    .line 828
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/media/AudioServiceInjector;->sAppList:Ljava/util/HashMap;

    .line 830
    sget-object v1, Landroid/media/AudioServiceInjector;->sAppList:Ljava/util/HashMap;

    const-string v2, "com.changba"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    sget-object v0, Landroid/media/AudioServiceInjector;->sAppList:Ljava/util/HashMap;

    const-string v1, "com.tencent.karaoke"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    return-void

    :array_70
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_78
    .array-data 4
        0xa
        0x1
        0x3e8
        0x2710
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustDefaultStreamVolume([I)V
    .registers 3
    .param p0, "defaultStreamVolume"    # [I

    .line 224
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_11

    .line 225
    if-eqz v0, :cond_e

    const/4 v1, 0x6

    if-ne v0, v1, :cond_a

    .line 226
    goto :goto_e

    .line 228
    :cond_a
    const/16 v1, 0xa

    aput v1, p0, v0

    .line 224
    :cond_e
    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 230
    .end local v0    # "i":I
    :cond_11
    return-void
.end method

.method public static adjustHiFiVolume(ILandroid/content/Context;)V
    .registers 4
    .param p0, "direction"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 106
    invoke-static {p1}, Lmiui/util/AudioManagerHelper;->getHiFiVolume(Landroid/content/Context;)I

    move-result v0

    .line 108
    .local v0, "currentHiFiVolume":I
    const/4 v1, -0x1

    if-ne p0, v1, :cond_d

    .line 109
    add-int/lit8 v1, v0, -0xa

    invoke-static {p1, v1}, Lmiui/util/AudioManagerHelper;->setHiFiVolume(Landroid/content/Context;I)V

    goto :goto_19

    .line 110
    :cond_d
    const/4 v1, 0x1

    if-ne p0, v1, :cond_19

    const/16 v1, 0x64

    if-ge v0, v1, :cond_19

    .line 111
    add-int/lit8 v1, v0, 0xa

    invoke-static {p1, v1}, Lmiui/util/AudioManagerHelper;->setHiFiVolume(Landroid/content/Context;I)V

    .line 113
    :cond_19
    :goto_19
    return-void
.end method

.method public static adjustMaxStreamVolume([I)V
    .registers 3
    .param p0, "maxStreamVolume"    # [I

    .line 205
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_14

    .line 206
    if-eqz v0, :cond_11

    const/4 v1, 0x6

    if-eq v0, v1, :cond_11

    const/4 v1, 0x7

    if-ne v0, v1, :cond_d

    .line 209
    goto :goto_11

    .line 211
    :cond_d
    const/16 v1, 0xf

    aput v1, p0, v0

    .line 205
    :cond_11
    :goto_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 213
    .end local v0    # "i":I
    :cond_14
    return-void
.end method

.method public static adjustMinStreamVolume([I)V
    .registers 3
    .param p0, "minStreamVolume"    # [I

    .line 216
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_d

    .line 217
    const/4 v1, 0x6

    if-ne v0, v1, :cond_a

    .line 218
    const/4 v1, 0x1

    aput v1, p0, v0

    .line 216
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 221
    .end local v0    # "i":I
    :cond_d
    return-void
.end method

.method public static broadcastRecorderState(II)V
    .registers 7
    .param p0, "state"    # I
    .param p1, "sessionId"    # I

    .line 839
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastRecorderState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioServiceInjector;->supportKaraokeMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 841
    return-void

    .line 844
    :cond_25
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 845
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "miui.media.AUDIO_RECORD_STATE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 846
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 847
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 848
    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 849
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 851
    .local v1, "ident":J
    :try_start_45
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.miui.permission.AUDIO_RECORD_STATE_CHANGED_ACTION"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_45 .. :try_end_52} :catchall_57

    .line 853
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 854
    nop

    .line 855
    return-void

    .line 853
    :catchall_57
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public static calculateStreamMaxVolume(IILandroid/content/Context;)I
    .registers 5
    .param p0, "streamType"    # I
    .param p1, "maxIndex"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 182
    add-int/lit8 v0, p1, 0x5

    div-int/lit8 v0, v0, 0xa

    .line 183
    .local v0, "retValue":I
    const/4 v1, 0x3

    if-ne v1, p0, :cond_f

    invoke-static {p2}, Lmiui/util/AudioManagerHelper;->isHiFiMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 185
    add-int/lit8 v0, v0, 0xa

    .line 187
    :cond_f
    return v0
.end method

.method public static calculateStreamVolume(IILandroid/content/Context;)I
    .registers 5
    .param p0, "streamType"    # I
    .param p1, "index"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 174
    add-int/lit8 v0, p1, 0x5

    div-int/lit8 v0, v0, 0xa

    .line 175
    .local v0, "retValue":I
    const/4 v1, 0x3

    if-ne p0, v1, :cond_14

    invoke-static {p2}, Lmiui/util/AudioManagerHelper;->isHiFiMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 176
    invoke-static {p2}, Lmiui/util/AudioManagerHelper;->getHiFiVolume(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    .line 178
    :cond_14
    return v0
.end method

.method public static checkForRingerModeChange(Landroid/content/Context;III)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oldRingerMode"    # I
    .param p2, "newRingerMode"    # I
    .param p3, "direction"    # I

    .line 233
    invoke-static {p0, p2}, Lmiui/util/AudioManagerHelper;->getValidatedRingerMode(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static checkMusicStream([Ljava/lang/Object;Landroid/content/Context;II)V
    .registers 4
    .param p0, "object"    # [Ljava/lang/Object;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ringerMode"    # I
    .param p3, "dev"    # I

    .line 280
    return-void
.end method

.method public static getActiveStreamType(ZIIIZ)I
    .registers 11
    .param p0, "isInCommunication"    # Z
    .param p1, "platformType"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "streamOverrideDelayMs"    # I
    .param p4, "DEBUG_VOL"    # Z

    .line 713
    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/media/AudioServiceInjector;->getActiveStreamType(ZIIIZZ)I

    move-result v0

    return v0
.end method

.method public static getActiveStreamType(ZIIIZZ)I
    .registers 15
    .param p0, "isInCommunication"    # Z
    .param p1, "platformType"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "streamOverrideDelayMs"    # I
    .param p4, "DEBUG_VOL"    # Z
    .param p5, "lockVoiceAssistStream"    # Z

    .line 608
    invoke-static {}, Landroid/media/AudioServiceInjector;->getVoiceAssistNum()I

    move-result v0

    .line 609
    .local v0, "voiceAssistStream":I
    const/high16 v1, -0x80000000

    const/4 v2, 0x6

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-eq p1, v8, :cond_11

    goto/16 :goto_8c

    .line 611
    :cond_11
    if-eqz p0, :cond_1b

    .line 612
    invoke-static {v4}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v1

    if-ne v1, v7, :cond_1a

    .line 615
    return v2

    .line 618
    :cond_1a
    return v4

    .line 620
    :cond_1b
    if-eqz p5, :cond_2d

    .line 621
    if-eq v0, v3, :cond_2c

    invoke-static {v0, p3}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 622
    invoke-static {v7, p3}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 623
    return v7

    .line 625
    :cond_2c
    return v0

    .line 627
    :cond_2d
    if-eq v0, v3, :cond_3f

    invoke-static {v0, p3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v8

    if-eqz v8, :cond_3f

    .line 629
    if-eqz p4, :cond_3e

    const-string v1, "AudioService"

    const-string v2, "getActiveStreamType: Forcing STREAM_VOICEASSIST"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_3e
    return v0

    .line 631
    :cond_3f
    if-ne p2, v1, :cond_6b

    .line 632
    invoke-static {v6, p3}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 633
    if-eqz p4, :cond_50

    .line 634
    const-string v1, "AudioService"

    const-string v2, "getActiveStreamType: Forcing STREAM_RING stream active"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_50
    return v6

    .line 636
    :cond_51
    invoke-static {v5, p3}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 638
    if-eqz p4, :cond_60

    .line 639
    const-string v1, "AudioService"

    const-string v2, "getActiveStreamType: Forcing STREAM_NOTIFICATION stream active"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_60
    return v5

    .line 642
    :cond_61
    if-eqz p4, :cond_6a

    .line 643
    const-string v1, "AudioService"

    const-string v2, "getActiveStreamType: Forcing DEFAULT_VOL_STREAM_NO_PLAYBACK(3) b/c default"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :cond_6a
    return v7

    .line 648
    :cond_6b
    nop

    .line 649
    invoke-static {v5, p3}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v8

    if-eqz v8, :cond_7c

    .line 650
    if-eqz p4, :cond_7b

    .line 651
    const-string v1, "AudioService"

    const-string v2, "getActiveStreamType: Forcing STREAM_NOTIFICATION stream active"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_7b
    return v5

    .line 653
    :cond_7c
    invoke-static {v6, p3}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v8

    if-eqz v8, :cond_8c

    .line 654
    if-eqz p4, :cond_8b

    .line 655
    const-string v1, "AudioService"

    const-string v2, "getActiveStreamType: Forcing STREAM_RING stream active"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_8b
    return v6

    .line 659
    :cond_8c
    :goto_8c
    if-eqz p0, :cond_a8

    .line 660
    invoke-static {v4}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v1

    if-ne v1, v7, :cond_9e

    .line 662
    if-eqz p4, :cond_9d

    const-string v1, "AudioService"

    const-string v3, "getActiveStreamType: Forcing STREAM_BLUETOOTH_SCO"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_9d
    return v2

    .line 665
    :cond_9e
    if-eqz p4, :cond_a7

    const-string v1, "AudioService"

    const-string v2, "getActiveStreamType: Forcing STREAM_VOICE_CALL"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_a7
    return v4

    .line 668
    :cond_a8
    if-eqz p5, :cond_ba

    .line 669
    if-eq v0, v3, :cond_b9

    invoke-static {v0, p3}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v1

    if-nez v1, :cond_b9

    .line 670
    invoke-static {v7, p3}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 671
    return v7

    .line 673
    :cond_b9
    return v0

    .line 675
    :cond_ba
    invoke-static {v5, p3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_ca

    .line 677
    if-eqz p4, :cond_c9

    const-string v1, "AudioService"

    const-string v2, "getActiveStreamType: Forcing STREAM_NOTIFICATION"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_c9
    return v5

    .line 679
    :cond_ca
    invoke-static {v6, p3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_da

    .line 681
    if-eqz p4, :cond_d9

    const-string v1, "AudioService"

    const-string v2, "getActiveStreamType: Forcing STREAM_RING"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_d9
    return v6

    .line 683
    :cond_da
    if-eq v0, v3, :cond_ec

    invoke-static {v0, p3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_ec

    .line 685
    if-eqz p4, :cond_eb

    const-string v1, "AudioService"

    const-string v2, "getActiveStreamType: Forcing STREAM_VOICEASSIST"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_eb
    return v0

    .line 687
    :cond_ec
    if-ne p2, v1, :cond_118

    .line 688
    invoke-static {v5, p3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_fe

    .line 690
    if-eqz p4, :cond_fd

    const-string v1, "AudioService"

    const-string v2, "getActiveStreamType: Forcing STREAM_NOTIFICATION"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_fd
    return v5

    .line 692
    :cond_fe
    invoke-static {v6, p3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_10e

    .line 694
    if-eqz p4, :cond_10d

    const-string v1, "AudioService"

    const-string v2, "getActiveStreamType: Forcing STREAM_RING"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_10d
    return v6

    .line 697
    :cond_10e
    if-eqz p4, :cond_117

    .line 698
    const-string v1, "AudioService"

    const-string v2, "getActiveStreamType: Forcing DEFAULT_VOL_STREAM_NO_PLAYBACK(3) b/c default"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :cond_117
    return v7

    .line 706
    :cond_118
    if-eqz p4, :cond_130

    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActiveStreamType: Returning suggested type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_130
    return p2
.end method

.method public static getDefaultVolStreamNoPlayback(I)I
    .registers 2
    .param p0, "defaultType"    # I

    .line 731
    invoke-static {}, Landroid/media/AudioServiceInjector;->isXOptMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 732
    return p0

    .line 734
    :cond_7
    const/4 v0, 0x3

    return v0
.end method

.method private static getIndexForType(Ljava/lang/String;)I
    .registers 4
    .param p0, "type"    # Ljava/lang/String;

    .line 580
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIndexForType() type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    sget-object v0, Landroid/media/AudioServiceInjector;->mTypes:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getNotificationUri()Ljava/lang/String;
    .registers 13

    .line 450
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 451
    .local v0, "time":J
    const/4 v2, 0x0

    .line 453
    .local v2, "path":Ljava/lang/String;
    sget-boolean v3, Landroid/media/AudioServiceInjector;->mNotificationRandomSound:Z

    const/4 v4, 0x2

    const/4 v5, 0x3

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v3, :cond_4b

    .line 454
    const/4 v3, 0x1

    .line 455
    .local v3, "isNeedMute":Z
    sget-wide v10, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    cmp-long v6, v10, v6

    if-eqz v6, :cond_3f

    sget-wide v6, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    sub-long v6, v0, v6

    sget-object v10, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    aget v5, v10, v5

    int-to-long v10, v5

    cmp-long v5, v6, v10

    if-lez v5, :cond_24

    goto :goto_3f

    .line 460
    :cond_24
    sget-wide v5, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    sub-long v5, v0, v5

    sget-object v7, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    aget v4, v7, v4

    int-to-long v7, v4

    cmp-long v4, v5, v7

    if-gtz v4, :cond_39

    .line 462
    sget-boolean v4, Landroid/media/AudioServiceInjector;->mHasPlayedNormalNotification:Z

    if-nez v4, :cond_42

    .line 463
    sput-boolean v9, Landroid/media/AudioServiceInjector;->mHasPlayedNormalNotification:Z

    .line 464
    const/4 v3, 0x0

    goto :goto_42

    .line 466
    :cond_39
    sget-boolean v4, Landroid/media/AudioServiceInjector;->mHasPlayedNormalNotification:Z

    if-nez v4, :cond_42

    .line 467
    const/4 v3, 0x0

    goto :goto_42

    .line 458
    :cond_3f
    :goto_3f
    const/4 v3, 0x0

    .line 459
    sput-boolean v8, Landroid/media/AudioServiceInjector;->mHasPlayedNormalNotification:Z

    .line 470
    :cond_42
    :goto_42
    if-nez v3, :cond_49

    .line 471
    const-string/jumbo v2, "normal_notification"

    .line 472
    sput-wide v0, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    .line 474
    .end local v3    # "isNeedMute":Z
    :cond_49
    goto/16 :goto_cb

    .line 475
    :cond_4b
    const/4 v3, 0x0

    .line 476
    .local v3, "playRandom":Z
    const/4 v10, 0x0

    .line 478
    .local v10, "playSeq":Z
    sget-wide v11, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    cmp-long v6, v11, v6

    if-eqz v6, :cond_83

    sget-wide v6, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    sub-long v6, v0, v6

    sget-object v11, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    aget v5, v11, v5

    int-to-long v11, v5

    cmp-long v5, v6, v11

    if-lez v5, :cond_61

    goto :goto_83

    .line 483
    :cond_61
    sget-wide v5, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    sub-long v5, v0, v5

    sget-object v7, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    aget v4, v7, v4

    int-to-long v11, v4

    cmp-long v4, v5, v11

    if-gtz v4, :cond_7d

    .line 485
    sget v4, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    sget-object v5, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    aget v5, v5, v9

    if-ge v4, v5, :cond_86

    .line 486
    sget v4, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    add-int/2addr v4, v9

    sput v4, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    .line 487
    const/4 v10, 0x1

    goto :goto_86

    .line 489
    :cond_7d
    sget v4, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    if-nez v4, :cond_86

    .line 490
    const/4 v3, 0x1

    goto :goto_86

    .line 481
    :cond_83
    :goto_83
    const/4 v3, 0x1

    .line 482
    sput v8, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    .line 493
    :cond_86
    :goto_86
    if-eqz v3, :cond_af

    .line 494
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    sget-object v5, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    aget v5, v5, v8

    .line 495
    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v4, v9

    .line 496
    .local v4, "index":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 497
    .local v5, "stringBuilder":Ljava/lang/StringBuilder;
    sget-object v6, Landroid/media/AudioServiceInjector;->RANDOM_SOUND_PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 499
    const-string v6, ".ogg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 501
    sput-wide v0, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    .line 502
    .end local v4    # "index":I
    .end local v5    # "stringBuilder":Ljava/lang/StringBuilder;
    goto :goto_cb

    :cond_af
    if-eqz v10, :cond_cb

    .line 503
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 504
    .local v4, "stringBuilder":Ljava/lang/StringBuilder;
    sget-object v5, Landroid/media/AudioServiceInjector;->SEQUENCE_SOUND_PREFIX:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    sget v5, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 506
    const-string v5, ".ogg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 508
    sput-wide v0, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    .line 511
    .end local v3    # "playRandom":Z
    .end local v4    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v10    # "playSeq":Z
    :cond_cb
    :goto_cb
    return-object v2
.end method

.method public static getNotificationUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p0, "type"    # Ljava/lang/String;

    .line 515
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 516
    .local v0, "time":J
    const/4 v2, 0x0

    .line 518
    .local v2, "path":Ljava/lang/String;
    invoke-static {p0}, Landroid/media/AudioServiceInjector;->getIndexForType(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/media/AudioServiceInjector;->playRandomSound(I)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x3

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v3, :cond_58

    .line 519
    const/4 v3, 0x1

    .line 520
    .local v3, "isNeedMute":Z
    sget-wide v10, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    cmp-long v6, v10, v6

    if-eqz v6, :cond_4c

    sget-wide v6, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    sub-long v6, v0, v6

    sget-object v10, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    aget v5, v10, v5

    int-to-long v10, v5

    cmp-long v5, v6, v10

    if-lez v5, :cond_2a

    goto :goto_4c

    .line 525
    :cond_2a
    sget-wide v5, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    sub-long v5, v0, v5

    sget-object v7, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    aget v4, v7, v4

    int-to-long v7, v4

    cmp-long v4, v5, v7

    if-gtz v4, :cond_46

    .line 527
    sget v4, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    sget-object v5, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    aget v5, v5, v9

    if-ge v4, v5, :cond_4f

    .line 528
    sget v4, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    add-int/2addr v4, v9

    sput v4, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    .line 529
    const/4 v3, 0x0

    goto :goto_4f

    .line 531
    :cond_46
    sget v4, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    if-nez v4, :cond_4f

    .line 532
    const/4 v3, 0x0

    goto :goto_4f

    .line 523
    :cond_4c
    :goto_4c
    const/4 v3, 0x0

    .line 524
    sput v8, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    .line 535
    :cond_4f
    :goto_4f
    if-nez v3, :cond_56

    .line 536
    const-string/jumbo v2, "normal_notification"

    .line 537
    sput-wide v0, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    .line 539
    .end local v3    # "isNeedMute":Z
    :cond_56
    goto/16 :goto_d8

    .line 540
    :cond_58
    const/4 v3, 0x0

    .line 541
    .local v3, "playRandom":Z
    const/4 v10, 0x0

    .line 543
    .local v10, "playSeq":Z
    sget-wide v11, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    cmp-long v6, v11, v6

    if-eqz v6, :cond_90

    sget-wide v6, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    sub-long v6, v0, v6

    sget-object v11, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    aget v5, v11, v5

    int-to-long v11, v5

    cmp-long v5, v6, v11

    if-lez v5, :cond_6e

    goto :goto_90

    .line 548
    :cond_6e
    sget-wide v5, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    sub-long v5, v0, v5

    sget-object v7, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    aget v4, v7, v4

    int-to-long v11, v4

    cmp-long v4, v5, v11

    if-gtz v4, :cond_8a

    .line 550
    sget v4, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    sget-object v5, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    aget v5, v5, v9

    if-ge v4, v5, :cond_93

    .line 551
    sget v4, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    add-int/2addr v4, v9

    sput v4, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    .line 552
    const/4 v10, 0x1

    goto :goto_93

    .line 554
    :cond_8a
    sget v4, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    if-nez v4, :cond_93

    .line 555
    const/4 v3, 0x1

    goto :goto_93

    .line 546
    :cond_90
    :goto_90
    const/4 v3, 0x1

    .line 547
    sput v8, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    .line 558
    :cond_93
    :goto_93
    if-eqz v3, :cond_bc

    .line 559
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    sget-object v5, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    aget v5, v5, v8

    .line 560
    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v4, v9

    .line 561
    .local v4, "index":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 562
    .local v5, "stringBuilder":Ljava/lang/StringBuilder;
    sget-object v6, Landroid/media/AudioServiceInjector;->RANDOM_SOUND_PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 564
    const-string v6, ".ogg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 566
    sput-wide v0, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    .line 567
    .end local v4    # "index":I
    .end local v5    # "stringBuilder":Ljava/lang/StringBuilder;
    goto :goto_d8

    :cond_bc
    if-eqz v10, :cond_d8

    .line 568
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 569
    .local v4, "stringBuilder":Ljava/lang/StringBuilder;
    sget-object v5, Landroid/media/AudioServiceInjector;->SEQUENCE_SOUND_PREFIX:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    sget v5, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 571
    const-string v5, ".ogg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 573
    sput-wide v0, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    .line 576
    .end local v3    # "playRandom":Z
    .end local v4    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v10    # "playSeq":Z
    :cond_d8
    :goto_d8
    return-object v2
.end method

.method public static getRingerModeAffectedStreams(ILandroid/content/Context;)I
    .registers 9
    .param p0, "streams"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 245
    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-nez v0, :cond_5

    return p0

    .line 247
    :cond_5
    invoke-static {}, Landroid/media/AudioServiceInjector;->getVoiceAssistNum()I

    move-result v0

    .line 248
    .local v0, "voiceAssistStream":I
    invoke-static {p1}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_41

    .line 250
    or-int/lit8 p0, p0, 0x26

    .line 254
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mute_music_at_silent"

    const/4 v5, -0x3

    invoke-static {v1, v2, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 257
    .local v1, "muteMusic":I
    and-int/lit8 p0, p0, -0x9

    .line 258
    if-ne v1, v4, :cond_27

    const/16 v2, 0x8

    goto :goto_28

    :cond_27
    move v2, v3

    :goto_28
    or-int/2addr p0, v2

    .line 259
    if-lez v0, :cond_41

    .line 260
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v6, "mute_voiceassit_at_silent"

    invoke-static {v2, v6, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 262
    .local v2, "muteVoiceAssist":I
    shl-int v5, v4, v0

    not-int v5, v5

    and-int/2addr p0, v5

    .line 263
    if-ne v2, v4, :cond_3f

    shl-int v5, v4, v0

    goto :goto_40

    :cond_3f
    move v5, v3

    :goto_40
    or-int/2addr p0, v5

    .line 267
    .end local v1    # "muteMusic":I
    .end local v2    # "muteVoiceAssist":I
    :cond_41
    invoke-static {p1}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v4, :cond_57

    .line 268
    const/16 p0, 0x100

    .line 269
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_50

    .line 270
    goto :goto_51

    :cond_50
    const/4 v3, 0x2

    :goto_51
    or-int/2addr p0, v3

    .line 271
    if-lez v0, :cond_57

    .line 272
    shl-int v1, v4, v0

    or-int/2addr p0, v1

    .line 276
    :cond_57
    return p0
.end method

.method public static getVoiceAssistNum()I
    .registers 3

    .line 802
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_16

    .line 803
    const-string v1, "STREAM_VOICEASSIST"

    sget-object v2, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 804
    return v0

    .line 802
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 807
    .end local v0    # "i":I
    :cond_16
    const/4 v0, -0x1

    return v0
.end method

.method public static handleAudioStatusChanged(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 797
    invoke-static {p0}, Landroid/media/AudioStatusHandler;->getInstance(Landroid/content/Context;)Landroid/media/AudioStatusHandler;

    move-result-object v0

    .line 798
    .local v0, "statusHandler":Landroid/media/AudioStatusHandler;
    invoke-virtual {v0, p1}, Landroid/media/AudioStatusHandler;->handleAudioStatusChanged(Landroid/os/Bundle;)V

    .line 799
    return-void
.end method

.method public static handleModeChanged(Landroid/content/Context;II)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pid"    # I
    .param p2, "mode"    # I

    .line 780
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 781
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "usage"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 782
    const-string/jumbo v1, "pid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 783
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 784
    invoke-static {p0, v0}, Landroid/media/AudioServiceInjector;->handleAudioStatusChanged(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 785
    return-void
.end method

.method public static handleSetForceUse(Landroid/content/Context;IILjava/lang/String;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "usage"    # I
    .param p2, "config"    # I
    .param p3, "eventSource"    # Ljava/lang/String;

    .line 792
    invoke-static {p0}, Landroid/media/AudioStatusHandler;->getInstance(Landroid/content/Context;)Landroid/media/AudioStatusHandler;

    move-result-object v0

    .line 793
    .local v0, "statusHandler":Landroid/media/AudioStatusHandler;
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioStatusHandler;->handleSetForceUse(IILjava/lang/String;)V

    .line 794
    return-void
.end method

.method public static handleSpeakerChanged(Landroid/content/Context;IZ)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pid"    # I
    .param p2, "speakeron"    # Z

    .line 788
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "None thiing for handleSpeakerChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    return-void
.end method

.method public static handleZenModeChangedForMusic(Ljava/lang/Object;Landroid/content/Context;IIII[I)V
    .registers 10
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preZenMode"    # I
    .param p3, "zenmode"    # I
    .param p4, "maxIndexSrc"    # I
    .param p5, "maxIndexDsts"    # I
    .param p6, "streamVolumeAlias"    # [I

    .line 310
    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v0, :cond_39

    if-eq p3, p2, :cond_39

    invoke-static {}, Landroid/media/AudioServiceInjector;->isXOptMode()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_39

    .line 314
    :cond_d
    const/4 v0, 0x1

    if-ne p3, v0, :cond_14

    .line 315
    invoke-static {p0, p1, p4, p5, p6}, Landroid/media/AudioServiceInjector;->saveAllDevicesMusicVolume(Ljava/lang/Object;Landroid/content/Context;II[I)V

    goto :goto_19

    .line 316
    :cond_14
    if-ne p2, v0, :cond_19

    .line 317
    invoke-static {p0, p1, p4, p5, p6}, Landroid/media/AudioServiceInjector;->restoreAllDevicesMusicVolume(Ljava/lang/Object;Landroid/content/Context;II[I)V

    .line 319
    :cond_19
    :goto_19
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "on change zenmode from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return-void

    .line 311
    :cond_39
    :goto_39
    return-void
.end method

.method public static handleZenModeVolumeChanged(Landroid/content/Context;III)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "streamType"    # I
    .param p2, "device"    # I
    .param p3, "index"    # I

    .line 285
    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v0, :cond_4c

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4c

    .line 287
    invoke-static {p0}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4c

    .line 288
    invoke-static {}, Landroid/media/AudioServiceInjector;->isXOptMode()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_4c

    .line 292
    :cond_15
    const-string/jumbo v0, "volume_music_before_mute"

    .line 293
    .local v0, "nameForMute":Ljava/lang/String;
    invoke-static {p2}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "suffix":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 296
    return-void

    .line 298
    :cond_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 299
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 300
    .local v2, "identity":J
    nop

    .line 301
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    add-int/lit8 v5, p3, 0x5

    div-int/lit8 v5, v5, 0xa

    const/4 v6, -0x2

    .line 300
    invoke-static {v4, v0, v5, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 305
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 306
    return-void

    .line 289
    .end local v0    # "nameForMute":Ljava/lang/String;
    .end local v1    # "suffix":Ljava/lang/String;
    .end local v2    # "identity":J
    :cond_4c
    :goto_4c
    return-void
.end method

.method public static isActiveForReal(ZI)Z
    .registers 4
    .param p0, "orgActiveForReal"    # Z
    .param p1, "maybeActiveStreamType"    # I

    .line 718
    invoke-static {}, Landroid/media/AudioServiceInjector;->isXOptMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 719
    return p0

    .line 722
    :cond_7
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_14

    const/4 v0, 0x5

    if-ne p1, v0, :cond_f

    goto :goto_14

    .line 726
    :cond_f
    invoke-static {p1, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    return v0

    .line 724
    :cond_14
    :goto_14
    invoke-static {p1, v1}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v0

    return v0
.end method

.method public static isAppCalledInCall(Landroid/content/Context;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .line 811
    const/4 v0, 0x0

    .line 812
    .local v0, "isInCall":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_45

    .line 814
    const-string/jumbo v1, "telecom"

    .line 815
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    .line 817
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 818
    .local v2, "ident":J
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    .line 819
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 820
    if-eqz v0, :cond_45

    .line 821
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "called from app when in call: pid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 821
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    .end local v1    # "telecomManager":Landroid/telecom/TelecomManager;
    .end local v2    # "ident":J
    :cond_45
    return v0
.end method

.method public static isOnlyAdjustVolume(I)Z
    .registers 2
    .param p0, "flags"    # I

    .line 191
    const/high16 v0, 0x100000

    and-int/2addr v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static isOnlyAdjustVolume(III)Z
    .registers 4
    .param p0, "flags"    # I
    .param p1, "stream"    # I
    .param p2, "mode"    # I

    .line 200
    const/high16 v0, 0x100000

    and-int/2addr v0, p0

    if-nez v0, :cond_11

    const/4 v0, 0x2

    if-ne p1, v0, :cond_f

    .line 201
    invoke-static {}, Landroid/media/AudioServiceInjector;->isXOptMode()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    .line 200
    :goto_12
    return v0
.end method

.method public static isPackageProtectedWhenUserBackground(ILandroid/content/pm/PackageInfo;)Z
    .registers 3
    .param p0, "userId"    # I
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;

    .line 237
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, p0}, Lmiui/process/ProcessManager;->isLockedApplication(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isXOptMode()Z
    .registers 3

    .line 195
    const-string/jumbo v0, "persist.sys.miui_optimization"

    const-string v1, "1"

    const-string/jumbo v2, "ro.miui.cts"

    .line 196
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 195
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static needEnableVoiceVolumeBoost(IZIIZ)Z
    .registers 10
    .param p0, "direction"    # I
    .param p1, "isMaxVol"    # Z
    .param p2, "device"    # I
    .param p3, "streamTypeAlias"    # I
    .param p4, "boostEnabled"    # Z

    .line 739
    invoke-static {}, Landroid/media/AudioServiceInjector;->isXOptMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_61

    if-nez p3, :cond_61

    const/4 v0, 0x1

    if-ne p2, v0, :cond_61

    const-string/jumbo v2, "manual"

    const-string/jumbo v3, "ro.vendor.audio.voice.volume.boost"

    .line 742
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_61

    .line 745
    :cond_1d
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "direction:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isMaxVol:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " device:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " streamTypeAlias:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " boostEnabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    if-ne p0, v0, :cond_5a

    if-eqz p1, :cond_5a

    if-nez p4, :cond_5a

    .line 750
    return v0

    .line 752
    :cond_5a
    const/4 v2, -0x1

    if-ne p0, v2, :cond_60

    if-eqz p4, :cond_60

    .line 754
    return v0

    .line 756
    :cond_60
    return v1

    .line 743
    :cond_61
    :goto_61
    return v1
.end method

.method private static onSetStreamVolumeIntAlt(Ljava/lang/Object;IIII[ILandroid/content/Context;)V
    .registers 23
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "device"    # I
    .param p4, "maxIndex"    # I
    .param p5, "streamVolumeAlias"    # [I
    .param p6, "context"    # Landroid/content/Context;

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 124
    :try_start_4
    invoke-static/range {p6 .. p6}, Lmiui/util/AudioManagerHelper;->isHiFiMode(Landroid/content/Context;)Z

    move-result v0

    .line 125
    .local v0, "isHiFiMode":Z
    const/4 v3, 0x0

    .line 126
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object v3, v4

    .line 127
    const/4 v4, 0x0

    .line 128
    .local v4, "method":Ljava/lang/reflect/Method;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-lt v5, v6, :cond_3c

    .line 129
    if-eqz v3, :cond_58

    .line 130
    const-string/jumbo v5, "setStreamVolumeInt"

    new-array v13, v7, [Ljava/lang/Class;

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v13, v12

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v13, v11

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v13, v9

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v14, v13, v10

    const-class v14, Ljava/lang/String;

    aput-object v14, v13, v8

    invoke-virtual {v3, v5, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v4, v5

    goto :goto_58

    .line 134
    :cond_3c
    if-eqz v3, :cond_58

    .line 135
    const-string/jumbo v5, "setStreamVolumeInt"

    new-array v13, v8, [Ljava/lang/Class;

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v13, v12

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v13, v11

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v13, v9

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v14, v13, v10

    invoke-virtual {v3, v5, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_57
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_57} :catch_16b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_57} :catch_160
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_57} :catch_155
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_57} :catch_14a

    move-object v4, v5

    .line 139
    :cond_58
    :goto_58
    if-ne v10, v2, :cond_ce

    if-eqz v0, :cond_ce

    move/from16 v5, p2

    move/from16 v13, p4

    if-lt v5, v13, :cond_d2

    .line 140
    move v14, v13

    .line 141
    .local v14, "rawStreamMaxIndex":I
    if-eqz v4, :cond_be

    .line 142
    :try_start_65
    invoke-virtual {v4, v11}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 143
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v6, :cond_91

    .line 144
    new-array v6, v7, [Ljava/lang/Object;

    aget v7, p5, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v12

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v10

    const-string v7, "AudioService"

    const/4 v8, 0x4

    aput-object v7, v6, v8

    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_be

    .line 146
    :cond_91
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aget v7, p5, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v12

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_be

    .line 168
    .end local v0    # "isHiFiMode":Z
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v14    # "rawStreamMaxIndex":I
    :catch_b2
    move-exception v0

    goto/16 :goto_14f

    .line 166
    :catch_b5
    move-exception v0

    goto/16 :goto_15a

    .line 164
    :catch_b8
    move-exception v0

    goto/16 :goto_165

    .line 162
    :catch_bb
    move-exception v0

    goto/16 :goto_170

    .line 149
    .restart local v0    # "isHiFiMode":Z
    .restart local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "method":Ljava/lang/reflect/Method;
    .restart local v14    # "rawStreamMaxIndex":I
    :cond_be
    :goto_be
    add-int/lit8 v6, v14, 0x5

    div-int/lit8 v6, v6, 0xa

    .line 150
    .local v6, "streamMaxIndex":I
    sget v7, Landroid/media/AudioServiceInjector;->mOriginalIndexWhenSetStreamVolume:I
    :try_end_c4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_65 .. :try_end_c4} :catch_bb
    .catch Ljava/lang/NoSuchMethodException; {:try_start_65 .. :try_end_c4} :catch_b8
    .catch Ljava/lang/IllegalAccessException; {:try_start_65 .. :try_end_c4} :catch_b5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_65 .. :try_end_c4} :catch_b2

    sub-int/2addr v7, v6

    mul-int/lit8 v7, v7, 0xa

    move-object/from16 v8, p6

    :try_start_c9
    invoke-static {v8, v7}, Lmiui/util/AudioManagerHelper;->setHiFiVolume(Landroid/content/Context;I)V

    .line 151
    .end local v6    # "streamMaxIndex":I
    .end local v14    # "rawStreamMaxIndex":I
    goto/16 :goto_175

    .line 152
    :cond_ce
    move/from16 v5, p2

    move/from16 v13, p4

    :cond_d2
    move-object/from16 v8, p6

    if-eqz v4, :cond_175

    .line 153
    invoke-virtual {v4, v11}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 154
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v14, v6, :cond_121

    .line 155
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Pid:"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " Uid:"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 156
    .local v6, "tag":Ljava/lang/String;
    new-array v7, v7, [Ljava/lang/Object;

    aget v14, p5, v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v7, v12

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v7, v11

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v9

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v10

    const/4 v9, 0x4

    aput-object v6, v7, v9

    invoke-virtual {v4, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .end local v6    # "tag":Ljava/lang/String;
    goto :goto_175

    .line 158
    :cond_121
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aget v7, p5, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v12

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_141
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_c9 .. :try_end_141} :catch_148
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c9 .. :try_end_141} :catch_146
    .catch Ljava/lang/IllegalAccessException; {:try_start_c9 .. :try_end_141} :catch_144
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c9 .. :try_end_141} :catch_142

    .end local v0    # "isHiFiMode":Z
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "method":Ljava/lang/reflect/Method;
    goto :goto_175

    .line 168
    :catch_142
    move-exception v0

    goto :goto_151

    .line 166
    :catch_144
    move-exception v0

    goto :goto_15c

    .line 164
    :catch_146
    move-exception v0

    goto :goto_167

    .line 162
    :catch_148
    move-exception v0

    goto :goto_172

    .line 168
    :catch_14a
    move-exception v0

    move/from16 v5, p2

    move/from16 v13, p4

    :goto_14f
    move-object/from16 v8, p6

    .line 169
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_151
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 169
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_176

    .line 166
    :catch_155
    move-exception v0

    move/from16 v5, p2

    move/from16 v13, p4

    :goto_15a
    move-object/from16 v8, p6

    .line 167
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :goto_15c
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 167
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_175

    .line 164
    :catch_160
    move-exception v0

    move/from16 v5, p2

    move/from16 v13, p4

    :goto_165
    move-object/from16 v8, p6

    .line 165
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :goto_167
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 165
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_175

    .line 162
    :catch_16b
    move-exception v0

    move/from16 v5, p2

    move/from16 v13, p4

    :goto_170
    move-object/from16 v8, p6

    .line 163
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    :goto_172
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    .line 170
    .end local v0    # "e":Ljava/lang/UnsupportedOperationException;
    :cond_175
    :goto_175
    nop

    .line 171
    :goto_176
    return-void
.end method

.method private static playRandomSound(I)Z
    .registers 2
    .param p0, "index"    # I

    .line 585
    const/4 v0, -0x1

    if-eq p0, v0, :cond_8

    .line 586
    sget-object v0, Landroid/media/AudioServiceInjector;->mRandomSound:[Z

    aget-boolean v0, v0, p0

    return v0

    .line 588
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private static restoreAllDevicesMusicVolume(Ljava/lang/Object;Landroid/content/Context;II[I)V
    .registers 15
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxIndexSrc"    # I
    .param p3, "maxIndexDst"    # I
    .param p4, "streamVolumeAlias"    # [I

    .line 360
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 361
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const v1, 0xfffffff

    .line 362
    .local v1, "remainingDevices":I
    const/4 v2, 0x0

    .line 362
    .local v2, "i":I
    :goto_8
    if-eqz v1, :cond_5b

    .line 363
    const-string/jumbo v3, "volume_music"

    .line 364
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v4, "volume_music_before_mute"

    .line 366
    .local v4, "nameForMute":Ljava/lang/String;
    const/4 v5, 0x1

    shl-int/2addr v5, v2

    .line 367
    .local v5, "device":I
    and-int v6, v5, v1

    if-nez v6, :cond_17

    .line 368
    goto :goto_58

    .line 370
    :cond_17
    not-int v6, v5

    and-int/2addr v1, v6

    .line 373
    invoke-static {v5}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v6

    .line 374
    .local v6, "suffix":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4b

    .line 375
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 376
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 379
    :cond_4b
    const/16 v7, 0xa

    const/4 v8, -0x2

    invoke-static {v0, v4, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    .line 381
    .local v7, "volume":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_58

    .line 383
    invoke-static {v0, v3, v7, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 362
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "nameForMute":Ljava/lang/String;
    .end local v5    # "device":I
    .end local v6    # "suffix":Ljava/lang/String;
    .end local v7    # "volume":I
    :cond_58
    :goto_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 392
    .end local v2    # "i":I
    :cond_5b
    invoke-static {p0}, Landroid/media/AudioServiceInjector;->updateMusicStreamVolume(Ljava/lang/Object;)V

    .line 393
    return-void
.end method

.method private static saveAllDevicesMusicVolume(Ljava/lang/Object;Landroid/content/Context;II[I)V
    .registers 22
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxIndexSrc"    # I
    .param p3, "maxIndexDst"    # I
    .param p4, "streamVolumeAlias"    # [I

    .line 324
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 325
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const v1, 0xfffffff

    .line 326
    .local v1, "remainingDevices":I
    const/4 v2, 0x0

    .line 326
    .local v2, "i":I
    :goto_8
    if-eqz v1, :cond_69

    .line 327
    const-string/jumbo v3, "volume_music"

    .line 328
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v4, "volume_music_before_mute"

    .line 329
    .local v4, "nameForMute":Ljava/lang/String;
    const/4 v5, 0x1

    shl-int/2addr v5, v2

    .line 330
    .local v5, "device":I
    and-int v6, v5, v1

    if-nez v6, :cond_17

    .line 331
    goto :goto_66

    .line 333
    :cond_17
    not-int v6, v5

    and-int/2addr v1, v6

    .line 336
    invoke-static {v5}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v13

    .line 337
    .local v13, "suffix":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4b

    .line 338
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 339
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 342
    :cond_4b
    const/4 v14, -0x2

    const/4 v15, -0x1

    invoke-static {v0, v3, v15, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    .line 345
    .local v12, "volume":I
    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object/from16 v6, p0

    move v9, v5

    move/from16 v10, p3

    move-object/from16 v11, p4

    move v14, v12

    move-object/from16 v12, p1

    .line 345
    .end local v12    # "volume":I
    .local v14, "volume":I
    invoke-static/range {v6 .. v12}, Landroid/media/AudioServiceInjector;->onSetStreamVolumeIntAlt(Ljava/lang/Object;IIII[ILandroid/content/Context;)V

    .line 348
    if-eq v14, v15, :cond_66

    .line 349
    const/4 v6, -0x2

    invoke-static {v0, v4, v14, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 326
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "nameForMute":Ljava/lang/String;
    .end local v5    # "device":I
    .end local v13    # "suffix":Ljava/lang/String;
    .end local v14    # "volume":I
    :cond_66
    :goto_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 356
    .end local v2    # "i":I
    :cond_69
    return-void
.end method

.method public static sendVolumeBoostBroadcast(ZLandroid/content/Context;)V
    .registers 6
    .param p0, "boostEnabled"    # Z
    .param p1, "context"    # Landroid/content/Context;

    .line 769
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 771
    .local v0, "ident":J
    :try_start_4
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "miui.intent.action.VOLUME_BOOST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 772
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "volume_boost_state"

    invoke-virtual {v2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 773
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_1c

    .line 775
    .end local v2    # "intent":Landroid/content/Intent;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 776
    nop

    .line 777
    return-void

    .line 775
    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public static setStreamVolumeIntAlt(Ljava/lang/Object;IIII[ILandroid/content/Context;)V
    .registers 8
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "device"    # I
    .param p4, "maxIndex"    # I
    .param p5, "streamVolumeAlias"    # [I
    .param p6, "context"    # Landroid/content/Context;

    .line 117
    aget v0, p5, p1

    invoke-static {p6, v0, p3, p2}, Landroid/media/AudioServiceInjector;->handleZenModeVolumeChanged(Landroid/content/Context;III)V

    .line 118
    invoke-static/range {p0 .. p6}, Landroid/media/AudioServiceInjector;->onSetStreamVolumeIntAlt(Ljava/lang/Object;IIII[ILandroid/content/Context;)V

    .line 119
    return-void
.end method

.method public static setVolumeBoost(ZLandroid/content/Context;)Z
    .registers 7
    .param p0, "boostEnabled"    # Z
    .param p1, "context"    # Landroid/content/Context;

    .line 760
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 761
    .local v0, "am":Landroid/media/AudioManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "voice_volume_boost="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_18

    const-string v2, "false"

    goto :goto_1b

    :cond_18
    const-string/jumbo v2, "true"

    :goto_1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 762
    .local v1, "params":Ljava/lang/String;
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "params:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 764
    xor-int/lit8 v2, p0, 0x1

    invoke-static {v2, p1}, Landroid/media/AudioServiceInjector;->sendVolumeBoostBroadcast(ZLandroid/content/Context;)V

    .line 765
    xor-int/lit8 v2, p0, 0x1

    return v2
.end method

.method public static shouldAdjustHiFiVolume(IIIILandroid/content/Context;)Z
    .registers 11
    .param p0, "streamType"    # I
    .param p1, "direction"    # I
    .param p2, "streamIndex"    # I
    .param p3, "maxIndex"    # I
    .param p4, "context"    # Landroid/content/Context;

    .line 94
    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_28

    invoke-static {p4}, Lmiui/util/AudioManagerHelper;->isHiFiMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_28

    .line 98
    :cond_b
    invoke-static {p4}, Lmiui/util/AudioManagerHelper;->getHiFiVolume(Landroid/content/Context;)I

    move-result v1

    .line 99
    .local v1, "currentHiFiVolume":I
    move v2, p3

    .line 100
    .local v2, "maxStreamIndex":I
    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne p1, v3, :cond_18

    if-lez v1, :cond_18

    move v3, v4

    goto :goto_19

    :cond_18
    move v3, v0

    .line 101
    .local v3, "adjustDownHiFiVolume":Z
    :goto_19
    if-ne p1, v4, :cond_1f

    if-ne p2, v2, :cond_1f

    move v5, v4

    goto :goto_20

    :cond_1f
    move v5, v0

    .line 102
    .local v5, "adjustUpHiFiVolume":Z
    :goto_20
    if-nez v3, :cond_26

    if-eqz v5, :cond_25

    goto :goto_26

    :cond_25
    goto :goto_27

    :cond_26
    :goto_26
    move v0, v4

    :goto_27
    return v0

    .line 95
    .end local v1    # "currentHiFiVolume":I
    .end local v2    # "maxStreamIndex":I
    .end local v3    # "adjustDownHiFiVolume":Z
    .end local v5    # "adjustUpHiFiVolume":Z
    :cond_28
    :goto_28
    return v0
.end method

.method public static supportKaraokeMode(Ljava/lang/String;)Z
    .registers 2
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 835
    sget-object v0, Landroid/media/AudioServiceInjector;->sAppList:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static updateMusicStreamVolume(Ljava/lang/Object;)V
    .registers 5
    .param p0, "object"    # Ljava/lang/Object;

    .line 397
    const/4 v0, 0x0

    .line 398
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    .line 399
    const-string/jumbo v1, "reloadMusicVolume"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 400
    .local v1, "method":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_2f

    .line 401
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 402
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1b} :catch_2b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1b} :catch_26
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1b} :catch_21
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1b} :catch_1c

    .line 402
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "method":Ljava/lang/reflect/Method;
    goto :goto_2f

    .line 410
    :catch_1c
    move-exception v0

    .line 411
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 411
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_30

    .line 408
    :catch_21
    move-exception v0

    .line 409
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 409
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_2f

    .line 406
    :catch_26
    move-exception v0

    .line 407
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 407
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_2f

    .line 404
    :catch_2b
    move-exception v0

    .line 405
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    .line 412
    .end local v0    # "e":Ljava/lang/UnsupportedOperationException;
    :cond_2f
    :goto_2f
    nop

    .line 413
    :goto_30
    return-void
.end method

.method public static updateNotificationMode(Landroid/content/Context;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .line 420
    const/4 v0, 0x1

    .line 421
    .local v0, "randomSound":Z
    const/4 v1, 0x0

    .line 422
    .local v1, "uri":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 423
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    const/4 v3, 0x0

    move v4, v0

    move v0, v3

    .line 423
    .local v0, "index":I
    .local v4, "randomSound":Z
    :goto_9
    sget-object v5, Landroid/media/AudioServiceInjector;->mContentResolverTypes:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_2b

    .line 424
    sget-object v5, Landroid/media/AudioServiceInjector;->mContentResolverTypes:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 425
    const-string v5, "file:///system/media/audio/ui/notice_audition.ogg"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 426
    sget-object v5, Landroid/media/AudioServiceInjector;->mRandomSound:[Z

    aget-boolean v5, v5, v0

    if-eq v4, v5, :cond_28

    .line 427
    sget-object v5, Landroid/media/AudioServiceInjector;->mRandomSound:[Z

    aput-boolean v4, v5, v0

    .line 428
    sput v3, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    .line 423
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 433
    .end local v0    # "index":I
    :cond_2b
    const/4 v0, -0x1

    .line 434
    .local v0, "parameter":I
    move v5, v0

    move v0, v3

    .line 434
    .local v0, "index":I
    .local v5, "parameter":I
    :goto_2e
    :try_start_2e
    sget-object v6, Landroid/media/AudioServiceInjector;->mContentResolverParameters:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_4f

    .line 435
    sget-object v6, Landroid/media/AudioServiceInjector;->mContentResolverParameters:[Ljava/lang/String;

    aget-object v6, v6, v0

    .line 436
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    .line 435
    invoke-static {v2, v6, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    move v5, v6

    .line 437
    if-eqz v5, :cond_4c

    sget-object v6, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    aget v6, v6, v0

    if-eq v5, v6, :cond_4c

    .line 438
    sget-object v6, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    aput v5, v6, v0
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_4c} :catch_50

    .line 434
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 443
    .end local v0    # "index":I
    .end local v5    # "parameter":I
    :cond_4f
    goto :goto_67

    .line 441
    :catch_50
    move-exception v0

    .line 442
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot get random notification settings provider value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_67
    const-string v0, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateNotificationMode():\n mRandomSound[]="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/media/AudioServiceInjector;->mRandomSound:[Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\n mTimeAndSoundNumParameters[]="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    return-void
.end method

.method public static updateRestriction(Landroid/content/Context;)V
    .registers 1
    .param p0, "context"    # Landroid/content/Context;

    .line 241
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->updateRestriction(Landroid/content/Context;)V

    .line 242
    return-void
.end method

.method private static wasStreamActiveRecently(II)Z
    .registers 3
    .param p0, "stream"    # I
    .param p1, "delay_ms"    # I

    .line 599
    invoke-static {p0, p1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_f

    .line 600
    invoke-static {p0, p1}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 599
    :goto_10
    return v0
.end method
