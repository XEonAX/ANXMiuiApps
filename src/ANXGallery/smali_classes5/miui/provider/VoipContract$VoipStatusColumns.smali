.class public interface abstract Lmiui/provider/VoipContract$VoipStatusColumns;
.super Ljava/lang/Object;
.source "VoipContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/VoipContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VoipStatusColumns"
.end annotation


# static fields
.field public static final ACCOUNT_ACTIVATED:Ljava/lang/String; = "account_activated"

.field public static final ACCOUNT_ACTIVATED_INDEX:I = 0x0

.field public static final AUDIO_ONLINE:Ljava/lang/String; = "audio_online"

.field public static final AUDIO_ONLINE_INDEX:I = 0x2

.field public static final AUDIO_SUPPORT:Ljava/lang/String; = "audio_support"

.field public static final AUDIO_SUPPORT_INDEX:I = 0x1

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final DESCRIPTION_INDEX:I = 0x7

.field public static final INTENT_ACTION:Ljava/lang/String; = "intent_action"

.field public static final INTENT_ACTION_INDEX:I = 0x5

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TITLE_INDEX:I = 0x6

.field public static final VIDEO_ONLINE:Ljava/lang/String; = "video_online"

.field public static final VIDEO_ONLINE_INDEX:I = 0x4

.field public static final VIDEO_SUPPORT:Ljava/lang/String; = "video_support"

.field public static final VIDEO_SUPPORT_INDEX:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 240
    const-string v0, "account_activated"

    const-string v1, "audio_support"

    const-string v2, "audio_online"

    const-string v3, "video_support"

    const-string v4, "video_online"

    const-string v5, "intent_action"

    const-string v6, "title"

    const-string v7, "description"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/provider/VoipContract$VoipStatusColumns;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
