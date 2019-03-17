.class public Lcom/xiaomi/xmpush/thrift/Target;
.super Ljava/lang/Object;
.source "Target.java"

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
        "Lcom/xiaomi/xmpush/thrift/Target;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final CHANNEL_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final IS_PREVIEW_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final RESOURCE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final SERVER_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

.field private static final TOKEN_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final USER_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public channelId:J

.field public isPreview:Z

.field public resource:Ljava/lang/String;

.field public server:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/16 v4, 0xb

    .line 32
    new-instance v0, Lorg/apache/thrift/protocol/TStruct;

    const-string v1, "Target"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/Target;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/Target;->CHANNEL_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v4, v5}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/Target;->USER_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 36
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x3

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/Target;->SERVER_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 37
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x4

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/Target;->RESOURCE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 38
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x5

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/Target;->IS_PREVIEW_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 39
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x7

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/Target;->TOKEN_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->__isset_bit_vector:Ljava/util/BitSet;

    .line 55
    const-wide/16 v0, 0x5

    iput-wide v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->channelId:J

    .line 57
    const-string/jumbo v0, "xiaomi.com"

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->server:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->resource:Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->isPreview:Z

    .line 63
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/xiaomi/xmpush/thrift/Target;)I
    .locals 6
    .param p1, "other"    # Lcom/xiaomi/xmpush/thrift/Target;

    .prologue
    .line 333
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 334
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

    .line 400
    :cond_0
    :goto_0
    return v0

    .line 337
    :cond_1
    const/4 v0, 0x0

    .line 338
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 340
    .local v1, "typedOther":Lcom/xiaomi/xmpush/thrift/Target;
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->isSetChannelId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/Target;->isSetChannelId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 341
    if-nez v0, :cond_0

    .line 344
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->isSetChannelId()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 345
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/Target;->channelId:J

    iget-wide v4, v1, Lcom/xiaomi/xmpush/thrift/Target;->channelId:J

    invoke-static {v2, v3, v4, v5}, Lorg/apache/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 346
    if-nez v0, :cond_0

    .line 350
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->isSetUserId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/Target;->isSetUserId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 351
    if-nez v0, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->isSetUserId()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 355
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/Target;->userId:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/Target;->userId:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 356
    if-nez v0, :cond_0

    .line 360
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->isSetServer()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/Target;->isSetServer()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 361
    if-nez v0, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->isSetServer()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 365
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/Target;->server:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/Target;->server:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 366
    if-nez v0, :cond_0

    .line 370
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->isSetResource()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/Target;->isSetResource()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 371
    if-nez v0, :cond_0

    .line 374
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->isSetResource()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 375
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/Target;->resource:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/Target;->resource:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 376
    if-nez v0, :cond_0

    .line 380
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->isSetIsPreview()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/Target;->isSetIsPreview()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 381
    if-nez v0, :cond_0

    .line 384
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->isSetIsPreview()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 385
    iget-boolean v2, p0, Lcom/xiaomi/xmpush/thrift/Target;->isPreview:Z

    iget-boolean v3, v1, Lcom/xiaomi/xmpush/thrift/Target;->isPreview:Z

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 386
    if-nez v0, :cond_0

    .line 390
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->isSetToken()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/Target;->isSetToken()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 391
    if-nez v0, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->isSetToken()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 395
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/Target;->token:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/Target;->token:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 396
    if-nez v0, :cond_0

    .line 400
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 31
    check-cast p1, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/Target;->compareTo(Lcom/xiaomi/xmpush/thrift/Target;)I

    move-result v0

    return v0
.end method

.method public equals(Lcom/xiaomi/xmpush/thrift/Target;)Z
    .locals 18
    .param p1, "that"    # Lcom/xiaomi/xmpush/thrift/Target;

    .prologue
    .line 267
    if-nez p1, :cond_0

    .line 268
    const/4 v14, 0x0

    .line 324
    :goto_0
    return v14

    .line 270
    :cond_0
    const/4 v8, 0x1

    .line 271
    .local v8, "this_present_channelId":Z
    const/4 v2, 0x1

    .line 272
    .local v2, "that_present_channelId":Z
    if-nez v8, :cond_1

    if-eqz v2, :cond_4

    .line 273
    :cond_1
    if-eqz v8, :cond_2

    if-nez v2, :cond_3

    .line 274
    :cond_2
    const/4 v14, 0x0

    goto :goto_0

    .line 275
    :cond_3
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/xiaomi/xmpush/thrift/Target;->channelId:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/Target;->channelId:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_4

    .line 276
    const/4 v14, 0x0

    goto :goto_0

    .line 279
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/Target;->isSetUserId()Z

    move-result v13

    .line 280
    .local v13, "this_present_userId":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/Target;->isSetUserId()Z

    move-result v7

    .line 281
    .local v7, "that_present_userId":Z
    if-nez v13, :cond_5

    if-eqz v7, :cond_8

    .line 282
    :cond_5
    if-eqz v13, :cond_6

    if-nez v7, :cond_7

    .line 283
    :cond_6
    const/4 v14, 0x0

    goto :goto_0

    .line 284
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/xiaomi/xmpush/thrift/Target;->userId:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/xiaomi/xmpush/thrift/Target;->userId:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 285
    const/4 v14, 0x0

    goto :goto_0

    .line 288
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/Target;->isSetServer()Z

    move-result v11

    .line 289
    .local v11, "this_present_server":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/Target;->isSetServer()Z

    move-result v5

    .line 290
    .local v5, "that_present_server":Z
    if-nez v11, :cond_9

    if-eqz v5, :cond_c

    .line 291
    :cond_9
    if-eqz v11, :cond_a

    if-nez v5, :cond_b

    .line 292
    :cond_a
    const/4 v14, 0x0

    goto :goto_0

    .line 293
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/xiaomi/xmpush/thrift/Target;->server:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/xiaomi/xmpush/thrift/Target;->server:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_c

    .line 294
    const/4 v14, 0x0

    goto :goto_0

    .line 297
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/Target;->isSetResource()Z

    move-result v10

    .line 298
    .local v10, "this_present_resource":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/Target;->isSetResource()Z

    move-result v4

    .line 299
    .local v4, "that_present_resource":Z
    if-nez v10, :cond_d

    if-eqz v4, :cond_10

    .line 300
    :cond_d
    if-eqz v10, :cond_e

    if-nez v4, :cond_f

    .line 301
    :cond_e
    const/4 v14, 0x0

    goto :goto_0

    .line 302
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/xiaomi/xmpush/thrift/Target;->resource:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/xiaomi/xmpush/thrift/Target;->resource:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_10

    .line 303
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 306
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/Target;->isSetIsPreview()Z

    move-result v9

    .line 307
    .local v9, "this_present_isPreview":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/Target;->isSetIsPreview()Z

    move-result v3

    .line 308
    .local v3, "that_present_isPreview":Z
    if-nez v9, :cond_11

    if-eqz v3, :cond_14

    .line 309
    :cond_11
    if-eqz v9, :cond_12

    if-nez v3, :cond_13

    .line 310
    :cond_12
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 311
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/xiaomi/xmpush/thrift/Target;->isPreview:Z

    move-object/from16 v0, p1

    iget-boolean v15, v0, Lcom/xiaomi/xmpush/thrift/Target;->isPreview:Z

    if-eq v14, v15, :cond_14

    .line 312
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 315
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/Target;->isSetToken()Z

    move-result v12

    .line 316
    .local v12, "this_present_token":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/Target;->isSetToken()Z

    move-result v6

    .line 317
    .local v6, "that_present_token":Z
    if-nez v12, :cond_15

    if-eqz v6, :cond_18

    .line 318
    :cond_15
    if-eqz v12, :cond_16

    if-nez v6, :cond_17

    .line 319
    :cond_16
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 320
    :cond_17
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/xiaomi/xmpush/thrift/Target;->token:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/xiaomi/xmpush/thrift/Target;->token:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_18

    .line 321
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 324
    :cond_18
    const/4 v14, 0x1

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 259
    if-nez p1, :cond_1

    .line 263
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 261
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/Target;

    if-eqz v1, :cond_0

    .line 262
    check-cast p1, Lcom/xiaomi/xmpush/thrift/Target;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/Target;->equals(Lcom/xiaomi/xmpush/thrift/Target;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x0

    return v0
.end method

.method public isSetChannelId()Z
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetIsPreview()Z
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetResource()Z
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->resource:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetServer()Z
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->server:Ljava/lang/String;

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
    .line 248
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->token:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetUserId()Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->userId:Ljava/lang/String;

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

    .line 405
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructBegin()Lorg/apache/thrift/protocol/TStruct;

    .line 408
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldBegin()Lorg/apache/thrift/protocol/TField;

    move-result-object v0

    .line 409
    .local v0, "field":Lorg/apache/thrift/protocol/TField;
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 462
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructEnd()V

    .line 465
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->isSetChannelId()Z

    move-result v1

    if-nez v1, :cond_7

    .line 466
    new-instance v1, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Required field \'channelId\' was not found in serialized data! Struct: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 412
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 458
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    .line 460
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 414
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 415
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/xmpush/thrift/Target;->channelId:J

    .line 416
    invoke-virtual {p0, v5}, Lcom/xiaomi/xmpush/thrift/Target;->setChannelIdIsSet(Z)V

    goto :goto_1

    .line 418
    :cond_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 422
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_2

    .line 423
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/Target;->userId:Ljava/lang/String;

    goto :goto_1

    .line 425
    :cond_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 429
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_3

    .line 430
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/Target;->server:Ljava/lang/String;

    goto :goto_1

    .line 432
    :cond_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 436
    :pswitch_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_4

    .line 437
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/Target;->resource:Ljava/lang/String;

    goto :goto_1

    .line 439
    :cond_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 443
    :pswitch_5
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 444
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaomi/xmpush/thrift/Target;->isPreview:Z

    .line 445
    invoke-virtual {p0, v5}, Lcom/xiaomi/xmpush/thrift/Target;->setIsPreviewIsSet(Z)V

    goto :goto_1

    .line 447
    :cond_5
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 451
    :pswitch_6
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_6

    .line 452
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/Target;->token:Ljava/lang/String;

    goto :goto_1

    .line 454
    :cond_6
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 468
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->validate()V

    .line 469
    return-void

    .line 412
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
    .end packed-switch
.end method

.method public setChannelIdIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 135
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 136
    return-void
.end method

.method public setIsPreviewIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 230
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 231
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 515
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Target("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 516
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 518
    .local v0, "first":Z
    const-string v2, "channelId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/Target;->channelId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 520
    const/4 v0, 0x0

    .line 521
    if-nez v0, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    :cond_0
    const-string/jumbo v2, "userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/Target;->userId:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 524
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    :goto_0
    const/4 v0, 0x0

    .line 529
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->isSetServer()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 530
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    :cond_1
    const-string v2, "server:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/Target;->server:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 533
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    :goto_1
    const/4 v0, 0x0

    .line 539
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->isSetResource()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 540
    if-nez v0, :cond_3

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    :cond_3
    const-string v2, "resource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/Target;->resource:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 543
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    :goto_2
    const/4 v0, 0x0

    .line 549
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->isSetIsPreview()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 550
    if-nez v0, :cond_5

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    :cond_5
    const-string v2, "isPreview:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    iget-boolean v2, p0, Lcom/xiaomi/xmpush/thrift/Target;->isPreview:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 553
    const/4 v0, 0x0

    .line 555
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->isSetToken()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 556
    if-nez v0, :cond_7

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    :cond_7
    const-string/jumbo v2, "token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/Target;->token:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 559
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    :goto_3
    const/4 v0, 0x0

    .line 565
    :cond_8
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 526
    :cond_9
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/Target;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 535
    :cond_a
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/Target;->server:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 545
    :cond_b
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/Target;->resource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 561
    :cond_c
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/Target;->token:Ljava/lang/String;

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
    .line 572
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->userId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 573
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'userId\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 575
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
    .line 472
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->validate()V

    .line 474
    sget-object v0, Lcom/xiaomi/xmpush/thrift/Target;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeStructBegin(Lorg/apache/thrift/protocol/TStruct;)V

    .line 475
    sget-object v0, Lcom/xiaomi/xmpush/thrift/Target;->CHANNEL_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 476
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->channelId:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeI64(J)V

    .line 477
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 478
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->userId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 479
    sget-object v0, Lcom/xiaomi/xmpush/thrift/Target;->USER_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 480
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->server:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 484
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->isSetServer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    sget-object v0, Lcom/xiaomi/xmpush/thrift/Target;->SERVER_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 486
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->server:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 487
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->resource:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 491
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->isSetResource()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 492
    sget-object v0, Lcom/xiaomi/xmpush/thrift/Target;->RESOURCE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 493
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->resource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 497
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->isSetIsPreview()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 498
    sget-object v0, Lcom/xiaomi/xmpush/thrift/Target;->IS_PREVIEW_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 499
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->isPreview:Z

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 500
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 502
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->token:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 503
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Target;->isSetToken()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 504
    sget-object v0, Lcom/xiaomi/xmpush/thrift/Target;->TOKEN_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 505
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Target;->token:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 509
    :cond_4
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 510
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 511
    return-void
.end method
