.class public Lmiui/upnp/typedef/error/UpnpError;
.super Ljava/lang/Object;
.source "UpnpError.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lmiui/upnp/typedef/error/UpnpError;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final ACTION_EXECUTE:Lmiui/upnp/typedef/error/UpnpError;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/upnp/typedef/error/UpnpError;",
            ">;"
        }
    .end annotation
.end field

.field public static final INTERNAL:Lmiui/upnp/typedef/error/UpnpError;

.field public static final INTERRUPTED:Lmiui/upnp/typedef/error/UpnpError;

.field public static final INVALID_ARGUMENT:Lmiui/upnp/typedef/error/UpnpError;

.field public static final INVALID_OPERATION:Lmiui/upnp/typedef/error/UpnpError;

.field public static final NOT_IMPLEMENTED:Lmiui/upnp/typedef/error/UpnpError;

.field public static final NOT_INITIALIZED:Lmiui/upnp/typedef/error/UpnpError;

.field public static final OBJECT_NOT_REGISTERED:Lmiui/upnp/typedef/error/UpnpError;

.field public static final OBJECT_REGISTERED:Lmiui/upnp/typedef/error/UpnpError;

.field public static final OK:Lmiui/upnp/typedef/error/UpnpError;

.field public static final SERVICE_BIND_FAILED:Lmiui/upnp/typedef/error/UpnpError;

.field public static final SERVICE_NOT_BOUND:Lmiui/upnp/typedef/error/UpnpError;

.field public static final SERVICE_SUBSCRIBE:Lmiui/upnp/typedef/error/UpnpError;

.field public static final SERVICE_SUBSCRIBED:Lmiui/upnp/typedef/error/UpnpError;

.field public static final SERVICE_UNBIND_FAILED:Lmiui/upnp/typedef/error/UpnpError;

.field public static final SERVICE_UNSUBSCRIBE:Lmiui/upnp/typedef/error/UpnpError;

.field public static final SERVICE_UNSUBSCRIBED:Lmiui/upnp/typedef/error/UpnpError;

.field public static final SESSION_CREATE:Lmiui/upnp/typedef/error/UpnpError;

.field public static final SESSION_DESTROY:Lmiui/upnp/typedef/error/UpnpError;

.field public static final UPNP_ACTION_FAILED:Lmiui/upnp/typedef/error/UpnpError;

.field public static final UPNP_ACTION_NOT_IMPLEMENTED:Lmiui/upnp/typedef/error/UpnpError;

.field public static final UPNP_ARGUMENT_VALUE_INVALID:Lmiui/upnp/typedef/error/UpnpError;

.field public static final UPNP_ARGUMENT_VALUE_OUT_OF_RANGE:Lmiui/upnp/typedef/error/UpnpError;

.field public static final UPNP_HUMAN_INTERVENTION_REQUIRED:Lmiui/upnp/typedef/error/UpnpError;

.field public static final UPNP_INTERNAL_ERROR:Lmiui/upnp/typedef/error/UpnpError;

.field public static final UPNP_INVALID_ACTION:Lmiui/upnp/typedef/error/UpnpError;

.field public static final UPNP_INVALID_ARGS:Lmiui/upnp/typedef/error/UpnpError;

.field public static final UPNP_NOT_FOUND:Lmiui/upnp/typedef/error/UpnpError;

.field public static final UPNP_OUT_OF_MEMORY:Lmiui/upnp/typedef/error/UpnpError;

.field public static final UPNP_STRING_ARGUMENT_TOO_LONG:Lmiui/upnp/typedef/error/UpnpError;

.field public static final WIFI:Lmiui/upnp/typedef/error/UpnpError;

.field public static final WIFI_ADD_NETWORK:Lmiui/upnp/typedef/error/UpnpError;

.field public static final WIFI_AP_ENABLED:Lmiui/upnp/typedef/error/UpnpError;

.field public static final WIFI_CONFIG:Lmiui/upnp/typedef/error/UpnpError;

.field public static final WIFI_CONNECT:Lmiui/upnp/typedef/error/UpnpError;

.field public static final WIFI_DISABLED:Lmiui/upnp/typedef/error/UpnpError;

.field public static final WIFI_ENABLE:Lmiui/upnp/typedef/error/UpnpError;


# instance fields
.field private code:I

.field private message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const-string v1, "OK"

    const/16 v2, 0xc8

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->OK:Lmiui/upnp/typedef/error/UpnpError;

    .line 16
    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const-string v1, "INTERNAL ERROR"

    const/16 v2, 0x190

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->UPNP_INTERNAL_ERROR:Lmiui/upnp/typedef/error/UpnpError;

    .line 17
    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const-string v1, "INVALID ACTION"

    const/16 v2, 0x191

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->UPNP_INVALID_ACTION:Lmiui/upnp/typedef/error/UpnpError;

    .line 18
    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const-string v1, "INVALID ARGS"

    const/16 v2, 0x192

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->UPNP_INVALID_ARGS:Lmiui/upnp/typedef/error/UpnpError;

    .line 19
    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const-string v1, "NOT FOUND"

    const/16 v2, 0x194

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->UPNP_NOT_FOUND:Lmiui/upnp/typedef/error/UpnpError;

    .line 20
    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const-string v1, "ACTION FAILED"

    const/16 v2, 0x1f5

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->UPNP_ACTION_FAILED:Lmiui/upnp/typedef/error/UpnpError;

    .line 21
    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const-string v1, "ARGUMENT VALUE INVALID"

    const/16 v2, 0x258

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->UPNP_ARGUMENT_VALUE_INVALID:Lmiui/upnp/typedef/error/UpnpError;

    .line 22
    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const-string v1, "ARGUMENT VALUE OUT OF RANGE"

    const/16 v2, 0x259

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->UPNP_ARGUMENT_VALUE_OUT_OF_RANGE:Lmiui/upnp/typedef/error/UpnpError;

    .line 23
    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const-string v1, "ACTION NOT IMPLEMENTED"

    const/16 v2, 0x25a

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->UPNP_ACTION_NOT_IMPLEMENTED:Lmiui/upnp/typedef/error/UpnpError;

    .line 24
    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const-string v1, "OUT OF MEMORY"

    const/16 v2, 0x25b

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->UPNP_OUT_OF_MEMORY:Lmiui/upnp/typedef/error/UpnpError;

    .line 25
    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const-string v1, "HUMAN INTERVENTION REQUIRED"

    const/16 v2, 0x25c

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->UPNP_HUMAN_INTERVENTION_REQUIRED:Lmiui/upnp/typedef/error/UpnpError;

    .line 26
    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const-string v1, "STRING ARGUMENT TOO LONG"

    const/16 v2, 0x25d

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->UPNP_STRING_ARGUMENT_TOO_LONG:Lmiui/upnp/typedef/error/UpnpError;

    .line 43
    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const-string v1, "internal error"

    const/16 v2, 0x320

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->INTERNAL:Lmiui/upnp/typedef/error/UpnpError;

    .line 44
    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const-string v1, "interrupted"

    const/16 v2, 0x321

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->INTERRUPTED:Lmiui/upnp/typedef/error/UpnpError;

    .line 45
    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const-string v1, "not initialized"

    const/16 v2, 0x322

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->NOT_INITIALIZED:Lmiui/upnp/typedef/error/UpnpError;

    .line 46
    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const-string v1, "not implemented"

    const/16 v2, 0x323

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->NOT_IMPLEMENTED:Lmiui/upnp/typedef/error/UpnpError;

    .line 47
    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const-string v1, "invalid argument"

    const/16 v2, 0x324

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->INVALID_ARGUMENT:Lmiui/upnp/typedef/error/UpnpError;

    .line 48
    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const-string v1, "invalid operation"

    const/16 v2, 0x325

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->INVALID_OPERATION:Lmiui/upnp/typedef/error/UpnpError;

    .line 49
    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const-string v1, "service not bound"

    const/16 v2, 0x326

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->SERVICE_NOT_BOUND:Lmiui/upnp/typedef/error/UpnpError;

    .line 50
    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const-string v1, "service bind failed"

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->SERVICE_BIND_FAILED:Lmiui/upnp/typedef/error/UpnpError;

    .line 51
    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const-string v1, "service unbind failed"

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->SERVICE_UNBIND_FAILED:Lmiui/upnp/typedef/error/UpnpError;

    .line 52
    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const-string v1, "subscribe error"

    const/16 v2, 0x32a

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->SERVICE_SUBSCRIBE:Lmiui/upnp/typedef/error/UpnpError;

    .line 53
    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const-string v1, "unsubscribe error"

    const/16 v2, 0x32b

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->SERVICE_UNSUBSCRIBE:Lmiui/upnp/typedef/error/UpnpError;

    .line 54
    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const-string v1, "subscribed"

    const/16 v2, 0x32c

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->SERVICE_SUBSCRIBED:Lmiui/upnp/typedef/error/UpnpError;

    .line 55
    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const-string v1, "unsubscribed"

    const/16 v2, 0x32d

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->SERVICE_UNSUBSCRIBED:Lmiui/upnp/typedef/error/UpnpError;

    .line 56
    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const-string v1, "action execute error"

    const/16 v2, 0x334

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->ACTION_EXECUTE:Lmiui/upnp/typedef/error/UpnpError;

    .line 57
    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const-string v1, "registered"

    const/16 v2, 0x33e

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->OBJECT_REGISTERED:Lmiui/upnp/typedef/error/UpnpError;

    .line 58
    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const-string v1, "not registered"

    const/16 v2, 0x33f

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->OBJECT_NOT_REGISTERED:Lmiui/upnp/typedef/error/UpnpError;

    .line 59
    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const-string v1, "wifi"

    const/16 v2, 0x348

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->WIFI:Lmiui/upnp/typedef/error/UpnpError;

    .line 60
    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const-string v1, "WIFI AP enabled"

    const/16 v2, 0x349

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->WIFI_AP_ENABLED:Lmiui/upnp/typedef/error/UpnpError;

    .line 61
    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const-string v1, "WIFI disabled"

    const/16 v2, 0x34a

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->WIFI_DISABLED:Lmiui/upnp/typedef/error/UpnpError;

    .line 62
    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const-string v1, "WIFI enable failed"

    const/16 v2, 0x34b

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->WIFI_ENABLE:Lmiui/upnp/typedef/error/UpnpError;

    .line 63
    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const-string v1, "WIFI connect failed"

    const/16 v2, 0x34c

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->WIFI_CONNECT:Lmiui/upnp/typedef/error/UpnpError;

    .line 64
    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const-string v1, "WIFI configuration failed"

    const/16 v2, 0x34d

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->WIFI_CONFIG:Lmiui/upnp/typedef/error/UpnpError;

    .line 65
    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const-string v1, "WIFI add network failed"

    const/16 v2, 0x34e

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->WIFI_ADD_NETWORK:Lmiui/upnp/typedef/error/UpnpError;

    .line 66
    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const-string v1, "session create failed"

    const/16 v2, 0x352

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->SESSION_CREATE:Lmiui/upnp/typedef/error/UpnpError;

    .line 67
    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    const-string v1, "session destroy failed"

    const/16 v2, 0x353

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->SESSION_DESTROY:Lmiui/upnp/typedef/error/UpnpError;

    .line 113
    new-instance v0, Lmiui/upnp/typedef/error/UpnpError$1;

    invoke-direct {v0}, Lmiui/upnp/typedef/error/UpnpError$1;-><init>()V

    sput-object v0, Lmiui/upnp/typedef/error/UpnpError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput p1, p0, Lmiui/upnp/typedef/error/UpnpError;->code:I

    .line 74
    iput-object p2, p0, Lmiui/upnp/typedef/error/UpnpError;->message:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/error/UpnpError;->readFromParcel(Landroid/os/Parcel;)V

    .line 131
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 6
    check-cast p1, Lmiui/upnp/typedef/error/UpnpError;

    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/error/UpnpError;->compareTo(Lmiui/upnp/typedef/error/UpnpError;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lmiui/upnp/typedef/error/UpnpError;)I
    .locals 2
    .param p1, "another"    # Lmiui/upnp/typedef/error/UpnpError;

    .line 110
    iget v0, p0, Lmiui/upnp/typedef/error/UpnpError;->code:I

    iget v1, p1, Lmiui/upnp/typedef/error/UpnpError;->code:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public describeContents()I
    .locals 1

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "another"    # Ljava/lang/Object;

    .line 101
    instance-of v0, p1, Lmiui/upnp/typedef/error/UpnpError;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 102
    return v1

    .line 105
    :cond_0
    iget v0, p0, Lmiui/upnp/typedef/error/UpnpError;->code:I

    move-object v2, p1

    check-cast v2, Lmiui/upnp/typedef/error/UpnpError;

    iget v2, v2, Lmiui/upnp/typedef/error/UpnpError;->code:I

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public getCode()I
    .locals 1

    .line 78
    iget v0, p0, Lmiui/upnp/typedef/error/UpnpError;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lmiui/upnp/typedef/error/UpnpError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 96
    iget v0, p0, Lmiui/upnp/typedef/error/UpnpError;->code:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/upnp/typedef/error/UpnpError;->code:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/upnp/typedef/error/UpnpError;->message:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lmiui/upnp/typedef/error/UpnpError;->message:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lmiui/upnp/typedef/error/UpnpError;->code:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/upnp/typedef/error/UpnpError;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 145
    iget v0, p0, Lmiui/upnp/typedef/error/UpnpError;->code:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget-object v0, p0, Lmiui/upnp/typedef/error/UpnpError;->message:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/upnp/typedef/error/UpnpError;->message:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    return-void
.end method
