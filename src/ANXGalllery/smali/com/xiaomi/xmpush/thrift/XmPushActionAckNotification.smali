.class public Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;
.super Ljava/lang/Object;
.source "XmPushActionAckNotification.java"

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
        "Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final APP_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final CATEGORY_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final DEBUG_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final ERROR_CODE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final EXTRA_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final PACKAGE_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final REASON_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

.field private static final TARGET_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final TYPE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public appId:Ljava/lang/String;

.field public category:Ljava/lang/String;

.field public debug:Ljava/lang/String;

.field public errorCode:J

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

.field public id:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public reason:Ljava/lang/String;

.field public target:Lcom/xiaomi/xmpush/thrift/Target;

.field public type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/16 v4, 0xb

    .line 30
    new-instance v0, Lorg/apache/thrift/protocol/TStruct;

    const-string v1, "XmPushActionAckNotification"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    .line 32
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->DEBUG_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xc

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->TARGET_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x3

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x4

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->APP_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 36
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x5

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->TYPE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 37
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x7

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->ERROR_CODE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 38
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x8

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->REASON_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 39
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xd

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->EXTRA_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 40
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v4, v5}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->PACKAGE_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 41
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v4, v4}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->CATEGORY_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->__isset_bit_vector:Ljava/util/BitSet;

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->errorCode:J

    .line 62
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;)I
    .locals 6
    .param p1, "other"    # Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;

    .prologue
    .line 500
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 501
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

    .line 607
    :cond_0
    :goto_0
    return v0

    .line 504
    :cond_1
    const/4 v0, 0x0

    .line 505
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 507
    .local v1, "typedOther":Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetDebug()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetDebug()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 508
    if-nez v0, :cond_0

    .line 511
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetDebug()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 512
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->debug:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->debug:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 513
    if-nez v0, :cond_0

    .line 517
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetTarget()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetTarget()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 518
    if-nez v0, :cond_0

    .line 521
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetTarget()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 522
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->target:Lcom/xiaomi/xmpush/thrift/Target;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 523
    if-nez v0, :cond_0

    .line 527
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 528
    if-nez v0, :cond_0

    .line 531
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetId()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 532
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->id:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 533
    if-nez v0, :cond_0

    .line 537
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetAppId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetAppId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 538
    if-nez v0, :cond_0

    .line 541
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetAppId()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 542
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->appId:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->appId:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 543
    if-nez v0, :cond_0

    .line 547
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetType()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetType()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 548
    if-nez v0, :cond_0

    .line 551
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetType()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 552
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->type:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->type:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 553
    if-nez v0, :cond_0

    .line 557
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetErrorCode()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetErrorCode()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 558
    if-nez v0, :cond_0

    .line 561
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetErrorCode()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 562
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->errorCode:J

    iget-wide v4, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->errorCode:J

    invoke-static {v2, v3, v4, v5}, Lorg/apache/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 563
    if-nez v0, :cond_0

    .line 567
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetReason()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetReason()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 568
    if-nez v0, :cond_0

    .line 571
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetReason()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 572
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->reason:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->reason:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 573
    if-nez v0, :cond_0

    .line 577
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetExtra()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetExtra()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 578
    if-nez v0, :cond_0

    .line 581
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetExtra()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 582
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->extra:Ljava/util/Map;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->extra:Ljava/util/Map;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    .line 583
    if-nez v0, :cond_0

    .line 587
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetPackageName()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetPackageName()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 588
    if-nez v0, :cond_0

    .line 591
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetPackageName()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 592
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->packageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 593
    if-nez v0, :cond_0

    .line 597
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetCategory()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetCategory()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 598
    if-nez v0, :cond_0

    .line 601
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetCategory()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 602
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->category:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->category:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 603
    if-nez v0, :cond_0

    .line 607
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 29
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->compareTo(Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;)I

    move-result v0

    return v0
.end method

.method public equals(Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;)Z
    .locals 26
    .param p1, "that"    # Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;

    .prologue
    .line 398
    if-nez p1, :cond_0

    .line 399
    const/16 v22, 0x0

    .line 491
    :goto_0
    return v22

    .line 401
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetDebug()Z

    move-result v14

    .line 402
    .local v14, "this_present_debug":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetDebug()Z

    move-result v4

    .line 403
    .local v4, "that_present_debug":Z
    if-nez v14, :cond_1

    if-eqz v4, :cond_4

    .line 404
    :cond_1
    if-eqz v14, :cond_2

    if-nez v4, :cond_3

    .line 405
    :cond_2
    const/16 v22, 0x0

    goto :goto_0

    .line 406
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->debug:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->debug:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_4

    .line 407
    const/16 v22, 0x0

    goto :goto_0

    .line 410
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetTarget()Z

    move-result v20

    .line 411
    .local v20, "this_present_target":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetTarget()Z

    move-result v10

    .line 412
    .local v10, "that_present_target":Z
    if-nez v20, :cond_5

    if-eqz v10, :cond_8

    .line 413
    :cond_5
    if-eqz v20, :cond_6

    if-nez v10, :cond_7

    .line 414
    :cond_6
    const/16 v22, 0x0

    goto :goto_0

    .line 415
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->target:Lcom/xiaomi/xmpush/thrift/Target;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->target:Lcom/xiaomi/xmpush/thrift/Target;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/xiaomi/xmpush/thrift/Target;->equals(Lcom/xiaomi/xmpush/thrift/Target;)Z

    move-result v22

    if-nez v22, :cond_8

    .line 416
    const/16 v22, 0x0

    goto :goto_0

    .line 419
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetId()Z

    move-result v17

    .line 420
    .local v17, "this_present_id":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetId()Z

    move-result v7

    .line 421
    .local v7, "that_present_id":Z
    if-nez v17, :cond_9

    if-eqz v7, :cond_c

    .line 422
    :cond_9
    if-eqz v17, :cond_a

    if-nez v7, :cond_b

    .line 423
    :cond_a
    const/16 v22, 0x0

    goto :goto_0

    .line 424
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->id:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->id:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_c

    .line 425
    const/16 v22, 0x0

    goto :goto_0

    .line 428
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetAppId()Z

    move-result v12

    .line 429
    .local v12, "this_present_appId":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetAppId()Z

    move-result v2

    .line 430
    .local v2, "that_present_appId":Z
    if-nez v12, :cond_d

    if-eqz v2, :cond_10

    .line 431
    :cond_d
    if-eqz v12, :cond_e

    if-nez v2, :cond_f

    .line 432
    :cond_e
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 433
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->appId:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->appId:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_10

    .line 434
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 437
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetType()Z

    move-result v21

    .line 438
    .local v21, "this_present_type":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetType()Z

    move-result v11

    .line 439
    .local v11, "that_present_type":Z
    if-nez v21, :cond_11

    if-eqz v11, :cond_14

    .line 440
    :cond_11
    if-eqz v21, :cond_12

    if-nez v11, :cond_13

    .line 441
    :cond_12
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 442
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->type:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->type:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_14

    .line 443
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 446
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetErrorCode()Z

    move-result v15

    .line 447
    .local v15, "this_present_errorCode":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetErrorCode()Z

    move-result v5

    .line 448
    .local v5, "that_present_errorCode":Z
    if-nez v15, :cond_15

    if-eqz v5, :cond_18

    .line 449
    :cond_15
    if-eqz v15, :cond_16

    if-nez v5, :cond_17

    .line 450
    :cond_16
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 451
    :cond_17
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->errorCode:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->errorCode:J

    move-wide/from16 v24, v0

    cmp-long v22, v22, v24

    if-eqz v22, :cond_18

    .line 452
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 455
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetReason()Z

    move-result v19

    .line 456
    .local v19, "this_present_reason":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetReason()Z

    move-result v9

    .line 457
    .local v9, "that_present_reason":Z
    if-nez v19, :cond_19

    if-eqz v9, :cond_1c

    .line 458
    :cond_19
    if-eqz v19, :cond_1a

    if-nez v9, :cond_1b

    .line 459
    :cond_1a
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 460
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->reason:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->reason:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1c

    .line 461
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 464
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetExtra()Z

    move-result v16

    .line 465
    .local v16, "this_present_extra":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetExtra()Z

    move-result v6

    .line 466
    .local v6, "that_present_extra":Z
    if-nez v16, :cond_1d

    if-eqz v6, :cond_20

    .line 467
    :cond_1d
    if-eqz v16, :cond_1e

    if-nez v6, :cond_1f

    .line 468
    :cond_1e
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 469
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->extra:Ljava/util/Map;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->extra:Ljava/util/Map;

    move-object/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_20

    .line 470
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 473
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetPackageName()Z

    move-result v18

    .line 474
    .local v18, "this_present_packageName":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetPackageName()Z

    move-result v8

    .line 475
    .local v8, "that_present_packageName":Z
    if-nez v18, :cond_21

    if-eqz v8, :cond_24

    .line 476
    :cond_21
    if-eqz v18, :cond_22

    if-nez v8, :cond_23

    .line 477
    :cond_22
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 478
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_24

    .line 479
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 482
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetCategory()Z

    move-result v13

    .line 483
    .local v13, "this_present_category":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetCategory()Z

    move-result v3

    .line 484
    .local v3, "that_present_category":Z
    if-nez v13, :cond_25

    if-eqz v3, :cond_28

    .line 485
    :cond_25
    if-eqz v13, :cond_26

    if-nez v3, :cond_27

    .line 486
    :cond_26
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 487
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->category:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->category:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_28

    .line 488
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 491
    :cond_28
    const/16 v22, 0x1

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 390
    if-nez p1, :cond_1

    .line 394
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 392
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;

    if-eqz v1, :cond_0

    .line 393
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->equals(Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;)Z

    move-result v0

    goto :goto_0
.end method

.method public getExtra()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->extra:Ljava/util/Map;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->id:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 496
    const/4 v0, 0x0

    return v0
.end method

.method public isSetAppId()Z
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->appId:Ljava/lang/String;

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
    .line 379
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->category:Ljava/lang/String;

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
    .line 153
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->debug:Ljava/lang/String;

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
    .line 274
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetExtra()Z
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->extra:Ljava/util/Map;

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
    .line 201
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->id:Ljava/lang/String;

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
    .line 355
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->packageName:Ljava/lang/String;

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
    .line 296
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->reason:Ljava/lang/String;

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
    .line 177
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetType()Z
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->type:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 9
    .param p1, "iprot"    # Lorg/apache/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xb

    .line 612
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructBegin()Lorg/apache/thrift/protocol/TStruct;

    .line 615
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldBegin()Lorg/apache/thrift/protocol/TField;

    move-result-object v4

    .line 616
    .local v4, "field":Lorg/apache/thrift/protocol/TField;
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-nez v5, :cond_0

    .line 709
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructEnd()V

    .line 712
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->validate()V

    .line 713
    return-void

    .line 619
    :cond_0
    iget-short v5, v4, Lorg/apache/thrift/protocol/TField;->id:S

    packed-switch v5, :pswitch_data_0

    .line 705
    :pswitch_0
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    .line 707
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 621
    :pswitch_1
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_1

    .line 622
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->debug:Ljava/lang/String;

    goto :goto_1

    .line 624
    :cond_1
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 628
    :pswitch_2
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v6, 0xc

    if-ne v5, v6, :cond_2

    .line 629
    new-instance v5, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v5}, Lcom/xiaomi/xmpush/thrift/Target;-><init>()V

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->target:Lcom/xiaomi/xmpush/thrift/Target;

    .line 630
    iget-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v5, p1}, Lcom/xiaomi/xmpush/thrift/Target;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 632
    :cond_2
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 636
    :pswitch_3
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_3

    .line 637
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->id:Ljava/lang/String;

    goto :goto_1

    .line 639
    :cond_3
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 643
    :pswitch_4
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_4

    .line 644
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->appId:Ljava/lang/String;

    goto :goto_1

    .line 646
    :cond_4
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 650
    :pswitch_5
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_5

    .line 651
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->type:Ljava/lang/String;

    goto :goto_1

    .line 653
    :cond_5
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 657
    :pswitch_6
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v6, 0xa

    if-ne v5, v6, :cond_6

    .line 658
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->errorCode:J

    .line 659
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->setErrorCodeIsSet(Z)V

    goto :goto_1

    .line 661
    :cond_6
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 665
    :pswitch_7
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_7

    .line 666
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->reason:Ljava/lang/String;

    goto/16 :goto_1

    .line 668
    :cond_7
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 672
    :pswitch_8
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v6, 0xd

    if-ne v5, v6, :cond_9

    .line 674
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readMapBegin()Lorg/apache/thrift/protocol/TMap;

    move-result-object v2

    .line 675
    .local v2, "_map54":Lorg/apache/thrift/protocol/TMap;
    new-instance v5, Ljava/util/HashMap;

    iget v6, v2, Lorg/apache/thrift/protocol/TMap;->size:I

    mul-int/lit8 v6, v6, 0x2

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->extra:Ljava/util/Map;

    .line 676
    const/4 v0, 0x0

    .local v0, "_i55":I
    :goto_2
    iget v5, v2, Lorg/apache/thrift/protocol/TMap;->size:I

    if-ge v0, v5, :cond_8

    .line 680
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    .line 681
    .local v1, "_key56":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v3

    .line 682
    .local v3, "_val57":Ljava/lang/String;
    iget-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->extra:Ljava/util/Map;

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 684
    .end local v1    # "_key56":Ljava/lang/String;
    .end local v3    # "_val57":Ljava/lang/String;
    :cond_8
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readMapEnd()V

    goto/16 :goto_1

    .line 687
    .end local v0    # "_i55":I
    .end local v2    # "_map54":Lorg/apache/thrift/protocol/TMap;
    :cond_9
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 691
    :pswitch_9
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_a

    .line 692
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->packageName:Ljava/lang/String;

    goto/16 :goto_1

    .line 694
    :cond_a
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 698
    :pswitch_a
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_b

    .line 699
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->category:Ljava/lang/String;

    goto/16 :goto_1

    .line 701
    :cond_b
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 619
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public setErrorCodeIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 278
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 279
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 799
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "XmPushActionAckNotification("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 800
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 802
    .local v0, "first":Z
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 803
    const-string v2, "debug:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->debug:Ljava/lang/String;

    if-nez v2, :cond_12

    .line 805
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    :goto_0
    const/4 v0, 0x0

    .line 811
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetTarget()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 812
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    :cond_1
    const-string/jumbo v2, "target:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-nez v2, :cond_13

    .line 815
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    :goto_1
    const/4 v0, 0x0

    .line 821
    :cond_2
    if-nez v0, :cond_3

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    :cond_3
    const-string v2, "id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->id:Ljava/lang/String;

    if-nez v2, :cond_14

    .line 824
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    :goto_2
    const/4 v0, 0x0

    .line 829
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetAppId()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 830
    if-nez v0, :cond_4

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    :cond_4
    const-string v2, "appId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->appId:Ljava/lang/String;

    if-nez v2, :cond_15

    .line 833
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    :goto_3
    const/4 v0, 0x0

    .line 839
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetType()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 840
    if-nez v0, :cond_6

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    :cond_6
    const-string/jumbo v2, "type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->type:Ljava/lang/String;

    if-nez v2, :cond_16

    .line 843
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    :goto_4
    const/4 v0, 0x0

    .line 849
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetErrorCode()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 850
    if-nez v0, :cond_8

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    :cond_8
    const-string v2, "errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->errorCode:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 853
    const/4 v0, 0x0

    .line 855
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetReason()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 856
    if-nez v0, :cond_a

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    :cond_a
    const-string v2, "reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->reason:Ljava/lang/String;

    if-nez v2, :cond_17

    .line 859
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    :goto_5
    const/4 v0, 0x0

    .line 865
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetExtra()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 866
    if-nez v0, :cond_c

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    :cond_c
    const-string v2, "extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->extra:Ljava/util/Map;

    if-nez v2, :cond_18

    .line 869
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    :goto_6
    const/4 v0, 0x0

    .line 875
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetPackageName()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 876
    if-nez v0, :cond_e

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    :cond_e
    const-string v2, "packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->packageName:Ljava/lang/String;

    if-nez v2, :cond_19

    .line 879
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    :goto_7
    const/4 v0, 0x0

    .line 885
    :cond_f
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetCategory()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 886
    if-nez v0, :cond_10

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    :cond_10
    const-string v2, "category:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->category:Ljava/lang/String;

    if-nez v2, :cond_1a

    .line 889
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    :goto_8
    const/4 v0, 0x0

    .line 895
    :cond_11
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 807
    :cond_12
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->debug:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 817
    :cond_13
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 826
    :cond_14
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 835
    :cond_15
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 845
    :cond_16
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 861
    :cond_17
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->reason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 871
    :cond_18
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->extra:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 881
    :cond_19
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 891
    :cond_1a
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8
.end method

.method public validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 901
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 902
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 904
    :cond_0
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

    .line 716
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->validate()V

    .line 718
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructBegin(Lorg/apache/thrift/protocol/TStruct;)V

    .line 719
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->debug:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 720
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 721
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->DEBUG_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 722
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->debug:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 723
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 726
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-eqz v1, :cond_1

    .line 727
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetTarget()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 728
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->TARGET_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 729
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v1, p1}, Lcom/xiaomi/xmpush/thrift/Target;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 730
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 733
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->id:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 734
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 735
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->id:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 736
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 738
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->appId:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 739
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetAppId()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 740
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->APP_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 741
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->appId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 742
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 745
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->type:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 746
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetType()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 747
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->TYPE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 748
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->type:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 749
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 752
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetErrorCode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 753
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->ERROR_CODE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 754
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->errorCode:J

    invoke-virtual {p1, v2, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeI64(J)V

    .line 755
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 757
    :cond_5
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->reason:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 758
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetReason()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 759
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->REASON_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 760
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->reason:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 761
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 764
    :cond_6
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->extra:Ljava/util/Map;

    if-eqz v1, :cond_8

    .line 765
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetExtra()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 766
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->EXTRA_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 768
    new-instance v1, Lorg/apache/thrift/protocol/TMap;

    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->extra:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v4, v4, v2}, Lorg/apache/thrift/protocol/TMap;-><init>(BBI)V

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeMapBegin(Lorg/apache/thrift/protocol/TMap;)V

    .line 769
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->extra:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 771
    .local v0, "_iter58":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 772
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 774
    .end local v0    # "_iter58":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeMapEnd()V

    .line 776
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 779
    :cond_8
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 780
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetPackageName()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 781
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->PACKAGE_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 782
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 783
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 786
    :cond_9
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->category:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 787
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->isSetCategory()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 788
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->CATEGORY_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 789
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->category:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 790
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 793
    :cond_a
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 794
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 795
    return-void
.end method
