.class public Lmiui/upnp/typedef/device/IconDefinition;
.super Ljava/lang/Object;
.source "IconDefinition.java"


# static fields
.field private static final DEPTH:Ljava/lang/String; = "depth"

.field public static Depth:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field private static final HEIGHT:Ljava/lang/String; = "height"

.field public static Height:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field private static final MIME_TYPE:Ljava/lang/String; = "mimetype"

.field public static MimeType:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field private static final URL:Ljava/lang/String; = "url"

.field public static Url:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field private static final WIDTH:Ljava/lang/String; = "width"

.field public static Width:Lmiui/upnp/typedef/field/FieldDefinition;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "mimetype"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/IconDefinition;->MimeType:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 15
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "width"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->INT:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/IconDefinition;->Width:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 16
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "height"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->INT:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/IconDefinition;->Height:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 17
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "depth"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->INT:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/IconDefinition;->Depth:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 18
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "url"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/IconDefinition;->Url:Lmiui/upnp/typedef/field/FieldDefinition;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
