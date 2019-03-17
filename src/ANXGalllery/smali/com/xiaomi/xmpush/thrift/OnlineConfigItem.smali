.class public Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;
.super Ljava/lang/Object;
.source "OnlineConfigItem.java"

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
        "Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final BOOL_VALUE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final CLEAR_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final INT_VALUE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final KEY_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final LONG_VALUE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final STRING_VALUE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

.field private static final TYPE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public boolValue:Z

.field public clear:Z

.field public intValue:I

.field public key:I

.field public longValue:J

.field public stringValue:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x2

    .line 27
    new-instance v0, Lorg/apache/thrift/protocol/TStruct;

    const-string v1, "OnlineConfigItem"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    .line 29
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KEY_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 30
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v3, v4}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->TYPE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 31
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x3

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->CLEAR_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 32
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->INT_VALUE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xa

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->LONG_VALUE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xb

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->STRING_VALUE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x7

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->BOOL_VALUE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->__isset_bit_vector:Ljava/util/BitSet;

    .line 56
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;)I
    .locals 6
    .param p1, "other"    # Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;

    .prologue
    .line 343
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 344
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

    .line 420
    :cond_0
    :goto_0
    return v0

    .line 347
    :cond_1
    const/4 v0, 0x0

    .line 348
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 350
    .local v1, "typedOther":Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetKey()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetKey()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 351
    if-nez v0, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetKey()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 355
    iget v2, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->key:I

    iget v3, v1, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->key:I

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 356
    if-nez v0, :cond_0

    .line 360
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetType()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetType()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 361
    if-nez v0, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetType()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 365
    iget v2, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->type:I

    iget v3, v1, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->type:I

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 366
    if-nez v0, :cond_0

    .line 370
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetClear()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetClear()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 371
    if-nez v0, :cond_0

    .line 374
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetClear()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 375
    iget-boolean v2, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->clear:Z

    iget-boolean v3, v1, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->clear:Z

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 376
    if-nez v0, :cond_0

    .line 380
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetIntValue()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetIntValue()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 381
    if-nez v0, :cond_0

    .line 384
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetIntValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 385
    iget v2, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->intValue:I

    iget v3, v1, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->intValue:I

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 386
    if-nez v0, :cond_0

    .line 390
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetLongValue()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetLongValue()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 391
    if-nez v0, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetLongValue()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 395
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->longValue:J

    iget-wide v4, v1, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->longValue:J

    invoke-static {v2, v3, v4, v5}, Lorg/apache/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 396
    if-nez v0, :cond_0

    .line 400
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetStringValue()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetStringValue()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 401
    if-nez v0, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetStringValue()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 405
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->stringValue:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->stringValue:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 406
    if-nez v0, :cond_0

    .line 410
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetBoolValue()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetBoolValue()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 411
    if-nez v0, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetBoolValue()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 415
    iget-boolean v2, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->boolValue:Z

    iget-boolean v3, v1, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->boolValue:Z

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 416
    if-nez v0, :cond_0

    .line 420
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 26
    check-cast p1, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->compareTo(Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;)I

    move-result v0

    return v0
.end method

.method public equals(Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;)Z
    .locals 20
    .param p1, "that"    # Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;

    .prologue
    .line 268
    if-nez p1, :cond_0

    .line 269
    const/16 v16, 0x0

    .line 334
    :goto_0
    return v16

    .line 271
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetKey()Z

    move-result v12

    .line 272
    .local v12, "this_present_key":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetKey()Z

    move-result v5

    .line 273
    .local v5, "that_present_key":Z
    if-nez v12, :cond_1

    if-eqz v5, :cond_4

    .line 274
    :cond_1
    if-eqz v12, :cond_2

    if-nez v5, :cond_3

    .line 275
    :cond_2
    const/16 v16, 0x0

    goto :goto_0

    .line 276
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->key:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->key:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_4

    .line 277
    const/16 v16, 0x0

    goto :goto_0

    .line 280
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetType()Z

    move-result v15

    .line 281
    .local v15, "this_present_type":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetType()Z

    move-result v8

    .line 282
    .local v8, "that_present_type":Z
    if-nez v15, :cond_5

    if-eqz v8, :cond_8

    .line 283
    :cond_5
    if-eqz v15, :cond_6

    if-nez v8, :cond_7

    .line 284
    :cond_6
    const/16 v16, 0x0

    goto :goto_0

    .line 285
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->type:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->type:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_8

    .line 286
    const/16 v16, 0x0

    goto :goto_0

    .line 289
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetClear()Z

    move-result v10

    .line 290
    .local v10, "this_present_clear":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetClear()Z

    move-result v3

    .line 291
    .local v3, "that_present_clear":Z
    if-nez v10, :cond_9

    if-eqz v3, :cond_c

    .line 292
    :cond_9
    if-eqz v10, :cond_a

    if-nez v3, :cond_b

    .line 293
    :cond_a
    const/16 v16, 0x0

    goto :goto_0

    .line 294
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->clear:Z

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->clear:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_c

    .line 295
    const/16 v16, 0x0

    goto :goto_0

    .line 298
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetIntValue()Z

    move-result v11

    .line 299
    .local v11, "this_present_intValue":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetIntValue()Z

    move-result v4

    .line 300
    .local v4, "that_present_intValue":Z
    if-nez v11, :cond_d

    if-eqz v4, :cond_10

    .line 301
    :cond_d
    if-eqz v11, :cond_e

    if-nez v4, :cond_f

    .line 302
    :cond_e
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 303
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->intValue:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->intValue:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_10

    .line 304
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 307
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetLongValue()Z

    move-result v13

    .line 308
    .local v13, "this_present_longValue":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetLongValue()Z

    move-result v6

    .line 309
    .local v6, "that_present_longValue":Z
    if-nez v13, :cond_11

    if-eqz v6, :cond_14

    .line 310
    :cond_11
    if-eqz v13, :cond_12

    if-nez v6, :cond_13

    .line 311
    :cond_12
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 312
    :cond_13
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->longValue:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->longValue:J

    move-wide/from16 v18, v0

    cmp-long v16, v16, v18

    if-eqz v16, :cond_14

    .line 313
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 316
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetStringValue()Z

    move-result v14

    .line 317
    .local v14, "this_present_stringValue":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetStringValue()Z

    move-result v7

    .line 318
    .local v7, "that_present_stringValue":Z
    if-nez v14, :cond_15

    if-eqz v7, :cond_18

    .line 319
    :cond_15
    if-eqz v14, :cond_16

    if-nez v7, :cond_17

    .line 320
    :cond_16
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 321
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->stringValue:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->stringValue:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_18

    .line 322
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 325
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetBoolValue()Z

    move-result v9

    .line 326
    .local v9, "this_present_boolValue":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetBoolValue()Z

    move-result v2

    .line 327
    .local v2, "that_present_boolValue":Z
    if-nez v9, :cond_19

    if-eqz v2, :cond_1c

    .line 328
    :cond_19
    if-eqz v9, :cond_1a

    if-nez v2, :cond_1b

    .line 329
    :cond_1a
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 330
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->boolValue:Z

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->boolValue:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1c

    .line 331
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 334
    :cond_1c
    const/16 v16, 0x1

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 260
    if-nez p1, :cond_1

    .line 264
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 262
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;

    if-eqz v1, :cond_0

    .line 263
    check-cast p1, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->equals(Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public getIntValue()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->intValue:I

    return v0
.end method

.method public getKey()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->key:I

    return v0
.end method

.method public getLongValue()J
    .locals 2

    .prologue
    .line 189
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->longValue:J

    return-wide v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->stringValue:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method public isBoolValue()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->boolValue:Z

    return v0
.end method

.method public isSetBoolValue()Z
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetClear()Z
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetIntValue()Z
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetKey()Z
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetLongValue()Z
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetStringValue()Z
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->stringValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetType()Z
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->__isset_bit_vector:Ljava/util/BitSet;

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
    const/4 v6, 0x2

    const/16 v5, 0x8

    const/4 v4, 0x1

    .line 425
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructBegin()Lorg/apache/thrift/protocol/TStruct;

    .line 428
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldBegin()Lorg/apache/thrift/protocol/TField;

    move-result-object v0

    .line 429
    .local v0, "field":Lorg/apache/thrift/protocol/TField;
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 493
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructEnd()V

    .line 496
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->validate()V

    .line 497
    return-void

    .line 432
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 489
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    .line 491
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 434
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v5, :cond_1

    .line 435
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->key:I

    .line 436
    invoke-virtual {p0, v4}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->setKeyIsSet(Z)V

    goto :goto_1

    .line 438
    :cond_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 442
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v5, :cond_2

    .line 443
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->type:I

    .line 444
    invoke-virtual {p0, v4}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->setTypeIsSet(Z)V

    goto :goto_1

    .line 446
    :cond_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 450
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v6, :cond_3

    .line 451
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->clear:Z

    .line 452
    invoke-virtual {p0, v4}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->setClearIsSet(Z)V

    goto :goto_1

    .line 454
    :cond_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 458
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v5, :cond_4

    .line 459
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->intValue:I

    .line 460
    invoke-virtual {p0, v4}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->setIntValueIsSet(Z)V

    goto :goto_1

    .line 462
    :cond_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 466
    :pswitch_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_5

    .line 467
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->longValue:J

    .line 468
    invoke-virtual {p0, v4}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->setLongValueIsSet(Z)V

    goto :goto_1

    .line 470
    :cond_5
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 474
    :pswitch_5
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_6

    .line 475
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->stringValue:Ljava/lang/String;

    goto :goto_1

    .line 477
    :cond_6
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 481
    :pswitch_6
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v6, :cond_7

    .line 482
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->boolValue:Z

    .line 483
    invoke-virtual {p0, v4}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->setBoolValueIsSet(Z)V

    goto/16 :goto_1

    .line 485
    :cond_7
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 432
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
    .end packed-switch
.end method

.method public setBoolValueIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 255
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 256
    return-void
.end method

.method public setClearIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 162
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 163
    return-void
.end method

.method public setIntValueIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 185
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 186
    return-void
.end method

.method public setKeyIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 116
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 117
    return-void
.end method

.method public setLongValueIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 208
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 209
    return-void
.end method

.method public setTypeIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 139
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 140
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 546
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnlineConfigItem("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 547
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 549
    .local v0, "first":Z
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetKey()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 550
    const-string v2, "key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    iget v2, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->key:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 552
    const/4 v0, 0x0

    .line 554
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetType()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 555
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    :cond_1
    const-string/jumbo v2, "type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    iget v2, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 558
    const/4 v0, 0x0

    .line 560
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetClear()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 561
    if-nez v0, :cond_3

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    :cond_3
    const-string v2, "clear:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    iget-boolean v2, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->clear:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 564
    const/4 v0, 0x0

    .line 566
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetIntValue()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 567
    if-nez v0, :cond_5

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    :cond_5
    const-string v2, "intValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    iget v2, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->intValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 570
    const/4 v0, 0x0

    .line 572
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetLongValue()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 573
    if-nez v0, :cond_7

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    :cond_7
    const-string v2, "longValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->longValue:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 576
    const/4 v0, 0x0

    .line 578
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetStringValue()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 579
    if-nez v0, :cond_9

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    :cond_9
    const-string/jumbo v2, "stringValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->stringValue:Ljava/lang/String;

    if-nez v2, :cond_d

    .line 582
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    :goto_0
    const/4 v0, 0x0

    .line 588
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetBoolValue()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 589
    if-nez v0, :cond_b

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    :cond_b
    const-string v2, "boolValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    iget-boolean v2, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->boolValue:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 592
    const/4 v0, 0x0

    .line 594
    :cond_c
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 584
    :cond_d
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->stringValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 600
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
    .line 500
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->validate()V

    .line 502
    sget-object v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeStructBegin(Lorg/apache/thrift/protocol/TStruct;)V

    .line 503
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    sget-object v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->KEY_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 505
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->key:I

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeI32(I)V

    .line 506
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 508
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    sget-object v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->TYPE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 510
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->type:I

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeI32(I)V

    .line 511
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 513
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetClear()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 514
    sget-object v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->CLEAR_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 515
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->clear:Z

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 516
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 518
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetIntValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 519
    sget-object v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->INT_VALUE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 520
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->intValue:I

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeI32(I)V

    .line 521
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 523
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetLongValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 524
    sget-object v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->LONG_VALUE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 525
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->longValue:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeI64(J)V

    .line 526
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 528
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->stringValue:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 529
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetStringValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 530
    sget-object v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->STRING_VALUE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 531
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->stringValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 532
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 535
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->isSetBoolValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 536
    sget-object v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->BOOL_VALUE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 537
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->boolValue:Z

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 538
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 540
    :cond_6
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 541
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 542
    return-void
.end method
