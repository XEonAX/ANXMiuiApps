.class public Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
.super Ljava/lang/Object;
.source "XmPushActionContainer.java"

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
        "Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final APPID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final ENCRYPT_ACTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final IS_REQUEST_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final META_INFO_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final PACKAGE_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final PUSH_ACTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

.field private static final TARGET_FIELD_DESC:Lorg/apache/thrift/protocol/TField;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public action:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public appid:Ljava/lang/String;

.field public encryptAction:Z

.field public isRequest:Z

.field public metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

.field public packageName:Ljava/lang/String;

.field public pushAction:Ljava/nio/ByteBuffer;

.field public target:Lcom/xiaomi/xmpush/thrift/Target;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0xc

    const/16 v5, 0x8

    const/16 v4, 0xb

    const/4 v3, 0x2

    .line 30
    new-instance v0, Lorg/apache/thrift/protocol/TStruct;

    const-string v1, "XmPushActionContainer"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    .line 32
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->ACTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v3, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->ENCRYPT_ACTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->IS_REQUEST_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x4

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->PUSH_ACTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 36
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x5

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->APPID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 37
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x6

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->PACKAGE_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 38
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x7

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->TARGET_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 39
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v6, v5}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->META_INFO_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->__isset_bit_vector:Ljava/util/BitSet;

    .line 61
    iput-boolean v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->encryptAction:Z

    .line 63
    iput-boolean v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isRequest:Z

    .line 65
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)I
    .locals 4
    .param p1, "other"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

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

    .line 520
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
    .local v1, "typedOther":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isSetAction()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isSetAction()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 441
    if-nez v0, :cond_0

    .line 444
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isSetAction()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 445
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 446
    if-nez v0, :cond_0

    .line 450
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isSetEncryptAction()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isSetEncryptAction()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 451
    if-nez v0, :cond_0

    .line 454
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isSetEncryptAction()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 455
    iget-boolean v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->encryptAction:Z

    iget-boolean v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->encryptAction:Z

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 456
    if-nez v0, :cond_0

    .line 460
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isSetIsRequest()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isSetIsRequest()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 461
    if-nez v0, :cond_0

    .line 464
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isSetIsRequest()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 465
    iget-boolean v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isRequest:Z

    iget-boolean v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isRequest:Z

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 466
    if-nez v0, :cond_0

    .line 470
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isSetPushAction()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isSetPushAction()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 471
    if-nez v0, :cond_0

    .line 474
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isSetPushAction()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 475
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->pushAction:Ljava/nio/ByteBuffer;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->pushAction:Ljava/nio/ByteBuffer;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 476
    if-nez v0, :cond_0

    .line 480
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isSetAppid()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isSetAppid()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 481
    if-nez v0, :cond_0

    .line 484
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isSetAppid()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 485
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->appid:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->appid:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 486
    if-nez v0, :cond_0

    .line 490
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isSetPackageName()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isSetPackageName()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 491
    if-nez v0, :cond_0

    .line 494
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isSetPackageName()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 495
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 496
    if-nez v0, :cond_0

    .line 500
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isSetTarget()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isSetTarget()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 501
    if-nez v0, :cond_0

    .line 504
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isSetTarget()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 505
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->target:Lcom/xiaomi/xmpush/thrift/Target;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 506
    if-nez v0, :cond_0

    .line 510
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isSetMetaInfo()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isSetMetaInfo()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 511
    if-nez v0, :cond_0

    .line 514
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isSetMetaInfo()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 515
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 516
    if-nez v0, :cond_0

    .line 520
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 29
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->compareTo(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)I

    move-result v0

    return v0
.end method

.method public equals(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z
    .locals 20
    .param p1, "that"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .prologue
    .line 349
    if-nez p1, :cond_0

    .line 350
    const/16 v18, 0x0

    .line 424
    :goto_0
    return v18

    .line 352
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isSetAction()Z

    move-result v10

    .line 353
    .local v10, "this_present_action":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isSetAction()Z

    move-result v2

    .line 354
    .local v2, "that_present_action":Z
    if-nez v10, :cond_1

    if-eqz v2, :cond_4

    .line 355
    :cond_1
    if-eqz v10, :cond_2

    if-nez v2, :cond_3

    .line 356
    :cond_2
    const/16 v18, 0x0

    goto :goto_0

    .line 357
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/xiaomi/xmpush/thrift/ActionType;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 358
    const/16 v18, 0x0

    goto :goto_0

    .line 361
    :cond_4
    const/4 v12, 0x1

    .line 362
    .local v12, "this_present_encryptAction":Z
    const/4 v4, 0x1

    .line 363
    .local v4, "that_present_encryptAction":Z
    if-nez v12, :cond_5

    if-eqz v4, :cond_8

    .line 364
    :cond_5
    if-eqz v12, :cond_6

    if-nez v4, :cond_7

    .line 365
    :cond_6
    const/16 v18, 0x0

    goto :goto_0

    .line 366
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->encryptAction:Z

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->encryptAction:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_8

    .line 367
    const/16 v18, 0x0

    goto :goto_0

    .line 370
    :cond_8
    const/4 v13, 0x1

    .line 371
    .local v13, "this_present_isRequest":Z
    const/4 v5, 0x1

    .line 372
    .local v5, "that_present_isRequest":Z
    if-nez v13, :cond_9

    if-eqz v5, :cond_c

    .line 373
    :cond_9
    if-eqz v13, :cond_a

    if-nez v5, :cond_b

    .line 374
    :cond_a
    const/16 v18, 0x0

    goto :goto_0

    .line 375
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isRequest:Z

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isRequest:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_c

    .line 376
    const/16 v18, 0x0

    goto :goto_0

    .line 379
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isSetPushAction()Z

    move-result v16

    .line 380
    .local v16, "this_present_pushAction":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isSetPushAction()Z

    move-result v8

    .line 381
    .local v8, "that_present_pushAction":Z
    if-nez v16, :cond_d

    if-eqz v8, :cond_10

    .line 382
    :cond_d
    if-eqz v16, :cond_e

    if-nez v8, :cond_f

    .line 383
    :cond_e
    const/16 v18, 0x0

    goto :goto_0

    .line 384
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->pushAction:Ljava/nio/ByteBuffer;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->pushAction:Ljava/nio/ByteBuffer;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_10

    .line 385
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 388
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isSetAppid()Z

    move-result v11

    .line 389
    .local v11, "this_present_appid":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isSetAppid()Z

    move-result v3

    .line 390
    .local v3, "that_present_appid":Z
    if-nez v11, :cond_11

    if-eqz v3, :cond_14

    .line 391
    :cond_11
    if-eqz v11, :cond_12

    if-nez v3, :cond_13

    .line 392
    :cond_12
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 393
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->appid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->appid:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_14

    .line 394
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 397
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isSetPackageName()Z

    move-result v15

    .line 398
    .local v15, "this_present_packageName":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isSetPackageName()Z

    move-result v7

    .line 399
    .local v7, "that_present_packageName":Z
    if-nez v15, :cond_15

    if-eqz v7, :cond_18

    .line 400
    :cond_15
    if-eqz v15, :cond_16

    if-nez v7, :cond_17

    .line 401
    :cond_16
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 402
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_18

    .line 403
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 406
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isSetTarget()Z

    move-result v17

    .line 407
    .local v17, "this_present_target":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isSetTarget()Z

    move-result v9

    .line 408
    .local v9, "that_present_target":Z
    if-nez v17, :cond_19

    if-eqz v9, :cond_1c

    .line 409
    :cond_19
    if-eqz v17, :cond_1a

    if-nez v9, :cond_1b

    .line 410
    :cond_1a
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 411
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->target:Lcom/xiaomi/xmpush/thrift/Target;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->target:Lcom/xiaomi/xmpush/thrift/Target;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/xiaomi/xmpush/thrift/Target;->equals(Lcom/xiaomi/xmpush/thrift/Target;)Z

    move-result v18

    if-nez v18, :cond_1c

    .line 412
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 415
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isSetMetaInfo()Z

    move-result v14

    .line 416
    .local v14, "this_present_metaInfo":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isSetMetaInfo()Z

    move-result v6

    .line 417
    .local v6, "that_present_metaInfo":Z
    if-nez v14, :cond_1d

    if-eqz v6, :cond_20

    .line 418
    :cond_1d
    if-eqz v14, :cond_1e

    if-nez v6, :cond_1f

    .line 419
    :cond_1e
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 420
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->equals(Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)Z

    move-result v18

    if-nez v18, :cond_20

    .line 421
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 424
    :cond_20
    const/16 v18, 0x1

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 341
    if-nez p1, :cond_1

    .line 345
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 343
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    if-eqz v1, :cond_0

    .line 344
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->equals(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAction()Lcom/xiaomi/xmpush/thrift/ActionType;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    return-object v0
.end method

.method public getAppid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->appid:Ljava/lang/String;

    return-object v0
.end method

.method public getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPushAction()[B
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->pushAction:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lorg/apache/thrift/TBaseHelper;->rightSize(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->setPushAction(Ljava/nio/ByteBuffer;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 211
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->pushAction:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 429
    const/4 v0, 0x0

    return v0
.end method

.method public isEncryptAction()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->encryptAction:Z

    return v0
.end method

.method public isSetAction()Z
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetAppid()Z
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->appid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetEncryptAction()Z
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetIsRequest()Z
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetMetaInfo()Z
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

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
    .line 282
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetPushAction()Z
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->pushAction:Ljava/nio/ByteBuffer;

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
    .line 306
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->target:Lcom/xiaomi/xmpush/thrift/Target;

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
    const/16 v6, 0xc

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v3, 0xb

    .line 525
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructBegin()Lorg/apache/thrift/protocol/TStruct;

    .line 528
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldBegin()Lorg/apache/thrift/protocol/TField;

    move-result-object v0

    .line 529
    .local v0, "field":Lorg/apache/thrift/protocol/TField;
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 598
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructEnd()V

    .line 601
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isSetEncryptAction()Z

    move-result v1

    if-nez v1, :cond_9

    .line 602
    new-instance v1, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Required field \'encryptAction\' was not found in serialized data! Struct: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 532
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 594
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    .line 596
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 534
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 535
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    invoke-static {v1}, Lcom/xiaomi/xmpush/thrift/ActionType;->findByValue(I)Lcom/xiaomi/xmpush/thrift/ActionType;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_1

    .line 537
    :cond_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 541
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v5, :cond_2

    .line 542
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->encryptAction:Z

    .line 543
    invoke-virtual {p0, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->setEncryptActionIsSet(Z)V

    goto :goto_1

    .line 545
    :cond_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 549
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v5, :cond_3

    .line 550
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isRequest:Z

    .line 551
    invoke-virtual {p0, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->setIsRequestIsSet(Z)V

    goto :goto_1

    .line 553
    :cond_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 557
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_4

    .line 558
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readBinary()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->pushAction:Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 560
    :cond_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 564
    :pswitch_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_5

    .line 565
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->appid:Ljava/lang/String;

    goto :goto_1

    .line 567
    :cond_5
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 571
    :pswitch_5
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_6

    .line 572
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 574
    :cond_6
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 578
    :pswitch_6
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v6, :cond_7

    .line 579
    new-instance v1, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/Target;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->target:Lcom/xiaomi/xmpush/thrift/Target;

    .line 580
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v1, p1}, Lcom/xiaomi/xmpush/thrift/Target;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    goto/16 :goto_1

    .line 582
    :cond_7
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 586
    :pswitch_7
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v6, :cond_8

    .line 587
    new-instance v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    .line 588
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    invoke-virtual {v1, p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    goto/16 :goto_1

    .line 590
    :cond_8
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 604
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isSetIsRequest()Z

    move-result v1

    if-nez v1, :cond_a

    .line 605
    new-instance v1, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Required field \'isRequest\' was not found in serialized data! Struct: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 607
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->validate()V

    .line 608
    return-void

    .line 532
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

.method public setAction(Lcom/xiaomi/xmpush/thrift/ActionType;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .locals 0
    .param p1, "action"    # Lcom/xiaomi/xmpush/thrift/ActionType;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 145
    return-object p0
.end method

.method public setAppid(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .locals 0
    .param p1, "appid"    # Ljava/lang/String;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->appid:Ljava/lang/String;

    .line 249
    return-object p0
.end method

.method public setEncryptAction(Z)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .locals 1
    .param p1, "encryptAction"    # Z

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->encryptAction:Z

    .line 169
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->setEncryptActionIsSet(Z)V

    .line 170
    return-object p0
.end method

.method public setEncryptActionIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 183
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 184
    return-void
.end method

.method public setIsRequest(Z)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .locals 1
    .param p1, "isRequest"    # Z

    .prologue
    .line 191
    iput-boolean p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isRequest:Z

    .line 192
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->setIsRequestIsSet(Z)V

    .line 193
    return-object p0
.end method

.method public setIsRequestIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 206
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 207
    return-void
.end method

.method public setMetaInfo(Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .locals 0
    .param p1, "metaInfo"    # Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    .line 321
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    .line 273
    return-object p0
.end method

.method public setPushAction(Ljava/nio/ByteBuffer;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .locals 0
    .param p1, "pushAction"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->pushAction:Ljava/nio/ByteBuffer;

    .line 225
    return-object p0
.end method

.method public setTarget(Lcom/xiaomi/xmpush/thrift/Target;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .locals 0
    .param p1, "target"    # Lcom/xiaomi/xmpush/thrift/Target;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->target:Lcom/xiaomi/xmpush/thrift/Target;

    .line 297
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 662
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "XmPushActionContainer("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 663
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 665
    .local v0, "first":Z
    const-string v2, "action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    if-nez v2, :cond_a

    .line 667
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    :goto_0
    const/4 v0, 0x0

    .line 672
    if-nez v0, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    :cond_0
    const-string v2, "encryptAction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    iget-boolean v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->encryptAction:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 675
    const/4 v0, 0x0

    .line 676
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    :cond_1
    const-string v2, "isRequest:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    iget-boolean v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isRequest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 679
    const/4 v0, 0x0

    .line 680
    if-nez v0, :cond_2

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    :cond_2
    const-string v2, "pushAction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->pushAction:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_b

    .line 683
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    :goto_1
    const/4 v0, 0x0

    .line 688
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isSetAppid()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 689
    if-nez v0, :cond_3

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    :cond_3
    const-string v2, "appid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->appid:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 692
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    :goto_2
    const/4 v0, 0x0

    .line 698
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isSetPackageName()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 699
    if-nez v0, :cond_5

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    :cond_5
    const-string v2, "packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    if-nez v2, :cond_d

    .line 702
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    :goto_3
    const/4 v0, 0x0

    .line 708
    :cond_6
    if-nez v0, :cond_7

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    :cond_7
    const-string/jumbo v2, "target:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-nez v2, :cond_e

    .line 711
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    :goto_4
    const/4 v0, 0x0

    .line 716
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isSetMetaInfo()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 717
    if-nez v0, :cond_8

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    :cond_8
    const-string v2, "metaInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    if-nez v2, :cond_f

    .line 720
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    :goto_5
    const/4 v0, 0x0

    .line 726
    :cond_9
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 669
    :cond_a
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 685
    :cond_b
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->pushAction:Ljava/nio/ByteBuffer;

    invoke-static {v2, v1}, Lorg/apache/thrift/TBaseHelper;->toString(Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;)V

    goto/16 :goto_1

    .line 694
    :cond_c
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->appid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 704
    :cond_d
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 713
    :cond_e
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 722
    :cond_f
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    .line 732
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    if-nez v0, :cond_0

    .line 733
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'action\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->pushAction:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    .line 738
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'pushAction\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 740
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-nez v0, :cond_2

    .line 741
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'target\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 743
    :cond_2
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
    .line 611
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->validate()V

    .line 613
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeStructBegin(Lorg/apache/thrift/protocol/TStruct;)V

    .line 614
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    if-eqz v0, :cond_0

    .line 615
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->ACTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 616
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/ActionType;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeI32(I)V

    .line 617
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 619
    :cond_0
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->ENCRYPT_ACTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 620
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->encryptAction:Z

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 621
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 622
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->IS_REQUEST_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 623
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isRequest:Z

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 624
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 625
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->pushAction:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 626
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->PUSH_ACTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 627
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->pushAction:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeBinary(Ljava/nio/ByteBuffer;)V

    .line 628
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 630
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->appid:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 631
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isSetAppid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 632
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->APPID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 633
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->appid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 634
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 637
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 638
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isSetPackageName()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 639
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->PACKAGE_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 640
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 644
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-eqz v0, :cond_4

    .line 645
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->TARGET_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 646
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/Target;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 647
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 649
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    if-eqz v0, :cond_5

    .line 650
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isSetMetaInfo()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 651
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->META_INFO_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 652
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 653
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 656
    :cond_5
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 657
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 658
    return-void
.end method
