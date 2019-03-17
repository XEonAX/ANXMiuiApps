.class public Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;
.super Ljava/lang/Object;
.source "XmPushActionUnSubscription.java"

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
        "Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final ALIASES_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final APP_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final CATEGORY_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final DEBUG_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final PACKAGE_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

.field private static final TARGET_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final TOPIC_FIELD_DESC:Lorg/apache/thrift/protocol/TField;


# instance fields
.field public aliases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public appId:Ljava/lang/String;

.field public category:Ljava/lang/String;

.field public debug:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public target:Lcom/xiaomi/xmpush/thrift/Target;

.field public topic:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xb

    .line 30
    new-instance v0, Lorg/apache/thrift/protocol/TStruct;

    const-string v1, "XmPushActionUnSubscription"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    .line 32
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->DEBUG_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xc

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->TARGET_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x3

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x4

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->APP_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 36
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x5

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->TOPIC_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 37
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x6

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->PACKAGE_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 38
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x7

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->CATEGORY_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 39
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xf

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->ALIASES_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;)I
    .locals 4
    .param p1, "other"    # Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;

    .prologue
    .line 418
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 419
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

    .line 505
    :cond_0
    :goto_0
    return v0

    .line 422
    :cond_1
    const/4 v0, 0x0

    .line 423
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 425
    .local v1, "typedOther":Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetDebug()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetDebug()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 426
    if-nez v0, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetDebug()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 430
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->debug:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->debug:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 431
    if-nez v0, :cond_0

    .line 435
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetTarget()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetTarget()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 436
    if-nez v0, :cond_0

    .line 439
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetTarget()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 440
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->target:Lcom/xiaomi/xmpush/thrift/Target;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 441
    if-nez v0, :cond_0

    .line 445
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 446
    if-nez v0, :cond_0

    .line 449
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetId()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 450
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->id:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 451
    if-nez v0, :cond_0

    .line 455
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetAppId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetAppId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 456
    if-nez v0, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetAppId()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 460
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->appId:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->appId:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 461
    if-nez v0, :cond_0

    .line 465
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetTopic()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetTopic()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 466
    if-nez v0, :cond_0

    .line 469
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetTopic()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 470
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->topic:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->topic:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 471
    if-nez v0, :cond_0

    .line 475
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetPackageName()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetPackageName()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 476
    if-nez v0, :cond_0

    .line 479
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetPackageName()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 480
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->packageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 481
    if-nez v0, :cond_0

    .line 485
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetCategory()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetCategory()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 486
    if-nez v0, :cond_0

    .line 489
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetCategory()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 490
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->category:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->category:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 491
    if-nez v0, :cond_0

    .line 495
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetAliases()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetAliases()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 496
    if-nez v0, :cond_0

    .line 499
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetAliases()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 500
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->aliases:Ljava/util/List;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->aliases:Ljava/util/List;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 501
    if-nez v0, :cond_0

    .line 505
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 29
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->compareTo(Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;)I

    move-result v0

    return v0
.end method

.method public equals(Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;)Z
    .locals 19
    .param p1, "that"    # Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;

    .prologue
    .line 334
    if-nez p1, :cond_0

    .line 335
    const/16 v17, 0x0

    .line 409
    :goto_0
    return v17

    .line 337
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetDebug()Z

    move-result v12

    .line 338
    .local v12, "this_present_debug":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetDebug()Z

    move-result v4

    .line 339
    .local v4, "that_present_debug":Z
    if-nez v12, :cond_1

    if-eqz v4, :cond_4

    .line 340
    :cond_1
    if-eqz v12, :cond_2

    if-nez v4, :cond_3

    .line 341
    :cond_2
    const/16 v17, 0x0

    goto :goto_0

    .line 342
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->debug:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->debug:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 343
    const/16 v17, 0x0

    goto :goto_0

    .line 346
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetTarget()Z

    move-result v15

    .line 347
    .local v15, "this_present_target":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetTarget()Z

    move-result v7

    .line 348
    .local v7, "that_present_target":Z
    if-nez v15, :cond_5

    if-eqz v7, :cond_8

    .line 349
    :cond_5
    if-eqz v15, :cond_6

    if-nez v7, :cond_7

    .line 350
    :cond_6
    const/16 v17, 0x0

    goto :goto_0

    .line 351
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->target:Lcom/xiaomi/xmpush/thrift/Target;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->target:Lcom/xiaomi/xmpush/thrift/Target;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/xiaomi/xmpush/thrift/Target;->equals(Lcom/xiaomi/xmpush/thrift/Target;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 352
    const/16 v17, 0x0

    goto :goto_0

    .line 355
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetId()Z

    move-result v13

    .line 356
    .local v13, "this_present_id":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetId()Z

    move-result v5

    .line 357
    .local v5, "that_present_id":Z
    if-nez v13, :cond_9

    if-eqz v5, :cond_c

    .line 358
    :cond_9
    if-eqz v13, :cond_a

    if-nez v5, :cond_b

    .line 359
    :cond_a
    const/16 v17, 0x0

    goto :goto_0

    .line 360
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->id:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->id:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_c

    .line 361
    const/16 v17, 0x0

    goto :goto_0

    .line 364
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetAppId()Z

    move-result v10

    .line 365
    .local v10, "this_present_appId":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetAppId()Z

    move-result v2

    .line 366
    .local v2, "that_present_appId":Z
    if-nez v10, :cond_d

    if-eqz v2, :cond_10

    .line 367
    :cond_d
    if-eqz v10, :cond_e

    if-nez v2, :cond_f

    .line 368
    :cond_e
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 369
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->appId:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->appId:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_10

    .line 370
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 373
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetTopic()Z

    move-result v16

    .line 374
    .local v16, "this_present_topic":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetTopic()Z

    move-result v8

    .line 375
    .local v8, "that_present_topic":Z
    if-nez v16, :cond_11

    if-eqz v8, :cond_14

    .line 376
    :cond_11
    if-eqz v16, :cond_12

    if-nez v8, :cond_13

    .line 377
    :cond_12
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 378
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->topic:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->topic:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_14

    .line 379
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 382
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetPackageName()Z

    move-result v14

    .line 383
    .local v14, "this_present_packageName":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetPackageName()Z

    move-result v6

    .line 384
    .local v6, "that_present_packageName":Z
    if-nez v14, :cond_15

    if-eqz v6, :cond_18

    .line 385
    :cond_15
    if-eqz v14, :cond_16

    if-nez v6, :cond_17

    .line 386
    :cond_16
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 387
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_18

    .line 388
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 391
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetCategory()Z

    move-result v11

    .line 392
    .local v11, "this_present_category":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetCategory()Z

    move-result v3

    .line 393
    .local v3, "that_present_category":Z
    if-nez v11, :cond_19

    if-eqz v3, :cond_1c

    .line 394
    :cond_19
    if-eqz v11, :cond_1a

    if-nez v3, :cond_1b

    .line 395
    :cond_1a
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 396
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->category:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->category:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1c

    .line 397
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 400
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetAliases()Z

    move-result v9

    .line 401
    .local v9, "this_present_aliases":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetAliases()Z

    move-result v1

    .line 402
    .local v1, "that_present_aliases":Z
    if-nez v9, :cond_1d

    if-eqz v1, :cond_20

    .line 403
    :cond_1d
    if-eqz v9, :cond_1e

    if-nez v1, :cond_1f

    .line 404
    :cond_1e
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 405
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->aliases:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->aliases:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_20

    .line 406
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 409
    :cond_20
    const/16 v17, 0x1

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 326
    if-nez p1, :cond_1

    .line 330
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 328
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;

    if-eqz v1, :cond_0

    .line 329
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->equals(Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 414
    const/4 v0, 0x0

    return v0
.end method

.method public isSetAliases()Z
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->aliases:Ljava/util/List;

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
    .line 204
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->appId:Ljava/lang/String;

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
    .line 276
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->category:Ljava/lang/String;

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
    .line 132
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->debug:Ljava/lang/String;

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
    .line 180
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->id:Ljava/lang/String;

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
    .line 252
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->packageName:Ljava/lang/String;

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
    .line 156
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->target:Lcom/xiaomi/xmpush/thrift/Target;

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
    .line 228
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->topic:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    const/16 v6, 0xb

    .line 510
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructBegin()Lorg/apache/thrift/protocol/TStruct;

    .line 513
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldBegin()Lorg/apache/thrift/protocol/TField;

    move-result-object v3

    .line 514
    .local v3, "field":Lorg/apache/thrift/protocol/TField;
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    if-nez v4, :cond_0

    .line 590
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructEnd()V

    .line 593
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->validate()V

    .line 594
    return-void

    .line 517
    :cond_0
    iget-short v4, v3, Lorg/apache/thrift/protocol/TField;->id:S

    packed-switch v4, :pswitch_data_0

    .line 586
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    .line 588
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 519
    :pswitch_0
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v4, v6, :cond_1

    .line 520
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->debug:Ljava/lang/String;

    goto :goto_1

    .line 522
    :cond_1
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 526
    :pswitch_1
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v5, 0xc

    if-ne v4, v5, :cond_2

    .line 527
    new-instance v4, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v4}, Lcom/xiaomi/xmpush/thrift/Target;-><init>()V

    iput-object v4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->target:Lcom/xiaomi/xmpush/thrift/Target;

    .line 528
    iget-object v4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v4, p1}, Lcom/xiaomi/xmpush/thrift/Target;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 530
    :cond_2
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 534
    :pswitch_2
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v4, v6, :cond_3

    .line 535
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->id:Ljava/lang/String;

    goto :goto_1

    .line 537
    :cond_3
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 541
    :pswitch_3
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v4, v6, :cond_4

    .line 542
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->appId:Ljava/lang/String;

    goto :goto_1

    .line 544
    :cond_4
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 548
    :pswitch_4
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v4, v6, :cond_5

    .line 549
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->topic:Ljava/lang/String;

    goto :goto_1

    .line 551
    :cond_5
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 555
    :pswitch_5
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v4, v6, :cond_6

    .line 556
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 558
    :cond_6
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 562
    :pswitch_6
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v4, v6, :cond_7

    .line 563
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->category:Ljava/lang/String;

    goto :goto_1

    .line 565
    :cond_7
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 569
    :pswitch_7
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v5, 0xf

    if-ne v4, v5, :cond_9

    .line 571
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readListBegin()Lorg/apache/thrift/protocol/TList;

    move-result-object v2

    .line 572
    .local v2, "_list103":Lorg/apache/thrift/protocol/TList;
    new-instance v4, Ljava/util/ArrayList;

    iget v5, v2, Lorg/apache/thrift/protocol/TList;->size:I

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->aliases:Ljava/util/List;

    .line 573
    const/4 v1, 0x0

    .local v1, "_i104":I
    :goto_2
    iget v4, v2, Lorg/apache/thrift/protocol/TList;->size:I

    if-ge v1, v4, :cond_8

    .line 576
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    .line 577
    .local v0, "_elem105":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->aliases:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 579
    .end local v0    # "_elem105":Ljava/lang/String;
    :cond_8
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readListEnd()V

    goto/16 :goto_1

    .line 582
    .end local v1    # "_i104":I
    .end local v2    # "_list103":Lorg/apache/thrift/protocol/TList;
    :cond_9
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 517
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
    .end packed-switch
.end method

.method public setAppId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->appId:Ljava/lang/String;

    .line 195
    return-object p0
.end method

.method public setCategory(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->category:Ljava/lang/String;

    .line 267
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->id:Ljava/lang/String;

    .line 171
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->packageName:Ljava/lang/String;

    .line 243
    return-object p0
.end method

.method public setTopic(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;
    .locals 0
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->topic:Ljava/lang/String;

    .line 219
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 663
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "XmPushActionUnSubscription("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 664
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 666
    .local v0, "first":Z
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 667
    const-string v2, "debug:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->debug:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 669
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    :goto_0
    const/4 v0, 0x0

    .line 675
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetTarget()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 676
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    :cond_1
    const-string/jumbo v2, "target:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-nez v2, :cond_d

    .line 679
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    :goto_1
    const/4 v0, 0x0

    .line 685
    :cond_2
    if-nez v0, :cond_3

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    :cond_3
    const-string v2, "id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->id:Ljava/lang/String;

    if-nez v2, :cond_e

    .line 688
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    :goto_2
    const/4 v0, 0x0

    .line 693
    if-nez v0, :cond_4

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    :cond_4
    const-string v2, "appId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->appId:Ljava/lang/String;

    if-nez v2, :cond_f

    .line 696
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    :goto_3
    const/4 v0, 0x0

    .line 701
    if-nez v0, :cond_5

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    :cond_5
    const-string/jumbo v2, "topic:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->topic:Ljava/lang/String;

    if-nez v2, :cond_10

    .line 704
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    :goto_4
    const/4 v0, 0x0

    .line 709
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetPackageName()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 710
    if-nez v0, :cond_6

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    :cond_6
    const-string v2, "packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->packageName:Ljava/lang/String;

    if-nez v2, :cond_11

    .line 713
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    :goto_5
    const/4 v0, 0x0

    .line 719
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetCategory()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 720
    if-nez v0, :cond_8

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    :cond_8
    const-string v2, "category:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->category:Ljava/lang/String;

    if-nez v2, :cond_12

    .line 723
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    :goto_6
    const/4 v0, 0x0

    .line 729
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetAliases()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 730
    if-nez v0, :cond_a

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    :cond_a
    const-string v2, "aliases:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->aliases:Ljava/util/List;

    if-nez v2, :cond_13

    .line 733
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    :goto_7
    const/4 v0, 0x0

    .line 739
    :cond_b
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 671
    :cond_c
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->debug:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 681
    :cond_d
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 690
    :cond_e
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 698
    :cond_f
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 706
    :cond_10
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->topic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 715
    :cond_11
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 725
    :cond_12
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 735
    :cond_13
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->aliases:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    .line 745
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 746
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 748
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->appId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 749
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'appId\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 751
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->topic:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 752
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'topic\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 754
    :cond_2
    return-void
.end method

.method public write(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 4
    .param p1, "oprot"    # Lorg/apache/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->validate()V

    .line 599
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructBegin(Lorg/apache/thrift/protocol/TStruct;)V

    .line 600
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->debug:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 601
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 602
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->DEBUG_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 603
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->debug:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 604
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 607
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-eqz v1, :cond_1

    .line 608
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetTarget()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 609
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->TARGET_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 610
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v1, p1}, Lcom/xiaomi/xmpush/thrift/Target;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 611
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 614
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->id:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 615
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 616
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->id:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 619
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->appId:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 620
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->APP_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 621
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->appId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 622
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 624
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->topic:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 625
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->TOPIC_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 626
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->topic:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 629
    :cond_4
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 630
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetPackageName()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 631
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->PACKAGE_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 632
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 633
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 636
    :cond_5
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->category:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 637
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetCategory()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 638
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->CATEGORY_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 639
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->category:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 640
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 643
    :cond_6
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->aliases:Ljava/util/List;

    if-eqz v1, :cond_8

    .line 644
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->isSetAliases()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 645
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->ALIASES_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 647
    new-instance v1, Lorg/apache/thrift/protocol/TList;

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->aliases:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeListBegin(Lorg/apache/thrift/protocol/TList;)V

    .line 648
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->aliases:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 650
    .local v0, "_iter106":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 652
    .end local v0    # "_iter106":Ljava/lang/String;
    :cond_7
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeListEnd()V

    .line 654
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 657
    :cond_8
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 658
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 659
    return-void
.end method
