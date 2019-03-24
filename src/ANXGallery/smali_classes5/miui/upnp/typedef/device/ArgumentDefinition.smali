.class public Lmiui/upnp/typedef/device/ArgumentDefinition;
.super Ljava/lang/Object;
.source "ArgumentDefinition.java"


# static fields
.field private static final DIRECTION:Ljava/lang/String; = "direction"

.field public static Direction:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field private static final NAME:Ljava/lang/String; = "name"

.field public static Name:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field private static final RELATED_PROPERTY:Ljava/lang/String; = "relatedStateVariable"

.field public static RelatedProperty:Lmiui/upnp/typedef/field/FieldDefinition;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "name"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/ArgumentDefinition;->Name:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 14
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "direction"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/ArgumentDefinition;->Direction:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 15
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "relatedStateVariable"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/ArgumentDefinition;->RelatedProperty:Lmiui/upnp/typedef/field/FieldDefinition;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
