.class public Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;
.super Ljava/lang/Object;
.source "XmPushActionCommand.java"

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
        "Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final APP_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final CATEGORY_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final CMD_ARGS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final CMD_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final CREATED_TS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final PACKAGE_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final RESPONSE2_CLIENT_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

.field private static final TARGET_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final UPDATE_CACHE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public appId:Ljava/lang/String;

.field public category:Ljava/lang/String;

.field public cmdArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public cmdName:Ljava/lang/String;

.field public createdTs:J

.field public id:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public response2Client:Z

.field public target:Lcom/xiaomi/xmpush/thrift/Target;

.field public updateCache:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xc

    const/16 v6, 0xa

    const/4 v5, 0x2

    const/16 v4, 0xb

    .line 30
    new-instance v0, Lorg/apache/thrift/protocol/TStruct;

    const-string v1, "XmPushActionCommand"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    .line 32
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v7, v5}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->TARGET_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x3

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x4

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->APP_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x5

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->CMD_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 36
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xf

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->CMD_ARGS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 37
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x7

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->PACKAGE_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 38
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x9

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->CATEGORY_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 39
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v5, v6}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->UPDATE_CACHE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 40
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v5, v4}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->RESPONSE2_CLIENT_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 41
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v6, v7}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->CREATED_TS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->__isset_bit_vector:Ljava/util/BitSet;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->updateCache:Z

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->response2Client:Z

    .line 66
    return-void
.end method


# virtual methods
.method public addToCmdArgs(Ljava/lang/String;)V
    .locals 1
    .param p1, "elem"    # Ljava/lang/String;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->cmdArgs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->cmdArgs:Ljava/util/List;

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->cmdArgs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    return-void
.end method

.method public compareTo(Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;)I
    .locals 6
    .param p1, "other"    # Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;

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
    .local v1, "typedOther":Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetTarget()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetTarget()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 508
    if-nez v0, :cond_0

    .line 511
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetTarget()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 512
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->target:Lcom/xiaomi/xmpush/thrift/Target;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 513
    if-nez v0, :cond_0

    .line 517
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 518
    if-nez v0, :cond_0

    .line 521
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetId()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 522
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->id:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 523
    if-nez v0, :cond_0

    .line 527
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetAppId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetAppId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 528
    if-nez v0, :cond_0

    .line 531
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetAppId()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 532
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->appId:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->appId:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 533
    if-nez v0, :cond_0

    .line 537
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetCmdName()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetCmdName()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 538
    if-nez v0, :cond_0

    .line 541
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetCmdName()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 542
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->cmdName:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->cmdName:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 543
    if-nez v0, :cond_0

    .line 547
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetCmdArgs()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetCmdArgs()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 548
    if-nez v0, :cond_0

    .line 551
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetCmdArgs()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 552
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->cmdArgs:Ljava/util/List;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->cmdArgs:Ljava/util/List;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 553
    if-nez v0, :cond_0

    .line 557
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetPackageName()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetPackageName()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 558
    if-nez v0, :cond_0

    .line 561
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetPackageName()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 562
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->packageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 563
    if-nez v0, :cond_0

    .line 567
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetCategory()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetCategory()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 568
    if-nez v0, :cond_0

    .line 571
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetCategory()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 572
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->category:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->category:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 573
    if-nez v0, :cond_0

    .line 577
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetUpdateCache()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetUpdateCache()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 578
    if-nez v0, :cond_0

    .line 581
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetUpdateCache()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 582
    iget-boolean v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->updateCache:Z

    iget-boolean v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->updateCache:Z

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 583
    if-nez v0, :cond_0

    .line 587
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetResponse2Client()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetResponse2Client()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 588
    if-nez v0, :cond_0

    .line 591
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetResponse2Client()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 592
    iget-boolean v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->response2Client:Z

    iget-boolean v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->response2Client:Z

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 593
    if-nez v0, :cond_0

    .line 597
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetCreatedTs()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetCreatedTs()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 598
    if-nez v0, :cond_0

    .line 601
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetCreatedTs()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 602
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->createdTs:J

    iget-wide v4, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->createdTs:J

    invoke-static {v2, v3, v4, v5}, Lorg/apache/thrift/TBaseHelper;->compareTo(JJ)I

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
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->compareTo(Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;)I

    move-result v0

    return v0
.end method

.method public equals(Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;)Z
    .locals 26
    .param p1, "that"    # Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;

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
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetTarget()Z

    move-result v20

    .line 402
    .local v20, "this_present_target":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetTarget()Z

    move-result v10

    .line 403
    .local v10, "that_present_target":Z
    if-nez v20, :cond_1

    if-eqz v10, :cond_4

    .line 404
    :cond_1
    if-eqz v20, :cond_2

    if-nez v10, :cond_3

    .line 405
    :cond_2
    const/16 v22, 0x0

    goto :goto_0

    .line 406
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->target:Lcom/xiaomi/xmpush/thrift/Target;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->target:Lcom/xiaomi/xmpush/thrift/Target;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/xiaomi/xmpush/thrift/Target;->equals(Lcom/xiaomi/xmpush/thrift/Target;)Z

    move-result v22

    if-nez v22, :cond_4

    .line 407
    const/16 v22, 0x0

    goto :goto_0

    .line 410
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetId()Z

    move-result v17

    .line 411
    .local v17, "this_present_id":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetId()Z

    move-result v7

    .line 412
    .local v7, "that_present_id":Z
    if-nez v17, :cond_5

    if-eqz v7, :cond_8

    .line 413
    :cond_5
    if-eqz v17, :cond_6

    if-nez v7, :cond_7

    .line 414
    :cond_6
    const/16 v22, 0x0

    goto :goto_0

    .line 415
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->id:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->id:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_8

    .line 416
    const/16 v22, 0x0

    goto :goto_0

    .line 419
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetAppId()Z

    move-result v12

    .line 420
    .local v12, "this_present_appId":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetAppId()Z

    move-result v2

    .line 421
    .local v2, "that_present_appId":Z
    if-nez v12, :cond_9

    if-eqz v2, :cond_c

    .line 422
    :cond_9
    if-eqz v12, :cond_a

    if-nez v2, :cond_b

    .line 423
    :cond_a
    const/16 v22, 0x0

    goto :goto_0

    .line 424
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->appId:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->appId:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_c

    .line 425
    const/16 v22, 0x0

    goto :goto_0

    .line 428
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetCmdName()Z

    move-result v15

    .line 429
    .local v15, "this_present_cmdName":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetCmdName()Z

    move-result v5

    .line 430
    .local v5, "that_present_cmdName":Z
    if-nez v15, :cond_d

    if-eqz v5, :cond_10

    .line 431
    :cond_d
    if-eqz v15, :cond_e

    if-nez v5, :cond_f

    .line 432
    :cond_e
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 433
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->cmdName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->cmdName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_10

    .line 434
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 437
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetCmdArgs()Z

    move-result v14

    .line 438
    .local v14, "this_present_cmdArgs":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetCmdArgs()Z

    move-result v4

    .line 439
    .local v4, "that_present_cmdArgs":Z
    if-nez v14, :cond_11

    if-eqz v4, :cond_14

    .line 440
    :cond_11
    if-eqz v14, :cond_12

    if-nez v4, :cond_13

    .line 441
    :cond_12
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 442
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->cmdArgs:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->cmdArgs:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_14

    .line 443
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 446
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetPackageName()Z

    move-result v18

    .line 447
    .local v18, "this_present_packageName":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetPackageName()Z

    move-result v8

    .line 448
    .local v8, "that_present_packageName":Z
    if-nez v18, :cond_15

    if-eqz v8, :cond_18

    .line 449
    :cond_15
    if-eqz v18, :cond_16

    if-nez v8, :cond_17

    .line 450
    :cond_16
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 451
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_18

    .line 452
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 455
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetCategory()Z

    move-result v13

    .line 456
    .local v13, "this_present_category":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetCategory()Z

    move-result v3

    .line 457
    .local v3, "that_present_category":Z
    if-nez v13, :cond_19

    if-eqz v3, :cond_1c

    .line 458
    :cond_19
    if-eqz v13, :cond_1a

    if-nez v3, :cond_1b

    .line 459
    :cond_1a
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 460
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->category:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->category:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1c

    .line 461
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 464
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetUpdateCache()Z

    move-result v21

    .line 465
    .local v21, "this_present_updateCache":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetUpdateCache()Z

    move-result v11

    .line 466
    .local v11, "that_present_updateCache":Z
    if-nez v21, :cond_1d

    if-eqz v11, :cond_20

    .line 467
    :cond_1d
    if-eqz v21, :cond_1e

    if-nez v11, :cond_1f

    .line 468
    :cond_1e
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 469
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->updateCache:Z

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->updateCache:Z

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_20

    .line 470
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 473
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetResponse2Client()Z

    move-result v19

    .line 474
    .local v19, "this_present_response2Client":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetResponse2Client()Z

    move-result v9

    .line 475
    .local v9, "that_present_response2Client":Z
    if-nez v19, :cond_21

    if-eqz v9, :cond_24

    .line 476
    :cond_21
    if-eqz v19, :cond_22

    if-nez v9, :cond_23

    .line 477
    :cond_22
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 478
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->response2Client:Z

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->response2Client:Z

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_24

    .line 479
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 482
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetCreatedTs()Z

    move-result v16

    .line 483
    .local v16, "this_present_createdTs":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetCreatedTs()Z

    move-result v6

    .line 484
    .local v6, "that_present_createdTs":Z
    if-nez v16, :cond_25

    if-eqz v6, :cond_28

    .line 485
    :cond_25
    if-eqz v16, :cond_26

    if-nez v6, :cond_27

    .line 486
    :cond_26
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 487
    :cond_27
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->createdTs:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->createdTs:J

    move-wide/from16 v24, v0

    cmp-long v22, v22, v24

    if-eqz v22, :cond_28

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
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;

    if-eqz v1, :cond_0

    .line 393
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->equals(Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;)Z

    move-result v0

    goto :goto_0
.end method

.method public getCmdName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->cmdName:Ljava/lang/String;

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
    .line 199
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->appId:Ljava/lang/String;

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
    .line 310
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->category:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetCmdArgs()Z
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->cmdArgs:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetCmdName()Z
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->cmdName:Ljava/lang/String;

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
    .line 381
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetId()Z
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->id:Ljava/lang/String;

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
    .line 286
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetResponse2Client()Z
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetTarget()Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetUpdateCache()Z
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
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
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/16 v6, 0xb

    .line 612
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructBegin()Lorg/apache/thrift/protocol/TStruct;

    .line 615
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldBegin()Lorg/apache/thrift/protocol/TField;

    move-result-object v3

    .line 616
    .local v3, "field":Lorg/apache/thrift/protocol/TField;
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    if-nez v4, :cond_0

    .line 709
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructEnd()V

    .line 712
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->validate()V

    .line 713
    return-void

    .line 619
    :cond_0
    iget-short v4, v3, Lorg/apache/thrift/protocol/TField;->id:S

    packed-switch v4, :pswitch_data_0

    .line 705
    :pswitch_0
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    .line 707
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 621
    :pswitch_1
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v5, 0xc

    if-ne v4, v5, :cond_1

    .line 622
    new-instance v4, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v4}, Lcom/xiaomi/xmpush/thrift/Target;-><init>()V

    iput-object v4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->target:Lcom/xiaomi/xmpush/thrift/Target;

    .line 623
    iget-object v4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v4, p1}, Lcom/xiaomi/xmpush/thrift/Target;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 625
    :cond_1
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 629
    :pswitch_2
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v4, v6, :cond_2

    .line 630
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->id:Ljava/lang/String;

    goto :goto_1

    .line 632
    :cond_2
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 636
    :pswitch_3
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v4, v6, :cond_3

    .line 637
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->appId:Ljava/lang/String;

    goto :goto_1

    .line 639
    :cond_3
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 643
    :pswitch_4
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v4, v6, :cond_4

    .line 644
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->cmdName:Ljava/lang/String;

    goto :goto_1

    .line 646
    :cond_4
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 650
    :pswitch_5
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v5, 0xf

    if-ne v4, v5, :cond_6

    .line 652
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readListBegin()Lorg/apache/thrift/protocol/TList;

    move-result-object v2

    .line 653
    .local v2, "_list63":Lorg/apache/thrift/protocol/TList;
    new-instance v4, Ljava/util/ArrayList;

    iget v5, v2, Lorg/apache/thrift/protocol/TList;->size:I

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->cmdArgs:Ljava/util/List;

    .line 654
    const/4 v1, 0x0

    .local v1, "_i64":I
    :goto_2
    iget v4, v2, Lorg/apache/thrift/protocol/TList;->size:I

    if-ge v1, v4, :cond_5

    .line 657
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    .line 658
    .local v0, "_elem65":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->cmdArgs:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 660
    .end local v0    # "_elem65":Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readListEnd()V

    goto :goto_1

    .line 663
    .end local v1    # "_i64":I
    .end local v2    # "_list63":Lorg/apache/thrift/protocol/TList;
    :cond_6
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 667
    :pswitch_6
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v4, v6, :cond_7

    .line 668
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->packageName:Ljava/lang/String;

    goto/16 :goto_1

    .line 670
    :cond_7
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 674
    :pswitch_7
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v4, v6, :cond_8

    .line 675
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->category:Ljava/lang/String;

    goto/16 :goto_1

    .line 677
    :cond_8
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 681
    :pswitch_8
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v4, v8, :cond_9

    .line 682
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->updateCache:Z

    .line 683
    invoke-virtual {p0, v7}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->setUpdateCacheIsSet(Z)V

    goto/16 :goto_1

    .line 685
    :cond_9
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 689
    :pswitch_9
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v4, v8, :cond_a

    .line 690
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->response2Client:Z

    .line 691
    invoke-virtual {p0, v7}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->setResponse2ClientIsSet(Z)V

    goto/16 :goto_1

    .line 693
    :cond_a
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 697
    :pswitch_a
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v5, 0xa

    if-ne v4, v5, :cond_b

    .line 698
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->createdTs:J

    .line 699
    invoke-virtual {p0, v7}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->setCreatedTsIsSet(Z)V

    goto/16 :goto_1

    .line 701
    :cond_b
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 619
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public setAppId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->appId:Ljava/lang/String;

    .line 190
    return-object p0
.end method

.method public setCategory(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->category:Ljava/lang/String;

    .line 301
    return-object p0
.end method

.method public setCmdArgs(Ljava/util/List;)Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, "cmdArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->cmdArgs:Ljava/util/List;

    .line 253
    return-object p0
.end method

.method public setCmdName(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;
    .locals 0
    .param p1, "cmdName"    # Ljava/lang/String;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->cmdName:Ljava/lang/String;

    .line 214
    return-object p0
.end method

.method public setCreatedTsIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 385
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 386
    return-void
.end method

.method public setId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->id:Ljava/lang/String;

    .line 166
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->packageName:Ljava/lang/String;

    .line 277
    return-object p0
.end method

.method public setResponse2ClientIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 362
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 363
    return-void
.end method

.method public setUpdateCacheIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 339
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 340
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 790
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "XmPushActionCommand("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 791
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 793
    .local v0, "first":Z
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetTarget()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 794
    const-string/jumbo v2, "target:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-nez v2, :cond_10

    .line 796
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    :goto_0
    const/4 v0, 0x0

    .line 802
    :cond_0
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    :cond_1
    const-string v2, "id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->id:Ljava/lang/String;

    if-nez v2, :cond_11

    .line 805
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    :goto_1
    const/4 v0, 0x0

    .line 810
    if-nez v0, :cond_2

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    :cond_2
    const-string v2, "appId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->appId:Ljava/lang/String;

    if-nez v2, :cond_12

    .line 813
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    :goto_2
    const/4 v0, 0x0

    .line 818
    if-nez v0, :cond_3

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    :cond_3
    const-string v2, "cmdName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->cmdName:Ljava/lang/String;

    if-nez v2, :cond_13

    .line 821
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    :goto_3
    const/4 v0, 0x0

    .line 826
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetCmdArgs()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 827
    if-nez v0, :cond_4

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    :cond_4
    const-string v2, "cmdArgs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->cmdArgs:Ljava/util/List;

    if-nez v2, :cond_14

    .line 830
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    :goto_4
    const/4 v0, 0x0

    .line 836
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetPackageName()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 837
    if-nez v0, :cond_6

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    :cond_6
    const-string v2, "packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->packageName:Ljava/lang/String;

    if-nez v2, :cond_15

    .line 840
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    :goto_5
    const/4 v0, 0x0

    .line 846
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetCategory()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 847
    if-nez v0, :cond_8

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    :cond_8
    const-string v2, "category:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->category:Ljava/lang/String;

    if-nez v2, :cond_16

    .line 850
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    :goto_6
    const/4 v0, 0x0

    .line 856
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetUpdateCache()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 857
    if-nez v0, :cond_a

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    :cond_a
    const-string/jumbo v2, "updateCache:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    iget-boolean v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->updateCache:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 860
    const/4 v0, 0x0

    .line 862
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetResponse2Client()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 863
    if-nez v0, :cond_c

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    :cond_c
    const-string v2, "response2Client:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    iget-boolean v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->response2Client:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 866
    const/4 v0, 0x0

    .line 868
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetCreatedTs()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 869
    if-nez v0, :cond_e

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    :cond_e
    const-string v2, "createdTs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->createdTs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 872
    const/4 v0, 0x0

    .line 874
    :cond_f
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 798
    :cond_10
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 807
    :cond_11
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 815
    :cond_12
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 823
    :cond_13
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->cmdName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 832
    :cond_14
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->cmdArgs:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 842
    :cond_15
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 852
    :cond_16
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6
.end method

.method public validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 880
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 881
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->appId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 884
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'appId\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 886
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->cmdName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 887
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'cmdName\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 889
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
    .line 716
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->validate()V

    .line 718
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructBegin(Lorg/apache/thrift/protocol/TStruct;)V

    .line 719
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-eqz v1, :cond_0

    .line 720
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetTarget()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 721
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->TARGET_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 722
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v1, p1}, Lcom/xiaomi/xmpush/thrift/Target;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 723
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 726
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->id:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 727
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 728
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->id:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 729
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 731
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->appId:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 732
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->APP_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 733
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->appId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 734
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 736
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->cmdName:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 737
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->CMD_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 738
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->cmdName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 739
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 741
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->cmdArgs:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 742
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetCmdArgs()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 743
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->CMD_ARGS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 745
    new-instance v1, Lorg/apache/thrift/protocol/TList;

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->cmdArgs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeListBegin(Lorg/apache/thrift/protocol/TList;)V

    .line 746
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->cmdArgs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 748
    .local v0, "_iter66":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 750
    .end local v0    # "_iter66":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeListEnd()V

    .line 752
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 755
    :cond_5
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 756
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetPackageName()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 757
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->PACKAGE_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 758
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 759
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 762
    :cond_6
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->category:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 763
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetCategory()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 764
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->CATEGORY_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 765
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->category:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 766
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 769
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetUpdateCache()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 770
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->UPDATE_CACHE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 771
    iget-boolean v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->updateCache:Z

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 772
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 774
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetResponse2Client()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 775
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->RESPONSE2_CLIENT_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 776
    iget-boolean v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->response2Client:Z

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 777
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 779
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->isSetCreatedTs()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 780
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->CREATED_TS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 781
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->createdTs:J

    invoke-virtual {p1, v2, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeI64(J)V

    .line 782
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 784
    :cond_a
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 785
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 786
    return-void
.end method
