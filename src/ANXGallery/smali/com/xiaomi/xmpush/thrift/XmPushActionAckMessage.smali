.class public Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;
.super Ljava/lang/Object;
.source "XmPushActionAckMessage.java"

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
        "Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final ALIAS_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final APP_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final CALLBACK_URL_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final CATEGORY_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final DEBUG_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final DEVICE_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final DEVICE_STATUS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final EXTRA_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final GEO_MSG_STATUS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final IMEI_MD5_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final IS_ONLINE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final MESSAGE_TS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final PACKAGE_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final PASS_THROUGH_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final REG_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final REQUEST_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

.field private static final TARGET_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final TOPIC_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final USER_ACCOUNT_FIELD_DESC:Lorg/apache/thrift/protocol/TField;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public aliasName:Ljava/lang/String;

.field public appId:Ljava/lang/String;

.field public callbackUrl:Ljava/lang/String;

.field public category:Ljava/lang/String;

.field public debug:Ljava/lang/String;

.field public deviceId:Ljava/lang/String;

.field public deviceStatus:S

.field public extra:Ljava/util/Map;
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

.field public geoMsgStatus:S

.field public id:Ljava/lang/String;

.field public imeiMd5:Ljava/lang/String;

.field public isOnline:Z

.field public messageTs:J

.field public packageName:Ljava/lang/String;

.field public passThrough:I

.field public regId:Ljava/lang/String;

.field public request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

.field public target:Lcom/xiaomi/xmpush/thrift/Target;

.field public topic:Ljava/lang/String;

.field public userAccount:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x2

    const/16 v6, 0xc

    const/4 v5, 0x6

    const/16 v4, 0xb

    .line 30
    new-instance v0, Lorg/apache/thrift/protocol/TStruct;

    const-string v1, "XmPushActionAckMessage"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    .line 32
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->DEBUG_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v6, v7}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->TARGET_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x3

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x4

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->APP_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 36
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xa

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MESSAGE_TS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 37
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v4, v5}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->TOPIC_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 38
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x7

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->ALIAS_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 39
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v6, v8}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->REQUEST_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 40
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x9

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->PACKAGE_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 41
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xa

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->CATEGORY_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 42
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v7, v4}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->IS_ONLINE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 43
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v4, v6}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->REG_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 44
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xd

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->CALLBACK_URL_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 45
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xe

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->USER_ACCOUNT_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 46
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xf

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->DEVICE_STATUS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 47
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x10

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->GEO_MSG_STATUS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 48
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x14

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->IMEI_MD5_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 49
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x15

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->DEVICE_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 50
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x16

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->PASS_THROUGH_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 51
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xd

    const/16 v3, 0x17

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->EXTRA_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->__isset_bit_vector:Ljava/util/BitSet;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isOnline:Z

    .line 86
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;)I
    .locals 6
    .param p1, "other"    # Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    .prologue
    .line 891
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 892
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

    .line 1098
    :cond_0
    :goto_0
    return v0

    .line 895
    :cond_1
    const/4 v0, 0x0

    .line 896
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 898
    .local v1, "typedOther":Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetDebug()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetDebug()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 899
    if-nez v0, :cond_0

    .line 902
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetDebug()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 903
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->debug:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->debug:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 904
    if-nez v0, :cond_0

    .line 908
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetTarget()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetTarget()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 909
    if-nez v0, :cond_0

    .line 912
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetTarget()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 913
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 914
    if-nez v0, :cond_0

    .line 918
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 919
    if-nez v0, :cond_0

    .line 922
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetId()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 923
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 924
    if-nez v0, :cond_0

    .line 928
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetAppId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetAppId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 929
    if-nez v0, :cond_0

    .line 932
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetAppId()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 933
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 934
    if-nez v0, :cond_0

    .line 938
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetMessageTs()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetMessageTs()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 939
    if-nez v0, :cond_0

    .line 942
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetMessageTs()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 943
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->messageTs:J

    iget-wide v4, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->messageTs:J

    invoke-static {v2, v3, v4, v5}, Lorg/apache/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 944
    if-nez v0, :cond_0

    .line 948
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetTopic()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetTopic()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 949
    if-nez v0, :cond_0

    .line 952
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetTopic()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 953
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->topic:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->topic:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 954
    if-nez v0, :cond_0

    .line 958
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetAliasName()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetAliasName()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 959
    if-nez v0, :cond_0

    .line 962
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetAliasName()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 963
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aliasName:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aliasName:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 964
    if-nez v0, :cond_0

    .line 968
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetRequest()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetRequest()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 969
    if-nez v0, :cond_0

    .line 972
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetRequest()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 973
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 974
    if-nez v0, :cond_0

    .line 978
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetPackageName()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetPackageName()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 979
    if-nez v0, :cond_0

    .line 982
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetPackageName()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 983
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->packageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 984
    if-nez v0, :cond_0

    .line 988
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetCategory()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetCategory()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 989
    if-nez v0, :cond_0

    .line 992
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetCategory()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 993
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->category:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->category:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 994
    if-nez v0, :cond_0

    .line 998
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetIsOnline()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetIsOnline()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 999
    if-nez v0, :cond_0

    .line 1002
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetIsOnline()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1003
    iget-boolean v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isOnline:Z

    iget-boolean v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isOnline:Z

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 1004
    if-nez v0, :cond_0

    .line 1008
    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetRegId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetRegId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1009
    if-nez v0, :cond_0

    .line 1012
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetRegId()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1013
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->regId:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->regId:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1014
    if-nez v0, :cond_0

    .line 1018
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetCallbackUrl()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetCallbackUrl()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1019
    if-nez v0, :cond_0

    .line 1022
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetCallbackUrl()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1023
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->callbackUrl:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->callbackUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1024
    if-nez v0, :cond_0

    .line 1028
    :cond_e
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetUserAccount()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetUserAccount()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1029
    if-nez v0, :cond_0

    .line 1032
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetUserAccount()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1033
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->userAccount:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->userAccount:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1034
    if-nez v0, :cond_0

    .line 1038
    :cond_f
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetDeviceStatus()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetDeviceStatus()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1039
    if-nez v0, :cond_0

    .line 1042
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetDeviceStatus()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1043
    iget-short v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceStatus:S

    iget-short v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceStatus:S

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(SS)I

    move-result v0

    .line 1044
    if-nez v0, :cond_0

    .line 1048
    :cond_10
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetGeoMsgStatus()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetGeoMsgStatus()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1049
    if-nez v0, :cond_0

    .line 1052
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetGeoMsgStatus()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1053
    iget-short v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->geoMsgStatus:S

    iget-short v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->geoMsgStatus:S

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(SS)I

    move-result v0

    .line 1054
    if-nez v0, :cond_0

    .line 1058
    :cond_11
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetImeiMd5()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetImeiMd5()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1059
    if-nez v0, :cond_0

    .line 1062
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetImeiMd5()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1063
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->imeiMd5:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->imeiMd5:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1064
    if-nez v0, :cond_0

    .line 1068
    :cond_12
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetDeviceId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetDeviceId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1069
    if-nez v0, :cond_0

    .line 1072
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetDeviceId()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1073
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceId:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceId:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1074
    if-nez v0, :cond_0

    .line 1078
    :cond_13
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetPassThrough()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetPassThrough()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1079
    if-nez v0, :cond_0

    .line 1082
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetPassThrough()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1083
    iget v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->passThrough:I

    iget v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->passThrough:I

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 1084
    if-nez v0, :cond_0

    .line 1088
    :cond_14
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetExtra()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetExtra()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1089
    if-nez v0, :cond_0

    .line 1092
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetExtra()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1093
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->extra:Ljava/util/Map;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->extra:Ljava/util/Map;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    .line 1094
    if-nez v0, :cond_0

    .line 1098
    :cond_15
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 29
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->compareTo(Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;)I

    move-result v0

    return v0
.end method

.method public equals(Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;)Z
    .locals 46
    .param p1, "that"    # Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    .prologue
    .line 699
    if-nez p1, :cond_0

    .line 700
    const/16 v42, 0x0

    .line 882
    :goto_0
    return v42

    .line 702
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetDebug()Z

    move-result v26

    .line 703
    .local v26, "this_present_debug":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetDebug()Z

    move-result v6

    .line 704
    .local v6, "that_present_debug":Z
    if-nez v26, :cond_1

    if-eqz v6, :cond_4

    .line 705
    :cond_1
    if-eqz v26, :cond_2

    if-nez v6, :cond_3

    .line 706
    :cond_2
    const/16 v42, 0x0

    goto :goto_0

    .line 707
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->debug:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->debug:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_4

    .line 708
    const/16 v42, 0x0

    goto :goto_0

    .line 711
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetTarget()Z

    move-result v39

    .line 712
    .local v39, "this_present_target":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetTarget()Z

    move-result v19

    .line 713
    .local v19, "that_present_target":Z
    if-nez v39, :cond_5

    if-eqz v19, :cond_8

    .line 714
    :cond_5
    if-eqz v39, :cond_6

    if-nez v19, :cond_7

    .line 715
    :cond_6
    const/16 v42, 0x0

    goto :goto_0

    .line 716
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    move-object/from16 v42, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Lcom/xiaomi/xmpush/thrift/Target;->equals(Lcom/xiaomi/xmpush/thrift/Target;)Z

    move-result v42

    if-nez v42, :cond_8

    .line 717
    const/16 v42, 0x0

    goto :goto_0

    .line 720
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetId()Z

    move-result v31

    .line 721
    .local v31, "this_present_id":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetId()Z

    move-result v11

    .line 722
    .local v11, "that_present_id":Z
    if-nez v31, :cond_9

    if-eqz v11, :cond_c

    .line 723
    :cond_9
    if-eqz v31, :cond_a

    if-nez v11, :cond_b

    .line 724
    :cond_a
    const/16 v42, 0x0

    goto :goto_0

    .line 725
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_c

    .line 726
    const/16 v42, 0x0

    goto :goto_0

    .line 729
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetAppId()Z

    move-result v23

    .line 730
    .local v23, "this_present_appId":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetAppId()Z

    move-result v3

    .line 731
    .local v3, "that_present_appId":Z
    if-nez v23, :cond_d

    if-eqz v3, :cond_10

    .line 732
    :cond_d
    if-eqz v23, :cond_e

    if-nez v3, :cond_f

    .line 733
    :cond_e
    const/16 v42, 0x0

    goto/16 :goto_0

    .line 734
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_10

    .line 735
    const/16 v42, 0x0

    goto/16 :goto_0

    .line 738
    :cond_10
    const/16 v34, 0x1

    .line 739
    .local v34, "this_present_messageTs":Z
    const/4 v14, 0x1

    .line 740
    .local v14, "that_present_messageTs":Z
    if-nez v34, :cond_11

    if-eqz v14, :cond_14

    .line 741
    :cond_11
    if-eqz v34, :cond_12

    if-nez v14, :cond_13

    .line 742
    :cond_12
    const/16 v42, 0x0

    goto/16 :goto_0

    .line 743
    :cond_13
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->messageTs:J

    move-wide/from16 v42, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->messageTs:J

    move-wide/from16 v44, v0

    cmp-long v42, v42, v44

    if-eqz v42, :cond_14

    .line 744
    const/16 v42, 0x0

    goto/16 :goto_0

    .line 747
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetTopic()Z

    move-result v40

    .line 748
    .local v40, "this_present_topic":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetTopic()Z

    move-result v20

    .line 749
    .local v20, "that_present_topic":Z
    if-nez v40, :cond_15

    if-eqz v20, :cond_18

    .line 750
    :cond_15
    if-eqz v40, :cond_16

    if-nez v20, :cond_17

    .line 751
    :cond_16
    const/16 v42, 0x0

    goto/16 :goto_0

    .line 752
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->topic:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->topic:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_18

    .line 753
    const/16 v42, 0x0

    goto/16 :goto_0

    .line 756
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetAliasName()Z

    move-result v22

    .line 757
    .local v22, "this_present_aliasName":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetAliasName()Z

    move-result v2

    .line 758
    .local v2, "that_present_aliasName":Z
    if-nez v22, :cond_19

    if-eqz v2, :cond_1c

    .line 759
    :cond_19
    if-eqz v22, :cond_1a

    if-nez v2, :cond_1b

    .line 760
    :cond_1a
    const/16 v42, 0x0

    goto/16 :goto_0

    .line 761
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aliasName:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aliasName:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_1c

    .line 762
    const/16 v42, 0x0

    goto/16 :goto_0

    .line 765
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetRequest()Z

    move-result v38

    .line 766
    .local v38, "this_present_request":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetRequest()Z

    move-result v18

    .line 767
    .local v18, "that_present_request":Z
    if-nez v38, :cond_1d

    if-eqz v18, :cond_20

    .line 768
    :cond_1d
    if-eqz v38, :cond_1e

    if-nez v18, :cond_1f

    .line 769
    :cond_1e
    const/16 v42, 0x0

    goto/16 :goto_0

    .line 770
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    move-object/from16 v42, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->equals(Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;)Z

    move-result v42

    if-nez v42, :cond_20

    .line 771
    const/16 v42, 0x0

    goto/16 :goto_0

    .line 774
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetPackageName()Z

    move-result v35

    .line 775
    .local v35, "this_present_packageName":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetPackageName()Z

    move-result v15

    .line 776
    .local v15, "that_present_packageName":Z
    if-nez v35, :cond_21

    if-eqz v15, :cond_24

    .line 777
    :cond_21
    if-eqz v35, :cond_22

    if-nez v15, :cond_23

    .line 778
    :cond_22
    const/16 v42, 0x0

    goto/16 :goto_0

    .line 779
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->packageName:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->packageName:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_24

    .line 780
    const/16 v42, 0x0

    goto/16 :goto_0

    .line 783
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetCategory()Z

    move-result v25

    .line 784
    .local v25, "this_present_category":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetCategory()Z

    move-result v5

    .line 785
    .local v5, "that_present_category":Z
    if-nez v25, :cond_25

    if-eqz v5, :cond_28

    .line 786
    :cond_25
    if-eqz v25, :cond_26

    if-nez v5, :cond_27

    .line 787
    :cond_26
    const/16 v42, 0x0

    goto/16 :goto_0

    .line 788
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->category:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->category:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_28

    .line 789
    const/16 v42, 0x0

    goto/16 :goto_0

    .line 792
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetIsOnline()Z

    move-result v33

    .line 793
    .local v33, "this_present_isOnline":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetIsOnline()Z

    move-result v13

    .line 794
    .local v13, "that_present_isOnline":Z
    if-nez v33, :cond_29

    if-eqz v13, :cond_2c

    .line 795
    :cond_29
    if-eqz v33, :cond_2a

    if-nez v13, :cond_2b

    .line 796
    :cond_2a
    const/16 v42, 0x0

    goto/16 :goto_0

    .line 797
    :cond_2b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isOnline:Z

    move/from16 v42, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isOnline:Z

    move/from16 v43, v0

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_2c

    .line 798
    const/16 v42, 0x0

    goto/16 :goto_0

    .line 801
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetRegId()Z

    move-result v37

    .line 802
    .local v37, "this_present_regId":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetRegId()Z

    move-result v17

    .line 803
    .local v17, "that_present_regId":Z
    if-nez v37, :cond_2d

    if-eqz v17, :cond_30

    .line 804
    :cond_2d
    if-eqz v37, :cond_2e

    if-nez v17, :cond_2f

    .line 805
    :cond_2e
    const/16 v42, 0x0

    goto/16 :goto_0

    .line 806
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->regId:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->regId:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_30

    .line 807
    const/16 v42, 0x0

    goto/16 :goto_0

    .line 810
    :cond_30
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetCallbackUrl()Z

    move-result v24

    .line 811
    .local v24, "this_present_callbackUrl":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetCallbackUrl()Z

    move-result v4

    .line 812
    .local v4, "that_present_callbackUrl":Z
    if-nez v24, :cond_31

    if-eqz v4, :cond_34

    .line 813
    :cond_31
    if-eqz v24, :cond_32

    if-nez v4, :cond_33

    .line 814
    :cond_32
    const/16 v42, 0x0

    goto/16 :goto_0

    .line 815
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->callbackUrl:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->callbackUrl:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_34

    .line 816
    const/16 v42, 0x0

    goto/16 :goto_0

    .line 819
    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetUserAccount()Z

    move-result v41

    .line 820
    .local v41, "this_present_userAccount":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetUserAccount()Z

    move-result v21

    .line 821
    .local v21, "that_present_userAccount":Z
    if-nez v41, :cond_35

    if-eqz v21, :cond_38

    .line 822
    :cond_35
    if-eqz v41, :cond_36

    if-nez v21, :cond_37

    .line 823
    :cond_36
    const/16 v42, 0x0

    goto/16 :goto_0

    .line 824
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->userAccount:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->userAccount:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_38

    .line 825
    const/16 v42, 0x0

    goto/16 :goto_0

    .line 828
    :cond_38
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetDeviceStatus()Z

    move-result v28

    .line 829
    .local v28, "this_present_deviceStatus":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetDeviceStatus()Z

    move-result v8

    .line 830
    .local v8, "that_present_deviceStatus":Z
    if-nez v28, :cond_39

    if-eqz v8, :cond_3c

    .line 831
    :cond_39
    if-eqz v28, :cond_3a

    if-nez v8, :cond_3b

    .line 832
    :cond_3a
    const/16 v42, 0x0

    goto/16 :goto_0

    .line 833
    :cond_3b
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceStatus:S

    move/from16 v42, v0

    move-object/from16 v0, p1

    iget-short v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceStatus:S

    move/from16 v43, v0

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_3c

    .line 834
    const/16 v42, 0x0

    goto/16 :goto_0

    .line 837
    :cond_3c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetGeoMsgStatus()Z

    move-result v30

    .line 838
    .local v30, "this_present_geoMsgStatus":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetGeoMsgStatus()Z

    move-result v10

    .line 839
    .local v10, "that_present_geoMsgStatus":Z
    if-nez v30, :cond_3d

    if-eqz v10, :cond_40

    .line 840
    :cond_3d
    if-eqz v30, :cond_3e

    if-nez v10, :cond_3f

    .line 841
    :cond_3e
    const/16 v42, 0x0

    goto/16 :goto_0

    .line 842
    :cond_3f
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->geoMsgStatus:S

    move/from16 v42, v0

    move-object/from16 v0, p1

    iget-short v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->geoMsgStatus:S

    move/from16 v43, v0

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_40

    .line 843
    const/16 v42, 0x0

    goto/16 :goto_0

    .line 846
    :cond_40
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetImeiMd5()Z

    move-result v32

    .line 847
    .local v32, "this_present_imeiMd5":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetImeiMd5()Z

    move-result v12

    .line 848
    .local v12, "that_present_imeiMd5":Z
    if-nez v32, :cond_41

    if-eqz v12, :cond_44

    .line 849
    :cond_41
    if-eqz v32, :cond_42

    if-nez v12, :cond_43

    .line 850
    :cond_42
    const/16 v42, 0x0

    goto/16 :goto_0

    .line 851
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->imeiMd5:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->imeiMd5:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_44

    .line 852
    const/16 v42, 0x0

    goto/16 :goto_0

    .line 855
    :cond_44
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetDeviceId()Z

    move-result v27

    .line 856
    .local v27, "this_present_deviceId":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetDeviceId()Z

    move-result v7

    .line 857
    .local v7, "that_present_deviceId":Z
    if-nez v27, :cond_45

    if-eqz v7, :cond_48

    .line 858
    :cond_45
    if-eqz v27, :cond_46

    if-nez v7, :cond_47

    .line 859
    :cond_46
    const/16 v42, 0x0

    goto/16 :goto_0

    .line 860
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceId:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceId:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_48

    .line 861
    const/16 v42, 0x0

    goto/16 :goto_0

    .line 864
    :cond_48
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetPassThrough()Z

    move-result v36

    .line 865
    .local v36, "this_present_passThrough":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetPassThrough()Z

    move-result v16

    .line 866
    .local v16, "that_present_passThrough":Z
    if-nez v36, :cond_49

    if-eqz v16, :cond_4c

    .line 867
    :cond_49
    if-eqz v36, :cond_4a

    if-nez v16, :cond_4b

    .line 868
    :cond_4a
    const/16 v42, 0x0

    goto/16 :goto_0

    .line 869
    :cond_4b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->passThrough:I

    move/from16 v42, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->passThrough:I

    move/from16 v43, v0

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_4c

    .line 870
    const/16 v42, 0x0

    goto/16 :goto_0

    .line 873
    :cond_4c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetExtra()Z

    move-result v29

    .line 874
    .local v29, "this_present_extra":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetExtra()Z

    move-result v9

    .line 875
    .local v9, "that_present_extra":Z
    if-nez v29, :cond_4d

    if-eqz v9, :cond_50

    .line 876
    :cond_4d
    if-eqz v29, :cond_4e

    if-nez v9, :cond_4f

    .line 877
    :cond_4e
    const/16 v42, 0x0

    goto/16 :goto_0

    .line 878
    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->extra:Ljava/util/Map;

    move-object/from16 v42, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->extra:Ljava/util/Map;

    move-object/from16 v43, v0

    invoke-interface/range {v42 .. v43}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_50

    .line 879
    const/16 v42, 0x0

    goto/16 :goto_0

    .line 882
    :cond_50
    const/16 v42, 0x1

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 691
    if-nez p1, :cond_1

    .line 695
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 693
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    if-eqz v1, :cond_0

    .line 694
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->equals(Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 887
    const/4 v0, 0x0

    return v0
.end method

.method public isSetAliasName()Z
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aliasName:Ljava/lang/String;

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
    .line 290
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetCallbackUrl()Z
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->callbackUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetCategory()Z
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->category:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetDebug()Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->debug:Ljava/lang/String;

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
    .line 622
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetDeviceStatus()Z
    .locals 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetExtra()Z
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->extra:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetGeoMsgStatus()Z
    .locals 2

    .prologue
    .line 576
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetId()Z
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

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
    .line 598
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->imeiMd5:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetIsOnline()Z
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetMessageTs()Z
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetPackageName()Z
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetPassThrough()Z
    .locals 2

    .prologue
    .line 647
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetRegId()Z
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->regId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetRequest()Z
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

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
    .line 242
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetTopic()Z
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->topic:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetUserAccount()Z
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->userAccount:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 12
    .param p1, "iprot"    # Lorg/apache/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    const/16 v11, 0xc

    const/4 v10, 0x6

    const/4 v9, 0x1

    const/16 v8, 0xb

    .line 1103
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructBegin()Lorg/apache/thrift/protocol/TStruct;

    .line 1106
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldBegin()Lorg/apache/thrift/protocol/TField;

    move-result-object v4

    .line 1107
    .local v4, "field":Lorg/apache/thrift/protocol/TField;
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-nez v5, :cond_0

    .line 1275
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructEnd()V

    .line 1278
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetMessageTs()Z

    move-result v5

    if-nez v5, :cond_16

    .line 1279
    new-instance v5, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Required field \'messageTs\' was not found in serialized data! Struct: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1110
    :cond_0
    iget-short v5, v4, Lorg/apache/thrift/protocol/TField;->id:S

    packed-switch v5, :pswitch_data_0

    .line 1271
    :pswitch_0
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    .line 1273
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 1112
    :pswitch_1
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_1

    .line 1113
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->debug:Ljava/lang/String;

    goto :goto_1

    .line 1115
    :cond_1
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1119
    :pswitch_2
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v11, :cond_2

    .line 1120
    new-instance v5, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v5}, Lcom/xiaomi/xmpush/thrift/Target;-><init>()V

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    .line 1121
    iget-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v5, p1}, Lcom/xiaomi/xmpush/thrift/Target;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 1123
    :cond_2
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1127
    :pswitch_3
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_3

    .line 1128
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    goto :goto_1

    .line 1130
    :cond_3
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1134
    :pswitch_4
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_4

    .line 1135
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    goto :goto_1

    .line 1137
    :cond_4
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1141
    :pswitch_5
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v6, 0xa

    if-ne v5, v6, :cond_5

    .line 1142
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->messageTs:J

    .line 1143
    invoke-virtual {p0, v9}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->setMessageTsIsSet(Z)V

    goto :goto_1

    .line 1145
    :cond_5
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1149
    :pswitch_6
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_6

    .line 1150
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->topic:Ljava/lang/String;

    goto :goto_1

    .line 1152
    :cond_6
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1156
    :pswitch_7
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_7

    .line 1157
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aliasName:Ljava/lang/String;

    goto :goto_1

    .line 1159
    :cond_7
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1163
    :pswitch_8
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v11, :cond_8

    .line 1164
    new-instance v5, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    invoke-direct {v5}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;-><init>()V

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    .line 1165
    iget-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    invoke-virtual {v5, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    goto/16 :goto_1

    .line 1167
    :cond_8
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1171
    :pswitch_9
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_9

    .line 1172
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->packageName:Ljava/lang/String;

    goto/16 :goto_1

    .line 1174
    :cond_9
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1178
    :pswitch_a
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_a

    .line 1179
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->category:Ljava/lang/String;

    goto/16 :goto_1

    .line 1181
    :cond_a
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1185
    :pswitch_b
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    const/4 v6, 0x2

    if-ne v5, v6, :cond_b

    .line 1186
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isOnline:Z

    .line 1187
    invoke-virtual {p0, v9}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->setIsOnlineIsSet(Z)V

    goto/16 :goto_1

    .line 1189
    :cond_b
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1193
    :pswitch_c
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_c

    .line 1194
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->regId:Ljava/lang/String;

    goto/16 :goto_1

    .line 1196
    :cond_c
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1200
    :pswitch_d
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_d

    .line 1201
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->callbackUrl:Ljava/lang/String;

    goto/16 :goto_1

    .line 1203
    :cond_d
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1207
    :pswitch_e
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_e

    .line 1208
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->userAccount:Ljava/lang/String;

    goto/16 :goto_1

    .line 1210
    :cond_e
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1214
    :pswitch_f
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v10, :cond_f

    .line 1215
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI16()S

    move-result v5

    iput-short v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceStatus:S

    .line 1216
    invoke-virtual {p0, v9}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->setDeviceStatusIsSet(Z)V

    goto/16 :goto_1

    .line 1218
    :cond_f
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1222
    :pswitch_10
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v10, :cond_10

    .line 1223
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI16()S

    move-result v5

    iput-short v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->geoMsgStatus:S

    .line 1224
    invoke-virtual {p0, v9}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->setGeoMsgStatusIsSet(Z)V

    goto/16 :goto_1

    .line 1226
    :cond_10
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1230
    :pswitch_11
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_11

    .line 1231
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->imeiMd5:Ljava/lang/String;

    goto/16 :goto_1

    .line 1233
    :cond_11
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1237
    :pswitch_12
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_12

    .line 1238
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceId:Ljava/lang/String;

    goto/16 :goto_1

    .line 1240
    :cond_12
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1244
    :pswitch_13
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v6, 0x8

    if-ne v5, v6, :cond_13

    .line 1245
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI32()I

    move-result v5

    iput v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->passThrough:I

    .line 1246
    invoke-virtual {p0, v9}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->setPassThroughIsSet(Z)V

    goto/16 :goto_1

    .line 1248
    :cond_13
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1252
    :pswitch_14
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v6, 0xd

    if-ne v5, v6, :cond_15

    .line 1254
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readMapBegin()Lorg/apache/thrift/protocol/TMap;

    move-result-object v2

    .line 1255
    .local v2, "_map49":Lorg/apache/thrift/protocol/TMap;
    new-instance v5, Ljava/util/HashMap;

    iget v6, v2, Lorg/apache/thrift/protocol/TMap;->size:I

    mul-int/lit8 v6, v6, 0x2

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->extra:Ljava/util/Map;

    .line 1256
    const/4 v0, 0x0

    .local v0, "_i50":I
    :goto_2
    iget v5, v2, Lorg/apache/thrift/protocol/TMap;->size:I

    if-ge v0, v5, :cond_14

    .line 1260
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1261
    .local v1, "_key51":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1262
    .local v3, "_val52":Ljava/lang/String;
    iget-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->extra:Ljava/util/Map;

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1256
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1264
    .end local v1    # "_key51":Ljava/lang/String;
    .end local v3    # "_val52":Ljava/lang/String;
    :cond_14
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readMapEnd()V

    goto/16 :goto_1

    .line 1267
    .end local v0    # "_i50":I
    .end local v2    # "_map49":Lorg/apache/thrift/protocol/TMap;
    :cond_15
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1281
    :cond_16
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->validate()V

    .line 1282
    return-void

    .line 1110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method public setAliasName(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;
    .locals 0
    .param p1, "aliasName"    # Ljava/lang/String;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aliasName:Ljava/lang/String;

    .line 352
    return-object p0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    .line 281
    return-object p0
.end method

.method public setDeviceStatus(S)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;
    .locals 1
    .param p1, "deviceStatus"    # S

    .prologue
    .line 542
    iput-short p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceStatus:S

    .line 543
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->setDeviceStatusIsSet(Z)V

    .line 544
    return-object p0
.end method

.method public setDeviceStatusIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 557
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 558
    return-void
.end method

.method public setGeoMsgStatus(S)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;
    .locals 1
    .param p1, "geoMsgStatus"    # S

    .prologue
    .line 565
    iput-short p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->geoMsgStatus:S

    .line 566
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->setGeoMsgStatusIsSet(Z)V

    .line 567
    return-object p0
.end method

.method public setGeoMsgStatusIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 580
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 581
    return-void
.end method

.method public setId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    .line 257
    return-object p0
.end method

.method public setIsOnlineIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 462
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 463
    return-void
.end method

.method public setMessageTs(J)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;
    .locals 1
    .param p1, "messageTs"    # J

    .prologue
    .line 304
    iput-wide p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->messageTs:J

    .line 305
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->setMessageTsIsSet(Z)V

    .line 306
    return-object p0
.end method

.method public setMessageTsIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 319
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 320
    return-void
.end method

.method public setPassThroughIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 651
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 652
    return-void
.end method

.method public setTopic(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;
    .locals 0
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->topic:Ljava/lang/String;

    .line 328
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1426
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "XmPushActionAckMessage("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1427
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 1429
    .local v0, "first":Z
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1430
    const-string v2, "debug:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1431
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->debug:Ljava/lang/String;

    if-nez v2, :cond_24

    .line 1432
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1436
    :goto_0
    const/4 v0, 0x0

    .line 1438
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetTarget()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1439
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1440
    :cond_1
    const-string/jumbo v2, "target:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1441
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-nez v2, :cond_25

    .line 1442
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1446
    :goto_1
    const/4 v0, 0x0

    .line 1448
    :cond_2
    if-nez v0, :cond_3

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1449
    :cond_3
    const-string v2, "id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1450
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    if-nez v2, :cond_26

    .line 1451
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1455
    :goto_2
    const/4 v0, 0x0

    .line 1456
    if-nez v0, :cond_4

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1457
    :cond_4
    const-string v2, "appId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1458
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    if-nez v2, :cond_27

    .line 1459
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1463
    :goto_3
    const/4 v0, 0x0

    .line 1464
    if-nez v0, :cond_5

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1465
    :cond_5
    const-string v2, "messageTs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1466
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->messageTs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1467
    const/4 v0, 0x0

    .line 1468
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetTopic()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1469
    if-nez v0, :cond_6

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1470
    :cond_6
    const-string/jumbo v2, "topic:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1471
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->topic:Ljava/lang/String;

    if-nez v2, :cond_28

    .line 1472
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1476
    :goto_4
    const/4 v0, 0x0

    .line 1478
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetAliasName()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1479
    if-nez v0, :cond_8

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1480
    :cond_8
    const-string v2, "aliasName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1481
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aliasName:Ljava/lang/String;

    if-nez v2, :cond_29

    .line 1482
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1486
    :goto_5
    const/4 v0, 0x0

    .line 1488
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetRequest()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1489
    if-nez v0, :cond_a

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1490
    :cond_a
    const-string v2, "request:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1491
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    if-nez v2, :cond_2a

    .line 1492
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1496
    :goto_6
    const/4 v0, 0x0

    .line 1498
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetPackageName()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1499
    if-nez v0, :cond_c

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1500
    :cond_c
    const-string v2, "packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1501
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->packageName:Ljava/lang/String;

    if-nez v2, :cond_2b

    .line 1502
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1506
    :goto_7
    const/4 v0, 0x0

    .line 1508
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetCategory()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1509
    if-nez v0, :cond_e

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1510
    :cond_e
    const-string v2, "category:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1511
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->category:Ljava/lang/String;

    if-nez v2, :cond_2c

    .line 1512
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1516
    :goto_8
    const/4 v0, 0x0

    .line 1518
    :cond_f
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetIsOnline()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1519
    if-nez v0, :cond_10

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1520
    :cond_10
    const-string v2, "isOnline:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1521
    iget-boolean v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isOnline:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1522
    const/4 v0, 0x0

    .line 1524
    :cond_11
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetRegId()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1525
    if-nez v0, :cond_12

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1526
    :cond_12
    const-string v2, "regId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1527
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->regId:Ljava/lang/String;

    if-nez v2, :cond_2d

    .line 1528
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1532
    :goto_9
    const/4 v0, 0x0

    .line 1534
    :cond_13
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetCallbackUrl()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1535
    if-nez v0, :cond_14

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1536
    :cond_14
    const-string v2, "callbackUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1537
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->callbackUrl:Ljava/lang/String;

    if-nez v2, :cond_2e

    .line 1538
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1542
    :goto_a
    const/4 v0, 0x0

    .line 1544
    :cond_15
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetUserAccount()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1545
    if-nez v0, :cond_16

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1546
    :cond_16
    const-string/jumbo v2, "userAccount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1547
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->userAccount:Ljava/lang/String;

    if-nez v2, :cond_2f

    .line 1548
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1552
    :goto_b
    const/4 v0, 0x0

    .line 1554
    :cond_17
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetDeviceStatus()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1555
    if-nez v0, :cond_18

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1556
    :cond_18
    const-string v2, "deviceStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1557
    iget-short v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceStatus:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1558
    const/4 v0, 0x0

    .line 1560
    :cond_19
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetGeoMsgStatus()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1561
    if-nez v0, :cond_1a

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1562
    :cond_1a
    const-string v2, "geoMsgStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1563
    iget-short v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->geoMsgStatus:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1564
    const/4 v0, 0x0

    .line 1566
    :cond_1b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetImeiMd5()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1567
    if-nez v0, :cond_1c

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1568
    :cond_1c
    const-string v2, "imeiMd5:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1569
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->imeiMd5:Ljava/lang/String;

    if-nez v2, :cond_30

    .line 1570
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1574
    :goto_c
    const/4 v0, 0x0

    .line 1576
    :cond_1d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetDeviceId()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1577
    if-nez v0, :cond_1e

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1578
    :cond_1e
    const-string v2, "deviceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1579
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceId:Ljava/lang/String;

    if-nez v2, :cond_31

    .line 1580
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1584
    :goto_d
    const/4 v0, 0x0

    .line 1586
    :cond_1f
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetPassThrough()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1587
    if-nez v0, :cond_20

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1588
    :cond_20
    const-string v2, "passThrough:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1589
    iget v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->passThrough:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1590
    const/4 v0, 0x0

    .line 1592
    :cond_21
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetExtra()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1593
    if-nez v0, :cond_22

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1594
    :cond_22
    const-string v2, "extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1595
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->extra:Ljava/util/Map;

    if-nez v2, :cond_32

    .line 1596
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1600
    :goto_e
    const/4 v0, 0x0

    .line 1602
    :cond_23
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1603
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1434
    :cond_24
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->debug:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1444
    :cond_25
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1453
    :cond_26
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1461
    :cond_27
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1474
    :cond_28
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->topic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 1484
    :cond_29
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aliasName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 1494
    :cond_2a
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 1504
    :cond_2b
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 1514
    :cond_2c
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 1530
    :cond_2d
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->regId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 1540
    :cond_2e
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->callbackUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 1550
    :cond_2f
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->userAccount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 1572
    :cond_30
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->imeiMd5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 1582
    :cond_31
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 1598
    :cond_32
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->extra:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_e
.end method

.method public validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1608
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1609
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1611
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1612
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'appId\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1615
    :cond_1
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

    .line 1285
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->validate()V

    .line 1287
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructBegin(Lorg/apache/thrift/protocol/TStruct;)V

    .line 1288
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->debug:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1289
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1290
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->DEBUG_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1291
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->debug:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1292
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1295
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-eqz v1, :cond_1

    .line 1296
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetTarget()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1297
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->TARGET_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1298
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v1, p1}, Lcom/xiaomi/xmpush/thrift/Target;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 1299
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1302
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1303
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1304
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1305
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1307
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1308
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->APP_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1309
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1310
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1312
    :cond_3
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->MESSAGE_TS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1313
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->messageTs:J

    invoke-virtual {p1, v2, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeI64(J)V

    .line 1314
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1315
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->topic:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1316
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetTopic()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1317
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->TOPIC_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1318
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->topic:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1319
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1322
    :cond_4
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aliasName:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1323
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetAliasName()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1324
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->ALIAS_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1325
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aliasName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1326
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1329
    :cond_5
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    if-eqz v1, :cond_6

    .line 1330
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetRequest()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1331
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->REQUEST_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1332
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    invoke-virtual {v1, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 1333
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1336
    :cond_6
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 1337
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetPackageName()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1338
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->PACKAGE_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1339
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1340
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1343
    :cond_7
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->category:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 1344
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetCategory()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1345
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->CATEGORY_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1346
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->category:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1347
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1350
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetIsOnline()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1351
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->IS_ONLINE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1352
    iget-boolean v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isOnline:Z

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 1353
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1355
    :cond_9
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->regId:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 1356
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetRegId()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1357
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->REG_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1358
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->regId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1359
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1362
    :cond_a
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->callbackUrl:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 1363
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetCallbackUrl()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1364
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->CALLBACK_URL_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1365
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->callbackUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1366
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1369
    :cond_b
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->userAccount:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 1370
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetUserAccount()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1371
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->USER_ACCOUNT_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1372
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->userAccount:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1373
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1376
    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetDeviceStatus()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1377
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->DEVICE_STATUS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1378
    iget-short v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceStatus:S

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeI16(S)V

    .line 1379
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1381
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetGeoMsgStatus()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1382
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->GEO_MSG_STATUS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1383
    iget-short v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->geoMsgStatus:S

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeI16(S)V

    .line 1384
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1386
    :cond_e
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->imeiMd5:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1387
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetImeiMd5()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1388
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->IMEI_MD5_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1389
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->imeiMd5:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1390
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1393
    :cond_f
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceId:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 1394
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetDeviceId()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1395
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->DEVICE_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1396
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1397
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1400
    :cond_10
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetPassThrough()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1401
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->PASS_THROUGH_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1402
    iget v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->passThrough:I

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeI32(I)V

    .line 1403
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1405
    :cond_11
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->extra:Ljava/util/Map;

    if-eqz v1, :cond_13

    .line 1406
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->isSetExtra()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1407
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->EXTRA_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1409
    new-instance v1, Lorg/apache/thrift/protocol/TMap;

    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->extra:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v4, v4, v2}, Lorg/apache/thrift/protocol/TMap;-><init>(BBI)V

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeMapBegin(Lorg/apache/thrift/protocol/TMap;)V

    .line 1410
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->extra:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1412
    .local v0, "_iter53":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1413
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 1415
    .end local v0    # "_iter53":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_12
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeMapEnd()V

    .line 1417
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1420
    :cond_13
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 1421
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 1422
    return-void
.end method
