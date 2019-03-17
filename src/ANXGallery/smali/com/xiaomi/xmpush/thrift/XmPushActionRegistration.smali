.class public Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;
.super Ljava/lang/Object;
.source "XmPushActionRegistration.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/thrift/TBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lorg/apache/thrift/TBase",
        "<",
        "Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final ALIAS_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final ANDROID_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final APP_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final APP_VERSION_CODE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final APP_VERSION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final CLEAN_OLD_REG_INFO_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final CONNECTION_ATTRS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final CREATED_TS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final DEBUG_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final DEVICE_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final IMEI_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final IMEI_MD5_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final MIID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final OLD_REG_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final PACKAGE_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final PUSH_SDK_VERSION_CODE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final PUSH_SDK_VERSION_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final REASON_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final REG_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final SDK_VERSION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final SERIAL_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final SPACE_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

.field private static final SUB_IMEI_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final SUB_IMEI_MD5_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final TARGET_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final TOKEN_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final VALIDATE_TOKEN_FIELD_DESC:Lorg/apache/thrift/protocol/TField;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public aliasName:Ljava/lang/String;

.field public androidId:Ljava/lang/String;

.field public appId:Ljava/lang/String;

.field public appVersion:Ljava/lang/String;

.field public appVersionCode:I

.field public cleanOldRegInfo:Z

.field public connectionAttrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public createdTs:J

.field public debug:Ljava/lang/String;

.field public deviceId:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public imei:Ljava/lang/String;

.field public imeiMd5:Ljava/lang/String;

.field public miid:J

.field public oldRegId:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public pushSdkVersionCode:I

.field public pushSdkVersionName:Ljava/lang/String;

.field public reason:Lcom/xiaomi/xmpush/thrift/RegistrationReason;

.field public regId:Ljava/lang/String;

.field public sdkVersion:Ljava/lang/String;

.field public serial:Ljava/lang/String;

.field public spaceId:I

.field public subImei:Ljava/lang/String;

.field public subImeiMd5:Ljava/lang/String;

.field public target:Lcom/xiaomi/xmpush/thrift/Target;

.field public token:Ljava/lang/String;

.field public validateToken:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xc

    const/16 v6, 0xa

    const/4 v5, 0x2

    const/16 v3, 0x8

    const/16 v4, 0xb

    .line 30
    new-instance v0, Lorg/apache/thrift/protocol/TStruct;

    const-string v1, "XmPushActionRegistration"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    .line 32
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->DEBUG_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v7, v5}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->TARGET_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x3

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x4

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->APP_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 36
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x5

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->APP_VERSION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 37
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x6

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->PACKAGE_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 38
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x7

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->TOKEN_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 39
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v4, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->DEVICE_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 40
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x9

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->ALIAS_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 41
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v4, v6}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->SDK_VERSION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 42
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v4, v4}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->REG_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 43
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v4, v7}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->PUSH_SDK_VERSION_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 44
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xd

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->PUSH_SDK_VERSION_CODE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 45
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xe

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->APP_VERSION_CODE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 46
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xf

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->ANDROID_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 47
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x10

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->IMEI_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 48
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x11

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->SERIAL_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 49
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x12

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->IMEI_MD5_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 50
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x13

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->SPACE_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 51
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x14

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->REASON_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 52
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x15

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->VALIDATE_TOKEN_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 53
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x16

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->MIID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 54
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x17

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->CREATED_TS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 55
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x18

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->SUB_IMEI_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 56
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x19

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->SUB_IMEI_MD5_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 57
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xd

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->CONNECTION_ATTRS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 58
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x65

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->CLEAN_OLD_REG_INFO_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 59
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x66

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->OLD_REG_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->__isset_bit_vector:Ljava/util/BitSet;

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->validateToken:Z

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->cleanOldRegInfo:Z

    .line 110
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;)I
    .locals 6
    .param p1, "other"    # Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    .prologue
    .line 1214
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1215
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 1501
    :cond_0
    :goto_0
    return v0

    .line 1218
    :cond_1
    const/4 v0, 0x0

    .line 1219
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 1221
    .local v1, "typedOther":Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetDebug()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetDebug()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1222
    if-nez v0, :cond_0

    .line 1225
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetDebug()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1226
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->debug:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->debug:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1227
    if-nez v0, :cond_0

    .line 1231
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetTarget()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetTarget()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1232
    if-nez v0, :cond_0

    .line 1235
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetTarget()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1236
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 1237
    if-nez v0, :cond_0

    .line 1241
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1242
    if-nez v0, :cond_0

    .line 1245
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetId()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1246
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->id:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1247
    if-nez v0, :cond_0

    .line 1251
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetAppId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetAppId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1252
    if-nez v0, :cond_0

    .line 1255
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetAppId()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1256
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appId:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appId:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1257
    if-nez v0, :cond_0

    .line 1261
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetAppVersion()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetAppVersion()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1262
    if-nez v0, :cond_0

    .line 1265
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetAppVersion()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1266
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersion:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersion:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1267
    if-nez v0, :cond_0

    .line 1271
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetPackageName()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetPackageName()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1272
    if-nez v0, :cond_0

    .line 1275
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetPackageName()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1276
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->packageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1277
    if-nez v0, :cond_0

    .line 1281
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetToken()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetToken()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1282
    if-nez v0, :cond_0

    .line 1285
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetToken()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1286
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->token:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->token:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1287
    if-nez v0, :cond_0

    .line 1291
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetDeviceId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetDeviceId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1292
    if-nez v0, :cond_0

    .line 1295
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetDeviceId()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1296
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->deviceId:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->deviceId:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1297
    if-nez v0, :cond_0

    .line 1301
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetAliasName()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetAliasName()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1302
    if-nez v0, :cond_0

    .line 1305
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetAliasName()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1306
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aliasName:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aliasName:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1307
    if-nez v0, :cond_0

    .line 1311
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetSdkVersion()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetSdkVersion()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1312
    if-nez v0, :cond_0

    .line 1315
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetSdkVersion()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1316
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->sdkVersion:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->sdkVersion:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1317
    if-nez v0, :cond_0

    .line 1321
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetRegId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetRegId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1322
    if-nez v0, :cond_0

    .line 1325
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetRegId()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1326
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->regId:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->regId:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1327
    if-nez v0, :cond_0

    .line 1331
    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetPushSdkVersionName()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetPushSdkVersionName()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1332
    if-nez v0, :cond_0

    .line 1335
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetPushSdkVersionName()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1336
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->pushSdkVersionName:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->pushSdkVersionName:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1337
    if-nez v0, :cond_0

    .line 1341
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetPushSdkVersionCode()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetPushSdkVersionCode()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1342
    if-nez v0, :cond_0

    .line 1345
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetPushSdkVersionCode()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1346
    iget v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->pushSdkVersionCode:I

    iget v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->pushSdkVersionCode:I

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 1347
    if-nez v0, :cond_0

    .line 1351
    :cond_e
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetAppVersionCode()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetAppVersionCode()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1352
    if-nez v0, :cond_0

    .line 1355
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetAppVersionCode()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1356
    iget v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersionCode:I

    iget v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersionCode:I

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 1357
    if-nez v0, :cond_0

    .line 1361
    :cond_f
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetAndroidId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetAndroidId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1362
    if-nez v0, :cond_0

    .line 1365
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetAndroidId()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1366
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->androidId:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->androidId:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1367
    if-nez v0, :cond_0

    .line 1371
    :cond_10
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetImei()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetImei()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1372
    if-nez v0, :cond_0

    .line 1375
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetImei()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1376
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->imei:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->imei:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1377
    if-nez v0, :cond_0

    .line 1381
    :cond_11
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetSerial()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetSerial()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1382
    if-nez v0, :cond_0

    .line 1385
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetSerial()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1386
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->serial:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->serial:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1387
    if-nez v0, :cond_0

    .line 1391
    :cond_12
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetImeiMd5()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetImeiMd5()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1392
    if-nez v0, :cond_0

    .line 1395
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetImeiMd5()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1396
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->imeiMd5:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->imeiMd5:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1397
    if-nez v0, :cond_0

    .line 1401
    :cond_13
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetSpaceId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetSpaceId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1402
    if-nez v0, :cond_0

    .line 1405
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetSpaceId()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1406
    iget v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->spaceId:I

    iget v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->spaceId:I

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 1407
    if-nez v0, :cond_0

    .line 1411
    :cond_14
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetReason()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetReason()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1412
    if-nez v0, :cond_0

    .line 1415
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetReason()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1416
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->reason:Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->reason:Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 1417
    if-nez v0, :cond_0

    .line 1421
    :cond_15
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetValidateToken()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetValidateToken()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1422
    if-nez v0, :cond_0

    .line 1425
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetValidateToken()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1426
    iget-boolean v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->validateToken:Z

    iget-boolean v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->validateToken:Z

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 1427
    if-nez v0, :cond_0

    .line 1431
    :cond_16
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetMiid()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetMiid()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1432
    if-nez v0, :cond_0

    .line 1435
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetMiid()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1436
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->miid:J

    iget-wide v4, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->miid:J

    invoke-static {v2, v3, v4, v5}, Lorg/apache/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 1437
    if-nez v0, :cond_0

    .line 1441
    :cond_17
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetCreatedTs()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetCreatedTs()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1442
    if-nez v0, :cond_0

    .line 1445
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetCreatedTs()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1446
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->createdTs:J

    iget-wide v4, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->createdTs:J

    invoke-static {v2, v3, v4, v5}, Lorg/apache/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 1447
    if-nez v0, :cond_0

    .line 1451
    :cond_18
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetSubImei()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetSubImei()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1452
    if-nez v0, :cond_0

    .line 1455
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetSubImei()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1456
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->subImei:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->subImei:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1457
    if-nez v0, :cond_0

    .line 1461
    :cond_19
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetSubImeiMd5()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetSubImeiMd5()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1462
    if-nez v0, :cond_0

    .line 1465
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetSubImeiMd5()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1466
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->subImeiMd5:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->subImeiMd5:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1467
    if-nez v0, :cond_0

    .line 1471
    :cond_1a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetConnectionAttrs()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetConnectionAttrs()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1472
    if-nez v0, :cond_0

    .line 1475
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetConnectionAttrs()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1476
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->connectionAttrs:Ljava/util/Map;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->connectionAttrs:Ljava/util/Map;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    .line 1477
    if-nez v0, :cond_0

    .line 1481
    :cond_1b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetCleanOldRegInfo()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetCleanOldRegInfo()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1482
    if-nez v0, :cond_0

    .line 1485
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetCleanOldRegInfo()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1486
    iget-boolean v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->cleanOldRegInfo:Z

    iget-boolean v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->cleanOldRegInfo:Z

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 1487
    if-nez v0, :cond_0

    .line 1491
    :cond_1c
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetOldRegId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetOldRegId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1492
    if-nez v0, :cond_0

    .line 1495
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetOldRegId()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1496
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->oldRegId:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->oldRegId:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1497
    if-nez v0, :cond_0

    .line 1501
    :cond_1d
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 29
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->compareTo(Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;)I

    move-result v0

    return v0
.end method

.method public equals(Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;)Z
    .locals 62
    .param p1, "that"    # Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    .prologue
    .line 950
    if-nez p1, :cond_0

    .line 951
    const/16 v58, 0x0

    .line 1205
    :goto_0
    return v58

    .line 953
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetDebug()Z

    move-result v38

    .line 954
    .local v38, "this_present_debug":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetDebug()Z

    move-result v10

    .line 955
    .local v10, "that_present_debug":Z
    if-nez v38, :cond_1

    if-eqz v10, :cond_4

    .line 956
    :cond_1
    if-eqz v38, :cond_2

    if-nez v10, :cond_3

    .line 957
    :cond_2
    const/16 v58, 0x0

    goto :goto_0

    .line 958
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->debug:Ljava/lang/String;

    move-object/from16 v58, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->debug:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-nez v58, :cond_4

    .line 959
    const/16 v58, 0x0

    goto :goto_0

    .line 962
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetTarget()Z

    move-result v55

    .line 963
    .local v55, "this_present_target":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetTarget()Z

    move-result v27

    .line 964
    .local v27, "that_present_target":Z
    if-nez v55, :cond_5

    if-eqz v27, :cond_8

    .line 965
    :cond_5
    if-eqz v55, :cond_6

    if-nez v27, :cond_7

    .line 966
    :cond_6
    const/16 v58, 0x0

    goto :goto_0

    .line 967
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    move-object/from16 v58, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    move-object/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Lcom/xiaomi/xmpush/thrift/Target;->equals(Lcom/xiaomi/xmpush/thrift/Target;)Z

    move-result v58

    if-nez v58, :cond_8

    .line 968
    const/16 v58, 0x0

    goto :goto_0

    .line 971
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetId()Z

    move-result v40

    .line 972
    .local v40, "this_present_id":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetId()Z

    move-result v12

    .line 973
    .local v12, "that_present_id":Z
    if-nez v40, :cond_9

    if-eqz v12, :cond_c

    .line 974
    :cond_9
    if-eqz v40, :cond_a

    if-nez v12, :cond_b

    .line 975
    :cond_a
    const/16 v58, 0x0

    goto :goto_0

    .line 976
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->id:Ljava/lang/String;

    move-object/from16 v58, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->id:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-nez v58, :cond_c

    .line 977
    const/16 v58, 0x0

    goto :goto_0

    .line 980
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetAppId()Z

    move-result v32

    .line 981
    .local v32, "this_present_appId":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetAppId()Z

    move-result v4

    .line 982
    .local v4, "that_present_appId":Z
    if-nez v32, :cond_d

    if-eqz v4, :cond_10

    .line 983
    :cond_d
    if-eqz v32, :cond_e

    if-nez v4, :cond_f

    .line 984
    :cond_e
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 985
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appId:Ljava/lang/String;

    move-object/from16 v58, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appId:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-nez v58, :cond_10

    .line 986
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 989
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetAppVersion()Z

    move-result v33

    .line 990
    .local v33, "this_present_appVersion":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetAppVersion()Z

    move-result v5

    .line 991
    .local v5, "that_present_appVersion":Z
    if-nez v33, :cond_11

    if-eqz v5, :cond_14

    .line 992
    :cond_11
    if-eqz v33, :cond_12

    if-nez v5, :cond_13

    .line 993
    :cond_12
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 994
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersion:Ljava/lang/String;

    move-object/from16 v58, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersion:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-nez v58, :cond_14

    .line 995
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 998
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetPackageName()Z

    move-result v45

    .line 999
    .local v45, "this_present_packageName":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetPackageName()Z

    move-result v17

    .line 1000
    .local v17, "that_present_packageName":Z
    if-nez v45, :cond_15

    if-eqz v17, :cond_18

    .line 1001
    :cond_15
    if-eqz v45, :cond_16

    if-nez v17, :cond_17

    .line 1002
    :cond_16
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1003
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->packageName:Ljava/lang/String;

    move-object/from16 v58, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->packageName:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-nez v58, :cond_18

    .line 1004
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1007
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetToken()Z

    move-result v56

    .line 1008
    .local v56, "this_present_token":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetToken()Z

    move-result v28

    .line 1009
    .local v28, "that_present_token":Z
    if-nez v56, :cond_19

    if-eqz v28, :cond_1c

    .line 1010
    :cond_19
    if-eqz v56, :cond_1a

    if-nez v28, :cond_1b

    .line 1011
    :cond_1a
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1012
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->token:Ljava/lang/String;

    move-object/from16 v58, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->token:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-nez v58, :cond_1c

    .line 1013
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1016
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetDeviceId()Z

    move-result v39

    .line 1017
    .local v39, "this_present_deviceId":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetDeviceId()Z

    move-result v11

    .line 1018
    .local v11, "that_present_deviceId":Z
    if-nez v39, :cond_1d

    if-eqz v11, :cond_20

    .line 1019
    :cond_1d
    if-eqz v39, :cond_1e

    if-nez v11, :cond_1f

    .line 1020
    :cond_1e
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1021
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->deviceId:Ljava/lang/String;

    move-object/from16 v58, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->deviceId:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-nez v58, :cond_20

    .line 1022
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1025
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetAliasName()Z

    move-result v30

    .line 1026
    .local v30, "this_present_aliasName":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetAliasName()Z

    move-result v2

    .line 1027
    .local v2, "that_present_aliasName":Z
    if-nez v30, :cond_21

    if-eqz v2, :cond_24

    .line 1028
    :cond_21
    if-eqz v30, :cond_22

    if-nez v2, :cond_23

    .line 1029
    :cond_22
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1030
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aliasName:Ljava/lang/String;

    move-object/from16 v58, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aliasName:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-nez v58, :cond_24

    .line 1031
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1034
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetSdkVersion()Z

    move-result v50

    .line 1035
    .local v50, "this_present_sdkVersion":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetSdkVersion()Z

    move-result v22

    .line 1036
    .local v22, "that_present_sdkVersion":Z
    if-nez v50, :cond_25

    if-eqz v22, :cond_28

    .line 1037
    :cond_25
    if-eqz v50, :cond_26

    if-nez v22, :cond_27

    .line 1038
    :cond_26
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1039
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->sdkVersion:Ljava/lang/String;

    move-object/from16 v58, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->sdkVersion:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-nez v58, :cond_28

    .line 1040
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1043
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetRegId()Z

    move-result v49

    .line 1044
    .local v49, "this_present_regId":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetRegId()Z

    move-result v21

    .line 1045
    .local v21, "that_present_regId":Z
    if-nez v49, :cond_29

    if-eqz v21, :cond_2c

    .line 1046
    :cond_29
    if-eqz v49, :cond_2a

    if-nez v21, :cond_2b

    .line 1047
    :cond_2a
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1048
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->regId:Ljava/lang/String;

    move-object/from16 v58, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->regId:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-nez v58, :cond_2c

    .line 1049
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1052
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetPushSdkVersionName()Z

    move-result v47

    .line 1053
    .local v47, "this_present_pushSdkVersionName":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetPushSdkVersionName()Z

    move-result v19

    .line 1054
    .local v19, "that_present_pushSdkVersionName":Z
    if-nez v47, :cond_2d

    if-eqz v19, :cond_30

    .line 1055
    :cond_2d
    if-eqz v47, :cond_2e

    if-nez v19, :cond_2f

    .line 1056
    :cond_2e
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1057
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->pushSdkVersionName:Ljava/lang/String;

    move-object/from16 v58, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->pushSdkVersionName:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-nez v58, :cond_30

    .line 1058
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1061
    :cond_30
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetPushSdkVersionCode()Z

    move-result v46

    .line 1062
    .local v46, "this_present_pushSdkVersionCode":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetPushSdkVersionCode()Z

    move-result v18

    .line 1063
    .local v18, "that_present_pushSdkVersionCode":Z
    if-nez v46, :cond_31

    if-eqz v18, :cond_34

    .line 1064
    :cond_31
    if-eqz v46, :cond_32

    if-nez v18, :cond_33

    .line 1065
    :cond_32
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1066
    :cond_33
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->pushSdkVersionCode:I

    move/from16 v58, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->pushSdkVersionCode:I

    move/from16 v59, v0

    move/from16 v0, v58

    move/from16 v1, v59

    if-eq v0, v1, :cond_34

    .line 1067
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1070
    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetAppVersionCode()Z

    move-result v34

    .line 1071
    .local v34, "this_present_appVersionCode":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetAppVersionCode()Z

    move-result v6

    .line 1072
    .local v6, "that_present_appVersionCode":Z
    if-nez v34, :cond_35

    if-eqz v6, :cond_38

    .line 1073
    :cond_35
    if-eqz v34, :cond_36

    if-nez v6, :cond_37

    .line 1074
    :cond_36
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1075
    :cond_37
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersionCode:I

    move/from16 v58, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersionCode:I

    move/from16 v59, v0

    move/from16 v0, v58

    move/from16 v1, v59

    if-eq v0, v1, :cond_38

    .line 1076
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1079
    :cond_38
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetAndroidId()Z

    move-result v31

    .line 1080
    .local v31, "this_present_androidId":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetAndroidId()Z

    move-result v3

    .line 1081
    .local v3, "that_present_androidId":Z
    if-nez v31, :cond_39

    if-eqz v3, :cond_3c

    .line 1082
    :cond_39
    if-eqz v31, :cond_3a

    if-nez v3, :cond_3b

    .line 1083
    :cond_3a
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1084
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->androidId:Ljava/lang/String;

    move-object/from16 v58, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->androidId:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-nez v58, :cond_3c

    .line 1085
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1088
    :cond_3c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetImei()Z

    move-result v41

    .line 1089
    .local v41, "this_present_imei":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetImei()Z

    move-result v13

    .line 1090
    .local v13, "that_present_imei":Z
    if-nez v41, :cond_3d

    if-eqz v13, :cond_40

    .line 1091
    :cond_3d
    if-eqz v41, :cond_3e

    if-nez v13, :cond_3f

    .line 1092
    :cond_3e
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1093
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->imei:Ljava/lang/String;

    move-object/from16 v58, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->imei:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-nez v58, :cond_40

    .line 1094
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1097
    :cond_40
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetSerial()Z

    move-result v51

    .line 1098
    .local v51, "this_present_serial":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetSerial()Z

    move-result v23

    .line 1099
    .local v23, "that_present_serial":Z
    if-nez v51, :cond_41

    if-eqz v23, :cond_44

    .line 1100
    :cond_41
    if-eqz v51, :cond_42

    if-nez v23, :cond_43

    .line 1101
    :cond_42
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1102
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->serial:Ljava/lang/String;

    move-object/from16 v58, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->serial:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-nez v58, :cond_44

    .line 1103
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1106
    :cond_44
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetImeiMd5()Z

    move-result v42

    .line 1107
    .local v42, "this_present_imeiMd5":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetImeiMd5()Z

    move-result v14

    .line 1108
    .local v14, "that_present_imeiMd5":Z
    if-nez v42, :cond_45

    if-eqz v14, :cond_48

    .line 1109
    :cond_45
    if-eqz v42, :cond_46

    if-nez v14, :cond_47

    .line 1110
    :cond_46
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1111
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->imeiMd5:Ljava/lang/String;

    move-object/from16 v58, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->imeiMd5:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-nez v58, :cond_48

    .line 1112
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1115
    :cond_48
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetSpaceId()Z

    move-result v52

    .line 1116
    .local v52, "this_present_spaceId":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetSpaceId()Z

    move-result v24

    .line 1117
    .local v24, "that_present_spaceId":Z
    if-nez v52, :cond_49

    if-eqz v24, :cond_4c

    .line 1118
    :cond_49
    if-eqz v52, :cond_4a

    if-nez v24, :cond_4b

    .line 1119
    :cond_4a
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1120
    :cond_4b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->spaceId:I

    move/from16 v58, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->spaceId:I

    move/from16 v59, v0

    move/from16 v0, v58

    move/from16 v1, v59

    if-eq v0, v1, :cond_4c

    .line 1121
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1124
    :cond_4c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetReason()Z

    move-result v48

    .line 1125
    .local v48, "this_present_reason":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetReason()Z

    move-result v20

    .line 1126
    .local v20, "that_present_reason":Z
    if-nez v48, :cond_4d

    if-eqz v20, :cond_50

    .line 1127
    :cond_4d
    if-eqz v48, :cond_4e

    if-nez v20, :cond_4f

    .line 1128
    :cond_4e
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1129
    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->reason:Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    move-object/from16 v58, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->reason:Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    move-object/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Lcom/xiaomi/xmpush/thrift/RegistrationReason;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-nez v58, :cond_50

    .line 1130
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1133
    :cond_50
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetValidateToken()Z

    move-result v57

    .line 1134
    .local v57, "this_present_validateToken":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetValidateToken()Z

    move-result v29

    .line 1135
    .local v29, "that_present_validateToken":Z
    if-nez v57, :cond_51

    if-eqz v29, :cond_54

    .line 1136
    :cond_51
    if-eqz v57, :cond_52

    if-nez v29, :cond_53

    .line 1137
    :cond_52
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1138
    :cond_53
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->validateToken:Z

    move/from16 v58, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->validateToken:Z

    move/from16 v59, v0

    move/from16 v0, v58

    move/from16 v1, v59

    if-eq v0, v1, :cond_54

    .line 1139
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1142
    :cond_54
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetMiid()Z

    move-result v43

    .line 1143
    .local v43, "this_present_miid":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetMiid()Z

    move-result v15

    .line 1144
    .local v15, "that_present_miid":Z
    if-nez v43, :cond_55

    if-eqz v15, :cond_58

    .line 1145
    :cond_55
    if-eqz v43, :cond_56

    if-nez v15, :cond_57

    .line 1146
    :cond_56
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1147
    :cond_57
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->miid:J

    move-wide/from16 v58, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->miid:J

    move-wide/from16 v60, v0

    cmp-long v58, v58, v60

    if-eqz v58, :cond_58

    .line 1148
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1151
    :cond_58
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetCreatedTs()Z

    move-result v37

    .line 1152
    .local v37, "this_present_createdTs":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetCreatedTs()Z

    move-result v9

    .line 1153
    .local v9, "that_present_createdTs":Z
    if-nez v37, :cond_59

    if-eqz v9, :cond_5c

    .line 1154
    :cond_59
    if-eqz v37, :cond_5a

    if-nez v9, :cond_5b

    .line 1155
    :cond_5a
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1156
    :cond_5b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->createdTs:J

    move-wide/from16 v58, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->createdTs:J

    move-wide/from16 v60, v0

    cmp-long v58, v58, v60

    if-eqz v58, :cond_5c

    .line 1157
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1160
    :cond_5c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetSubImei()Z

    move-result v53

    .line 1161
    .local v53, "this_present_subImei":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetSubImei()Z

    move-result v25

    .line 1162
    .local v25, "that_present_subImei":Z
    if-nez v53, :cond_5d

    if-eqz v25, :cond_60

    .line 1163
    :cond_5d
    if-eqz v53, :cond_5e

    if-nez v25, :cond_5f

    .line 1164
    :cond_5e
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1165
    :cond_5f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->subImei:Ljava/lang/String;

    move-object/from16 v58, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->subImei:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-nez v58, :cond_60

    .line 1166
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1169
    :cond_60
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetSubImeiMd5()Z

    move-result v54

    .line 1170
    .local v54, "this_present_subImeiMd5":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetSubImeiMd5()Z

    move-result v26

    .line 1171
    .local v26, "that_present_subImeiMd5":Z
    if-nez v54, :cond_61

    if-eqz v26, :cond_64

    .line 1172
    :cond_61
    if-eqz v54, :cond_62

    if-nez v26, :cond_63

    .line 1173
    :cond_62
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1174
    :cond_63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->subImeiMd5:Ljava/lang/String;

    move-object/from16 v58, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->subImeiMd5:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-nez v58, :cond_64

    .line 1175
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1178
    :cond_64
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetConnectionAttrs()Z

    move-result v36

    .line 1179
    .local v36, "this_present_connectionAttrs":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetConnectionAttrs()Z

    move-result v8

    .line 1180
    .local v8, "that_present_connectionAttrs":Z
    if-nez v36, :cond_65

    if-eqz v8, :cond_68

    .line 1181
    :cond_65
    if-eqz v36, :cond_66

    if-nez v8, :cond_67

    .line 1182
    :cond_66
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1183
    :cond_67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->connectionAttrs:Ljava/util/Map;

    move-object/from16 v58, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->connectionAttrs:Ljava/util/Map;

    move-object/from16 v59, v0

    invoke-interface/range {v58 .. v59}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-nez v58, :cond_68

    .line 1184
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1187
    :cond_68
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetCleanOldRegInfo()Z

    move-result v35

    .line 1188
    .local v35, "this_present_cleanOldRegInfo":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetCleanOldRegInfo()Z

    move-result v7

    .line 1189
    .local v7, "that_present_cleanOldRegInfo":Z
    if-nez v35, :cond_69

    if-eqz v7, :cond_6c

    .line 1190
    :cond_69
    if-eqz v35, :cond_6a

    if-nez v7, :cond_6b

    .line 1191
    :cond_6a
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1192
    :cond_6b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->cleanOldRegInfo:Z

    move/from16 v58, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->cleanOldRegInfo:Z

    move/from16 v59, v0

    move/from16 v0, v58

    move/from16 v1, v59

    if-eq v0, v1, :cond_6c

    .line 1193
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1196
    :cond_6c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetOldRegId()Z

    move-result v44

    .line 1197
    .local v44, "this_present_oldRegId":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetOldRegId()Z

    move-result v16

    .line 1198
    .local v16, "that_present_oldRegId":Z
    if-nez v44, :cond_6d

    if-eqz v16, :cond_70

    .line 1199
    :cond_6d
    if-eqz v44, :cond_6e

    if-nez v16, :cond_6f

    .line 1200
    :cond_6e
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1201
    :cond_6f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->oldRegId:Ljava/lang/String;

    move-object/from16 v58, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->oldRegId:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-nez v58, :cond_70

    .line 1202
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 1205
    :cond_70
    const/16 v58, 0x1

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 942
    if-nez p1, :cond_1

    .line 946
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 944
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    if-eqz v1, :cond_0

    .line 945
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->equals(Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->token:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1210
    const/4 v0, 0x0

    return v0
.end method

.method public isSetAliasName()Z
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aliasName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetAndroidId()Z
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->androidId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetAppId()Z
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetAppVersion()Z
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetAppVersionCode()Z
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetCleanOldRegInfo()Z
    .locals 2

    .prologue
    .line 909
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetConnectionAttrs()Z
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->connectionAttrs:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetCreatedTs()Z
    .locals 2

    .prologue
    .line 803
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetDebug()Z
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->debug:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetDeviceId()Z
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->deviceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetId()Z
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetImei()Z
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->imei:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetImeiMd5()Z
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->imeiMd5:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetMiid()Z
    .locals 2

    .prologue
    .line 780
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetOldRegId()Z
    .locals 1

    .prologue
    .line 931
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->oldRegId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetPackageName()Z
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetPushSdkVersionCode()Z
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetPushSdkVersionName()Z
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->pushSdkVersionName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetReason()Z
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->reason:Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetRegId()Z
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->regId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetSdkVersion()Z
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->sdkVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetSerial()Z
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->serial:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetSpaceId()Z
    .locals 2

    .prologue
    .line 702
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetSubImei()Z
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->subImei:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetSubImeiMd5()Z
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->subImeiMd5:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetTarget()Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetToken()Z
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->token:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetValidateToken()Z
    .locals 2

    .prologue
    .line 757
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public read(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 13
    .param p1, "iprot"    # Lorg/apache/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    const/16 v12, 0xa

    const/4 v11, 0x2

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/16 v8, 0xb

    .line 1506
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructBegin()Lorg/apache/thrift/protocol/TStruct;

    .line 1509
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldBegin()Lorg/apache/thrift/protocol/TField;

    move-result-object v4

    .line 1510
    .local v4, "field":Lorg/apache/thrift/protocol/TField;
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-nez v5, :cond_0

    .line 1735
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructEnd()V

    .line 1738
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->validate()V

    .line 1739
    return-void

    .line 1513
    :cond_0
    iget-short v5, v4, Lorg/apache/thrift/protocol/TField;->id:S

    sparse-switch v5, :sswitch_data_0

    .line 1731
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    .line 1733
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 1515
    :sswitch_0
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_1

    .line 1516
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->debug:Ljava/lang/String;

    goto :goto_1

    .line 1518
    :cond_1
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1522
    :sswitch_1
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v6, 0xc

    if-ne v5, v6, :cond_2

    .line 1523
    new-instance v5, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v5}, Lcom/xiaomi/xmpush/thrift/Target;-><init>()V

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    .line 1524
    iget-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v5, p1}, Lcom/xiaomi/xmpush/thrift/Target;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 1526
    :cond_2
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1530
    :sswitch_2
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_3

    .line 1531
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->id:Ljava/lang/String;

    goto :goto_1

    .line 1533
    :cond_3
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1537
    :sswitch_3
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_4

    .line 1538
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appId:Ljava/lang/String;

    goto :goto_1

    .line 1540
    :cond_4
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1544
    :sswitch_4
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_5

    .line 1545
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersion:Ljava/lang/String;

    goto :goto_1

    .line 1547
    :cond_5
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1551
    :sswitch_5
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_6

    .line 1552
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 1554
    :cond_6
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1558
    :sswitch_6
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_7

    .line 1559
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->token:Ljava/lang/String;

    goto :goto_1

    .line 1561
    :cond_7
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1565
    :sswitch_7
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_8

    .line 1566
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->deviceId:Ljava/lang/String;

    goto/16 :goto_1

    .line 1568
    :cond_8
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1572
    :sswitch_8
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_9

    .line 1573
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aliasName:Ljava/lang/String;

    goto/16 :goto_1

    .line 1575
    :cond_9
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1579
    :sswitch_9
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_a

    .line 1580
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->sdkVersion:Ljava/lang/String;

    goto/16 :goto_1

    .line 1582
    :cond_a
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1586
    :sswitch_a
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_b

    .line 1587
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->regId:Ljava/lang/String;

    goto/16 :goto_1

    .line 1589
    :cond_b
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1593
    :sswitch_b
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_c

    .line 1594
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->pushSdkVersionName:Ljava/lang/String;

    goto/16 :goto_1

    .line 1596
    :cond_c
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1600
    :sswitch_c
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v10, :cond_d

    .line 1601
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI32()I

    move-result v5

    iput v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->pushSdkVersionCode:I

    .line 1602
    invoke-virtual {p0, v9}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->setPushSdkVersionCodeIsSet(Z)V

    goto/16 :goto_1

    .line 1604
    :cond_d
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1608
    :sswitch_d
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v10, :cond_e

    .line 1609
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI32()I

    move-result v5

    iput v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersionCode:I

    .line 1610
    invoke-virtual {p0, v9}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->setAppVersionCodeIsSet(Z)V

    goto/16 :goto_1

    .line 1612
    :cond_e
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1616
    :sswitch_e
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_f

    .line 1617
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->androidId:Ljava/lang/String;

    goto/16 :goto_1

    .line 1619
    :cond_f
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1623
    :sswitch_f
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_10

    .line 1624
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->imei:Ljava/lang/String;

    goto/16 :goto_1

    .line 1626
    :cond_10
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1630
    :sswitch_10
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_11

    .line 1631
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->serial:Ljava/lang/String;

    goto/16 :goto_1

    .line 1633
    :cond_11
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1637
    :sswitch_11
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_12

    .line 1638
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->imeiMd5:Ljava/lang/String;

    goto/16 :goto_1

    .line 1640
    :cond_12
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1644
    :sswitch_12
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v10, :cond_13

    .line 1645
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI32()I

    move-result v5

    iput v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->spaceId:I

    .line 1646
    invoke-virtual {p0, v9}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->setSpaceIdIsSet(Z)V

    goto/16 :goto_1

    .line 1648
    :cond_13
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1652
    :sswitch_13
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v10, :cond_14

    .line 1653
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI32()I

    move-result v5

    invoke-static {v5}, Lcom/xiaomi/xmpush/thrift/RegistrationReason;->findByValue(I)Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->reason:Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    goto/16 :goto_1

    .line 1655
    :cond_14
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1659
    :sswitch_14
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v11, :cond_15

    .line 1660
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->validateToken:Z

    .line 1661
    invoke-virtual {p0, v9}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->setValidateTokenIsSet(Z)V

    goto/16 :goto_1

    .line 1663
    :cond_15
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1667
    :sswitch_15
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v12, :cond_16

    .line 1668
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->miid:J

    .line 1669
    invoke-virtual {p0, v9}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->setMiidIsSet(Z)V

    goto/16 :goto_1

    .line 1671
    :cond_16
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1675
    :sswitch_16
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v12, :cond_17

    .line 1676
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->createdTs:J

    .line 1677
    invoke-virtual {p0, v9}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->setCreatedTsIsSet(Z)V

    goto/16 :goto_1

    .line 1679
    :cond_17
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1683
    :sswitch_17
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_18

    .line 1684
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->subImei:Ljava/lang/String;

    goto/16 :goto_1

    .line 1686
    :cond_18
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1690
    :sswitch_18
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_19

    .line 1691
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->subImeiMd5:Ljava/lang/String;

    goto/16 :goto_1

    .line 1693
    :cond_19
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1697
    :sswitch_19
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v6, 0xd

    if-ne v5, v6, :cond_1b

    .line 1699
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readMapBegin()Lorg/apache/thrift/protocol/TMap;

    move-result-object v2

    .line 1700
    .local v2, "_map89":Lorg/apache/thrift/protocol/TMap;
    new-instance v5, Ljava/util/HashMap;

    iget v6, v2, Lorg/apache/thrift/protocol/TMap;->size:I

    mul-int/lit8 v6, v6, 0x2

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->connectionAttrs:Ljava/util/Map;

    .line 1701
    const/4 v0, 0x0

    .local v0, "_i90":I
    :goto_2
    iget v5, v2, Lorg/apache/thrift/protocol/TMap;->size:I

    if-ge v0, v5, :cond_1a

    .line 1705
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1706
    .local v1, "_key91":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1707
    .local v3, "_val92":Ljava/lang/String;
    iget-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->connectionAttrs:Ljava/util/Map;

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1701
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1709
    .end local v1    # "_key91":Ljava/lang/String;
    .end local v3    # "_val92":Ljava/lang/String;
    :cond_1a
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readMapEnd()V

    goto/16 :goto_1

    .line 1712
    .end local v0    # "_i90":I
    .end local v2    # "_map89":Lorg/apache/thrift/protocol/TMap;
    :cond_1b
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1716
    :sswitch_1a
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v11, :cond_1c

    .line 1717
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->cleanOldRegInfo:Z

    .line 1718
    invoke-virtual {p0, v9}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->setCleanOldRegInfoIsSet(Z)V

    goto/16 :goto_1

    .line 1720
    :cond_1c
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1724
    :sswitch_1b
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_1d

    .line 1725
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->oldRegId:Ljava/lang/String;

    goto/16 :goto_1

    .line 1727
    :cond_1d
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1513
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0x10 -> :sswitch_f
        0x11 -> :sswitch_10
        0x12 -> :sswitch_11
        0x13 -> :sswitch_12
        0x14 -> :sswitch_13
        0x15 -> :sswitch_14
        0x16 -> :sswitch_15
        0x17 -> :sswitch_16
        0x18 -> :sswitch_17
        0x19 -> :sswitch_18
        0x64 -> :sswitch_19
        0x65 -> :sswitch_1a
        0x66 -> :sswitch_1b
    .end sparse-switch
.end method

.method public setAndroidId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;
    .locals 0
    .param p1, "androidId"    # Ljava/lang/String;

    .prologue
    .line 595
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->androidId:Ljava/lang/String;

    .line 596
    return-object p0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appId:Ljava/lang/String;

    .line 334
    return-object p0
.end method

.method public setAppVersion(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;
    .locals 0
    .param p1, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersion:Ljava/lang/String;

    .line 358
    return-object p0
.end method

.method public setAppVersionCode(I)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;
    .locals 1
    .param p1, "appVersionCode"    # I

    .prologue
    .line 572
    iput p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersionCode:I

    .line 573
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->setAppVersionCodeIsSet(Z)V

    .line 574
    return-object p0
.end method

.method public setAppVersionCodeIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 587
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 588
    return-void
.end method

.method public setCleanOldRegInfoIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 913
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 914
    return-void
.end method

.method public setCreatedTsIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 807
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 808
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 429
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->deviceId:Ljava/lang/String;

    .line 430
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->id:Ljava/lang/String;

    .line 310
    return-object p0
.end method

.method public setImei(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;
    .locals 0
    .param p1, "imei"    # Ljava/lang/String;

    .prologue
    .line 619
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->imei:Ljava/lang/String;

    .line 620
    return-object p0
.end method

.method public setImeiMd5(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;
    .locals 0
    .param p1, "imeiMd5"    # Ljava/lang/String;

    .prologue
    .line 667
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->imeiMd5:Ljava/lang/String;

    .line 668
    return-object p0
.end method

.method public setMiidIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 784
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 785
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->packageName:Ljava/lang/String;

    .line 382
    return-object p0
.end method

.method public setPushSdkVersionCode(I)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;
    .locals 1
    .param p1, "pushSdkVersionCode"    # I

    .prologue
    .line 549
    iput p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->pushSdkVersionCode:I

    .line 550
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->setPushSdkVersionCodeIsSet(Z)V

    .line 551
    return-object p0
.end method

.method public setPushSdkVersionCodeIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 564
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 565
    return-void
.end method

.method public setPushSdkVersionName(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;
    .locals 0
    .param p1, "pushSdkVersionName"    # Ljava/lang/String;

    .prologue
    .line 525
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->pushSdkVersionName:Ljava/lang/String;

    .line 526
    return-object p0
.end method

.method public setReason(Lcom/xiaomi/xmpush/thrift/RegistrationReason;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;
    .locals 0
    .param p1, "reason"    # Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    .prologue
    .line 722
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->reason:Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    .line 723
    return-object p0
.end method

.method public setSerial(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;
    .locals 0
    .param p1, "serial"    # Ljava/lang/String;

    .prologue
    .line 643
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->serial:Ljava/lang/String;

    .line 644
    return-object p0
.end method

.method public setSpaceId(I)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;
    .locals 1
    .param p1, "spaceId"    # I

    .prologue
    .line 691
    iput p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->spaceId:I

    .line 692
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->setSpaceIdIsSet(Z)V

    .line 693
    return-object p0
.end method

.method public setSpaceIdIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 706
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 707
    return-void
.end method

.method public setToken(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 405
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->token:Ljava/lang/String;

    .line 406
    return-object p0
.end method

.method public setValidateTokenIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 761
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 762
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1935
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "XmPushActionRegistration("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1936
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 1938
    .local v0, "first":Z
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1939
    const-string v2, "debug:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1940
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->debug:Ljava/lang/String;

    if-nez v2, :cond_34

    .line 1941
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1945
    :goto_0
    const/4 v0, 0x0

    .line 1947
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetTarget()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1948
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1949
    :cond_1
    const-string/jumbo v2, "target:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1950
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-nez v2, :cond_35

    .line 1951
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1955
    :goto_1
    const/4 v0, 0x0

    .line 1957
    :cond_2
    if-nez v0, :cond_3

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1958
    :cond_3
    const-string v2, "id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1959
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->id:Ljava/lang/String;

    if-nez v2, :cond_36

    .line 1960
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1964
    :goto_2
    const/4 v0, 0x0

    .line 1965
    if-nez v0, :cond_4

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1966
    :cond_4
    const-string v2, "appId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1967
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appId:Ljava/lang/String;

    if-nez v2, :cond_37

    .line 1968
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1972
    :goto_3
    const/4 v0, 0x0

    .line 1973
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetAppVersion()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1974
    if-nez v0, :cond_5

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1975
    :cond_5
    const-string v2, "appVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1976
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersion:Ljava/lang/String;

    if-nez v2, :cond_38

    .line 1977
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1981
    :goto_4
    const/4 v0, 0x0

    .line 1983
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetPackageName()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1984
    if-nez v0, :cond_7

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1985
    :cond_7
    const-string v2, "packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1986
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->packageName:Ljava/lang/String;

    if-nez v2, :cond_39

    .line 1987
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1991
    :goto_5
    const/4 v0, 0x0

    .line 1993
    :cond_8
    if-nez v0, :cond_9

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1994
    :cond_9
    const-string/jumbo v2, "token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1995
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->token:Ljava/lang/String;

    if-nez v2, :cond_3a

    .line 1996
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2000
    :goto_6
    const/4 v0, 0x0

    .line 2001
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetDeviceId()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2002
    if-nez v0, :cond_a

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2003
    :cond_a
    const-string v2, "deviceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2004
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->deviceId:Ljava/lang/String;

    if-nez v2, :cond_3b

    .line 2005
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2009
    :goto_7
    const/4 v0, 0x0

    .line 2011
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetAliasName()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2012
    if-nez v0, :cond_c

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2013
    :cond_c
    const-string v2, "aliasName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2014
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aliasName:Ljava/lang/String;

    if-nez v2, :cond_3c

    .line 2015
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2019
    :goto_8
    const/4 v0, 0x0

    .line 2021
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetSdkVersion()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2022
    if-nez v0, :cond_e

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2023
    :cond_e
    const-string v2, "sdkVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2024
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->sdkVersion:Ljava/lang/String;

    if-nez v2, :cond_3d

    .line 2025
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2029
    :goto_9
    const/4 v0, 0x0

    .line 2031
    :cond_f
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetRegId()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2032
    if-nez v0, :cond_10

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2033
    :cond_10
    const-string v2, "regId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2034
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->regId:Ljava/lang/String;

    if-nez v2, :cond_3e

    .line 2035
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2039
    :goto_a
    const/4 v0, 0x0

    .line 2041
    :cond_11
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetPushSdkVersionName()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2042
    if-nez v0, :cond_12

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2043
    :cond_12
    const-string v2, "pushSdkVersionName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2044
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->pushSdkVersionName:Ljava/lang/String;

    if-nez v2, :cond_3f

    .line 2045
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2049
    :goto_b
    const/4 v0, 0x0

    .line 2051
    :cond_13
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetPushSdkVersionCode()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2052
    if-nez v0, :cond_14

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2053
    :cond_14
    const-string v2, "pushSdkVersionCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2054
    iget v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->pushSdkVersionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2055
    const/4 v0, 0x0

    .line 2057
    :cond_15
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetAppVersionCode()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2058
    if-nez v0, :cond_16

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2059
    :cond_16
    const-string v2, "appVersionCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2060
    iget v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2061
    const/4 v0, 0x0

    .line 2063
    :cond_17
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetAndroidId()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 2064
    if-nez v0, :cond_18

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2065
    :cond_18
    const-string v2, "androidId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2066
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->androidId:Ljava/lang/String;

    if-nez v2, :cond_40

    .line 2067
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2071
    :goto_c
    const/4 v0, 0x0

    .line 2073
    :cond_19
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetImei()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 2074
    if-nez v0, :cond_1a

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2075
    :cond_1a
    const-string v2, "imei:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2076
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->imei:Ljava/lang/String;

    if-nez v2, :cond_41

    .line 2077
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2081
    :goto_d
    const/4 v0, 0x0

    .line 2083
    :cond_1b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetSerial()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2084
    if-nez v0, :cond_1c

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2085
    :cond_1c
    const-string v2, "serial:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2086
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->serial:Ljava/lang/String;

    if-nez v2, :cond_42

    .line 2087
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2091
    :goto_e
    const/4 v0, 0x0

    .line 2093
    :cond_1d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetImeiMd5()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2094
    if-nez v0, :cond_1e

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2095
    :cond_1e
    const-string v2, "imeiMd5:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2096
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->imeiMd5:Ljava/lang/String;

    if-nez v2, :cond_43

    .line 2097
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2101
    :goto_f
    const/4 v0, 0x0

    .line 2103
    :cond_1f
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetSpaceId()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2104
    if-nez v0, :cond_20

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2105
    :cond_20
    const-string/jumbo v2, "spaceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2106
    iget v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->spaceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2107
    const/4 v0, 0x0

    .line 2109
    :cond_21
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetReason()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2110
    if-nez v0, :cond_22

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2111
    :cond_22
    const-string v2, "reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2112
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->reason:Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    if-nez v2, :cond_44

    .line 2113
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2117
    :goto_10
    const/4 v0, 0x0

    .line 2119
    :cond_23
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetValidateToken()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 2120
    if-nez v0, :cond_24

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2121
    :cond_24
    const-string/jumbo v2, "validateToken:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2122
    iget-boolean v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->validateToken:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2123
    const/4 v0, 0x0

    .line 2125
    :cond_25
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetMiid()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 2126
    if-nez v0, :cond_26

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2127
    :cond_26
    const-string v2, "miid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2128
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->miid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2129
    const/4 v0, 0x0

    .line 2131
    :cond_27
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetCreatedTs()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 2132
    if-nez v0, :cond_28

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2133
    :cond_28
    const-string v2, "createdTs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2134
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->createdTs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2135
    const/4 v0, 0x0

    .line 2137
    :cond_29
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetSubImei()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 2138
    if-nez v0, :cond_2a

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2139
    :cond_2a
    const-string/jumbo v2, "subImei:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2140
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->subImei:Ljava/lang/String;

    if-nez v2, :cond_45

    .line 2141
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2145
    :goto_11
    const/4 v0, 0x0

    .line 2147
    :cond_2b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetSubImeiMd5()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 2148
    if-nez v0, :cond_2c

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2149
    :cond_2c
    const-string/jumbo v2, "subImeiMd5:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2150
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->subImeiMd5:Ljava/lang/String;

    if-nez v2, :cond_46

    .line 2151
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2155
    :goto_12
    const/4 v0, 0x0

    .line 2157
    :cond_2d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetConnectionAttrs()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 2158
    if-nez v0, :cond_2e

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2159
    :cond_2e
    const-string v2, "connectionAttrs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2160
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->connectionAttrs:Ljava/util/Map;

    if-nez v2, :cond_47

    .line 2161
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2165
    :goto_13
    const/4 v0, 0x0

    .line 2167
    :cond_2f
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetCleanOldRegInfo()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 2168
    if-nez v0, :cond_30

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2169
    :cond_30
    const-string v2, "cleanOldRegInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2170
    iget-boolean v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->cleanOldRegInfo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2171
    const/4 v0, 0x0

    .line 2173
    :cond_31
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetOldRegId()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 2174
    if-nez v0, :cond_32

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2175
    :cond_32
    const-string v2, "oldRegId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2176
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->oldRegId:Ljava/lang/String;

    if-nez v2, :cond_48

    .line 2177
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2181
    :goto_14
    const/4 v0, 0x0

    .line 2183
    :cond_33
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2184
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1943
    :cond_34
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->debug:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1953
    :cond_35
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1962
    :cond_36
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1970
    :cond_37
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1979
    :cond_38
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 1989
    :cond_39
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 1998
    :cond_3a
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 2007
    :cond_3b
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 2017
    :cond_3c
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aliasName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 2027
    :cond_3d
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 2037
    :cond_3e
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->regId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 2047
    :cond_3f
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->pushSdkVersionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 2069
    :cond_40
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->androidId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 2079
    :cond_41
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->imei:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 2089
    :cond_42
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->serial:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    .line 2099
    :cond_43
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->imeiMd5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 2115
    :cond_44
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->reason:Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 2143
    :cond_45
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->subImei:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 2153
    :cond_46
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->subImeiMd5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_12

    .line 2163
    :cond_47
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->connectionAttrs:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_13

    .line 2179
    :cond_48
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->oldRegId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_14
.end method

.method public validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 2189
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2190
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2192
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2193
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'appId\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2195
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->token:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 2196
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'token\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2198
    :cond_2
    return-void
.end method

.method public write(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 5
    .param p1, "oprot"    # Lorg/apache/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xb

    .line 1742
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->validate()V

    .line 1744
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructBegin(Lorg/apache/thrift/protocol/TStruct;)V

    .line 1745
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->debug:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1746
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1747
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->DEBUG_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1748
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->debug:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1749
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1752
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-eqz v1, :cond_1

    .line 1753
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetTarget()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1754
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->TARGET_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1755
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v1, p1}, Lcom/xiaomi/xmpush/thrift/Target;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 1756
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1759
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->id:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1760
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1761
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->id:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1762
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1764
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appId:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1765
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->APP_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1766
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1767
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1769
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersion:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1770
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetAppVersion()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1771
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->APP_VERSION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1772
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersion:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1773
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1776
    :cond_4
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1777
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetPackageName()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1778
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->PACKAGE_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1779
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1780
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1783
    :cond_5
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->token:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 1784
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->TOKEN_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1785
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->token:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1786
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1788
    :cond_6
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->deviceId:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 1789
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetDeviceId()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1790
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->DEVICE_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1791
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1792
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1795
    :cond_7
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aliasName:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 1796
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetAliasName()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1797
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->ALIAS_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1798
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aliasName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1799
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1802
    :cond_8
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->sdkVersion:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1803
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetSdkVersion()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1804
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->SDK_VERSION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1805
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->sdkVersion:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1806
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1809
    :cond_9
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->regId:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 1810
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetRegId()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1811
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->REG_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1812
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->regId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1813
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1816
    :cond_a
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->pushSdkVersionName:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 1817
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetPushSdkVersionName()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1818
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->PUSH_SDK_VERSION_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1819
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->pushSdkVersionName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1820
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1823
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetPushSdkVersionCode()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1824
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->PUSH_SDK_VERSION_CODE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1825
    iget v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->pushSdkVersionCode:I

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeI32(I)V

    .line 1826
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1828
    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetAppVersionCode()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1829
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->APP_VERSION_CODE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1830
    iget v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersionCode:I

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeI32(I)V

    .line 1831
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1833
    :cond_d
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->androidId:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 1834
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetAndroidId()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1835
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->ANDROID_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1836
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->androidId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1837
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1840
    :cond_e
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->imei:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1841
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetImei()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1842
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->IMEI_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1843
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->imei:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1844
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1847
    :cond_f
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->serial:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 1848
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetSerial()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1849
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->SERIAL_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1850
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->serial:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1851
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1854
    :cond_10
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->imeiMd5:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 1855
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetImeiMd5()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1856
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->IMEI_MD5_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1857
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->imeiMd5:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1858
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1861
    :cond_11
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetSpaceId()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1862
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->SPACE_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1863
    iget v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->spaceId:I

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeI32(I)V

    .line 1864
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1866
    :cond_12
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->reason:Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    if-eqz v1, :cond_13

    .line 1867
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetReason()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1868
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->REASON_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1869
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->reason:Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/RegistrationReason;->getValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeI32(I)V

    .line 1870
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1873
    :cond_13
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetValidateToken()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1874
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->VALIDATE_TOKEN_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1875
    iget-boolean v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->validateToken:Z

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 1876
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1878
    :cond_14
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetMiid()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1879
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->MIID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1880
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->miid:J

    invoke-virtual {p1, v2, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeI64(J)V

    .line 1881
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1883
    :cond_15
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetCreatedTs()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1884
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->CREATED_TS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1885
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->createdTs:J

    invoke-virtual {p1, v2, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeI64(J)V

    .line 1886
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1888
    :cond_16
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->subImei:Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 1889
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetSubImei()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1890
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->SUB_IMEI_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1891
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->subImei:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1892
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1895
    :cond_17
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->subImeiMd5:Ljava/lang/String;

    if-eqz v1, :cond_18

    .line 1896
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetSubImeiMd5()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1897
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->SUB_IMEI_MD5_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1898
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->subImeiMd5:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1899
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1902
    :cond_18
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->connectionAttrs:Ljava/util/Map;

    if-eqz v1, :cond_1a

    .line 1903
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetConnectionAttrs()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1904
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->CONNECTION_ATTRS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1906
    new-instance v1, Lorg/apache/thrift/protocol/TMap;

    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->connectionAttrs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v4, v4, v2}, Lorg/apache/thrift/protocol/TMap;-><init>(BBI)V

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeMapBegin(Lorg/apache/thrift/protocol/TMap;)V

    .line 1907
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->connectionAttrs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1909
    .local v0, "_iter93":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1910
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 1912
    .end local v0    # "_iter93":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_19
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeMapEnd()V

    .line 1914
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1917
    :cond_1a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetCleanOldRegInfo()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1918
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->CLEAN_OLD_REG_INFO_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1919
    iget-boolean v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->cleanOldRegInfo:Z

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 1920
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1922
    :cond_1b
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->oldRegId:Ljava/lang/String;

    if-eqz v1, :cond_1c

    .line 1923
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->isSetOldRegId()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1924
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->OLD_REG_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1925
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->oldRegId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1926
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1929
    :cond_1c
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 1930
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 1931
    return-void
.end method
