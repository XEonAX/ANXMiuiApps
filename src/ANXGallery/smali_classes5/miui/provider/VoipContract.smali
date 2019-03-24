.class public Lmiui/provider/VoipContract;
.super Ljava/lang/Object;
.source "VoipContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/VoipContract$UsersColumn;,
        Lmiui/provider/VoipContract$VoipStatusColumns;
    }
.end annotation


# static fields
.field public static final ACTIVATE_VOIP_ACTION:Ljava/lang/String; = "com.miui.voip.action.ACTIVATE_VOIP"

.field public static final ACTIVATE_VOIP_ROUTER_ACTION:Ljava/lang/String; = "com.miui.voip.action.ACTIVATE_VOIP_ROUTER"

.field public static final AUDIO_CALL_TYPE:I = 0x0

.field public static final AUTHORITY:Ljava/lang/String; = "com.miui.voip"

.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final EXTRA_ACTIVATE_SIM_INDEX:Ljava/lang/String; = "extra_activate_sim_index"

.field public static final EXTRA_CALL_TYPE:Ljava/lang/String; = "extra_call_type"

.field public static final EXTRA_CONTACT_ID:Ljava/lang/String; = "extra_contact_id"

.field public static final EXTRA_CONTACT_NAME:Ljava/lang/String; = "extra_contact_name"

.field public static final EXTRA_MAKE_VOIP_CALL_FROM:Ljava/lang/String; = "extra_make_voip_call_from"

.field public static final EXTRA_NUMBERS:Ljava/lang/String; = "extra_numbers"

.field public static final EXTRA_TURN_ON_VOIP_FROM:Ljava/lang/String; = "extra_turn_on_voip_from"

.field public static final LOAD_USER_DATA_ACTION:Ljava/lang/String; = "com.miui.voip.action.LOAD_USER_DATA"

.field public static final LOAD_USER_DATA_ACTION_IMMEDIATELY:Ljava/lang/String; = "com.miui.voip.action.LOAD_USER_DATA_IMMEDIATELY"

.field public static final MAKE_CALL_FROM_AUTO:I = 0x6

.field public static final MAKE_CALL_FROM_CONTACT_LIST:I = 0x4

.field public static final MAKE_CALL_FROM_SHORTCUT:I = 0x5

.field public static final MAKE_VOIP_CALL_ACTION:Ljava/lang/String; = "com.miui.voip.action.MAKE_VOIP_CALL"

.field public static final MAKE_VOIP_CALL_FROM_CALL_LOG:I = 0x1

.field public static final MAKE_VOIP_CALL_FROM_CONTACT_DETAIL:I = 0x0

.field public static final MAKE_VOIP_CALL_FROM_MMS:I = 0x3

.field public static final MAKE_VOIP_CALL_FROM_T9:I = 0x2

.field public static final REACTIVATE_VOIP_ACTION:Ljava/lang/String; = "com.miui.voip.action.REACTIVATE_VOIP"

.field public static final STATUS_URI:Landroid/net/Uri;

.field public static final TURN_OFF_VOIP_ACTION:Ljava/lang/String; = "com.miui.voip.action.TURN_OFF_VOIP"

.field public static final TURN_ON_VOIP_ACTION:Ljava/lang/String; = "com.miui.voip.action.TURN_ON_VOIP"

.field public static final TURN_ON_VOIP_FROM_ACCOUNT:I = 0x4

.field public static final TURN_ON_VOIP_FROM_CONTACTS:I = 0x5

.field public static final TURN_ON_VOIP_FROM_GUIDE:I = 0x0

.field public static final TURN_ON_VOIP_FROM_MMS:I = 0x2

.field public static final TURN_ON_VOIP_FROM_NOTIFICATION:I = 0x3

.field public static final TURN_ON_VOIP_FROM_SETTING:I = 0x1

.field public static final TURN_ON_VOIP_FROM_SHORTCUT:I = 0x6

.field public static final TURN_ON_VOIP_FROM_WEB:I = 0x7

.field public static final USERS_URI:Landroid/net/Uri;

.field public static final VIDEO_CALL_TYPE:I = 0x1

.field public static final VIEW_CONTACTS_ACTION:Ljava/lang/String; = "com.miui.voip.action.VIEW_CONTACTS"

.field public static final VOIP_CALL_STATE_CHANGE_ACTION:Ljava/lang/String; = "com.miui.voip.action.CALL_STATE_CHANGED"

.field public static final VOIP_STATUS_CHANGE_ACTION:Ljava/lang/String; = "com.miui.voip.action.STATUS_CHANGED"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8
    const-string v0, "content://com.miui.voip"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/VoipContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 13
    sget-object v0, Lmiui/provider/VoipContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "status"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/VoipContract;->STATUS_URI:Landroid/net/Uri;

    .line 18
    sget-object v0, Lmiui/provider/VoipContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "users"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/VoipContract;->USERS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
