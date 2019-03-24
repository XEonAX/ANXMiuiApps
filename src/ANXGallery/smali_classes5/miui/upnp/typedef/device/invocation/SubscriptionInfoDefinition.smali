.class public Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;
.super Ljava/lang/Object;
.source "SubscriptionInfoDefinition.java"


# static fields
.field private static final CALLBACK_URL:Ljava/lang/String; = "callbackUrl"

.field private static final CP_ADDRESS:Ljava/lang/String; = "cpAddress"

.field private static final CP_PORT:Ljava/lang/String; = "cpPort"

.field public static CallbackUrl:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field public static CpAddress:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field public static CpPort:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field private static final DEVICE_ID:Ljava/lang/String; = "deviceId"

.field public static DeviceId:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field private static final EVENT_SUB_URL:Ljava/lang/String; = "eventSubURL"

.field public static EventSubUrl:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field private static final HOST_ADDRESS:Ljava/lang/String; = "hostAddress"

.field private static final HOST_PORT:Ljava/lang/String; = "hostPort"

.field public static HostAddress:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field public static HostPort:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field private static final SERVICE_ID:Ljava/lang/String; = "serviceId"

.field private static final SESSION_ID:Ljava/lang/String; = "sessionId"

.field private static final SUBSCRIBED:Ljava/lang/String; = "subscribed"

.field private static final SUBSCRIPTION_ID:Ljava/lang/String; = "subscriptionId"

.field public static ServiceId:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field public static SessionId:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field public static Subscribed:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field public static SubscriptionId:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field private static final TIMEOUT:Ljava/lang/String; = "timeout"

.field public static Timeout:Lmiui/upnp/typedef/field/FieldDefinition;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 21
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "hostAddress"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->HostAddress:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 22
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "hostPort"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->INT:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->HostPort:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 23
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "deviceId"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->DeviceId:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 24
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "serviceId"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->ServiceId:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 25
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "eventSubURL"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->EventSubUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 26
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "subscriptionId"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->SubscriptionId:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 27
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "subscribed"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->BOOLEAN:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->Subscribed:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 28
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "timeout"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->INT:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->Timeout:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 29
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "sessionId"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->SessionId:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 30
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "callbackUrl"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->CallbackUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 31
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "cpAddress"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->CpAddress:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 32
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "cpPort"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->INT:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->CpPort:Lmiui/upnp/typedef/field/FieldDefinition;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
