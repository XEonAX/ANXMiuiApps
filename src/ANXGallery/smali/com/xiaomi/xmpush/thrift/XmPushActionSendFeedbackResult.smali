.class public Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;
.super Ljava/lang/Object;
.source "XmPushActionSendFeedbackResult.java"

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
        "Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;",
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

.field private static final REASON_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

.field private static final TARGET_FIELD_DESC:Lorg/apache/thrift/protocol/TField;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public appId:Ljava/lang/String;

.field public category:Ljava/lang/String;

.field public debug:Ljava/lang/String;

.field public errorCode:J

.field public id:Ljava/lang/String;

.field public reason:Ljava/lang/String;

.field public target:Lcom/xiaomi/xmpush/thrift/Target;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xb

    .line 30
    new-instance v0, Lorg/apache/thrift/protocol/TStruct;

    const-string v1, "XmPushActionSendFeedbackResult"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    .line 32
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->DEBUG_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xc

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->TARGET_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x3

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x4

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->APP_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 36
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xa

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->ERROR_CODE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 37
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x7

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->REASON_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 38
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x8

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->CATEGORY_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->__isset_bit_vector:Ljava/util/BitSet;

    .line 54
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;)I
    .locals 6
    .param p1, "other"    # Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;

    .prologue
    .line 363
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 364
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

    .line 440
    :cond_0
    :goto_0
    return v0

    .line 367
    :cond_1
    const/4 v0, 0x0

    .line 368
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 370
    .local v1, "typedOther":Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->isSetDebug()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->isSetDebug()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 371
    if-nez v0, :cond_0

    .line 374
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->isSetDebug()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 375
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->debug:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->debug:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 376
    if-nez v0, :cond_0

    .line 380
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->isSetTarget()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->isSetTarget()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 381
    if-nez v0, :cond_0

    .line 384
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->isSetTarget()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 385
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 386
    if-nez v0, :cond_0

    .line 390
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->isSetId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->isSetId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 391
    if-nez v0, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->isSetId()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 395
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->id:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 396
    if-nez v0, :cond_0

    .line 400
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->isSetAppId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->isSetAppId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 401
    if-nez v0, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->isSetAppId()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 405
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->appId:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->appId:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 406
    if-nez v0, :cond_0

    .line 410
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->isSetErrorCode()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->isSetErrorCode()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 411
    if-nez v0, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->isSetErrorCode()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 415
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->errorCode:J

    iget-wide v4, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->errorCode:J

    invoke-static {v2, v3, v4, v5}, Lorg/apache/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 416
    if-nez v0, :cond_0

    .line 420
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->isSetReason()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->isSetReason()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 421
    if-nez v0, :cond_0

    .line 424
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->isSetReason()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 425
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->reason:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->reason:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 426
    if-nez v0, :cond_0

    .line 430
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->isSetCategory()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->isSetCategory()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 431
    if-nez v0, :cond_0

    .line 434
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->isSetCategory()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 435
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->category:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->category:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 436
    if-nez v0, :cond_0

    .line 440
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 29
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->compareTo(Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;)I

    move-result v0

    return v0
.end method

.method public equals(Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;)Z
    .locals 20
    .param p1, "that"    # Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;

    .prologue
    .line 288
    if-nez p1, :cond_0

    .line 289
    const/16 v16, 0x0

    .line 354
    :goto_0
    return v16

    .line 291
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->isSetDebug()Z

    move-result v11

    .line 292
    .local v11, "this_present_debug":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->isSetDebug()Z

    move-result v4

    .line 293
    .local v4, "that_present_debug":Z
    if-nez v11, :cond_1

    if-eqz v4, :cond_4

    .line 294
    :cond_1
    if-eqz v11, :cond_2

    if-nez v4, :cond_3

    .line 295
    :cond_2
    const/16 v16, 0x0

    goto :goto_0

    .line 296
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->debug:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->debug:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 297
    const/16 v16, 0x0

    goto :goto_0

    .line 300
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->isSetTarget()Z

    move-result v15

    .line 301
    .local v15, "this_present_target":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->isSetTarget()Z

    move-result v8

    .line 302
    .local v8, "that_present_target":Z
    if-nez v15, :cond_5

    if-eqz v8, :cond_8

    .line 303
    :cond_5
    if-eqz v15, :cond_6

    if-nez v8, :cond_7

    .line 304
    :cond_6
    const/16 v16, 0x0

    goto :goto_0

    .line 305
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/xiaomi/xmpush/thrift/Target;->equals(Lcom/xiaomi/xmpush/thrift/Target;)Z

    move-result v16

    if-nez v16, :cond_8

    .line 306
    const/16 v16, 0x0

    goto :goto_0

    .line 309
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->isSetId()Z

    move-result v13

    .line 310
    .local v13, "this_present_id":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->isSetId()Z

    move-result v6

    .line 311
    .local v6, "that_present_id":Z
    if-nez v13, :cond_9

    if-eqz v6, :cond_c

    .line 312
    :cond_9
    if-eqz v13, :cond_a

    if-nez v6, :cond_b

    .line 313
    :cond_a
    const/16 v16, 0x0

    goto :goto_0

    .line 314
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->id:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->id:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_c

    .line 315
    const/16 v16, 0x0

    goto :goto_0

    .line 318
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->isSetAppId()Z

    move-result v9

    .line 319
    .local v9, "this_present_appId":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->isSetAppId()Z

    move-result v2

    .line 320
    .local v2, "that_present_appId":Z
    if-nez v9, :cond_d

    if-eqz v2, :cond_10

    .line 321
    :cond_d
    if-eqz v9, :cond_e

    if-nez v2, :cond_f

    .line 322
    :cond_e
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 323
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->appId:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->appId:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_10

    .line 324
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 327
    :cond_10
    const/4 v12, 0x1

    .line 328
    .local v12, "this_present_errorCode":Z
    const/4 v5, 0x1

    .line 329
    .local v5, "that_present_errorCode":Z
    if-nez v12, :cond_11

    if-eqz v5, :cond_14

    .line 330
    :cond_11
    if-eqz v12, :cond_12

    if-nez v5, :cond_13

    .line 331
    :cond_12
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 332
    :cond_13
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->errorCode:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->errorCode:J

    move-wide/from16 v18, v0

    cmp-long v16, v16, v18

    if-eqz v16, :cond_14

    .line 333
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 336
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->isSetReason()Z

    move-result v14

    .line 337
    .local v14, "this_present_reason":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->isSetReason()Z

    move-result v7

    .line 338
    .local v7, "that_present_reason":Z
    if-nez v14, :cond_15

    if-eqz v7, :cond_18

    .line 339
    :cond_15
    if-eqz v14, :cond_16

    if-nez v7, :cond_17

    .line 340
    :cond_16
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 341
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->reason:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->reason:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_18

    .line 342
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 345
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->isSetCategory()Z

    move-result v10

    .line 346
    .local v10, "this_present_category":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->isSetCategory()Z

    move-result v3

    .line 347
    .local v3, "that_present_category":Z
    if-nez v10, :cond_19

    if-eqz v3, :cond_1c

    .line 348
    :cond_19
    if-eqz v10, :cond_1a

    if-nez v3, :cond_1b

    .line 349
    :cond_1a
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 350
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->category:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->category:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1c

    .line 351
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 354
    :cond_1c
    const/16 v16, 0x1

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 280
    if-nez p1, :cond_1

    .line 284
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 282
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;

    if-eqz v1, :cond_0

    .line 283
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->equals(Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 359
    const/4 v0, 0x0

    return v0
.end method

.method public isSetAppId()Z
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->appId:Ljava/lang/String;

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
    .line 269
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->category:Ljava/lang/String;

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
    .line 126
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->debug:Ljava/lang/String;

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
    .line 223
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetId()Z
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->id:Ljava/lang/String;

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
    .line 245
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->reason:Ljava/lang/String;

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
    .line 150
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

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

    .line 445
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructBegin()Lorg/apache/thrift/protocol/TStruct;

    .line 448
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldBegin()Lorg/apache/thrift/protocol/TField;

    move-result-object v0

    .line 449
    .local v0, "field":Lorg/apache/thrift/protocol/TField;
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 509
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructEnd()V

    .line 512
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->isSetErrorCode()Z

    move-result v1

    if-nez v1, :cond_8

    .line 513
    new-instance v1, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Required field \'errorCode\' was not found in serialized data! Struct: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 452
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 505
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    .line 507
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 454
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_1

    .line 455
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->debug:Ljava/lang/String;

    goto :goto_1

    .line 457
    :cond_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 461
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 462
    new-instance v1, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/Target;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    .line 463
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v1, p1}, Lcom/xiaomi/xmpush/thrift/Target;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 465
    :cond_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 469
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_3

    .line 470
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->id:Ljava/lang/String;

    goto :goto_1

    .line 472
    :cond_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 476
    :pswitch_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_4

    .line 477
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->appId:Ljava/lang/String;

    goto :goto_1

    .line 479
    :cond_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 483
    :pswitch_5
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_5

    .line 484
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->errorCode:J

    .line 485
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->setErrorCodeIsSet(Z)V

    goto :goto_1

    .line 487
    :cond_5
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 491
    :pswitch_6
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_6

    .line 492
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->reason:Ljava/lang/String;

    goto :goto_1

    .line 494
    :cond_6
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 498
    :pswitch_7
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_7

    .line 499
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->category:Ljava/lang/String;

    goto/16 :goto_1

    .line 501
    :cond_7
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 515
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->validate()V

    .line 516
    return-void

    .line 452
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
    .end packed-switch
.end method

.method public setErrorCodeIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 227
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 228
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 569
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "XmPushActionSendFeedbackResult("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 570
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 572
    .local v0, "first":Z
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->isSetDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 573
    const-string v2, "debug:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->debug:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 575
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    :goto_0
    const/4 v0, 0x0

    .line 581
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->isSetTarget()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 582
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    :cond_1
    const-string/jumbo v2, "target:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-nez v2, :cond_b

    .line 585
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    :goto_1
    const/4 v0, 0x0

    .line 591
    :cond_2
    if-nez v0, :cond_3

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    :cond_3
    const-string v2, "id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->id:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 594
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    :goto_2
    const/4 v0, 0x0

    .line 599
    if-nez v0, :cond_4

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    :cond_4
    const-string v2, "appId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->appId:Ljava/lang/String;

    if-nez v2, :cond_d

    .line 602
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    :goto_3
    const/4 v0, 0x0

    .line 607
    if-nez v0, :cond_5

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    :cond_5
    const-string v2, "errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->errorCode:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 610
    const/4 v0, 0x0

    .line 611
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->isSetReason()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 612
    if-nez v0, :cond_6

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    :cond_6
    const-string v2, "reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->reason:Ljava/lang/String;

    if-nez v2, :cond_e

    .line 615
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    :goto_4
    const/4 v0, 0x0

    .line 621
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->isSetCategory()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 622
    if-nez v0, :cond_8

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    :cond_8
    const-string v2, "category:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->category:Ljava/lang/String;

    if-nez v2, :cond_f

    .line 625
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    :goto_5
    const/4 v0, 0x0

    .line 631
    :cond_9
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 577
    :cond_a
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->debug:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 587
    :cond_b
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 596
    :cond_c
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 604
    :cond_d
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 617
    :cond_e
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->reason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 627
    :cond_f
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->category:Ljava/lang/String;

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
    .line 637
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 638
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->appId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 641
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'appId\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 644
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
    .line 519
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->validate()V

    .line 521
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeStructBegin(Lorg/apache/thrift/protocol/TStruct;)V

    .line 522
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->debug:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 523
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->isSetDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->DEBUG_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 525
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->debug:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-eqz v0, :cond_1

    .line 530
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->isSetTarget()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 531
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->TARGET_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 532
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/Target;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 533
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 536
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->id:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 537
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 538
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 539
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 541
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->appId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 542
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->APP_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 543
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 546
    :cond_3
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->ERROR_CODE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 547
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->errorCode:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeI64(J)V

    .line 548
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 549
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->reason:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 550
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->isSetReason()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 551
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->REASON_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 552
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->reason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 556
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->category:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 557
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->isSetCategory()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 558
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->CATEGORY_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 559
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 563
    :cond_5
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 564
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 565
    return-void
.end method
