.class public Lmiui/upnp/typedef/device/DeviceDefinition;
.super Ljava/lang/Object;
.source "DeviceDefinition.java"


# static fields
.field private static final ADDRESS:Ljava/lang/String; = "address"

.field public static Address:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field private static final DLNA_CAP:Ljava/lang/String; = "dlna:X_DLNACAP"

.field private static final DLNA_DOC:Ljava/lang/String; = "dlna:X_DLNADOC"

.field public static DeviceId:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field public static DlnaCap:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field public static DlnaDoc:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field private static final FRIENDLY_NAME:Ljava/lang/String; = "friendlyName"

.field public static FriendlyName:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field private static final HOST_PORT:Ljava/lang/String; = "hostPort"

.field public static HostPort:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field private static final LOCATION:Ljava/lang/String; = "location"

.field public static Location:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field private static final MANUFACTURER:Ljava/lang/String; = "manufacturer"

.field private static final MANUFACTURER_URL:Ljava/lang/String; = "manufacturerURL"

.field private static final MODEL_DESCRIPTION:Ljava/lang/String; = "modelDescription"

.field private static final MODEL_NAME:Ljava/lang/String; = "modelName"

.field private static final MODEL_NUMBER:Ljava/lang/String; = "modelNumber"

.field private static final MODEL_URL:Ljava/lang/String; = "modelURL"

.field public static Manufacturer:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field public static ManufacturerUrl:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field public static ModelDescription:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field public static ModelName:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field public static ModelNumber:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field public static ModelUrl:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field private static final PRESENTATION_URL:Ljava/lang/String; = "presentationURL"

.field public static PresentationUrl:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field private static final QPLAY_CAPABILITY:Ljava/lang/String; = "qq:X_QPlay_SoftwareCapability"

.field public static QplayCapability:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field private static final SERIAL_NUMBER:Ljava/lang/String; = "serialNumber"

.field public static SerialNumber:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field private static final UDN:Ljava/lang/String; = "UDN"

.field private static final UPC:Ljava/lang/String; = "UPC"

.field private static final URLBASE:Ljava/lang/String; = "URLBase"

.field public static Upc:Lmiui/upnp/typedef/field/FieldDefinition;

.field public static UrlBase:Lmiui/upnp/typedef/field/FieldDefinition;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "location"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/DeviceDefinition;->Location:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 17
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "address"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/DeviceDefinition;->Address:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 18
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "hostPort"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->INT:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/DeviceDefinition;->HostPort:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 35
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "UDN"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/DeviceDefinition;->DeviceId:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 36
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "friendlyName"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/DeviceDefinition;->FriendlyName:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 37
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "manufacturer"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/DeviceDefinition;->Manufacturer:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 38
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "manufacturerURL"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/DeviceDefinition;->ManufacturerUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 39
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "modelDescription"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/DeviceDefinition;->ModelDescription:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 40
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "modelName"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/DeviceDefinition;->ModelName:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 41
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "modelNumber"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/DeviceDefinition;->ModelNumber:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 42
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "modelURL"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/DeviceDefinition;->ModelUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 43
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "serialNumber"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/DeviceDefinition;->SerialNumber:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 44
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "presentationURL"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/DeviceDefinition;->PresentationUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 45
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "URLBase"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/DeviceDefinition;->UrlBase:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 55
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "UPC"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/DeviceDefinition;->Upc:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 56
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "qq:X_QPlay_SoftwareCapability"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/DeviceDefinition;->QplayCapability:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 57
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "dlna:X_DLNADOC"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/DeviceDefinition;->DlnaDoc:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 58
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "dlna:X_DLNACAP"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/DeviceDefinition;->DlnaCap:Lmiui/upnp/typedef/field/FieldDefinition;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
