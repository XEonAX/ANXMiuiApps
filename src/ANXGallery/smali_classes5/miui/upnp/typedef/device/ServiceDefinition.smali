.class public Lmiui/upnp/typedef/device/ServiceDefinition;
.super Ljava/lang/Object;
.source "ServiceDefinition.java"


# static fields
.field private static final CONTROL_URL:Ljava/lang/String; = "controlURL"

.field public static ControlUrl:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field private static final EVENT_SUB_URL:Ljava/lang/String; = "eventSubURL"

.field public static EventSubUrl:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field private static final SCPDURL:Ljava/lang/String; = "SCPDURL"

.field private static final SERVICE_ID:Ljava/lang/String; = "serviceId"

.field private static final SUBSCRIBED:Ljava/lang/String; = "subscribed"

.field private static final SUBSCRIPTION_ID:Ljava/lang/String; = "subscriptionId"

.field public static ScpdUrl:Lmiui/upnp/typedef/field/FieldDefinition;

.field public static ServiceId:Lmiui/upnp/typedef/field/FieldDefinition;

.field public static Subscribed:Lmiui/upnp/typedef/field/FieldDefinition;

.field public static SubscriptionId:Lmiui/upnp/typedef/field/FieldDefinition;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "serviceId"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/ServiceDefinition;->ServiceId:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 18
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "controlURL"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/ServiceDefinition;->ControlUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 19
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "eventSubURL"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/ServiceDefinition;->EventSubUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 20
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "SCPDURL"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/ServiceDefinition;->ScpdUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 28
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "subscribed"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->BOOLEAN:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/ServiceDefinition;->Subscribed:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 29
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "subscriptionId"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/ServiceDefinition;->SubscriptionId:Lmiui/upnp/typedef/field/FieldDefinition;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
