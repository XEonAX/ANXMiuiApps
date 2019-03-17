.class public Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;
.super Ljava/lang/Object;
.source "XmPushActionRegistrationResult.java"

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
        "Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final ALIAS_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final APP_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final APP_VERSION_CODE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final APP_VERSION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final CLIENT_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final COST_TIME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final DEBUG_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final ERROR_CODE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final HYBRID_PUSH_ENDPOINT_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final PACKAGE_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final PUSH_SDK_VERSION_CODE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final REASON_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final REGION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final REGISTERED_AT_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final REG_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final REG_SECRET_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

.field private static final TARGET_FIELD_DESC:Lorg/apache/thrift/protocol/TField;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public aliasName:Ljava/lang/String;

.field public appId:Ljava/lang/String;

.field public appVersion:Ljava/lang/String;

.field public appVersionCode:I

.field public clientId:Ljava/lang/String;

.field public costTime:J

.field public debug:Ljava/lang/String;

.field public errorCode:J

.field public hybridPushEndpoint:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public pushSdkVersionCode:I

.field public reason:Ljava/lang/String;

.field public regId:Ljava/lang/String;

.field public regSecret:Ljava/lang/String;

.field public region:Ljava/lang/String;

.field public registeredAt:J

.field public target:Lcom/xiaomi/xmpush/thrift/Target;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0xc

    const/16 v5, 0x8

    const/16 v4, 0xa

    const/16 v3, 0xb

    .line 30
    new-instance v0, Lorg/apache/thrift/protocol/TStruct;

    const-string v1, "XmPushActionRegistrationResult"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    .line 32
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->DEBUG_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x2

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->TARGET_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->APP_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 36
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x6

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->ERROR_CODE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 37
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x7

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->REASON_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 38
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v3, v5}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->REG_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 39
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x9

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->REG_SECRET_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 40
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v3, v4}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->PACKAGE_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 41
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v4, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->REGISTERED_AT_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 42
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v3, v6}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->ALIAS_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 43
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xd

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->CLIENT_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 44
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xe

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->COST_TIME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 45
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xf

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->APP_VERSION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 46
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x10

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->PUSH_SDK_VERSION_CODE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 47
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x11

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->HYBRID_PUSH_ENDPOINT_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 48
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x12

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->APP_VERSION_CODE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 49
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x13

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->REGION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->__isset_bit_vector:Ljava/util/BitSet;

    .line 80
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;)I
    .locals 6
    .param p1, "other"    # Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;

    .prologue
    .line 788
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 789
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

    .line 975
    :cond_0
    :goto_0
    return v0

    .line 792
    :cond_1
    const/4 v0, 0x0

    .line 793
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 795
    .local v1, "typedOther":Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetDebug()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetDebug()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 796
    if-nez v0, :cond_0

    .line 799
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetDebug()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 800
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->debug:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->debug:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 801
    if-nez v0, :cond_0

    .line 805
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetTarget()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetTarget()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 806
    if-nez v0, :cond_0

    .line 809
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetTarget()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 810
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 811
    if-nez v0, :cond_0

    .line 815
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 816
    if-nez v0, :cond_0

    .line 819
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetId()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 820
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->id:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 821
    if-nez v0, :cond_0

    .line 825
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetAppId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetAppId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 826
    if-nez v0, :cond_0

    .line 829
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetAppId()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 830
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->appId:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->appId:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 831
    if-nez v0, :cond_0

    .line 835
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetErrorCode()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetErrorCode()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 836
    if-nez v0, :cond_0

    .line 839
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetErrorCode()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 840
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->errorCode:J

    iget-wide v4, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->errorCode:J

    invoke-static {v2, v3, v4, v5}, Lorg/apache/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 841
    if-nez v0, :cond_0

    .line 845
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetReason()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetReason()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 846
    if-nez v0, :cond_0

    .line 849
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetReason()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 850
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->reason:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->reason:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 851
    if-nez v0, :cond_0

    .line 855
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetRegId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetRegId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 856
    if-nez v0, :cond_0

    .line 859
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetRegId()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 860
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->regId:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->regId:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 861
    if-nez v0, :cond_0

    .line 865
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetRegSecret()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetRegSecret()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 866
    if-nez v0, :cond_0

    .line 869
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetRegSecret()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 870
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->regSecret:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->regSecret:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 871
    if-nez v0, :cond_0

    .line 875
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetPackageName()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetPackageName()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 876
    if-nez v0, :cond_0

    .line 879
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetPackageName()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 880
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->packageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 881
    if-nez v0, :cond_0

    .line 885
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetRegisteredAt()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetRegisteredAt()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 886
    if-nez v0, :cond_0

    .line 889
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetRegisteredAt()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 890
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->registeredAt:J

    iget-wide v4, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->registeredAt:J

    invoke-static {v2, v3, v4, v5}, Lorg/apache/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 891
    if-nez v0, :cond_0

    .line 895
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetAliasName()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetAliasName()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 896
    if-nez v0, :cond_0

    .line 899
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetAliasName()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 900
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->aliasName:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->aliasName:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 901
    if-nez v0, :cond_0

    .line 905
    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetClientId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetClientId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 906
    if-nez v0, :cond_0

    .line 909
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetClientId()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 910
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->clientId:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->clientId:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 911
    if-nez v0, :cond_0

    .line 915
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetCostTime()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetCostTime()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 916
    if-nez v0, :cond_0

    .line 919
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetCostTime()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 920
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->costTime:J

    iget-wide v4, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->costTime:J

    invoke-static {v2, v3, v4, v5}, Lorg/apache/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 921
    if-nez v0, :cond_0

    .line 925
    :cond_e
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetAppVersion()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetAppVersion()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 926
    if-nez v0, :cond_0

    .line 929
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetAppVersion()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 930
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->appVersion:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->appVersion:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 931
    if-nez v0, :cond_0

    .line 935
    :cond_f
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetPushSdkVersionCode()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetPushSdkVersionCode()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 936
    if-nez v0, :cond_0

    .line 939
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetPushSdkVersionCode()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 940
    iget v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->pushSdkVersionCode:I

    iget v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->pushSdkVersionCode:I

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 941
    if-nez v0, :cond_0

    .line 945
    :cond_10
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetHybridPushEndpoint()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetHybridPushEndpoint()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 946
    if-nez v0, :cond_0

    .line 949
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetHybridPushEndpoint()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 950
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->hybridPushEndpoint:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->hybridPushEndpoint:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 951
    if-nez v0, :cond_0

    .line 955
    :cond_11
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetAppVersionCode()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetAppVersionCode()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 956
    if-nez v0, :cond_0

    .line 959
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetAppVersionCode()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 960
    iget v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->appVersionCode:I

    iget v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->appVersionCode:I

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 961
    if-nez v0, :cond_0

    .line 965
    :cond_12
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetRegion()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetRegion()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 966
    if-nez v0, :cond_0

    .line 969
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetRegion()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 970
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->region:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->region:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 971
    if-nez v0, :cond_0

    .line 975
    :cond_13
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 29
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->compareTo(Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;)I

    move-result v0

    return v0
.end method

.method public equals(Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;)Z
    .locals 42
    .param p1, "that"    # Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;

    .prologue
    .line 614
    if-nez p1, :cond_0

    .line 615
    const/16 v38, 0x0

    .line 779
    :goto_0
    return v38

    .line 617
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetDebug()Z

    move-result v26

    .line 618
    .local v26, "this_present_debug":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetDebug()Z

    move-result v8

    .line 619
    .local v8, "that_present_debug":Z
    if-nez v26, :cond_1

    if-eqz v8, :cond_4

    .line 620
    :cond_1
    if-eqz v26, :cond_2

    if-nez v8, :cond_3

    .line 621
    :cond_2
    const/16 v38, 0x0

    goto :goto_0

    .line 622
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->debug:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->debug:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_4

    .line 623
    const/16 v38, 0x0

    goto :goto_0

    .line 626
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetTarget()Z

    move-result v37

    .line 627
    .local v37, "this_present_target":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetTarget()Z

    move-result v19

    .line 628
    .local v19, "that_present_target":Z
    if-nez v37, :cond_5

    if-eqz v19, :cond_8

    .line 629
    :cond_5
    if-eqz v37, :cond_6

    if-nez v19, :cond_7

    .line 630
    :cond_6
    const/16 v38, 0x0

    goto :goto_0

    .line 631
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    move-object/from16 v38, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Lcom/xiaomi/xmpush/thrift/Target;->equals(Lcom/xiaomi/xmpush/thrift/Target;)Z

    move-result v38

    if-nez v38, :cond_8

    .line 632
    const/16 v38, 0x0

    goto :goto_0

    .line 635
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetId()Z

    move-result v29

    .line 636
    .local v29, "this_present_id":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetId()Z

    move-result v11

    .line 637
    .local v11, "that_present_id":Z
    if-nez v29, :cond_9

    if-eqz v11, :cond_c

    .line 638
    :cond_9
    if-eqz v29, :cond_a

    if-nez v11, :cond_b

    .line 639
    :cond_a
    const/16 v38, 0x0

    goto :goto_0

    .line 640
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->id:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->id:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_c

    .line 641
    const/16 v38, 0x0

    goto :goto_0

    .line 644
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetAppId()Z

    move-result v21

    .line 645
    .local v21, "this_present_appId":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetAppId()Z

    move-result v3

    .line 646
    .local v3, "that_present_appId":Z
    if-nez v21, :cond_d

    if-eqz v3, :cond_10

    .line 647
    :cond_d
    if-eqz v21, :cond_e

    if-nez v3, :cond_f

    .line 648
    :cond_e
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 649
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->appId:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->appId:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_10

    .line 650
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 653
    :cond_10
    const/16 v27, 0x1

    .line 654
    .local v27, "this_present_errorCode":Z
    const/4 v9, 0x1

    .line 655
    .local v9, "that_present_errorCode":Z
    if-nez v27, :cond_11

    if-eqz v9, :cond_14

    .line 656
    :cond_11
    if-eqz v27, :cond_12

    if-nez v9, :cond_13

    .line 657
    :cond_12
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 658
    :cond_13
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->errorCode:J

    move-wide/from16 v38, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->errorCode:J

    move-wide/from16 v40, v0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_14

    .line 659
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 662
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetReason()Z

    move-result v32

    .line 663
    .local v32, "this_present_reason":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetReason()Z

    move-result v14

    .line 664
    .local v14, "that_present_reason":Z
    if-nez v32, :cond_15

    if-eqz v14, :cond_18

    .line 665
    :cond_15
    if-eqz v32, :cond_16

    if-nez v14, :cond_17

    .line 666
    :cond_16
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 667
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->reason:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->reason:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_18

    .line 668
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 671
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetRegId()Z

    move-result v33

    .line 672
    .local v33, "this_present_regId":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetRegId()Z

    move-result v15

    .line 673
    .local v15, "that_present_regId":Z
    if-nez v33, :cond_19

    if-eqz v15, :cond_1c

    .line 674
    :cond_19
    if-eqz v33, :cond_1a

    if-nez v15, :cond_1b

    .line 675
    :cond_1a
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 676
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->regId:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->regId:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_1c

    .line 677
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 680
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetRegSecret()Z

    move-result v34

    .line 681
    .local v34, "this_present_regSecret":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetRegSecret()Z

    move-result v16

    .line 682
    .local v16, "that_present_regSecret":Z
    if-nez v34, :cond_1d

    if-eqz v16, :cond_20

    .line 683
    :cond_1d
    if-eqz v34, :cond_1e

    if-nez v16, :cond_1f

    .line 684
    :cond_1e
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 685
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->regSecret:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->regSecret:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_20

    .line 686
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 689
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetPackageName()Z

    move-result v30

    .line 690
    .local v30, "this_present_packageName":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetPackageName()Z

    move-result v12

    .line 691
    .local v12, "that_present_packageName":Z
    if-nez v30, :cond_21

    if-eqz v12, :cond_24

    .line 692
    :cond_21
    if-eqz v30, :cond_22

    if-nez v12, :cond_23

    .line 693
    :cond_22
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 694
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->packageName:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->packageName:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_24

    .line 695
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 698
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetRegisteredAt()Z

    move-result v36

    .line 699
    .local v36, "this_present_registeredAt":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetRegisteredAt()Z

    move-result v18

    .line 700
    .local v18, "that_present_registeredAt":Z
    if-nez v36, :cond_25

    if-eqz v18, :cond_28

    .line 701
    :cond_25
    if-eqz v36, :cond_26

    if-nez v18, :cond_27

    .line 702
    :cond_26
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 703
    :cond_27
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->registeredAt:J

    move-wide/from16 v38, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->registeredAt:J

    move-wide/from16 v40, v0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_28

    .line 704
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 707
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetAliasName()Z

    move-result v20

    .line 708
    .local v20, "this_present_aliasName":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetAliasName()Z

    move-result v2

    .line 709
    .local v2, "that_present_aliasName":Z
    if-nez v20, :cond_29

    if-eqz v2, :cond_2c

    .line 710
    :cond_29
    if-eqz v20, :cond_2a

    if-nez v2, :cond_2b

    .line 711
    :cond_2a
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 712
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->aliasName:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->aliasName:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_2c

    .line 713
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 716
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetClientId()Z

    move-result v24

    .line 717
    .local v24, "this_present_clientId":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetClientId()Z

    move-result v6

    .line 718
    .local v6, "that_present_clientId":Z
    if-nez v24, :cond_2d

    if-eqz v6, :cond_30

    .line 719
    :cond_2d
    if-eqz v24, :cond_2e

    if-nez v6, :cond_2f

    .line 720
    :cond_2e
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 721
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->clientId:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->clientId:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_30

    .line 722
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 725
    :cond_30
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetCostTime()Z

    move-result v25

    .line 726
    .local v25, "this_present_costTime":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetCostTime()Z

    move-result v7

    .line 727
    .local v7, "that_present_costTime":Z
    if-nez v25, :cond_31

    if-eqz v7, :cond_34

    .line 728
    :cond_31
    if-eqz v25, :cond_32

    if-nez v7, :cond_33

    .line 729
    :cond_32
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 730
    :cond_33
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->costTime:J

    move-wide/from16 v38, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->costTime:J

    move-wide/from16 v40, v0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_34

    .line 731
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 734
    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetAppVersion()Z

    move-result v22

    .line 735
    .local v22, "this_present_appVersion":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetAppVersion()Z

    move-result v4

    .line 736
    .local v4, "that_present_appVersion":Z
    if-nez v22, :cond_35

    if-eqz v4, :cond_38

    .line 737
    :cond_35
    if-eqz v22, :cond_36

    if-nez v4, :cond_37

    .line 738
    :cond_36
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 739
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->appVersion:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->appVersion:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_38

    .line 740
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 743
    :cond_38
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetPushSdkVersionCode()Z

    move-result v31

    .line 744
    .local v31, "this_present_pushSdkVersionCode":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetPushSdkVersionCode()Z

    move-result v13

    .line 745
    .local v13, "that_present_pushSdkVersionCode":Z
    if-nez v31, :cond_39

    if-eqz v13, :cond_3c

    .line 746
    :cond_39
    if-eqz v31, :cond_3a

    if-nez v13, :cond_3b

    .line 747
    :cond_3a
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 748
    :cond_3b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->pushSdkVersionCode:I

    move/from16 v38, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->pushSdkVersionCode:I

    move/from16 v39, v0

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_3c

    .line 749
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 752
    :cond_3c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetHybridPushEndpoint()Z

    move-result v28

    .line 753
    .local v28, "this_present_hybridPushEndpoint":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetHybridPushEndpoint()Z

    move-result v10

    .line 754
    .local v10, "that_present_hybridPushEndpoint":Z
    if-nez v28, :cond_3d

    if-eqz v10, :cond_40

    .line 755
    :cond_3d
    if-eqz v28, :cond_3e

    if-nez v10, :cond_3f

    .line 756
    :cond_3e
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 757
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->hybridPushEndpoint:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->hybridPushEndpoint:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_40

    .line 758
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 761
    :cond_40
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetAppVersionCode()Z

    move-result v23

    .line 762
    .local v23, "this_present_appVersionCode":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetAppVersionCode()Z

    move-result v5

    .line 763
    .local v5, "that_present_appVersionCode":Z
    if-nez v23, :cond_41

    if-eqz v5, :cond_44

    .line 764
    :cond_41
    if-eqz v23, :cond_42

    if-nez v5, :cond_43

    .line 765
    :cond_42
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 766
    :cond_43
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->appVersionCode:I

    move/from16 v38, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->appVersionCode:I

    move/from16 v39, v0

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_44

    .line 767
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 770
    :cond_44
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetRegion()Z

    move-result v35

    .line 771
    .local v35, "this_present_region":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetRegion()Z

    move-result v17

    .line 772
    .local v17, "that_present_region":Z
    if-nez v35, :cond_45

    if-eqz v17, :cond_48

    .line 773
    :cond_45
    if-eqz v35, :cond_46

    if-nez v17, :cond_47

    .line 774
    :cond_46
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 775
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->region:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->region:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_48

    .line 776
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 779
    :cond_48
    const/16 v38, 0x1

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 606
    if-nez p1, :cond_1

    .line 610
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 608
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;

    if-eqz v1, :cond_0

    .line 609
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->equals(Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public getErrorCode()J
    .locals 2

    .prologue
    .line 274
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->errorCode:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 784
    const/4 v0, 0x0

    return v0
.end method

.method public isSetAliasName()Z
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->aliasName:Ljava/lang/String;

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
    .line 264
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->appId:Ljava/lang/String;

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
    .line 501
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->appVersion:Ljava/lang/String;

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
    .line 573
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetClientId()Z
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->clientId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetCostTime()Z
    .locals 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetDebug()Z
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->debug:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetErrorCode()Z
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetHybridPushEndpoint()Z
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->hybridPushEndpoint:Ljava/lang/String;

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
    .line 240
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->id:Ljava/lang/String;

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
    .line 383
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->packageName:Ljava/lang/String;

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
    .line 526
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetReason()Z
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->reason:Ljava/lang/String;

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
    .line 335
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->regId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetRegSecret()Z
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->regSecret:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetRegion()Z
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->region:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetRegisteredAt()Z
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetTarget()Z
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 8
    .param p1, "iprot"    # Lorg/apache/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x8

    const/16 v6, 0xa

    const/4 v5, 0x1

    const/16 v4, 0xb

    .line 980
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructBegin()Lorg/apache/thrift/protocol/TStruct;

    .line 983
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldBegin()Lorg/apache/thrift/protocol/TField;

    move-result-object v0

    .line 984
    .local v0, "field":Lorg/apache/thrift/protocol/TField;
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 1125
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructEnd()V

    .line 1128
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetErrorCode()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1129
    new-instance v1, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Required field \'errorCode\' was not found in serialized data! Struct: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 987
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 1121
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    .line 1123
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 989
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_1

    .line 990
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->debug:Ljava/lang/String;

    goto :goto_1

    .line 992
    :cond_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 996
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 997
    new-instance v1, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/Target;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    .line 998
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v1, p1}, Lcom/xiaomi/xmpush/thrift/Target;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 1000
    :cond_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1004
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_3

    .line 1005
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->id:Ljava/lang/String;

    goto :goto_1

    .line 1007
    :cond_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1011
    :pswitch_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_4

    .line 1012
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->appId:Ljava/lang/String;

    goto :goto_1

    .line 1014
    :cond_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1018
    :pswitch_5
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v6, :cond_5

    .line 1019
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->errorCode:J

    .line 1020
    invoke-virtual {p0, v5}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->setErrorCodeIsSet(Z)V

    goto :goto_1

    .line 1022
    :cond_5
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1026
    :pswitch_6
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_6

    .line 1027
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->reason:Ljava/lang/String;

    goto :goto_1

    .line 1029
    :cond_6
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1033
    :pswitch_7
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_7

    .line 1034
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->regId:Ljava/lang/String;

    goto :goto_1

    .line 1036
    :cond_7
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1040
    :pswitch_8
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_8

    .line 1041
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->regSecret:Ljava/lang/String;

    goto/16 :goto_1

    .line 1043
    :cond_8
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1047
    :pswitch_9
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_9

    .line 1048
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->packageName:Ljava/lang/String;

    goto/16 :goto_1

    .line 1050
    :cond_9
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1054
    :pswitch_a
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v6, :cond_a

    .line 1055
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->registeredAt:J

    .line 1056
    invoke-virtual {p0, v5}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->setRegisteredAtIsSet(Z)V

    goto/16 :goto_1

    .line 1058
    :cond_a
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1062
    :pswitch_b
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_b

    .line 1063
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->aliasName:Ljava/lang/String;

    goto/16 :goto_1

    .line 1065
    :cond_b
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1069
    :pswitch_c
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_c

    .line 1070
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->clientId:Ljava/lang/String;

    goto/16 :goto_1

    .line 1072
    :cond_c
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1076
    :pswitch_d
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v6, :cond_d

    .line 1077
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->costTime:J

    .line 1078
    invoke-virtual {p0, v5}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->setCostTimeIsSet(Z)V

    goto/16 :goto_1

    .line 1080
    :cond_d
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1084
    :pswitch_e
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_e

    .line 1085
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->appVersion:Ljava/lang/String;

    goto/16 :goto_1

    .line 1087
    :cond_e
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1091
    :pswitch_f
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v7, :cond_f

    .line 1092
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->pushSdkVersionCode:I

    .line 1093
    invoke-virtual {p0, v5}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->setPushSdkVersionCodeIsSet(Z)V

    goto/16 :goto_1

    .line 1095
    :cond_f
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1099
    :pswitch_10
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_10

    .line 1100
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->hybridPushEndpoint:Ljava/lang/String;

    goto/16 :goto_1

    .line 1102
    :cond_10
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1106
    :pswitch_11
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v7, :cond_11

    .line 1107
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->appVersionCode:I

    .line 1108
    invoke-virtual {p0, v5}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->setAppVersionCodeIsSet(Z)V

    goto/16 :goto_1

    .line 1110
    :cond_11
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1114
    :pswitch_12
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_12

    .line 1115
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->region:Ljava/lang/String;

    goto/16 :goto_1

    .line 1117
    :cond_12
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1131
    :cond_13
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->validate()V

    .line 1132
    return-void

    .line 987
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
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
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method public setAppVersionCodeIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 577
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 578
    return-void
.end method

.method public setCostTimeIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 483
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 484
    return-void
.end method

.method public setErrorCodeIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 293
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 294
    return-void
.end method

.method public setPushSdkVersionCodeIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 530
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 531
    return-void
.end method

.method public setRegisteredAtIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 412
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 413
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1254
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "XmPushActionRegistrationResult("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1255
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 1257
    .local v0, "first":Z
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1258
    const-string v2, "debug:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1259
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->debug:Ljava/lang/String;

    if-nez v2, :cond_20

    .line 1260
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1264
    :goto_0
    const/4 v0, 0x0

    .line 1266
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetTarget()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1267
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1268
    :cond_1
    const-string/jumbo v2, "target:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-nez v2, :cond_21

    .line 1270
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1274
    :goto_1
    const/4 v0, 0x0

    .line 1276
    :cond_2
    if-nez v0, :cond_3

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1277
    :cond_3
    const-string v2, "id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1278
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->id:Ljava/lang/String;

    if-nez v2, :cond_22

    .line 1279
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1283
    :goto_2
    const/4 v0, 0x0

    .line 1284
    if-nez v0, :cond_4

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1285
    :cond_4
    const-string v2, "appId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1286
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->appId:Ljava/lang/String;

    if-nez v2, :cond_23

    .line 1287
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1291
    :goto_3
    const/4 v0, 0x0

    .line 1292
    if-nez v0, :cond_5

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1293
    :cond_5
    const-string v2, "errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1294
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->errorCode:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1295
    const/4 v0, 0x0

    .line 1296
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetReason()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1297
    if-nez v0, :cond_6

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1298
    :cond_6
    const-string v2, "reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1299
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->reason:Ljava/lang/String;

    if-nez v2, :cond_24

    .line 1300
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1304
    :goto_4
    const/4 v0, 0x0

    .line 1306
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetRegId()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1307
    if-nez v0, :cond_8

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1308
    :cond_8
    const-string v2, "regId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1309
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->regId:Ljava/lang/String;

    if-nez v2, :cond_25

    .line 1310
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1314
    :goto_5
    const/4 v0, 0x0

    .line 1316
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetRegSecret()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1317
    if-nez v0, :cond_a

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1318
    :cond_a
    const-string v2, "regSecret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1319
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->regSecret:Ljava/lang/String;

    if-nez v2, :cond_26

    .line 1320
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1324
    :goto_6
    const/4 v0, 0x0

    .line 1326
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetPackageName()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1327
    if-nez v0, :cond_c

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1328
    :cond_c
    const-string v2, "packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1329
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->packageName:Ljava/lang/String;

    if-nez v2, :cond_27

    .line 1330
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1334
    :goto_7
    const/4 v0, 0x0

    .line 1336
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetRegisteredAt()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1337
    if-nez v0, :cond_e

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1338
    :cond_e
    const-string v2, "registeredAt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1339
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->registeredAt:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1340
    const/4 v0, 0x0

    .line 1342
    :cond_f
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetAliasName()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1343
    if-nez v0, :cond_10

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1344
    :cond_10
    const-string v2, "aliasName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1345
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->aliasName:Ljava/lang/String;

    if-nez v2, :cond_28

    .line 1346
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1350
    :goto_8
    const/4 v0, 0x0

    .line 1352
    :cond_11
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetClientId()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1353
    if-nez v0, :cond_12

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1354
    :cond_12
    const-string v2, "clientId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1355
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->clientId:Ljava/lang/String;

    if-nez v2, :cond_29

    .line 1356
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1360
    :goto_9
    const/4 v0, 0x0

    .line 1362
    :cond_13
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetCostTime()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1363
    if-nez v0, :cond_14

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1364
    :cond_14
    const-string v2, "costTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1365
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->costTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1366
    const/4 v0, 0x0

    .line 1368
    :cond_15
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetAppVersion()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1369
    if-nez v0, :cond_16

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1370
    :cond_16
    const-string v2, "appVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1371
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->appVersion:Ljava/lang/String;

    if-nez v2, :cond_2a

    .line 1372
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1376
    :goto_a
    const/4 v0, 0x0

    .line 1378
    :cond_17
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetPushSdkVersionCode()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1379
    if-nez v0, :cond_18

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1380
    :cond_18
    const-string v2, "pushSdkVersionCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1381
    iget v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->pushSdkVersionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1382
    const/4 v0, 0x0

    .line 1384
    :cond_19
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetHybridPushEndpoint()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1385
    if-nez v0, :cond_1a

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1386
    :cond_1a
    const-string v2, "hybridPushEndpoint:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1387
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->hybridPushEndpoint:Ljava/lang/String;

    if-nez v2, :cond_2b

    .line 1388
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1392
    :goto_b
    const/4 v0, 0x0

    .line 1394
    :cond_1b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetAppVersionCode()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1395
    if-nez v0, :cond_1c

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1396
    :cond_1c
    const-string v2, "appVersionCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1397
    iget v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->appVersionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1398
    const/4 v0, 0x0

    .line 1400
    :cond_1d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetRegion()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1401
    if-nez v0, :cond_1e

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1402
    :cond_1e
    const-string v2, "region:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1403
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->region:Ljava/lang/String;

    if-nez v2, :cond_2c

    .line 1404
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1408
    :goto_c
    const/4 v0, 0x0

    .line 1410
    :cond_1f
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1411
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1262
    :cond_20
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->debug:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1272
    :cond_21
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1281
    :cond_22
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1289
    :cond_23
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1302
    :cond_24
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->reason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 1312
    :cond_25
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->regId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 1322
    :cond_26
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->regSecret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 1332
    :cond_27
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 1348
    :cond_28
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->aliasName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 1358
    :cond_29
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->clientId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 1374
    :cond_2a
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->appVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 1390
    :cond_2b
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->hybridPushEndpoint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 1406
    :cond_2c
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->region:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c
.end method

.method public validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1417
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1419
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->appId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1420
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'appId\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1423
    :cond_1
    return-void
.end method

.method public write(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 2
    .param p1, "oprot"    # Lorg/apache/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1135
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->validate()V

    .line 1137
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeStructBegin(Lorg/apache/thrift/protocol/TStruct;)V

    .line 1138
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->debug:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1139
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1140
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->DEBUG_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1141
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->debug:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1142
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1145
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-eqz v0, :cond_1

    .line 1146
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetTarget()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1147
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->TARGET_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1148
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/Target;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 1149
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1152
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->id:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1153
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1154
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1155
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1157
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->appId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1158
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->APP_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1159
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1160
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1162
    :cond_3
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->ERROR_CODE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1163
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->errorCode:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeI64(J)V

    .line 1164
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1165
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->reason:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1166
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetReason()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1167
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->REASON_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1168
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->reason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1169
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1172
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->regId:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1173
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetRegId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1174
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->REG_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1175
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->regId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1176
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1179
    :cond_5
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->regSecret:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1180
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetRegSecret()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1181
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->REG_SECRET_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1182
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->regSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1183
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1186
    :cond_6
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1187
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetPackageName()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1188
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->PACKAGE_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1189
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1190
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1193
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetRegisteredAt()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1194
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->REGISTERED_AT_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1195
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->registeredAt:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeI64(J)V

    .line 1196
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1198
    :cond_8
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->aliasName:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 1199
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetAliasName()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1200
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->ALIAS_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1201
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->aliasName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1202
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1205
    :cond_9
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->clientId:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 1206
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetClientId()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1207
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->CLIENT_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1208
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->clientId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1209
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1212
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetCostTime()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1213
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->COST_TIME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1214
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->costTime:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeI64(J)V

    .line 1215
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1217
    :cond_b
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->appVersion:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 1218
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetAppVersion()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1219
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->APP_VERSION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1220
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->appVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1221
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1224
    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetPushSdkVersionCode()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1225
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->PUSH_SDK_VERSION_CODE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1226
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->pushSdkVersionCode:I

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeI32(I)V

    .line 1227
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1229
    :cond_d
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->hybridPushEndpoint:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 1230
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetHybridPushEndpoint()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1231
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->HYBRID_PUSH_ENDPOINT_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1232
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->hybridPushEndpoint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1233
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1236
    :cond_e
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetAppVersionCode()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1237
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->APP_VERSION_CODE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1238
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->appVersionCode:I

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeI32(I)V

    .line 1239
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1241
    :cond_f
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->region:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 1242
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->isSetRegion()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1243
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->REGION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1244
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->region:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1245
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1248
    :cond_10
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 1249
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 1250
    return-void
.end method
