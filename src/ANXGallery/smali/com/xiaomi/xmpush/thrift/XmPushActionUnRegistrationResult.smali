.class public Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;
.super Ljava/lang/Object;
.source "XmPushActionUnRegistrationResult.java"

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
        "Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final APP_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final COST_TIME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final DEBUG_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final ERROR_CODE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final PACKAGE_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final REASON_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

.field private static final TARGET_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final UN_REGISTERED_AT_FIELD_DESC:Lorg/apache/thrift/protocol/TField;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public appId:Ljava/lang/String;

.field public costTime:J

.field public debug:Ljava/lang/String;

.field public errorCode:J

.field public id:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public reason:Ljava/lang/String;

.field public target:Lcom/xiaomi/xmpush/thrift/Target;

.field public unRegisteredAt:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/16 v4, 0xb

    .line 30
    new-instance v0, Lorg/apache/thrift/protocol/TStruct;

    const-string v1, "XmPushActionUnRegistrationResult"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    .line 32
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->DEBUG_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xc

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->TARGET_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x3

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x4

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->APP_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 36
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x6

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->ERROR_CODE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 37
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x7

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->REASON_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 38
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x8

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->PACKAGE_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 39
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x9

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->UN_REGISTERED_AT_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 40
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v5, v5}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->COST_TIME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->__isset_bit_vector:Ljava/util/BitSet;

    .line 60
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;)I
    .locals 6
    .param p1, "other"    # Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;

    .prologue
    .line 439
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 440
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

    .line 536
    :cond_0
    :goto_0
    return v0

    .line 443
    :cond_1
    const/4 v0, 0x0

    .line 444
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 446
    .local v1, "typedOther":Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetDebug()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetDebug()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 447
    if-nez v0, :cond_0

    .line 450
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetDebug()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 451
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->debug:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->debug:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 452
    if-nez v0, :cond_0

    .line 456
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetTarget()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetTarget()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 457
    if-nez v0, :cond_0

    .line 460
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetTarget()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 461
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 462
    if-nez v0, :cond_0

    .line 466
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 467
    if-nez v0, :cond_0

    .line 470
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetId()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 471
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->id:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 472
    if-nez v0, :cond_0

    .line 476
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetAppId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetAppId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 477
    if-nez v0, :cond_0

    .line 480
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetAppId()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 481
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->appId:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->appId:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 482
    if-nez v0, :cond_0

    .line 486
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetErrorCode()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetErrorCode()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 487
    if-nez v0, :cond_0

    .line 490
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetErrorCode()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 491
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->errorCode:J

    iget-wide v4, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->errorCode:J

    invoke-static {v2, v3, v4, v5}, Lorg/apache/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 492
    if-nez v0, :cond_0

    .line 496
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetReason()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetReason()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 497
    if-nez v0, :cond_0

    .line 500
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetReason()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 501
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->reason:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->reason:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 502
    if-nez v0, :cond_0

    .line 506
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetPackageName()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetPackageName()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 507
    if-nez v0, :cond_0

    .line 510
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetPackageName()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 511
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->packageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 512
    if-nez v0, :cond_0

    .line 516
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetUnRegisteredAt()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetUnRegisteredAt()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 517
    if-nez v0, :cond_0

    .line 520
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetUnRegisteredAt()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 521
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->unRegisteredAt:J

    iget-wide v4, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->unRegisteredAt:J

    invoke-static {v2, v3, v4, v5}, Lorg/apache/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 522
    if-nez v0, :cond_0

    .line 526
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetCostTime()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetCostTime()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 527
    if-nez v0, :cond_0

    .line 530
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetCostTime()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 531
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->costTime:J

    iget-wide v4, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->costTime:J

    invoke-static {v2, v3, v4, v5}, Lorg/apache/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 532
    if-nez v0, :cond_0

    .line 536
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 29
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->compareTo(Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;)I

    move-result v0

    return v0
.end method

.method public equals(Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;)Z
    .locals 24
    .param p1, "that"    # Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;

    .prologue
    .line 346
    if-nez p1, :cond_0

    .line 347
    const/16 v20, 0x0

    .line 430
    :goto_0
    return v20

    .line 349
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetDebug()Z

    move-result v13

    .line 350
    .local v13, "this_present_debug":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetDebug()Z

    move-result v4

    .line 351
    .local v4, "that_present_debug":Z
    if-nez v13, :cond_1

    if-eqz v4, :cond_4

    .line 352
    :cond_1
    if-eqz v13, :cond_2

    if-nez v4, :cond_3

    .line 353
    :cond_2
    const/16 v20, 0x0

    goto :goto_0

    .line 354
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->debug:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->debug:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 355
    const/16 v20, 0x0

    goto :goto_0

    .line 358
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetTarget()Z

    move-result v18

    .line 359
    .local v18, "this_present_target":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetTarget()Z

    move-result v9

    .line 360
    .local v9, "that_present_target":Z
    if-nez v18, :cond_5

    if-eqz v9, :cond_8

    .line 361
    :cond_5
    if-eqz v18, :cond_6

    if-nez v9, :cond_7

    .line 362
    :cond_6
    const/16 v20, 0x0

    goto :goto_0

    .line 363
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/xiaomi/xmpush/thrift/Target;->equals(Lcom/xiaomi/xmpush/thrift/Target;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 364
    const/16 v20, 0x0

    goto :goto_0

    .line 367
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetId()Z

    move-result v15

    .line 368
    .local v15, "this_present_id":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetId()Z

    move-result v6

    .line 369
    .local v6, "that_present_id":Z
    if-nez v15, :cond_9

    if-eqz v6, :cond_c

    .line 370
    :cond_9
    if-eqz v15, :cond_a

    if-nez v6, :cond_b

    .line 371
    :cond_a
    const/16 v20, 0x0

    goto :goto_0

    .line 372
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->id:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->id:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_c

    .line 373
    const/16 v20, 0x0

    goto :goto_0

    .line 376
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetAppId()Z

    move-result v11

    .line 377
    .local v11, "this_present_appId":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetAppId()Z

    move-result v2

    .line 378
    .local v2, "that_present_appId":Z
    if-nez v11, :cond_d

    if-eqz v2, :cond_10

    .line 379
    :cond_d
    if-eqz v11, :cond_e

    if-nez v2, :cond_f

    .line 380
    :cond_e
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 381
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->appId:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->appId:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_10

    .line 382
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 385
    :cond_10
    const/4 v14, 0x1

    .line 386
    .local v14, "this_present_errorCode":Z
    const/4 v5, 0x1

    .line 387
    .local v5, "that_present_errorCode":Z
    if-nez v14, :cond_11

    if-eqz v5, :cond_14

    .line 388
    :cond_11
    if-eqz v14, :cond_12

    if-nez v5, :cond_13

    .line 389
    :cond_12
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 390
    :cond_13
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->errorCode:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->errorCode:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_14

    .line 391
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 394
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetReason()Z

    move-result v17

    .line 395
    .local v17, "this_present_reason":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetReason()Z

    move-result v8

    .line 396
    .local v8, "that_present_reason":Z
    if-nez v17, :cond_15

    if-eqz v8, :cond_18

    .line 397
    :cond_15
    if-eqz v17, :cond_16

    if-nez v8, :cond_17

    .line 398
    :cond_16
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 399
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->reason:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->reason:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_18

    .line 400
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 403
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetPackageName()Z

    move-result v16

    .line 404
    .local v16, "this_present_packageName":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetPackageName()Z

    move-result v7

    .line 405
    .local v7, "that_present_packageName":Z
    if-nez v16, :cond_19

    if-eqz v7, :cond_1c

    .line 406
    :cond_19
    if-eqz v16, :cond_1a

    if-nez v7, :cond_1b

    .line 407
    :cond_1a
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 408
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1c

    .line 409
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 412
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetUnRegisteredAt()Z

    move-result v19

    .line 413
    .local v19, "this_present_unRegisteredAt":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetUnRegisteredAt()Z

    move-result v10

    .line 414
    .local v10, "that_present_unRegisteredAt":Z
    if-nez v19, :cond_1d

    if-eqz v10, :cond_20

    .line 415
    :cond_1d
    if-eqz v19, :cond_1e

    if-nez v10, :cond_1f

    .line 416
    :cond_1e
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 417
    :cond_1f
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->unRegisteredAt:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->unRegisteredAt:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_20

    .line 418
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 421
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetCostTime()Z

    move-result v12

    .line 422
    .local v12, "this_present_costTime":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetCostTime()Z

    move-result v3

    .line 423
    .local v3, "that_present_costTime":Z
    if-nez v12, :cond_21

    if-eqz v3, :cond_24

    .line 424
    :cond_21
    if-eqz v12, :cond_22

    if-nez v3, :cond_23

    .line 425
    :cond_22
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 426
    :cond_23
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->costTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->costTime:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_24

    .line 427
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 430
    :cond_24
    const/16 v20, 0x1

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 338
    if-nez p1, :cond_1

    .line 342
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 340
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;

    if-eqz v1, :cond_0

    .line 341
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->equals(Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 435
    const/4 v0, 0x0

    return v0
.end method

.method public isSetAppId()Z
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->appId:Ljava/lang/String;

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
    .line 329
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetDebug()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->debug:Ljava/lang/String;

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
    .line 235
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetId()Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->id:Ljava/lang/String;

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
    .line 281
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->packageName:Ljava/lang/String;

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
    .line 257
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->reason:Ljava/lang/String;

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
    .line 162
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetUnRegisteredAt()Z
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public read(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 7
    .param p1, "iprot"    # Lorg/apache/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x1

    const/16 v4, 0xb

    .line 541
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructBegin()Lorg/apache/thrift/protocol/TStruct;

    .line 544
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldBegin()Lorg/apache/thrift/protocol/TField;

    move-result-object v0

    .line 545
    .local v0, "field":Lorg/apache/thrift/protocol/TField;
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 621
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructEnd()V

    .line 624
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetErrorCode()Z

    move-result v1

    if-nez v1, :cond_a

    .line 625
    new-instance v1, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Required field \'errorCode\' was not found in serialized data! Struct: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 548
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 617
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    .line 619
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 550
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_1

    .line 551
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->debug:Ljava/lang/String;

    goto :goto_1

    .line 553
    :cond_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 557
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 558
    new-instance v1, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/Target;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    .line 559
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v1, p1}, Lcom/xiaomi/xmpush/thrift/Target;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 561
    :cond_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 565
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_3

    .line 566
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->id:Ljava/lang/String;

    goto :goto_1

    .line 568
    :cond_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 572
    :pswitch_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_4

    .line 573
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->appId:Ljava/lang/String;

    goto :goto_1

    .line 575
    :cond_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 579
    :pswitch_5
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v6, :cond_5

    .line 580
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->errorCode:J

    .line 581
    invoke-virtual {p0, v5}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->setErrorCodeIsSet(Z)V

    goto :goto_1

    .line 583
    :cond_5
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 587
    :pswitch_6
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_6

    .line 588
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->reason:Ljava/lang/String;

    goto :goto_1

    .line 590
    :cond_6
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 594
    :pswitch_7
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_7

    .line 595
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 597
    :cond_7
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 601
    :pswitch_8
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v6, :cond_8

    .line 602
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->unRegisteredAt:J

    .line 603
    invoke-virtual {p0, v5}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->setUnRegisteredAtIsSet(Z)V

    goto/16 :goto_1

    .line 605
    :cond_8
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 609
    :pswitch_9
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v6, :cond_9

    .line 610
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->costTime:J

    .line 611
    invoke-virtual {p0, v5}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->setCostTimeIsSet(Z)V

    goto/16 :goto_1

    .line 613
    :cond_9
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 627
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->validate()V

    .line 628
    return-void

    .line 548
    nop

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
    .end packed-switch
.end method

.method public setCostTimeIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 333
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 334
    return-void
.end method

.method public setErrorCodeIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 239
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 240
    return-void
.end method

.method public setUnRegisteredAtIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 310
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 311
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 691
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "XmPushActionUnRegistrationResult("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 692
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 694
    .local v0, "first":Z
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 695
    const-string v2, "debug:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->debug:Ljava/lang/String;

    if-nez v2, :cond_e

    .line 697
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    :goto_0
    const/4 v0, 0x0

    .line 703
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetTarget()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 704
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    :cond_1
    const-string/jumbo v2, "target:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-nez v2, :cond_f

    .line 707
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    :goto_1
    const/4 v0, 0x0

    .line 713
    :cond_2
    if-nez v0, :cond_3

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    :cond_3
    const-string v2, "id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->id:Ljava/lang/String;

    if-nez v2, :cond_10

    .line 716
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    :goto_2
    const/4 v0, 0x0

    .line 721
    if-nez v0, :cond_4

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    :cond_4
    const-string v2, "appId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->appId:Ljava/lang/String;

    if-nez v2, :cond_11

    .line 724
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    :goto_3
    const/4 v0, 0x0

    .line 729
    if-nez v0, :cond_5

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    :cond_5
    const-string v2, "errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->errorCode:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 732
    const/4 v0, 0x0

    .line 733
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetReason()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 734
    if-nez v0, :cond_6

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    :cond_6
    const-string v2, "reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->reason:Ljava/lang/String;

    if-nez v2, :cond_12

    .line 737
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    :goto_4
    const/4 v0, 0x0

    .line 743
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetPackageName()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 744
    if-nez v0, :cond_8

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    :cond_8
    const-string v2, "packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->packageName:Ljava/lang/String;

    if-nez v2, :cond_13

    .line 747
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    :goto_5
    const/4 v0, 0x0

    .line 753
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetUnRegisteredAt()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 754
    if-nez v0, :cond_a

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    :cond_a
    const-string/jumbo v2, "unRegisteredAt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->unRegisteredAt:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 757
    const/4 v0, 0x0

    .line 759
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetCostTime()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 760
    if-nez v0, :cond_c

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    :cond_c
    const-string v2, "costTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->costTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 763
    const/4 v0, 0x0

    .line 765
    :cond_d
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 699
    :cond_e
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->debug:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 709
    :cond_f
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 718
    :cond_10
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 726
    :cond_11
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 739
    :cond_12
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->reason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 749
    :cond_13
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5
.end method

.method public validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 771
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 772
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->appId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 775
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'appId\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 778
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
    .line 631
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->validate()V

    .line 633
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeStructBegin(Lorg/apache/thrift/protocol/TStruct;)V

    .line 634
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->debug:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 635
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->DEBUG_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 637
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->debug:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-eqz v0, :cond_1

    .line 642
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetTarget()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 643
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->TARGET_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 644
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/Target;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 645
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 648
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->id:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 649
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 650
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 651
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 653
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->appId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 654
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->APP_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 655
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 656
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 658
    :cond_3
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->ERROR_CODE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 659
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->errorCode:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeI64(J)V

    .line 660
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 661
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->reason:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 662
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetReason()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 663
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->REASON_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 664
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->reason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 665
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 668
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 669
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetPackageName()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 670
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->PACKAGE_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 671
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 672
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 675
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetUnRegisteredAt()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 676
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->UN_REGISTERED_AT_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 677
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->unRegisteredAt:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeI64(J)V

    .line 678
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 680
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->isSetCostTime()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 681
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->COST_TIME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 682
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->costTime:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeI64(J)V

    .line 683
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 685
    :cond_7
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 686
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 687
    return-void
.end method
