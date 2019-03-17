.class public Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;
.super Ljava/lang/Object;
.source "XmPushActionUnSubscriptionResult.java"

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
        "Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final APP_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final CATEGORY_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final DEBUG_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final ERROR_CODE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final PACKAGE_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final REASON_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

.field private static final TARGET_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final TOPIC_FIELD_DESC:Lorg/apache/thrift/protocol/TField;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public appId:Ljava/lang/String;

.field public category:Ljava/lang/String;

.field public debug:Ljava/lang/String;

.field public errorCode:J

.field public id:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public reason:Ljava/lang/String;

.field public target:Lcom/xiaomi/xmpush/thrift/Target;

.field public topic:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/16 v4, 0xb

    .line 27
    new-instance v0, Lorg/apache/thrift/protocol/TStruct;

    const-string v1, "XmPushActionUnSubscriptionResult"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    .line 29
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->DEBUG_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 30
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xc

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->TARGET_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 31
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x3

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 32
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x4

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->APP_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x6

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->ERROR_CODE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x7

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->REASON_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x8

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->TOPIC_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 36
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x9

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->PACKAGE_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 37
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v4, v5}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->CATEGORY_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->__isset_bit_vector:Ljava/util/BitSet;

    .line 55
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;)I
    .locals 6
    .param p1, "other"    # Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;

    .prologue
    .line 433
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 434
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

    .line 530
    :cond_0
    :goto_0
    return v0

    .line 437
    :cond_1
    const/4 v0, 0x0

    .line 438
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 440
    .local v1, "typedOther":Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetDebug()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetDebug()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 441
    if-nez v0, :cond_0

    .line 444
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetDebug()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 445
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->debug:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->debug:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 446
    if-nez v0, :cond_0

    .line 450
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetTarget()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetTarget()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 451
    if-nez v0, :cond_0

    .line 454
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetTarget()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 455
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 456
    if-nez v0, :cond_0

    .line 460
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 461
    if-nez v0, :cond_0

    .line 464
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetId()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 465
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->id:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 466
    if-nez v0, :cond_0

    .line 470
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetAppId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetAppId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 471
    if-nez v0, :cond_0

    .line 474
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetAppId()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 475
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->appId:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->appId:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 476
    if-nez v0, :cond_0

    .line 480
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetErrorCode()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetErrorCode()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 481
    if-nez v0, :cond_0

    .line 484
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetErrorCode()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 485
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->errorCode:J

    iget-wide v4, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->errorCode:J

    invoke-static {v2, v3, v4, v5}, Lorg/apache/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 486
    if-nez v0, :cond_0

    .line 490
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetReason()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetReason()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 491
    if-nez v0, :cond_0

    .line 494
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetReason()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 495
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->reason:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->reason:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 496
    if-nez v0, :cond_0

    .line 500
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetTopic()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetTopic()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 501
    if-nez v0, :cond_0

    .line 504
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetTopic()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 505
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->topic:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->topic:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 506
    if-nez v0, :cond_0

    .line 510
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetPackageName()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetPackageName()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 511
    if-nez v0, :cond_0

    .line 514
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetPackageName()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 515
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->packageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 516
    if-nez v0, :cond_0

    .line 520
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetCategory()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetCategory()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 521
    if-nez v0, :cond_0

    .line 524
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetCategory()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 525
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->category:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->category:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 526
    if-nez v0, :cond_0

    .line 530
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 26
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->compareTo(Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;)I

    move-result v0

    return v0
.end method

.method public equals(Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;)Z
    .locals 24
    .param p1, "that"    # Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;

    .prologue
    .line 340
    if-nez p1, :cond_0

    .line 341
    const/16 v20, 0x0

    .line 424
    :goto_0
    return v20

    .line 343
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetDebug()Z

    move-result v13

    .line 344
    .local v13, "this_present_debug":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetDebug()Z

    move-result v4

    .line 345
    .local v4, "that_present_debug":Z
    if-nez v13, :cond_1

    if-eqz v4, :cond_4

    .line 346
    :cond_1
    if-eqz v13, :cond_2

    if-nez v4, :cond_3

    .line 347
    :cond_2
    const/16 v20, 0x0

    goto :goto_0

    .line 348
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->debug:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->debug:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 349
    const/16 v20, 0x0

    goto :goto_0

    .line 352
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetTarget()Z

    move-result v18

    .line 353
    .local v18, "this_present_target":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetTarget()Z

    move-result v9

    .line 354
    .local v9, "that_present_target":Z
    if-nez v18, :cond_5

    if-eqz v9, :cond_8

    .line 355
    :cond_5
    if-eqz v18, :cond_6

    if-nez v9, :cond_7

    .line 356
    :cond_6
    const/16 v20, 0x0

    goto :goto_0

    .line 357
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/xiaomi/xmpush/thrift/Target;->equals(Lcom/xiaomi/xmpush/thrift/Target;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 358
    const/16 v20, 0x0

    goto :goto_0

    .line 361
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetId()Z

    move-result v15

    .line 362
    .local v15, "this_present_id":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetId()Z

    move-result v6

    .line 363
    .local v6, "that_present_id":Z
    if-nez v15, :cond_9

    if-eqz v6, :cond_c

    .line 364
    :cond_9
    if-eqz v15, :cond_a

    if-nez v6, :cond_b

    .line 365
    :cond_a
    const/16 v20, 0x0

    goto :goto_0

    .line 366
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->id:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->id:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_c

    .line 367
    const/16 v20, 0x0

    goto :goto_0

    .line 370
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetAppId()Z

    move-result v11

    .line 371
    .local v11, "this_present_appId":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetAppId()Z

    move-result v2

    .line 372
    .local v2, "that_present_appId":Z
    if-nez v11, :cond_d

    if-eqz v2, :cond_10

    .line 373
    :cond_d
    if-eqz v11, :cond_e

    if-nez v2, :cond_f

    .line 374
    :cond_e
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 375
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->appId:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->appId:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_10

    .line 376
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 379
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetErrorCode()Z

    move-result v14

    .line 380
    .local v14, "this_present_errorCode":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetErrorCode()Z

    move-result v5

    .line 381
    .local v5, "that_present_errorCode":Z
    if-nez v14, :cond_11

    if-eqz v5, :cond_14

    .line 382
    :cond_11
    if-eqz v14, :cond_12

    if-nez v5, :cond_13

    .line 383
    :cond_12
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 384
    :cond_13
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->errorCode:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->errorCode:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_14

    .line 385
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 388
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetReason()Z

    move-result v17

    .line 389
    .local v17, "this_present_reason":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetReason()Z

    move-result v8

    .line 390
    .local v8, "that_present_reason":Z
    if-nez v17, :cond_15

    if-eqz v8, :cond_18

    .line 391
    :cond_15
    if-eqz v17, :cond_16

    if-nez v8, :cond_17

    .line 392
    :cond_16
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 393
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->reason:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->reason:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_18

    .line 394
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 397
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetTopic()Z

    move-result v19

    .line 398
    .local v19, "this_present_topic":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetTopic()Z

    move-result v10

    .line 399
    .local v10, "that_present_topic":Z
    if-nez v19, :cond_19

    if-eqz v10, :cond_1c

    .line 400
    :cond_19
    if-eqz v19, :cond_1a

    if-nez v10, :cond_1b

    .line 401
    :cond_1a
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 402
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->topic:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->topic:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1c

    .line 403
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 406
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetPackageName()Z

    move-result v16

    .line 407
    .local v16, "this_present_packageName":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetPackageName()Z

    move-result v7

    .line 408
    .local v7, "that_present_packageName":Z
    if-nez v16, :cond_1d

    if-eqz v7, :cond_20

    .line 409
    :cond_1d
    if-eqz v16, :cond_1e

    if-nez v7, :cond_1f

    .line 410
    :cond_1e
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 411
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_20

    .line 412
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 415
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetCategory()Z

    move-result v12

    .line 416
    .local v12, "this_present_category":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetCategory()Z

    move-result v3

    .line 417
    .local v3, "that_present_category":Z
    if-nez v12, :cond_21

    if-eqz v3, :cond_24

    .line 418
    :cond_21
    if-eqz v12, :cond_22

    if-nez v3, :cond_23

    .line 419
    :cond_22
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 420
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->category:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->category:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_24

    .line 421
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 424
    :cond_24
    const/16 v20, 0x1

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 332
    if-nez p1, :cond_1

    .line 336
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 334
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;

    if-eqz v1, :cond_0

    .line 335
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->equals(Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 429
    const/4 v0, 0x0

    return v0
.end method

.method public isSetAppId()Z
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->appId:Ljava/lang/String;

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
    .line 321
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->category:Ljava/lang/String;

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
    .line 130
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->debug:Ljava/lang/String;

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
    .line 227
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetId()Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->id:Ljava/lang/String;

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
    .line 297
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->packageName:Ljava/lang/String;

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
    .line 249
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->reason:Ljava/lang/String;

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
    .line 154
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

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
    .line 273
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->topic:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 5
    .param p1, "iprot"    # Lorg/apache/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xb

    .line 535
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructBegin()Lorg/apache/thrift/protocol/TStruct;

    .line 538
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldBegin()Lorg/apache/thrift/protocol/TField;

    move-result-object v0

    .line 539
    .local v0, "field":Lorg/apache/thrift/protocol/TField;
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 613
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructEnd()V

    .line 616
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->validate()V

    .line 617
    return-void

    .line 542
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 609
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    .line 611
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 544
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_1

    .line 545
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->debug:Ljava/lang/String;

    goto :goto_1

    .line 547
    :cond_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 551
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 552
    new-instance v1, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/Target;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    .line 553
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v1, p1}, Lcom/xiaomi/xmpush/thrift/Target;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 555
    :cond_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 559
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_3

    .line 560
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->id:Ljava/lang/String;

    goto :goto_1

    .line 562
    :cond_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 566
    :pswitch_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_4

    .line 567
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->appId:Ljava/lang/String;

    goto :goto_1

    .line 569
    :cond_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 573
    :pswitch_5
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_5

    .line 574
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->errorCode:J

    .line 575
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->setErrorCodeIsSet(Z)V

    goto :goto_1

    .line 577
    :cond_5
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 581
    :pswitch_6
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_6

    .line 582
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->reason:Ljava/lang/String;

    goto :goto_1

    .line 584
    :cond_6
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 588
    :pswitch_7
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_7

    .line 589
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->topic:Ljava/lang/String;

    goto/16 :goto_1

    .line 591
    :cond_7
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 595
    :pswitch_8
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_8

    .line 596
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->packageName:Ljava/lang/String;

    goto/16 :goto_1

    .line 598
    :cond_8
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 602
    :pswitch_9
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_9

    .line 603
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->category:Ljava/lang/String;

    goto/16 :goto_1

    .line 605
    :cond_9
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 542
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

.method public setErrorCodeIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 231
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 232
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 688
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "XmPushActionUnSubscriptionResult("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 689
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 691
    .local v0, "first":Z
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 692
    const-string v2, "debug:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->debug:Ljava/lang/String;

    if-nez v2, :cond_10

    .line 694
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    :goto_0
    const/4 v0, 0x0

    .line 700
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetTarget()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 701
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    :cond_1
    const-string/jumbo v2, "target:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-nez v2, :cond_11

    .line 704
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    :goto_1
    const/4 v0, 0x0

    .line 710
    :cond_2
    if-nez v0, :cond_3

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    :cond_3
    const-string v2, "id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->id:Ljava/lang/String;

    if-nez v2, :cond_12

    .line 713
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    :goto_2
    const/4 v0, 0x0

    .line 718
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetAppId()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 719
    if-nez v0, :cond_4

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    :cond_4
    const-string v2, "appId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->appId:Ljava/lang/String;

    if-nez v2, :cond_13

    .line 722
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    :goto_3
    const/4 v0, 0x0

    .line 728
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetErrorCode()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 729
    if-nez v0, :cond_6

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    :cond_6
    const-string v2, "errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->errorCode:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 732
    const/4 v0, 0x0

    .line 734
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetReason()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 735
    if-nez v0, :cond_8

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    :cond_8
    const-string v2, "reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->reason:Ljava/lang/String;

    if-nez v2, :cond_14

    .line 738
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    :goto_4
    const/4 v0, 0x0

    .line 744
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetTopic()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 745
    if-nez v0, :cond_a

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    :cond_a
    const-string/jumbo v2, "topic:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->topic:Ljava/lang/String;

    if-nez v2, :cond_15

    .line 748
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    :goto_5
    const/4 v0, 0x0

    .line 754
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetPackageName()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 755
    if-nez v0, :cond_c

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    :cond_c
    const-string v2, "packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->packageName:Ljava/lang/String;

    if-nez v2, :cond_16

    .line 758
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    :goto_6
    const/4 v0, 0x0

    .line 764
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetCategory()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 765
    if-nez v0, :cond_e

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    :cond_e
    const-string v2, "category:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->category:Ljava/lang/String;

    if-nez v2, :cond_17

    .line 768
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    :goto_7
    const/4 v0, 0x0

    .line 774
    :cond_f
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 696
    :cond_10
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->debug:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 706
    :cond_11
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 715
    :cond_12
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 724
    :cond_13
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 740
    :cond_14
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->reason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 750
    :cond_15
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->topic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 760
    :cond_16
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 770
    :cond_17
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7
.end method

.method public validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 780
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 781
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 783
    :cond_0
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
    .line 620
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->validate()V

    .line 622
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeStructBegin(Lorg/apache/thrift/protocol/TStruct;)V

    .line 623
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->debug:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 624
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->DEBUG_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 626
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->debug:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-eqz v0, :cond_1

    .line 631
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetTarget()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 632
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->TARGET_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 633
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/Target;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 634
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 637
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->id:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 638
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 639
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 640
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 642
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->appId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 643
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetAppId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 644
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->APP_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 645
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 649
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetErrorCode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 650
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->ERROR_CODE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 651
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->errorCode:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeI64(J)V

    .line 652
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 654
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->reason:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 655
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetReason()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 656
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->REASON_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 657
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->reason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 658
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 661
    :cond_5
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->topic:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 662
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetTopic()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 663
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->TOPIC_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 664
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->topic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 665
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 668
    :cond_6
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 669
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetPackageName()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 670
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->PACKAGE_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 671
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 672
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 675
    :cond_7
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->category:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 676
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->isSetCategory()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 677
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->CATEGORY_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 678
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 679
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 682
    :cond_8
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 683
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 684
    return-void
.end method
