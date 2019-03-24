.class public Lmiui/upnp/typedef/device/invocation/EventInfoDefinition;
.super Ljava/lang/Object;
.source "EventInfoDefinition.java"


# static fields
.field private static final DEVICE_ID:Ljava/lang/String; = "deviceId"

.field public static DeviceId:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field private static final SERVICE_ID:Ljava/lang/String; = "serviceId"

.field private static final SESSION_ID:Ljava/lang/String; = "sessionId"

.field public static ServiceId:Lmiui/upnp/typedef/field/FieldDefinition;

.field public static SessionId:Lmiui/upnp/typedef/field/FieldDefinition;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "deviceId"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/invocation/EventInfoDefinition;->DeviceId:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 13
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "serviceId"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/invocation/EventInfoDefinition;->ServiceId:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 14
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "sessionId"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/invocation/EventInfoDefinition;->SessionId:Lmiui/upnp/typedef/field/FieldDefinition;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
