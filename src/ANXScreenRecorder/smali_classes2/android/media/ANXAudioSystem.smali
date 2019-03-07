.class public Landroid/media/ANXAudioSystem;
.super Ljava/lang/Object;
.source "ANXAudioSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ANXAudioSystem$AudioRecordingCallback;,
        Landroid/media/ANXAudioSystem$DynamicPolicyCallback;,
        Landroid/media/ANXAudioSystem$ErrorCallback;
    }
.end annotation


# static fields
.field public static final AUDIO_HW_SYNC_INVALID:I = 0x0

.field public static final AUDIO_SESSION_ALLOCATE:I = 0x0

.field public static final AUDIO_STATUS_ERROR:I = 0x1

.field public static final AUDIO_STATUS_OK:I = 0x0

.field public static final AUDIO_STATUS_SERVER_DIED:I = 0x64

.field public static final BAD_VALUE:I = -0x2

.field public static final DEAD_OBJECT:I = -0x6

.field public static final DEFAULT_MUTE_STREAMS_AFFECTED:I = 0x82f

.field public static DEFAULT_STREAM_VOLUME:[I = null

.field public static final DEVICE_ALL_HDMI_SYSTEM_AUDIO_AND_SPEAKER:I = 0x2c0002

.field public static final DEVICE_BIT_DEFAULT:I = 0x40000000

.field public static final DEVICE_BIT_IN:I = -0x80000000

.field public static final DEVICE_IN_ALL:I = -0x3ce00001

.field public static final DEVICE_IN_ALL_SCO:I = -0x7ffffff8

.field public static final DEVICE_IN_ALL_USB:I = -0x7dffe800

.field public static final DEVICE_IN_AMBIENT:I = -0x7ffffffe

.field public static final DEVICE_IN_AMBIENT_NAME:Ljava/lang/String; = "ambient"

.field public static final DEVICE_IN_ANLG_DOCK_HEADSET:I = -0x7ffffe00

.field public static final DEVICE_IN_ANLG_DOCK_HEADSET_NAME:Ljava/lang/String; = "analog_dock"

.field public static final DEVICE_IN_AUX_DIGITAL:I = -0x7fffffe0

.field public static final DEVICE_IN_AUX_DIGITAL_NAME:Ljava/lang/String; = "aux_digital"

.field public static final DEVICE_IN_BACK_MIC:I = -0x7fffff80

.field public static final DEVICE_IN_BACK_MIC_NAME:Ljava/lang/String; = "back_mic"

.field public static final DEVICE_IN_BLUETOOTH_A2DP:I = -0x7ffe0000

.field public static final DEVICE_IN_BLUETOOTH_A2DP_NAME:Ljava/lang/String; = "bt_a2dp"

.field public static final DEVICE_IN_BLUETOOTH_SCO_HEADSET:I = -0x7ffffff8

.field public static final DEVICE_IN_BLUETOOTH_SCO_HEADSET_NAME:Ljava/lang/String; = "bt_sco_hs"

.field public static final DEVICE_IN_BUILTIN_MIC:I = -0x7ffffffc

.field public static final DEVICE_IN_BUILTIN_MIC_NAME:Ljava/lang/String; = "mic"

.field public static final DEVICE_IN_BUS:I = -0x7ff00000

.field public static final DEVICE_IN_BUS_NAME:Ljava/lang/String; = "bus"

.field public static final DEVICE_IN_COMMUNICATION:I = -0x7fffffff

.field public static final DEVICE_IN_COMMUNICATION_NAME:Ljava/lang/String; = "communication"

.field public static final DEVICE_IN_DEFAULT:I = -0x40000000

.field public static final DEVICE_IN_DGTL_DOCK_HEADSET:I = -0x7ffffc00

.field public static final DEVICE_IN_DGTL_DOCK_HEADSET_NAME:Ljava/lang/String; = "digital_dock"

.field public static final DEVICE_IN_FM_TUNER:I = -0x7fffe000

.field public static final DEVICE_IN_FM_TUNER_NAME:Ljava/lang/String; = "fm_tuner"

.field public static final DEVICE_IN_HDMI:I = -0x7fffffe0

.field public static final DEVICE_IN_IP:I = -0x7ff80000

.field public static final DEVICE_IN_IP_NAME:Ljava/lang/String; = "ip"

.field public static final DEVICE_IN_LINE:I = -0x7fff8000

.field public static final DEVICE_IN_LINE_NAME:Ljava/lang/String; = "line"

.field public static final DEVICE_IN_LOOPBACK:I = -0x7ffc0000

.field public static final DEVICE_IN_LOOPBACK_NAME:Ljava/lang/String; = "loopback"

.field public static final DEVICE_IN_PROXY:I = -0x7f000000

.field public static final DEVICE_IN_PROXY_NAME:Ljava/lang/String; = "proxy"

.field public static final DEVICE_IN_REMOTE_SUBMIX:I = -0x7fffff00

.field public static final DEVICE_IN_REMOTE_SUBMIX_NAME:Ljava/lang/String; = "remote_submix"

.field public static final DEVICE_IN_SPDIF:I = -0x7fff0000

.field public static final DEVICE_IN_SPDIF_NAME:Ljava/lang/String; = "spdif"

.field public static final DEVICE_IN_TELEPHONY_RX:I = -0x7fffffc0

.field public static final DEVICE_IN_TELEPHONY_RX_NAME:Ljava/lang/String; = "telephony_rx"

.field public static final DEVICE_IN_TV_TUNER:I = -0x7fffc000

.field public static final DEVICE_IN_TV_TUNER_NAME:Ljava/lang/String; = "tv_tuner"

.field public static final DEVICE_IN_USB_ACCESSORY:I = -0x7ffff800

.field public static final DEVICE_IN_USB_ACCESSORY_NAME:Ljava/lang/String; = "usb_accessory"

.field public static final DEVICE_IN_USB_DEVICE:I = -0x7ffff000

.field public static final DEVICE_IN_USB_DEVICE_NAME:Ljava/lang/String; = "usb_device"

.field public static final DEVICE_IN_USB_HEADSET:I = -0x7e000000

.field public static final DEVICE_IN_USB_HEADSET_NAME:Ljava/lang/String; = "usb_headset"

.field public static final DEVICE_IN_VOICE_CALL:I = -0x7fffffc0

.field public static final DEVICE_IN_WIRED_HEADSET:I = -0x7ffffff0

.field public static final DEVICE_IN_WIRED_HEADSET_NAME:Ljava/lang/String; = "headset"

.field public static final DEVICE_NONE:I = 0x0

.field public static final DEVICE_OUT_ALL:I = 0x4fffffff

.field public static final DEVICE_OUT_ALL_A2DP:I = 0x380

.field public static final DEVICE_OUT_ALL_HDMI_SYSTEM_AUDIO:I = 0x2c0000

.field public static final DEVICE_OUT_ALL_SCO:I = 0x70

.field public static final DEVICE_OUT_ALL_USB:I = 0x4006000

.field public static final DEVICE_OUT_ANLG_DOCK_HEADSET:I = 0x800

.field public static final DEVICE_OUT_ANLG_DOCK_HEADSET_NAME:Ljava/lang/String; = "analog_dock"

.field public static final DEVICE_OUT_AUX_DIGITAL:I = 0x400

.field public static final DEVICE_OUT_AUX_DIGITAL_NAME:Ljava/lang/String; = "aux_digital"

.field public static final DEVICE_OUT_AUX_LINE:I = 0x200000

.field public static final DEVICE_OUT_AUX_LINE_NAME:Ljava/lang/String; = "aux_line"

.field public static final DEVICE_OUT_BLUETOOTH_A2DP:I = 0x80

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES:I = 0x100

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES_NAME:Ljava/lang/String; = "bt_a2dp_hp"

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_NAME:Ljava/lang/String; = "bt_a2dp"

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER:I = 0x200

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER_NAME:Ljava/lang/String; = "bt_a2dp_spk"

.field public static final DEVICE_OUT_BLUETOOTH_SCO:I = 0x10

.field public static final DEVICE_OUT_BLUETOOTH_SCO_CARKIT:I = 0x40

.field public static final DEVICE_OUT_BLUETOOTH_SCO_CARKIT_NAME:Ljava/lang/String; = "bt_sco_carkit"

.field public static final DEVICE_OUT_BLUETOOTH_SCO_HEADSET:I = 0x20

.field public static final DEVICE_OUT_BLUETOOTH_SCO_HEADSET_NAME:Ljava/lang/String; = "bt_sco_hs"

.field public static final DEVICE_OUT_BLUETOOTH_SCO_NAME:Ljava/lang/String; = "bt_sco"

.field public static final DEVICE_OUT_BUS:I = 0x1000000

.field public static final DEVICE_OUT_BUS_NAME:Ljava/lang/String; = "bus"

.field public static final DEVICE_OUT_DEFAULT:I = 0x40000000

.field public static final DEVICE_OUT_DGTL_DOCK_HEADSET:I = 0x1000

.field public static final DEVICE_OUT_DGTL_DOCK_HEADSET_NAME:Ljava/lang/String; = "digital_dock"

.field public static final DEVICE_OUT_EARPIECE:I = 0x1

.field public static final DEVICE_OUT_EARPIECE_NAME:Ljava/lang/String; = "earpiece"

.field public static final DEVICE_OUT_FM:I = 0x100000

.field public static final DEVICE_OUT_FM_NAME:Ljava/lang/String; = "fm_transmitter"

.field public static final DEVICE_OUT_HDMI:I = 0x400

.field public static final DEVICE_OUT_HDMI_ARC:I = 0x40000

.field public static final DEVICE_OUT_HDMI_ARC_NAME:Ljava/lang/String; = "hmdi_arc"

.field public static final DEVICE_OUT_HDMI_NAME:Ljava/lang/String; = "hdmi"

.field public static final DEVICE_OUT_HEARING_AID:I = 0x8000000

.field public static final DEVICE_OUT_HEARING_AID_NAME:Ljava/lang/String; = "hearing_aid_out"

.field public static final DEVICE_OUT_IP:I = 0x800000

.field public static final DEVICE_OUT_IP_NAME:Ljava/lang/String; = "ip"

.field public static final DEVICE_OUT_LINE:I = 0x20000

.field public static final DEVICE_OUT_LINE_NAME:Ljava/lang/String; = "line"

.field public static final DEVICE_OUT_PROXY:I = 0x2000000

.field public static final DEVICE_OUT_PROXY_NAME:Ljava/lang/String; = "proxy"

.field public static final DEVICE_OUT_REMOTE_SUBMIX:I = 0x8000

.field public static final DEVICE_OUT_REMOTE_SUBMIX_NAME:Ljava/lang/String; = "remote_submix"

.field public static final DEVICE_OUT_SPDIF:I = 0x80000

.field public static final DEVICE_OUT_SPDIF_NAME:Ljava/lang/String; = "spdif"

.field public static final DEVICE_OUT_SPEAKER:I = 0x2

.field public static final DEVICE_OUT_SPEAKER_NAME:Ljava/lang/String; = "speaker"

.field public static final DEVICE_OUT_SPEAKER_SAFE:I = 0x400000

.field public static final DEVICE_OUT_SPEAKER_SAFE_NAME:Ljava/lang/String; = "speaker_safe"

.field public static final DEVICE_OUT_TELEPHONY_TX:I = 0x10000

.field public static final DEVICE_OUT_TELEPHONY_TX_NAME:Ljava/lang/String; = "telephony_tx"

.field public static final DEVICE_OUT_USB_ACCESSORY:I = 0x2000

.field public static final DEVICE_OUT_USB_ACCESSORY_NAME:Ljava/lang/String; = "usb_accessory"

.field public static final DEVICE_OUT_USB_DEVICE:I = 0x4000

.field public static final DEVICE_OUT_USB_DEVICE_NAME:Ljava/lang/String; = "usb_device"

.field public static final DEVICE_OUT_USB_HEADSET:I = 0x4000000

.field public static final DEVICE_OUT_USB_HEADSET_NAME:Ljava/lang/String; = "usb_headset"

.field public static final DEVICE_OUT_WIRED_HEADPHONE:I = 0x8

.field public static final DEVICE_OUT_WIRED_HEADPHONE_NAME:Ljava/lang/String; = "headphone"

.field public static final DEVICE_OUT_WIRED_HEADSET:I = 0x4

.field public static final DEVICE_OUT_WIRED_HEADSET_NAME:Ljava/lang/String; = "headset"

.field public static final DEVICE_STATE_AVAILABLE:I = 0x1

.field public static final DEVICE_STATE_UNAVAILABLE:I = 0x0

.field private static final DYNAMIC_POLICY_EVENT_MIX_STATE_UPDATE:I = 0x0

.field public static final ERROR:I = -0x1

.field public static final FORCE_ANALOG_DOCK:I = 0x8

.field public static final FORCE_BT_A2DP:I = 0x4

.field public static final FORCE_BT_CAR_DOCK:I = 0x6

.field public static final FORCE_BT_DESK_DOCK:I = 0x7

.field public static final FORCE_BT_SCO:I = 0x3

.field public static final FORCE_DEFAULT:I = 0x0

.field public static final FORCE_DIGITAL_DOCK:I = 0x9

.field public static final FORCE_EARPIECE:I = 0x10

.field public static final FORCE_ENCODED_SURROUND_ALWAYS:I = 0xe

.field public static final FORCE_ENCODED_SURROUND_MANUAL:I = 0xf

.field public static final FORCE_ENCODED_SURROUND_NEVER:I = 0xd

.field public static final FORCE_HDMI_SYSTEM_AUDIO_ENFORCED:I = 0xc

.field public static final FORCE_HEADPHONES:I = 0x2

.field public static final FORCE_NONE:I = 0x0

.field public static final FORCE_NO_BT_A2DP:I = 0xa

.field public static final FORCE_SPEAKER:I = 0x1

.field public static final FORCE_SYSTEM_ENFORCED:I = 0xb

.field public static final FORCE_WIRED_ACCESSORY:I = 0x5

.field public static final FOR_COMMUNICATION:I = 0x0

.field public static final FOR_DOCK:I = 0x3

.field public static final FOR_ENCODED_SURROUND:I = 0x6

.field public static final FOR_HDMI_SYSTEM_AUDIO:I = 0x5

.field public static final FOR_LB_TEST:I = 0x8

.field public static final FOR_LOOPBACK:I = 0xa

.field public static final FOR_MEDIA:I = 0x1

.field public static final FOR_RECORD:I = 0x2

.field public static final FOR_RING:I = 0x9

.field public static final FOR_SYSTEM:I = 0x4

.field public static final FOR_VIBRATE_RINGING:I = 0x7

.field public static final INVALID_OPERATION:I = -0x3

.field public static final IN_VOICE_COMM_FOCUS_ID:Ljava/lang/String; = "AudioFocus_For_Phone_Ring_And_Calls"

.field public static final MODE_CURRENT:I = -0x1

.field public static final MODE_INVALID:I = -0x2

.field public static final MODE_IN_CALL:I = 0x2

.field public static final MODE_IN_COMMUNICATION:I = 0x3

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_RINGTONE:I = 0x1

.field static final NATIVE_EVENT_ROUTING_CHANGE:I = 0x3e8

.field public static final NO_INIT:I = -0x5

.field private static final NUM_DEVICE_STATES:I = 0x1

.field public static final NUM_FORCE_CONFIG:I = 0x11

.field private static final NUM_FORCE_USE:I = 0xb

.field public static final NUM_MODES:I = 0x4

.field public static final NUM_STREAMS:I = 0x5

.field private static final NUM_STREAM_TYPES:I = 0xc

.field public static final PERMISSION_DENIED:I = -0x4

.field public static final PHONE_STATE_INCALL:I = 0x2

.field public static final PHONE_STATE_OFFCALL:I = 0x0

.field public static final PHONE_STATE_RINGING:I = 0x1

.field public static final PLATFORM_DEFAULT:I = 0x0

.field public static final PLATFORM_TELEVISION:I = 0x2

.field public static final PLATFORM_VOICE:I = 0x1

.field public static final PLAY_SOUND_DELAY:I = 0x12c

.field public static final ROUTE_ALL:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH_A2DP:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH_SCO:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_EARPIECE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_HEADSET:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_SPEAKER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STREAM_ACCESSIBILITY:I = 0xa

.field public static final STREAM_ALARM:I = 0x4

.field public static final STREAM_BLUETOOTH_SCO:I = 0x6

.field public static final STREAM_DEFAULT:I = -0x1

.field public static final STREAM_DTMF:I = 0x8

.field public static final STREAM_MUSIC:I = 0x3

.field public static final STREAM_NAMES:[Ljava/lang/String;

.field public static final STREAM_NOTIFICATION:I = 0x5

.field public static final STREAM_RING:I = 0x2

.field public static final STREAM_SYSTEM:I = 0x1

.field public static final STREAM_SYSTEM_ENFORCED:I = 0x7

.field public static final STREAM_TTS:I = 0x9

.field public static final STREAM_VOICEASSIST:I = 0xb

.field public static final STREAM_VOICE_CALL:I = 0x0

.field public static final SUCCESS:I = 0x0

.field public static final SYNC_EVENT_NONE:I = 0x0

.field public static final SYNC_EVENT_PRESENTATION_COMPLETE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ANXAudioSystem"

.field public static final WOULD_BLOCK:I = -0x7

.field private static mErrorCallback:Landroid/media/ANXAudioSystem$ErrorCallback;

.field private static sDynPolicyCallback:Landroid/media/ANXAudioSystem$DynamicPolicyCallback;

.field private static sRecordingCallback:Landroid/media/ANXAudioSystem$AudioRecordingCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 81
    const-string v0, "STREAM_VOICE_CALL"

    const-string v1, "STREAM_SYSTEM"

    const-string v2, "STREAM_RING"

    const-string v3, "STREAM_MUSIC"

    const-string v4, "STREAM_ALARM"

    const-string v5, "STREAM_NOTIFICATION"

    const-string v6, "STREAM_BLUETOOTH_SCO"

    const-string v7, "STREAM_SYSTEM_ENFORCED"

    const-string v8, "STREAM_DTMF"

    const-string v9, "STREAM_TTS"

    const-string v10, "STREAM_ACCESSIBILITY"

    const-string v11, "STREAM_VOICEASSIST"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/ANXAudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    .line 891
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_2e

    sput-object v0, Landroid/media/ANXAudioSystem;->DEFAULT_STREAM_VOLUME:[I

    .line 908
    sget-object v0, Landroid/media/ANXAudioSystem;->DEFAULT_STREAM_VOLUME:[I

    invoke-static {v0}, Landroid/media/AudioServiceInjector;->adjustDefaultStreamVolume([I)V

    .line 909
    return-void

    nop

    :array_2e
    .array-data 4
        0x4
        0x7
        0x5
        0x5
        0x6
        0x5
        0x7
        0x7
        0x5
        0x5
        0x5
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native checkAudioFlinger()I
.end method

.method public static native createAudioPatch([Landroid/media/AudioPatch;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)I
.end method

.method public static deviceStateToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "state"    # I

    .line 520
    packed-switch p0, :pswitch_data_22

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown state ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 522
    :pswitch_1b
    const-string v0, "DEVICE_STATE_AVAILABLE"

    return-object v0

    .line 521
    :pswitch_1e
    const-string v0, "DEVICE_STATE_UNAVAILABLE"

    return-object v0

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1b
    .end packed-switch
.end method

.method private static dynamicPolicyCallbackFromNative(ILjava/lang/String;I)V
    .registers 7
    .param p0, "event"    # I
    .param p1, "regId"    # Ljava/lang/String;
    .param p2, "val"    # I

    .line 280
    const/4 v0, 0x0

    .line 281
    .local v0, "cb":Landroid/media/ANXAudioSystem$DynamicPolicyCallback;
    const-class v1, Landroid/media/ANXAudioSystem;

    monitor-enter v1

    .line 282
    :try_start_4
    sget-object v2, Landroid/media/ANXAudioSystem;->sDynPolicyCallback:Landroid/media/ANXAudioSystem$DynamicPolicyCallback;

    if-eqz v2, :cond_b

    .line 283
    sget-object v2, Landroid/media/ANXAudioSystem;->sDynPolicyCallback:Landroid/media/ANXAudioSystem$DynamicPolicyCallback;

    move-object v0, v2

    .line 285
    :cond_b
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_2c

    .line 286
    if-eqz v0, :cond_2b

    .line 287
    if-eqz p0, :cond_27

    .line 292
    const-string v1, "ANXAudioSystem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dynamicPolicyCallbackFromNative: unknown event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 289
    :cond_27
    invoke-interface {v0, p1, p2}, Landroid/media/ANXAudioSystem$DynamicPolicyCallback;->onDynamicPolicyMixStateUpdate(Ljava/lang/String;I)V

    .line 290
    nop

    .line 295
    :cond_2b
    :goto_2b
    return-void

    .line 285
    :catchall_2c
    move-exception v2

    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v2
.end method

.method private static errorCallbackFromNative(I)V
    .registers 4
    .param p0, "error"    # I

    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, "errorCallback":Landroid/media/ANXAudioSystem$ErrorCallback;
    const-class v1, Landroid/media/ANXAudioSystem;

    monitor-enter v1

    .line 247
    :try_start_4
    sget-object v2, Landroid/media/ANXAudioSystem;->mErrorCallback:Landroid/media/ANXAudioSystem$ErrorCallback;

    if-eqz v2, :cond_b

    .line 248
    sget-object v2, Landroid/media/ANXAudioSystem;->mErrorCallback:Landroid/media/ANXAudioSystem$ErrorCallback;

    move-object v0, v2

    .line 250
    :cond_b
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_12

    .line 251
    if-eqz v0, :cond_11

    .line 252
    invoke-interface {v0, p0}, Landroid/media/ANXAudioSystem$ErrorCallback;->onError(I)V

    .line 254
    :cond_11
    return-void

    .line 250
    :catchall_12
    move-exception v2

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v2
.end method

.method public static forceUseConfigToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "config"    # I

    .line 728
    packed-switch p0, :pswitch_data_4c

    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown config ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 744
    :pswitch_1b
    const-string v0, "FORCE_ENCODED_SURROUND_MANUAL"

    return-object v0

    .line 743
    :pswitch_1e
    const-string v0, "FORCE_ENCODED_SURROUND_ALWAYS"

    return-object v0

    .line 742
    :pswitch_21
    const-string v0, "FORCE_ENCODED_SURROUND_NEVER"

    return-object v0

    .line 741
    :pswitch_24
    const-string v0, "FORCE_HDMI_SYSTEM_AUDIO_ENFORCED"

    return-object v0

    .line 740
    :pswitch_27
    const-string v0, "FORCE_SYSTEM_ENFORCED"

    return-object v0

    .line 739
    :pswitch_2a
    const-string v0, "FORCE_NO_BT_A2DP"

    return-object v0

    .line 738
    :pswitch_2d
    const-string v0, "FORCE_DIGITAL_DOCK"

    return-object v0

    .line 737
    :pswitch_30
    const-string v0, "FORCE_ANALOG_DOCK"

    return-object v0

    .line 736
    :pswitch_33
    const-string v0, "FORCE_BT_DESK_DOCK"

    return-object v0

    .line 735
    :pswitch_36
    const-string v0, "FORCE_BT_CAR_DOCK"

    return-object v0

    .line 734
    :pswitch_39
    const-string v0, "FORCE_WIRED_ACCESSORY"

    return-object v0

    .line 733
    :pswitch_3c
    const-string v0, "FORCE_BT_A2DP"

    return-object v0

    .line 732
    :pswitch_3f
    const-string v0, "FORCE_BT_SCO"

    return-object v0

    .line 731
    :pswitch_42
    const-string v0, "FORCE_HEADPHONES"

    return-object v0

    .line 730
    :pswitch_45
    const-string v0, "FORCE_SPEAKER"

    return-object v0

    .line 729
    :pswitch_48
    const-string v0, "FORCE_NONE"

    return-object v0

    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
    .end packed-switch
.end method

.method public static forceUseUsageToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "usage"    # I

    .line 764
    packed-switch p0, :pswitch_data_34

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown usage ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 772
    :pswitch_1b
    const-string v0, "FOR_VIBRATE_RINGING"

    return-object v0

    .line 771
    :pswitch_1e
    const-string v0, "FOR_ENCODED_SURROUND"

    return-object v0

    .line 770
    :pswitch_21
    const-string v0, "FOR_HDMI_SYSTEM_AUDIO"

    return-object v0

    .line 769
    :pswitch_24
    const-string v0, "FOR_SYSTEM"

    return-object v0

    .line 768
    :pswitch_27
    const-string v0, "FOR_DOCK"

    return-object v0

    .line 767
    :pswitch_2a
    const-string v0, "FOR_RECORD"

    return-object v0

    .line 766
    :pswitch_2d
    const-string v0, "FOR_MEDIA"

    return-object v0

    .line 765
    :pswitch_30
    const-string v0, "FOR_COMMUNICATION"

    return-object v0

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
    .end packed-switch
.end method

.method public static native getAudioHwSyncForSession(I)I
.end method

.method public static getDefaultStreamVolume(I)I
    .registers 2
    .param p0, "streamType"    # I

    .line 888
    sget-object v0, Landroid/media/ANXAudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aget v0, v0, p0

    return v0
.end method

.method public static native getDeviceConnectionState(ILjava/lang/String;)I
.end method

.method public static native getDevicesForStream(I)I
.end method

.method public static native getForceUse(I)I
.end method

.method public static getInputDeviceName(I)Ljava/lang/String;
    .registers 2
    .param p0, "device"    # I

    .line 648
    sparse-switch p0, :sswitch_data_5a

    .line 697
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 694
    :sswitch_8
    const-string/jumbo v0, "usb_headset"

    return-object v0

    .line 692
    :sswitch_c
    const-string/jumbo v0, "proxy"

    return-object v0

    .line 690
    :sswitch_10
    const-string v0, "bus"

    return-object v0

    .line 688
    :sswitch_13
    const-string/jumbo v0, "ip"

    return-object v0

    .line 686
    :sswitch_17
    const-string/jumbo v0, "loopback"

    return-object v0

    .line 684
    :sswitch_1b
    const-string v0, "bt_a2dp"

    return-object v0

    .line 682
    :sswitch_1e
    const-string/jumbo v0, "spdif"

    return-object v0

    .line 680
    :sswitch_22
    const-string/jumbo v0, "line"

    return-object v0

    .line 678
    :sswitch_26
    const-string/jumbo v0, "tv_tuner"

    return-object v0

    .line 676
    :sswitch_2a
    const-string v0, "fm_tuner"

    return-object v0

    .line 674
    :sswitch_2d
    const-string/jumbo v0, "usb_device"

    return-object v0

    .line 672
    :sswitch_31
    const-string/jumbo v0, "usb_accessory"

    return-object v0

    .line 670
    :sswitch_35
    const-string v0, "digital_dock"

    return-object v0

    .line 668
    :sswitch_38
    const-string v0, "analog_dock"

    return-object v0

    .line 666
    :sswitch_3b
    const-string/jumbo v0, "remote_submix"

    return-object v0

    .line 664
    :sswitch_3f
    const-string v0, "back_mic"

    return-object v0

    .line 662
    :sswitch_42
    const-string/jumbo v0, "telephony_rx"

    return-object v0

    .line 660
    :sswitch_46
    const-string v0, "aux_digital"

    return-object v0

    .line 658
    :sswitch_49
    const-string v0, "headset"

    return-object v0

    .line 656
    :sswitch_4c
    const-string v0, "bt_sco_hs"

    return-object v0

    .line 654
    :sswitch_4f
    const-string/jumbo v0, "mic"

    return-object v0

    .line 652
    :sswitch_53
    const-string v0, "ambient"

    return-object v0

    .line 650
    :sswitch_56
    const-string v0, "communication"

    return-object v0

    nop

    :sswitch_data_5a
    .sparse-switch
        -0x7fffffff -> :sswitch_56
        -0x7ffffffe -> :sswitch_53
        -0x7ffffffc -> :sswitch_4f
        -0x7ffffff8 -> :sswitch_4c
        -0x7ffffff0 -> :sswitch_49
        -0x7fffffe0 -> :sswitch_46
        -0x7fffffc0 -> :sswitch_42
        -0x7fffff80 -> :sswitch_3f
        -0x7fffff00 -> :sswitch_3b
        -0x7ffffe00 -> :sswitch_38
        -0x7ffffc00 -> :sswitch_35
        -0x7ffff800 -> :sswitch_31
        -0x7ffff000 -> :sswitch_2d
        -0x7fffe000 -> :sswitch_2a
        -0x7fffc000 -> :sswitch_26
        -0x7fff8000 -> :sswitch_22
        -0x7fff0000 -> :sswitch_1e
        -0x7ffe0000 -> :sswitch_1b
        -0x7ffc0000 -> :sswitch_17
        -0x7ff80000 -> :sswitch_13
        -0x7ff00000 -> :sswitch_10
        -0x7f000000 -> :sswitch_c
        -0x7e000000 -> :sswitch_8
    .end sparse-switch
.end method

.method public static native getMasterMono()Z
.end method

.method public static native getMasterMute()Z
.end method

.method public static native getMasterVolume()F
.end method

.method public static native getMicrophones(Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/MicrophoneInfo;",
            ">;)I"
        }
    .end annotation
.end method

.method public static final getNumStreamTypes()I
    .registers 1

    .line 79
    const/16 v0, 0xc

    return v0
.end method

.method public static getOutputDeviceName(I)Ljava/lang/String;
    .registers 2
    .param p0, "device"    # I

    .line 583
    sparse-switch p0, :sswitch_data_68

    .line 642
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 639
    :sswitch_8
    const-string v0, "hearing_aid_out"

    return-object v0

    .line 637
    :sswitch_b
    const-string/jumbo v0, "usb_headset"

    return-object v0

    .line 635
    :sswitch_f
    const-string/jumbo v0, "proxy"

    return-object v0

    .line 633
    :sswitch_13
    const-string v0, "bus"

    return-object v0

    .line 631
    :sswitch_16
    const-string/jumbo v0, "ip"

    return-object v0

    .line 629
    :sswitch_1a
    const-string/jumbo v0, "speaker_safe"

    return-object v0

    .line 627
    :sswitch_1e
    const-string v0, "aux_line"

    return-object v0

    .line 625
    :sswitch_21
    const-string v0, "fm_transmitter"

    return-object v0

    .line 623
    :sswitch_24
    const-string/jumbo v0, "spdif"

    return-object v0

    .line 621
    :sswitch_28
    const-string v0, "hmdi_arc"

    return-object v0

    .line 619
    :sswitch_2b
    const-string/jumbo v0, "line"

    return-object v0

    .line 617
    :sswitch_2f
    const-string/jumbo v0, "telephony_tx"

    return-object v0

    .line 615
    :sswitch_33
    const-string/jumbo v0, "remote_submix"

    return-object v0

    .line 613
    :sswitch_37
    const-string/jumbo v0, "usb_device"

    return-object v0

    .line 611
    :sswitch_3b
    const-string/jumbo v0, "usb_accessory"

    return-object v0

    .line 609
    :sswitch_3f
    const-string v0, "digital_dock"

    return-object v0

    .line 607
    :sswitch_42
    const-string v0, "analog_dock"

    return-object v0

    .line 605
    :sswitch_45
    const-string v0, "hdmi"

    return-object v0

    .line 603
    :sswitch_48
    const-string v0, "bt_a2dp_spk"

    return-object v0

    .line 601
    :sswitch_4b
    const-string v0, "bt_a2dp_hp"

    return-object v0

    .line 599
    :sswitch_4e
    const-string v0, "bt_a2dp"

    return-object v0

    .line 597
    :sswitch_51
    const-string v0, "bt_sco_carkit"

    return-object v0

    .line 595
    :sswitch_54
    const-string v0, "bt_sco_hs"

    return-object v0

    .line 593
    :sswitch_57
    const-string v0, "bt_sco"

    return-object v0

    .line 591
    :sswitch_5a
    const-string v0, "headphone"

    return-object v0

    .line 589
    :sswitch_5d
    const-string v0, "headset"

    return-object v0

    .line 587
    :sswitch_60
    const-string/jumbo v0, "speaker"

    return-object v0

    .line 585
    :sswitch_64
    const-string v0, "earpiece"

    return-object v0

    nop

    :sswitch_data_68
    .sparse-switch
        0x1 -> :sswitch_64
        0x2 -> :sswitch_60
        0x4 -> :sswitch_5d
        0x8 -> :sswitch_5a
        0x10 -> :sswitch_57
        0x20 -> :sswitch_54
        0x40 -> :sswitch_51
        0x80 -> :sswitch_4e
        0x100 -> :sswitch_4b
        0x200 -> :sswitch_48
        0x400 -> :sswitch_45
        0x800 -> :sswitch_42
        0x1000 -> :sswitch_3f
        0x2000 -> :sswitch_3b
        0x4000 -> :sswitch_37
        0x8000 -> :sswitch_33
        0x10000 -> :sswitch_2f
        0x20000 -> :sswitch_2b
        0x40000 -> :sswitch_28
        0x80000 -> :sswitch_24
        0x100000 -> :sswitch_21
        0x200000 -> :sswitch_1e
        0x400000 -> :sswitch_1a
        0x800000 -> :sswitch_16
        0x1000000 -> :sswitch_13
        0x2000000 -> :sswitch_f
        0x4000000 -> :sswitch_b
        0x8000000 -> :sswitch_8
    .end sparse-switch
.end method

.method public static native getOutputLatency(I)I
.end method

.method public static native getParameters(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getPlatformType(Landroid/content/Context;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 934
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 935
    const/4 v0, 0x1

    return v0

    .line 936
    :cond_f
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 937
    const/4 v0, 0x2

    return v0

    .line 939
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public static native getPrimaryOutputFrameCount()I
.end method

.method public static native getPrimaryOutputSamplingRate()I
.end method

.method public static native getStreamVolumeDB(III)F
.end method

.method public static native getStreamVolumeIndex(II)I
.end method

.method public static native getSurroundFormats(Ljava/util/Map;Z)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;Z)I"
        }
    .end annotation
.end method

.method public static getValueForVibrateSetting(III)I
    .registers 5
    .param p0, "existingValue"    # I
    .param p1, "vibrateType"    # I
    .param p2, "vibrateSetting"    # I

    .line 879
    mul-int/lit8 v0, p1, 0x2

    const/4 v1, 0x3

    shl-int v0, v1, v0

    not-int v0, v0

    and-int/2addr p0, v0

    .line 882
    and-int/lit8 v0, p2, 0x3

    mul-int/lit8 v1, p1, 0x2

    shl-int/2addr v0, v1

    or-int/2addr p0, v0

    .line 884
    return p0
.end method

.method public static native handleDeviceConfigChange(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static native initStreamVolume(III)I
.end method

.method public static native isMicrophoneMuted()Z
.end method

.method static isOffloadSupported(Landroid/media/AudioFormat;)Z
    .registers 5
    .param p0, "format"    # Landroid/media/AudioFormat;

    .line 840
    invoke-virtual {p0}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v0

    invoke-virtual {p0}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v1

    .line 841
    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v2

    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result v3

    .line 840
    invoke-static {v0, v1, v2, v3}, Landroid/media/ANXAudioSystem;->native_is_offload_supported(IIII)Z

    move-result v0

    return v0
.end method

.method public static isSingleVolume(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 948
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 950
    .local v0, "forceSingleVolume":Z
    invoke-static {p0}, Landroid/media/ANXAudioSystem;->getPlatformType(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_17

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v1, 0x1

    :goto_18
    return v1
.end method

.method public static native isSourceActive(I)Z
.end method

.method public static native isStreamActive(II)Z
.end method

.method public static native isStreamActiveRemotely(II)Z
.end method

.method public static native listAudioPatches(Ljava/util/ArrayList;[I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPatch;",
            ">;[I)I"
        }
    .end annotation
.end method

.method public static native listAudioPorts(Ljava/util/ArrayList;[I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPort;",
            ">;[I)I"
        }
    .end annotation
.end method

.method public static modeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "mode"    # I

    .line 122
    packed-switch p0, :pswitch_data_2e

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown mode ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 125
    :pswitch_1b
    const-string v0, "MODE_IN_COMMUNICATION"

    return-object v0

    .line 124
    :pswitch_1e
    const-string v0, "MODE_IN_CALL"

    return-object v0

    .line 128
    :pswitch_21
    const-string v0, "MODE_RINGTONE"

    return-object v0

    .line 127
    :pswitch_24
    const-string v0, "MODE_NORMAL"

    return-object v0

    .line 123
    :pswitch_27
    const-string v0, "MODE_CURRENT"

    return-object v0

    .line 126
    :pswitch_2a
    const-string v0, "MODE_INVALID"

    return-object v0

    nop

    :pswitch_data_2e
    .packed-switch -0x2
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
    .end packed-switch
.end method

.method public static native muteMicrophone(Z)I
.end method

.method private static native native_is_offload_supported(IIII)Z
.end method

.method private static final native native_register_dynamic_policy_callback()V
.end method

.method private static final native native_register_recording_callback()V
.end method

.method public static native newAudioPlayerId()I
.end method

.method public static native newAudioSessionId()I
.end method

.method private static recordingCallbackFromNative(IIII[I)V
    .registers 15
    .param p0, "event"    # I
    .param p1, "uid"    # I
    .param p2, "session"    # I
    .param p3, "source"    # I
    .param p4, "recordingFormat"    # [I

    .line 344
    const/4 v0, 0x0

    .line 345
    .local v0, "cb":Landroid/media/ANXAudioSystem$AudioRecordingCallback;
    const-class v1, Landroid/media/ANXAudioSystem;

    monitor-enter v1

    .line 346
    :try_start_4
    sget-object v2, Landroid/media/ANXAudioSystem;->sRecordingCallback:Landroid/media/ANXAudioSystem$AudioRecordingCallback;

    move-object v0, v2

    .line 347
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_16

    .line 348
    if-eqz v0, :cond_15

    .line 350
    const-string v9, ""

    move-object v3, v0

    move v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-interface/range {v3 .. v9}, Landroid/media/ANXAudioSystem$AudioRecordingCallback;->onRecordingConfigurationChanged(IIII[ILjava/lang/String;)V

    .line 352
    :cond_15
    return-void

    .line 347
    :catchall_16
    move-exception v2

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v2
.end method

.method public static native registerPolicyMixes(Ljava/util/ArrayList;Z)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/audiopolicy/AudioMix;",
            ">;Z)I"
        }
    .end annotation
.end method

.method public static native releaseAudioPatch(Landroid/media/AudioPatch;)I
.end method

.method public static native setAudioPortConfig(Landroid/media/AudioPortConfig;)I
.end method

.method public static native setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static setDynamicPolicyCallback(Landroid/media/ANXAudioSystem$DynamicPolicyCallback;)V
    .registers 3
    .param p0, "cb"    # Landroid/media/ANXAudioSystem$DynamicPolicyCallback;

    .line 272
    const-class v0, Landroid/media/ANXAudioSystem;

    monitor-enter v0

    .line 273
    :try_start_3
    sput-object p0, Landroid/media/ANXAudioSystem;->sDynPolicyCallback:Landroid/media/ANXAudioSystem$DynamicPolicyCallback;

    .line 274
    invoke-static {}, Landroid/media/ANXAudioSystem;->native_register_dynamic_policy_callback()V

    .line 275
    monitor-exit v0

    .line 276
    return-void

    .line 275
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static setErrorCallback(Landroid/media/ANXAudioSystem$ErrorCallback;)V
    .registers 3
    .param p0, "cb"    # Landroid/media/ANXAudioSystem$ErrorCallback;

    .line 235
    const-class v0, Landroid/media/ANXAudioSystem;

    monitor-enter v0

    .line 236
    :try_start_3
    sput-object p0, Landroid/media/ANXAudioSystem;->mErrorCallback:Landroid/media/ANXAudioSystem$ErrorCallback;

    .line 237
    if-eqz p0, :cond_e

    .line 238
    invoke-static {}, Landroid/media/ANXAudioSystem;->checkAudioFlinger()I

    move-result v1

    invoke-interface {p0, v1}, Landroid/media/ANXAudioSystem$ErrorCallback;->onError(I)V

    .line 240
    :cond_e
    monitor-exit v0

    .line 241
    return-void

    .line 240
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public static native setForceUse(II)I
.end method

.method public static native setLowRamDevice(ZJ)I
.end method

.method public static native setMasterMono(Z)I
.end method

.method public static native setMasterMute(Z)I
.end method

.method public static native setMasterVolume(F)I
.end method

.method public static native setParameters(Ljava/lang/String;)I
.end method

.method public static native setPhoneState(I)I
.end method

.method public static setRecordingCallback(Landroid/media/ANXAudioSystem$AudioRecordingCallback;)V
    .registers 3
    .param p0, "cb"    # Landroid/media/ANXAudioSystem$AudioRecordingCallback;

    .line 327
    const-class v0, Landroid/media/ANXAudioSystem;

    monitor-enter v0

    .line 328
    :try_start_3
    sput-object p0, Landroid/media/ANXAudioSystem;->sRecordingCallback:Landroid/media/ANXAudioSystem$AudioRecordingCallback;

    .line 329
    invoke-static {}, Landroid/media/ANXAudioSystem;->native_register_recording_callback()V

    .line 330
    monitor-exit v0

    .line 331
    return-void

    .line 330
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static native setStreamVolumeIndex(III)I
.end method

.method public static native setSurroundFormatEnabled(IZ)I
.end method

.method public static streamToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "stream"    # I

    .line 913
    if-ltz p0, :cond_c

    sget-object v0, Landroid/media/ANXAudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_c

    sget-object v0, Landroid/media/ANXAudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0

    .line 914
    :cond_c
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_13

    const-string v0, "USE_DEFAULT_STREAM_TYPE"

    return-object v0

    .line 915
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_STREAM_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native systemReady()I
.end method
