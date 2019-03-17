.class public Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;
.super Ljava/lang/Object;
.source "XmPushActionUnRegistration.java"

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
        "Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final ALIAS_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final APP_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final APP_VERSION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final CREATED_TS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final DEBUG_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final DEVICE_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final NEED_ACK_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final PACKAGE_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final REG_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

.field private static final TARGET_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final TOKEN_FIELD_DESC:Lorg/apache/thrift/protocol/TField;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public aliasName:Ljava/lang/String;

.field public appId:Ljava/lang/String;

.field public appVersion:Ljava/lang/String;

.field public createdTs:J

.field public debug:Ljava/lang/String;

.field public deviceId:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public needAck:Z

.field public packageName:Ljava/lang/String;

.field public regId:Ljava/lang/String;

.field public target:Lcom/xiaomi/xmpush/thrift/Target;

.field public token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0xc

    const/16 v5, 0xa

    const/4 v4, 0x2

    const/16 v3, 0xb

    .line 30
    new-instance v0, Lorg/apache/thrift/protocol/TStruct;

    const-string v1, "XmPushActionUnRegistration"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    .line 32
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->DEBUG_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v6, v4}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->TARGET_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->APP_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 36
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x5

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->REG_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 37
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->APP_VERSION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 38
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x7

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->PACKAGE_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 39
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x8

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->TOKEN_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 40
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x9

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->DEVICE_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 41
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v3, v5}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->ALIAS_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 42
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v4, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->NEED_ACK_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 43
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v5, v6}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->CREATED_TS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->__isset_bit_vector:Ljava/util/BitSet;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->needAck:Z

    .line 67
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;)I
    .locals 6
    .param p1, "other"    # Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;

    .prologue
    .line 556
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 557
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

    .line 683
    :cond_0
    :goto_0
    return v0

    .line 560
    :cond_1
    const/4 v0, 0x0

    .line 561
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 563
    .local v1, "typedOther":Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetDebug()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetDebug()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 564
    if-nez v0, :cond_0

    .line 567
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetDebug()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 568
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->debug:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->debug:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 569
    if-nez v0, :cond_0

    .line 573
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetTarget()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetTarget()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 574
    if-nez v0, :cond_0

    .line 577
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetTarget()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 578
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 579
    if-nez v0, :cond_0

    .line 583
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 584
    if-nez v0, :cond_0

    .line 587
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetId()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 588
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->id:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 589
    if-nez v0, :cond_0

    .line 593
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetAppId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetAppId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 594
    if-nez v0, :cond_0

    .line 597
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetAppId()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 598
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->appId:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->appId:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 599
    if-nez v0, :cond_0

    .line 603
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetRegId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetRegId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 604
    if-nez v0, :cond_0

    .line 607
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetRegId()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 608
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->regId:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->regId:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 609
    if-nez v0, :cond_0

    .line 613
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetAppVersion()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetAppVersion()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 614
    if-nez v0, :cond_0

    .line 617
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetAppVersion()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 618
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->appVersion:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->appVersion:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 619
    if-nez v0, :cond_0

    .line 623
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetPackageName()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetPackageName()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 624
    if-nez v0, :cond_0

    .line 627
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetPackageName()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 628
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->packageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 629
    if-nez v0, :cond_0

    .line 633
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetToken()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetToken()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 634
    if-nez v0, :cond_0

    .line 637
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetToken()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 638
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->token:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->token:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 639
    if-nez v0, :cond_0

    .line 643
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetDeviceId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetDeviceId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 644
    if-nez v0, :cond_0

    .line 647
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetDeviceId()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 648
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->deviceId:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->deviceId:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 649
    if-nez v0, :cond_0

    .line 653
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetAliasName()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetAliasName()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 654
    if-nez v0, :cond_0

    .line 657
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetAliasName()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 658
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->aliasName:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->aliasName:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 659
    if-nez v0, :cond_0

    .line 663
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetNeedAck()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetNeedAck()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 664
    if-nez v0, :cond_0

    .line 667
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetNeedAck()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 668
    iget-boolean v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->needAck:Z

    iget-boolean v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->needAck:Z

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 669
    if-nez v0, :cond_0

    .line 673
    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetCreatedTs()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetCreatedTs()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 674
    if-nez v0, :cond_0

    .line 677
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetCreatedTs()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 678
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->createdTs:J

    iget-wide v4, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->createdTs:J

    invoke-static {v2, v3, v4, v5}, Lorg/apache/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 679
    if-nez v0, :cond_0

    .line 683
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 29
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->compareTo(Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;)I

    move-result v0

    return v0
.end method

.method public equals(Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;)Z
    .locals 30
    .param p1, "that"    # Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;

    .prologue
    .line 436
    if-nez p1, :cond_0

    .line 437
    const/16 v26, 0x0

    .line 547
    :goto_0
    return v26

    .line 439
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetDebug()Z

    move-result v18

    .line 440
    .local v18, "this_present_debug":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetDebug()Z

    move-result v6

    .line 441
    .local v6, "that_present_debug":Z
    if-nez v18, :cond_1

    if-eqz v6, :cond_4

    .line 442
    :cond_1
    if-eqz v18, :cond_2

    if-nez v6, :cond_3

    .line 443
    :cond_2
    const/16 v26, 0x0

    goto :goto_0

    .line 444
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->debug:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->debug:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_4

    .line 445
    const/16 v26, 0x0

    goto :goto_0

    .line 448
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetTarget()Z

    move-result v24

    .line 449
    .local v24, "this_present_target":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetTarget()Z

    move-result v12

    .line 450
    .local v12, "that_present_target":Z
    if-nez v24, :cond_5

    if-eqz v12, :cond_8

    .line 451
    :cond_5
    if-eqz v24, :cond_6

    if-nez v12, :cond_7

    .line 452
    :cond_6
    const/16 v26, 0x0

    goto :goto_0

    .line 453
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/xiaomi/xmpush/thrift/Target;->equals(Lcom/xiaomi/xmpush/thrift/Target;)Z

    move-result v26

    if-nez v26, :cond_8

    .line 454
    const/16 v26, 0x0

    goto :goto_0

    .line 457
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetId()Z

    move-result v20

    .line 458
    .local v20, "this_present_id":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetId()Z

    move-result v8

    .line 459
    .local v8, "that_present_id":Z
    if-nez v20, :cond_9

    if-eqz v8, :cond_c

    .line 460
    :cond_9
    if-eqz v20, :cond_a

    if-nez v8, :cond_b

    .line 461
    :cond_a
    const/16 v26, 0x0

    goto :goto_0

    .line 462
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->id:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->id:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_c

    .line 463
    const/16 v26, 0x0

    goto :goto_0

    .line 466
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetAppId()Z

    move-result v15

    .line 467
    .local v15, "this_present_appId":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetAppId()Z

    move-result v3

    .line 468
    .local v3, "that_present_appId":Z
    if-nez v15, :cond_d

    if-eqz v3, :cond_10

    .line 469
    :cond_d
    if-eqz v15, :cond_e

    if-nez v3, :cond_f

    .line 470
    :cond_e
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 471
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->appId:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->appId:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_10

    .line 472
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 475
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetRegId()Z

    move-result v23

    .line 476
    .local v23, "this_present_regId":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetRegId()Z

    move-result v11

    .line 477
    .local v11, "that_present_regId":Z
    if-nez v23, :cond_11

    if-eqz v11, :cond_14

    .line 478
    :cond_11
    if-eqz v23, :cond_12

    if-nez v11, :cond_13

    .line 479
    :cond_12
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 480
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->regId:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->regId:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_14

    .line 481
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 484
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetAppVersion()Z

    move-result v16

    .line 485
    .local v16, "this_present_appVersion":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetAppVersion()Z

    move-result v4

    .line 486
    .local v4, "that_present_appVersion":Z
    if-nez v16, :cond_15

    if-eqz v4, :cond_18

    .line 487
    :cond_15
    if-eqz v16, :cond_16

    if-nez v4, :cond_17

    .line 488
    :cond_16
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 489
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->appVersion:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->appVersion:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_18

    .line 490
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 493
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetPackageName()Z

    move-result v22

    .line 494
    .local v22, "this_present_packageName":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetPackageName()Z

    move-result v10

    .line 495
    .local v10, "that_present_packageName":Z
    if-nez v22, :cond_19

    if-eqz v10, :cond_1c

    .line 496
    :cond_19
    if-eqz v22, :cond_1a

    if-nez v10, :cond_1b

    .line 497
    :cond_1a
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 498
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_1c

    .line 499
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 502
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetToken()Z

    move-result v25

    .line 503
    .local v25, "this_present_token":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetToken()Z

    move-result v13

    .line 504
    .local v13, "that_present_token":Z
    if-nez v25, :cond_1d

    if-eqz v13, :cond_20

    .line 505
    :cond_1d
    if-eqz v25, :cond_1e

    if-nez v13, :cond_1f

    .line 506
    :cond_1e
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 507
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->token:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->token:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_20

    .line 508
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 511
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetDeviceId()Z

    move-result v19

    .line 512
    .local v19, "this_present_deviceId":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetDeviceId()Z

    move-result v7

    .line 513
    .local v7, "that_present_deviceId":Z
    if-nez v19, :cond_21

    if-eqz v7, :cond_24

    .line 514
    :cond_21
    if-eqz v19, :cond_22

    if-nez v7, :cond_23

    .line 515
    :cond_22
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 516
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->deviceId:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->deviceId:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_24

    .line 517
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 520
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetAliasName()Z

    move-result v14

    .line 521
    .local v14, "this_present_aliasName":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetAliasName()Z

    move-result v2

    .line 522
    .local v2, "that_present_aliasName":Z
    if-nez v14, :cond_25

    if-eqz v2, :cond_28

    .line 523
    :cond_25
    if-eqz v14, :cond_26

    if-nez v2, :cond_27

    .line 524
    :cond_26
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 525
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->aliasName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->aliasName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_28

    .line 526
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 529
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetNeedAck()Z

    move-result v21

    .line 530
    .local v21, "this_present_needAck":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetNeedAck()Z

    move-result v9

    .line 531
    .local v9, "that_present_needAck":Z
    if-nez v21, :cond_29

    if-eqz v9, :cond_2c

    .line 532
    :cond_29
    if-eqz v21, :cond_2a

    if-nez v9, :cond_2b

    .line 533
    :cond_2a
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 534
    :cond_2b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->needAck:Z

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->needAck:Z

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_2c

    .line 535
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 538
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetCreatedTs()Z

    move-result v17

    .line 539
    .local v17, "this_present_createdTs":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetCreatedTs()Z

    move-result v5

    .line 540
    .local v5, "that_present_createdTs":Z
    if-nez v17, :cond_2d

    if-eqz v5, :cond_30

    .line 541
    :cond_2d
    if-eqz v17, :cond_2e

    if-nez v5, :cond_2f

    .line 542
    :cond_2e
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 543
    :cond_2f
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->createdTs:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->createdTs:J

    move-wide/from16 v28, v0

    cmp-long v26, v26, v28

    if-eqz v26, :cond_30

    .line 544
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 547
    :cond_30
    const/16 v26, 0x1

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 428
    if-nez p1, :cond_1

    .line 432
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 430
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;

    if-eqz v1, :cond_0

    .line 431
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->equals(Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 552
    const/4 v0, 0x0

    return v0
.end method

.method public isSetAliasName()Z
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->aliasName:Ljava/lang/String;

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
    .line 227
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->appId:Ljava/lang/String;

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
    .line 275
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->appVersion:Ljava/lang/String;

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
    .line 419
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetDebug()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->debug:Ljava/lang/String;

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
    .line 347
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->deviceId:Ljava/lang/String;

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
    .line 203
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetNeedAck()Z
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetPackageName()Z
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->packageName:Ljava/lang/String;

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
    .line 251
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->regId:Ljava/lang/String;

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
    .line 179
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

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
    .line 323
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->token:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 6
    .param p1, "iprot"    # Lorg/apache/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0xb

    .line 688
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructBegin()Lorg/apache/thrift/protocol/TStruct;

    .line 691
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldBegin()Lorg/apache/thrift/protocol/TField;

    move-result-object v0

    .line 692
    .local v0, "field":Lorg/apache/thrift/protocol/TField;
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 788
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructEnd()V

    .line 791
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->validate()V

    .line 792
    return-void

    .line 695
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 784
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    .line 786
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 697
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_1

    .line 698
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->debug:Ljava/lang/String;

    goto :goto_1

    .line 700
    :cond_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 704
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 705
    new-instance v1, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/Target;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    .line 706
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v1, p1}, Lcom/xiaomi/xmpush/thrift/Target;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 708
    :cond_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 712
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_3

    .line 713
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->id:Ljava/lang/String;

    goto :goto_1

    .line 715
    :cond_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 719
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_4

    .line 720
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->appId:Ljava/lang/String;

    goto :goto_1

    .line 722
    :cond_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 726
    :pswitch_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_5

    .line 727
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->regId:Ljava/lang/String;

    goto :goto_1

    .line 729
    :cond_5
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 733
    :pswitch_5
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_6

    .line 734
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->appVersion:Ljava/lang/String;

    goto :goto_1

    .line 736
    :cond_6
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 740
    :pswitch_6
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_7

    .line 741
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 743
    :cond_7
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 747
    :pswitch_7
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_8

    .line 748
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->token:Ljava/lang/String;

    goto/16 :goto_1

    .line 750
    :cond_8
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 754
    :pswitch_8
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_9

    .line 755
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->deviceId:Ljava/lang/String;

    goto/16 :goto_1

    .line 757
    :cond_9
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 761
    :pswitch_9
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_a

    .line 762
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->aliasName:Ljava/lang/String;

    goto/16 :goto_1

    .line 764
    :cond_a
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 768
    :pswitch_a
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    .line 769
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->needAck:Z

    .line 770
    invoke-virtual {p0, v5}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->setNeedAckIsSet(Z)V

    goto/16 :goto_1

    .line 772
    :cond_b
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 776
    :pswitch_b
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_c

    .line 777
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->createdTs:J

    .line 778
    invoke-virtual {p0, v5}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->setCreatedTsIsSet(Z)V

    goto/16 :goto_1

    .line 780
    :cond_c
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 695
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
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
    .end packed-switch
.end method

.method public setAppId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->appId:Ljava/lang/String;

    .line 218
    return-object p0
.end method

.method public setCreatedTsIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 423
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 424
    return-void
.end method

.method public setId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->id:Ljava/lang/String;

    .line 194
    return-object p0
.end method

.method public setNeedAckIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 400
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 401
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->packageName:Ljava/lang/String;

    .line 290
    return-object p0
.end method

.method public setRegId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;
    .locals 0
    .param p1, "regId"    # Ljava/lang/String;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->regId:Ljava/lang/String;

    .line 242
    return-object p0
.end method

.method public setToken(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->token:Ljava/lang/String;

    .line 314
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 880
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "XmPushActionUnRegistration("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 881
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 883
    .local v0, "first":Z
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 884
    const-string v2, "debug:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->debug:Ljava/lang/String;

    if-nez v2, :cond_15

    .line 886
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    :goto_0
    const/4 v0, 0x0

    .line 892
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetTarget()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 893
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    :cond_1
    const-string/jumbo v2, "target:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-nez v2, :cond_16

    .line 896
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    :goto_1
    const/4 v0, 0x0

    .line 902
    :cond_2
    if-nez v0, :cond_3

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    :cond_3
    const-string v2, "id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->id:Ljava/lang/String;

    if-nez v2, :cond_17

    .line 905
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    :goto_2
    const/4 v0, 0x0

    .line 910
    if-nez v0, :cond_4

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    :cond_4
    const-string v2, "appId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->appId:Ljava/lang/String;

    if-nez v2, :cond_18

    .line 913
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    :goto_3
    const/4 v0, 0x0

    .line 918
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetRegId()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 919
    if-nez v0, :cond_5

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    :cond_5
    const-string v2, "regId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->regId:Ljava/lang/String;

    if-nez v2, :cond_19

    .line 922
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    :goto_4
    const/4 v0, 0x0

    .line 928
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetAppVersion()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 929
    if-nez v0, :cond_7

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    :cond_7
    const-string v2, "appVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->appVersion:Ljava/lang/String;

    if-nez v2, :cond_1a

    .line 932
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    :goto_5
    const/4 v0, 0x0

    .line 938
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetPackageName()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 939
    if-nez v0, :cond_9

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 940
    :cond_9
    const-string v2, "packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->packageName:Ljava/lang/String;

    if-nez v2, :cond_1b

    .line 942
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    :goto_6
    const/4 v0, 0x0

    .line 948
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetToken()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 949
    if-nez v0, :cond_b

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 950
    :cond_b
    const-string/jumbo v2, "token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->token:Ljava/lang/String;

    if-nez v2, :cond_1c

    .line 952
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    :goto_7
    const/4 v0, 0x0

    .line 958
    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetDeviceId()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 959
    if-nez v0, :cond_d

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    :cond_d
    const-string v2, "deviceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->deviceId:Ljava/lang/String;

    if-nez v2, :cond_1d

    .line 962
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    :goto_8
    const/4 v0, 0x0

    .line 968
    :cond_e
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetAliasName()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 969
    if-nez v0, :cond_f

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    :cond_f
    const-string v2, "aliasName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->aliasName:Ljava/lang/String;

    if-nez v2, :cond_1e

    .line 972
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    :goto_9
    const/4 v0, 0x0

    .line 978
    :cond_10
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetNeedAck()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 979
    if-nez v0, :cond_11

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    :cond_11
    const-string v2, "needAck:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    iget-boolean v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->needAck:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 982
    const/4 v0, 0x0

    .line 984
    :cond_12
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetCreatedTs()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 985
    if-nez v0, :cond_13

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    :cond_13
    const-string v2, "createdTs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->createdTs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 988
    const/4 v0, 0x0

    .line 990
    :cond_14
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 888
    :cond_15
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->debug:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 898
    :cond_16
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 907
    :cond_17
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 915
    :cond_18
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 924
    :cond_19
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->regId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 934
    :cond_1a
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->appVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 944
    :cond_1b
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 954
    :cond_1c
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 964
    :cond_1d
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 974
    :cond_1e
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->aliasName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9
.end method

.method public validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 996
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 997
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 999
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->appId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1000
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'appId\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1002
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
    .line 795
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->validate()V

    .line 797
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeStructBegin(Lorg/apache/thrift/protocol/TStruct;)V

    .line 798
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->debug:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 799
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->DEBUG_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 801
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->debug:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 802
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-eqz v0, :cond_1

    .line 806
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetTarget()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 807
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->TARGET_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 808
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/Target;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 809
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 812
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->id:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 813
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 814
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 815
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 817
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->appId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 818
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->APP_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 819
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 820
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 822
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->regId:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 823
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetRegId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 824
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->REG_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 825
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->regId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 826
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 829
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->appVersion:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 830
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetAppVersion()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 831
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->APP_VERSION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 832
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->appVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 833
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 836
    :cond_5
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 837
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetPackageName()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 838
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->PACKAGE_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 839
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 840
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 843
    :cond_6
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->token:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 844
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetToken()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 845
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->TOKEN_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 846
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->token:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 847
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 850
    :cond_7
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->deviceId:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 851
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetDeviceId()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 852
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->DEVICE_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 853
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 854
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 857
    :cond_8
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->aliasName:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 858
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetAliasName()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 859
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->ALIAS_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 860
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->aliasName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 861
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 864
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetNeedAck()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 865
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->NEED_ACK_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 866
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->needAck:Z

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 867
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 869
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->isSetCreatedTs()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 870
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->CREATED_TS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 871
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->createdTs:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeI64(J)V

    .line 872
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 874
    :cond_b
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 875
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 876
    return-void
.end method
