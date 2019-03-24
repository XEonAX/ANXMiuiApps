.class public Lmiui/upnp/typedef/deviceupdate/DeviceUpdateDefinition;
.super Ljava/lang/Object;
.source "DeviceUpdateDefinition.java"


# static fields
.field private static final DISCOVERY_TYPE:Ljava/lang/String; = "discoveryType"

.field public static DeviceId:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field public static DiscoveryType:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field private static final UDN:Ljava/lang/String; = "UDN"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "UDN"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/deviceupdate/DeviceUpdateDefinition;->DeviceId:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 12
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "discoveryType"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/deviceupdate/DeviceUpdateDefinition;->DiscoveryType:Lmiui/upnp/typedef/field/FieldDefinition;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
