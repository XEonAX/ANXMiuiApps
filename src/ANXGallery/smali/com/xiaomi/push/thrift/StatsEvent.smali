.class public Lcom/xiaomi/push/thrift/StatsEvent;
.super Ljava/lang/Object;
.source "StatsEvent.java"

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
        "Lcom/xiaomi/push/thrift/StatsEvent;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final ANNOTATION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final CHID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final CLIENT_IP_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final CONNPT_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final HOST_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

.field private static final SUBVALUE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final TIME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final TYPE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final USER_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final VALUE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public annotation:Ljava/lang/String;

.field public chid:B

.field public clientIp:I

.field public connpt:Ljava/lang/String;

.field public host:Ljava/lang/String;

.field public subvalue:I

.field public time:I

.field public type:I

.field public user:Ljava/lang/String;

.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/16 v4, 0xb

    const/16 v3, 0x8

    .line 27
    new-instance v0, Lorg/apache/thrift/protocol/TStruct;

    const-string v1, "StatsEvent"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    .line 29
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->CHID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 30
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->TYPE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 31
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v3, v5}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->VALUE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 32
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x4

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->CONNPT_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x5

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->HOST_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->SUBVALUE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x7

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->ANNOTATION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 36
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v4, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->USER_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 37
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x9

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->TIME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 38
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xa

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->CLIENT_IP_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->__isset_bit_vector:Ljava/util/BitSet;

    .line 62
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/xiaomi/push/thrift/StatsEvent;)I
    .locals 4
    .param p1, "other"    # Lcom/xiaomi/push/thrift/StatsEvent;

    .prologue
    .line 476
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 477
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

    .line 583
    :cond_0
    :goto_0
    return v0

    .line 480
    :cond_1
    const/4 v0, 0x0

    .line 481
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 483
    .local v1, "typedOther":Lcom/xiaomi/push/thrift/StatsEvent;
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetChid()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetChid()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 484
    if-nez v0, :cond_0

    .line 487
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetChid()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 488
    iget-byte v2, p0, Lcom/xiaomi/push/thrift/StatsEvent;->chid:B

    iget-byte v3, v1, Lcom/xiaomi/push/thrift/StatsEvent;->chid:B

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(BB)I

    move-result v0

    .line 489
    if-nez v0, :cond_0

    .line 493
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetType()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetType()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 494
    if-nez v0, :cond_0

    .line 497
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetType()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 498
    iget v2, p0, Lcom/xiaomi/push/thrift/StatsEvent;->type:I

    iget v3, v1, Lcom/xiaomi/push/thrift/StatsEvent;->type:I

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 499
    if-nez v0, :cond_0

    .line 503
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetValue()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetValue()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 504
    if-nez v0, :cond_0

    .line 507
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 508
    iget v2, p0, Lcom/xiaomi/push/thrift/StatsEvent;->value:I

    iget v3, v1, Lcom/xiaomi/push/thrift/StatsEvent;->value:I

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 509
    if-nez v0, :cond_0

    .line 513
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetConnpt()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetConnpt()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 514
    if-nez v0, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetConnpt()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 518
    iget-object v2, p0, Lcom/xiaomi/push/thrift/StatsEvent;->connpt:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/push/thrift/StatsEvent;->connpt:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 519
    if-nez v0, :cond_0

    .line 523
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetHost()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetHost()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 524
    if-nez v0, :cond_0

    .line 527
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetHost()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 528
    iget-object v2, p0, Lcom/xiaomi/push/thrift/StatsEvent;->host:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/push/thrift/StatsEvent;->host:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 529
    if-nez v0, :cond_0

    .line 533
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetSubvalue()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetSubvalue()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 534
    if-nez v0, :cond_0

    .line 537
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetSubvalue()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 538
    iget v2, p0, Lcom/xiaomi/push/thrift/StatsEvent;->subvalue:I

    iget v3, v1, Lcom/xiaomi/push/thrift/StatsEvent;->subvalue:I

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 539
    if-nez v0, :cond_0

    .line 543
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetAnnotation()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetAnnotation()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 544
    if-nez v0, :cond_0

    .line 547
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetAnnotation()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 548
    iget-object v2, p0, Lcom/xiaomi/push/thrift/StatsEvent;->annotation:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/push/thrift/StatsEvent;->annotation:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 549
    if-nez v0, :cond_0

    .line 553
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetUser()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetUser()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 554
    if-nez v0, :cond_0

    .line 557
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetUser()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 558
    iget-object v2, p0, Lcom/xiaomi/push/thrift/StatsEvent;->user:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/push/thrift/StatsEvent;->user:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 559
    if-nez v0, :cond_0

    .line 563
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetTime()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetTime()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 564
    if-nez v0, :cond_0

    .line 567
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetTime()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 568
    iget v2, p0, Lcom/xiaomi/push/thrift/StatsEvent;->time:I

    iget v3, v1, Lcom/xiaomi/push/thrift/StatsEvent;->time:I

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 569
    if-nez v0, :cond_0

    .line 573
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetClientIp()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetClientIp()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 574
    if-nez v0, :cond_0

    .line 577
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetClientIp()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 578
    iget v2, p0, Lcom/xiaomi/push/thrift/StatsEvent;->clientIp:I

    iget v3, v1, Lcom/xiaomi/push/thrift/StatsEvent;->clientIp:I

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 579
    if-nez v0, :cond_0

    .line 583
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 26
    check-cast p1, Lcom/xiaomi/push/thrift/StatsEvent;

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/thrift/StatsEvent;->compareTo(Lcom/xiaomi/push/thrift/StatsEvent;)I

    move-result v0

    return v0
.end method

.method public equals(Lcom/xiaomi/push/thrift/StatsEvent;)Z
    .locals 24
    .param p1, "that"    # Lcom/xiaomi/push/thrift/StatsEvent;

    .prologue
    .line 374
    if-nez p1, :cond_0

    .line 375
    const/16 v22, 0x0

    .line 467
    :goto_0
    return v22

    .line 377
    :cond_0
    const/4 v13, 0x1

    .line 378
    .local v13, "this_present_chid":Z
    const/4 v3, 0x1

    .line 379
    .local v3, "that_present_chid":Z
    if-nez v13, :cond_1

    if-eqz v3, :cond_4

    .line 380
    :cond_1
    if-eqz v13, :cond_2

    if-nez v3, :cond_3

    .line 381
    :cond_2
    const/16 v22, 0x0

    goto :goto_0

    .line 382
    :cond_3
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/xiaomi/push/thrift/StatsEvent;->chid:B

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget-byte v0, v0, Lcom/xiaomi/push/thrift/StatsEvent;->chid:B

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_4

    .line 383
    const/16 v22, 0x0

    goto :goto_0

    .line 386
    :cond_4
    const/16 v19, 0x1

    .line 387
    .local v19, "this_present_type":Z
    const/4 v9, 0x1

    .line 388
    .local v9, "that_present_type":Z
    if-nez v19, :cond_5

    if-eqz v9, :cond_8

    .line 389
    :cond_5
    if-eqz v19, :cond_6

    if-nez v9, :cond_7

    .line 390
    :cond_6
    const/16 v22, 0x0

    goto :goto_0

    .line 391
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/push/thrift/StatsEvent;->type:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/xiaomi/push/thrift/StatsEvent;->type:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_8

    .line 392
    const/16 v22, 0x0

    goto :goto_0

    .line 395
    :cond_8
    const/16 v21, 0x1

    .line 396
    .local v21, "this_present_value":Z
    const/4 v11, 0x1

    .line 397
    .local v11, "that_present_value":Z
    if-nez v21, :cond_9

    if-eqz v11, :cond_c

    .line 398
    :cond_9
    if-eqz v21, :cond_a

    if-nez v11, :cond_b

    .line 399
    :cond_a
    const/16 v22, 0x0

    goto :goto_0

    .line 400
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/push/thrift/StatsEvent;->value:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/xiaomi/push/thrift/StatsEvent;->value:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_c

    .line 401
    const/16 v22, 0x0

    goto :goto_0

    .line 404
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetConnpt()Z

    move-result v15

    .line 405
    .local v15, "this_present_connpt":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetConnpt()Z

    move-result v5

    .line 406
    .local v5, "that_present_connpt":Z
    if-nez v15, :cond_d

    if-eqz v5, :cond_10

    .line 407
    :cond_d
    if-eqz v15, :cond_e

    if-nez v5, :cond_f

    .line 408
    :cond_e
    const/16 v22, 0x0

    goto :goto_0

    .line 409
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/push/thrift/StatsEvent;->connpt:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/push/thrift/StatsEvent;->connpt:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_10

    .line 410
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 413
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetHost()Z

    move-result v16

    .line 414
    .local v16, "this_present_host":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetHost()Z

    move-result v6

    .line 415
    .local v6, "that_present_host":Z
    if-nez v16, :cond_11

    if-eqz v6, :cond_14

    .line 416
    :cond_11
    if-eqz v16, :cond_12

    if-nez v6, :cond_13

    .line 417
    :cond_12
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 418
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/push/thrift/StatsEvent;->host:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/push/thrift/StatsEvent;->host:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_14

    .line 419
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 422
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetSubvalue()Z

    move-result v17

    .line 423
    .local v17, "this_present_subvalue":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetSubvalue()Z

    move-result v7

    .line 424
    .local v7, "that_present_subvalue":Z
    if-nez v17, :cond_15

    if-eqz v7, :cond_18

    .line 425
    :cond_15
    if-eqz v17, :cond_16

    if-nez v7, :cond_17

    .line 426
    :cond_16
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 427
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/push/thrift/StatsEvent;->subvalue:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/xiaomi/push/thrift/StatsEvent;->subvalue:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_18

    .line 428
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 431
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetAnnotation()Z

    move-result v12

    .line 432
    .local v12, "this_present_annotation":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetAnnotation()Z

    move-result v2

    .line 433
    .local v2, "that_present_annotation":Z
    if-nez v12, :cond_19

    if-eqz v2, :cond_1c

    .line 434
    :cond_19
    if-eqz v12, :cond_1a

    if-nez v2, :cond_1b

    .line 435
    :cond_1a
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 436
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/push/thrift/StatsEvent;->annotation:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/push/thrift/StatsEvent;->annotation:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1c

    .line 437
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 440
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetUser()Z

    move-result v20

    .line 441
    .local v20, "this_present_user":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetUser()Z

    move-result v10

    .line 442
    .local v10, "that_present_user":Z
    if-nez v20, :cond_1d

    if-eqz v10, :cond_20

    .line 443
    :cond_1d
    if-eqz v20, :cond_1e

    if-nez v10, :cond_1f

    .line 444
    :cond_1e
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 445
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/push/thrift/StatsEvent;->user:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/push/thrift/StatsEvent;->user:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_20

    .line 446
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 449
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetTime()Z

    move-result v18

    .line 450
    .local v18, "this_present_time":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetTime()Z

    move-result v8

    .line 451
    .local v8, "that_present_time":Z
    if-nez v18, :cond_21

    if-eqz v8, :cond_24

    .line 452
    :cond_21
    if-eqz v18, :cond_22

    if-nez v8, :cond_23

    .line 453
    :cond_22
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 454
    :cond_23
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/push/thrift/StatsEvent;->time:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/xiaomi/push/thrift/StatsEvent;->time:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_24

    .line 455
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 458
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetClientIp()Z

    move-result v14

    .line 459
    .local v14, "this_present_clientIp":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetClientIp()Z

    move-result v4

    .line 460
    .local v4, "that_present_clientIp":Z
    if-nez v14, :cond_25

    if-eqz v4, :cond_28

    .line 461
    :cond_25
    if-eqz v14, :cond_26

    if-nez v4, :cond_27

    .line 462
    :cond_26
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 463
    :cond_27
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/push/thrift/StatsEvent;->clientIp:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/xiaomi/push/thrift/StatsEvent;->clientIp:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_28

    .line 464
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 467
    :cond_28
    const/16 v22, 0x1

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 366
    if-nez p1, :cond_1

    .line 370
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 368
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/push/thrift/StatsEvent;

    if-eqz v1, :cond_0

    .line 369
    check-cast p1, Lcom/xiaomi/push/thrift/StatsEvent;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/xiaomi/push/thrift/StatsEvent;->equals(Lcom/xiaomi/push/thrift/StatsEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 472
    const/4 v0, 0x0

    return v0
.end method

.method public isSetAnnotation()Z
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->annotation:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetChid()Z
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetClientIp()Z
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetConnpt()Z
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->connpt:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetHost()Z
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->host:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetSubvalue()Z
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetTime()Z
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetType()Z
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetUser()Z
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->user:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetValue()Z
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
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
    const/16 v5, 0xb

    const/16 v4, 0x8

    const/4 v3, 0x1

    .line 588
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructBegin()Lorg/apache/thrift/protocol/TStruct;

    .line 591
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldBegin()Lorg/apache/thrift/protocol/TField;

    move-result-object v0

    .line 592
    .local v0, "field":Lorg/apache/thrift/protocol/TField;
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 677
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructEnd()V

    .line 680
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetChid()Z

    move-result v1

    if-nez v1, :cond_b

    .line 681
    new-instance v1, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Required field \'chid\' was not found in serialized data! Struct: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 595
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 673
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    .line 675
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 597
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 598
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readByte()B

    move-result v1

    iput-byte v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->chid:B

    .line 599
    invoke-virtual {p0, v3}, Lcom/xiaomi/push/thrift/StatsEvent;->setChidIsSet(Z)V

    goto :goto_1

    .line 601
    :cond_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 605
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_2

    .line 606
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->type:I

    .line 607
    invoke-virtual {p0, v3}, Lcom/xiaomi/push/thrift/StatsEvent;->setTypeIsSet(Z)V

    goto :goto_1

    .line 609
    :cond_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 613
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_3

    .line 614
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->value:I

    .line 615
    invoke-virtual {p0, v3}, Lcom/xiaomi/push/thrift/StatsEvent;->setValueIsSet(Z)V

    goto :goto_1

    .line 617
    :cond_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 621
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v5, :cond_4

    .line 622
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->connpt:Ljava/lang/String;

    goto :goto_1

    .line 624
    :cond_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 628
    :pswitch_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v5, :cond_5

    .line 629
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->host:Ljava/lang/String;

    goto :goto_1

    .line 631
    :cond_5
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 635
    :pswitch_5
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_6

    .line 636
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->subvalue:I

    .line 637
    invoke-virtual {p0, v3}, Lcom/xiaomi/push/thrift/StatsEvent;->setSubvalueIsSet(Z)V

    goto :goto_1

    .line 639
    :cond_6
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 643
    :pswitch_6
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v5, :cond_7

    .line 644
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->annotation:Ljava/lang/String;

    goto/16 :goto_1

    .line 646
    :cond_7
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 650
    :pswitch_7
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v5, :cond_8

    .line 651
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->user:Ljava/lang/String;

    goto/16 :goto_1

    .line 653
    :cond_8
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 657
    :pswitch_8
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_9

    .line 658
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->time:I

    .line 659
    invoke-virtual {p0, v3}, Lcom/xiaomi/push/thrift/StatsEvent;->setTimeIsSet(Z)V

    goto/16 :goto_1

    .line 661
    :cond_9
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 665
    :pswitch_9
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_a

    .line 666
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->clientIp:I

    .line 667
    invoke-virtual {p0, v3}, Lcom/xiaomi/push/thrift/StatsEvent;->setClientIpIsSet(Z)V

    goto/16 :goto_1

    .line 669
    :cond_a
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 683
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetType()Z

    move-result v1

    if-nez v1, :cond_c

    .line 684
    new-instance v1, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Required field \'type\' was not found in serialized data! Struct: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 686
    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetValue()Z

    move-result v1

    if-nez v1, :cond_d

    .line 687
    new-instance v1, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Required field \'value\' was not found in serialized data! Struct: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 689
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->validate()V

    .line 690
    return-void

    .line 595
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
    .end packed-switch
.end method

.method public setAnnotation(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;
    .locals 0
    .param p1, "annotation"    # Ljava/lang/String;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->annotation:Ljava/lang/String;

    .line 276
    return-object p0
.end method

.method public setChid(B)Lcom/xiaomi/push/thrift/StatsEvent;
    .locals 1
    .param p1, "chid"    # B

    .prologue
    .line 135
    iput-byte p1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->chid:B

    .line 136
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/thrift/StatsEvent;->setChidIsSet(Z)V

    .line 137
    return-object p0
.end method

.method public setChidIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 150
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 151
    return-void
.end method

.method public setClientIpIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 361
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 362
    return-void
.end method

.method public setConnpt(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;
    .locals 0
    .param p1, "connpt"    # Ljava/lang/String;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->connpt:Ljava/lang/String;

    .line 205
    return-object p0
.end method

.method public setHost(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->host:Ljava/lang/String;

    .line 229
    return-object p0
.end method

.method public setSubvalue(I)Lcom/xiaomi/push/thrift/StatsEvent;
    .locals 1
    .param p1, "subvalue"    # I

    .prologue
    .line 252
    iput p1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->subvalue:I

    .line 253
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/thrift/StatsEvent;->setSubvalueIsSet(Z)V

    .line 254
    return-object p0
.end method

.method public setSubvalueIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 267
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 268
    return-void
.end method

.method public setTime(I)Lcom/xiaomi/push/thrift/StatsEvent;
    .locals 1
    .param p1, "time"    # I

    .prologue
    .line 323
    iput p1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->time:I

    .line 324
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/thrift/StatsEvent;->setTimeIsSet(Z)V

    .line 325
    return-object p0
.end method

.method public setTimeIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 338
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 339
    return-void
.end method

.method public setType(I)Lcom/xiaomi/push/thrift/StatsEvent;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 158
    iput p1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->type:I

    .line 159
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/thrift/StatsEvent;->setTypeIsSet(Z)V

    .line 160
    return-object p0
.end method

.method public setTypeIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 173
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 174
    return-void
.end method

.method public setUser(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;
    .locals 0
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->user:Ljava/lang/String;

    .line 300
    return-object p0
.end method

.method public setValue(I)Lcom/xiaomi/push/thrift/StatsEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 181
    iput p1, p0, Lcom/xiaomi/push/thrift/StatsEvent;->value:I

    .line 182
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/thrift/StatsEvent;->setValueIsSet(Z)V

    .line 183
    return-object p0
.end method

.method public setValueIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 196
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 197
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 752
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "StatsEvent("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 753
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 755
    .local v0, "first":Z
    const-string v2, "chid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    iget-byte v2, p0, Lcom/xiaomi/push/thrift/StatsEvent;->chid:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 757
    const/4 v0, 0x0

    .line 758
    if-nez v0, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    :cond_0
    const-string/jumbo v2, "type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    iget v2, p0, Lcom/xiaomi/push/thrift/StatsEvent;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 761
    const/4 v0, 0x0

    .line 762
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    :cond_1
    const-string/jumbo v2, "value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    iget v2, p0, Lcom/xiaomi/push/thrift/StatsEvent;->value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 765
    const/4 v0, 0x0

    .line 766
    if-nez v0, :cond_2

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    :cond_2
    const-string v2, "connpt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    iget-object v2, p0, Lcom/xiaomi/push/thrift/StatsEvent;->connpt:Ljava/lang/String;

    if-nez v2, :cond_f

    .line 769
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    :goto_0
    const/4 v0, 0x0

    .line 774
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetHost()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 775
    if-nez v0, :cond_3

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    :cond_3
    const-string v2, "host:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    iget-object v2, p0, Lcom/xiaomi/push/thrift/StatsEvent;->host:Ljava/lang/String;

    if-nez v2, :cond_10

    .line 778
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    :goto_1
    const/4 v0, 0x0

    .line 784
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetSubvalue()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 785
    if-nez v0, :cond_5

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    :cond_5
    const-string/jumbo v2, "subvalue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    iget v2, p0, Lcom/xiaomi/push/thrift/StatsEvent;->subvalue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 788
    const/4 v0, 0x0

    .line 790
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetAnnotation()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 791
    if-nez v0, :cond_7

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    :cond_7
    const-string v2, "annotation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    iget-object v2, p0, Lcom/xiaomi/push/thrift/StatsEvent;->annotation:Ljava/lang/String;

    if-nez v2, :cond_11

    .line 794
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    :goto_2
    const/4 v0, 0x0

    .line 800
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetUser()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 801
    if-nez v0, :cond_9

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    :cond_9
    const-string/jumbo v2, "user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    iget-object v2, p0, Lcom/xiaomi/push/thrift/StatsEvent;->user:Ljava/lang/String;

    if-nez v2, :cond_12

    .line 804
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    :goto_3
    const/4 v0, 0x0

    .line 810
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetTime()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 811
    if-nez v0, :cond_b

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    :cond_b
    const-string/jumbo v2, "time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    iget v2, p0, Lcom/xiaomi/push/thrift/StatsEvent;->time:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 814
    const/4 v0, 0x0

    .line 816
    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetClientIp()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 817
    if-nez v0, :cond_d

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    :cond_d
    const-string v2, "clientIp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    iget v2, p0, Lcom/xiaomi/push/thrift/StatsEvent;->clientIp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 820
    const/4 v0, 0x0

    .line 822
    :cond_e
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 771
    :cond_f
    iget-object v2, p0, Lcom/xiaomi/push/thrift/StatsEvent;->connpt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 780
    :cond_10
    iget-object v2, p0, Lcom/xiaomi/push/thrift/StatsEvent;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 796
    :cond_11
    iget-object v2, p0, Lcom/xiaomi/push/thrift/StatsEvent;->annotation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 806
    :cond_12
    iget-object v2, p0, Lcom/xiaomi/push/thrift/StatsEvent;->user:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method public validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 831
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->connpt:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 832
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'connpt\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 834
    :cond_0
    return-void
.end method

.method public write(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 1
    .param p1, "oprot"    # Lorg/apache/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 693
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->validate()V

    .line 695
    sget-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeStructBegin(Lorg/apache/thrift/protocol/TStruct;)V

    .line 696
    sget-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->CHID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 697
    iget-byte v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->chid:B

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeByte(B)V

    .line 698
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 699
    sget-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->TYPE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 700
    iget v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->type:I

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeI32(I)V

    .line 701
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 702
    sget-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->VALUE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 703
    iget v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->value:I

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeI32(I)V

    .line 704
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 705
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->connpt:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 706
    sget-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->CONNPT_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 707
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->connpt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 708
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->host:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 711
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetHost()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 712
    sget-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->HOST_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 713
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->host:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 714
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 717
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetSubvalue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 718
    sget-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->SUBVALUE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 719
    iget v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->subvalue:I

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeI32(I)V

    .line 720
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 722
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->annotation:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 723
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetAnnotation()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 724
    sget-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->ANNOTATION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 725
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->annotation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 726
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 729
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->user:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 730
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetUser()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 731
    sget-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->USER_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 732
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->user:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 733
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 736
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetTime()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 737
    sget-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->TIME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 738
    iget v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->time:I

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeI32(I)V

    .line 739
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 741
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvent;->isSetClientIp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 742
    sget-object v0, Lcom/xiaomi/push/thrift/StatsEvent;->CLIENT_IP_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 743
    iget v0, p0, Lcom/xiaomi/push/thrift/StatsEvent;->clientIp:I

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeI32(I)V

    .line 744
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 746
    :cond_6
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 747
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 748
    return-void
.end method
