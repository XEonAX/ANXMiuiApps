.class public Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;
.super Ljava/lang/Object;
.source "XmPushActionCommandResult.java"

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
        "Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final APP_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final CATEGORY_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final CMD_ARGS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final CMD_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final ERROR_CODE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final PACKAGE_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final REASON_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final RESPONSE2_CLIENT_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

.field private static final TARGET_FIELD_DESC:Lorg/apache/thrift/protocol/TField;


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

.field public errorCode:J

.field public id:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public reason:Ljava/lang/String;

.field public response2Client:Z

.field public target:Lcom/xiaomi/xmpush/thrift/Target;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0xc

    const/16 v5, 0xa

    const/4 v4, 0x2

    const/16 v3, 0xb

    .line 30
    new-instance v0, Lorg/apache/thrift/protocol/TStruct;

    const-string v1, "XmPushActionCommandResult"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    .line 32
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v6, v4}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->TARGET_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->APP_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x5

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->CMD_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 36
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x7

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->ERROR_CODE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 37
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x8

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->REASON_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 38
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x9

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->PACKAGE_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 39
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v5}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->CMD_ARGS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 40
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v3, v6}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->CATEGORY_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 41
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xd

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->RESPONSE2_CLIENT_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->__isset_bit_vector:Ljava/util/BitSet;

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->response2Client:Z

    .line 63
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;)I
    .locals 6
    .param p1, "other"    # Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;

    .prologue
    .line 502
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 503
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

    .line 609
    :cond_0
    :goto_0
    return v0

    .line 506
    :cond_1
    const/4 v0, 0x0

    .line 507
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 509
    .local v1, "typedOther":Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetTarget()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetTarget()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 510
    if-nez v0, :cond_0

    .line 513
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetTarget()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 514
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 515
    if-nez v0, :cond_0

    .line 519
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 520
    if-nez v0, :cond_0

    .line 523
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetId()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 524
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->id:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 525
    if-nez v0, :cond_0

    .line 529
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetAppId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetAppId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 530
    if-nez v0, :cond_0

    .line 533
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetAppId()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 534
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->appId:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->appId:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 535
    if-nez v0, :cond_0

    .line 539
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetCmdName()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetCmdName()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 540
    if-nez v0, :cond_0

    .line 543
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetCmdName()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 544
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdName:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdName:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 545
    if-nez v0, :cond_0

    .line 549
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetErrorCode()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetErrorCode()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 550
    if-nez v0, :cond_0

    .line 553
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetErrorCode()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 554
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->errorCode:J

    iget-wide v4, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->errorCode:J

    invoke-static {v2, v3, v4, v5}, Lorg/apache/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 555
    if-nez v0, :cond_0

    .line 559
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetReason()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetReason()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 560
    if-nez v0, :cond_0

    .line 563
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetReason()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 564
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->reason:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->reason:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 565
    if-nez v0, :cond_0

    .line 569
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetPackageName()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetPackageName()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 570
    if-nez v0, :cond_0

    .line 573
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetPackageName()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 574
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->packageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 575
    if-nez v0, :cond_0

    .line 579
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetCmdArgs()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetCmdArgs()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 580
    if-nez v0, :cond_0

    .line 583
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetCmdArgs()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 584
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdArgs:Ljava/util/List;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdArgs:Ljava/util/List;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 585
    if-nez v0, :cond_0

    .line 589
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetCategory()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetCategory()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 590
    if-nez v0, :cond_0

    .line 593
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetCategory()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 594
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->category:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->category:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 595
    if-nez v0, :cond_0

    .line 599
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetResponse2Client()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetResponse2Client()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 600
    if-nez v0, :cond_0

    .line 603
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetResponse2Client()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 604
    iget-boolean v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->response2Client:Z

    iget-boolean v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->response2Client:Z

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 605
    if-nez v0, :cond_0

    .line 609
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 29
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->compareTo(Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;)I

    move-result v0

    return v0
.end method

.method public equals(Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;)Z
    .locals 26
    .param p1, "that"    # Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;

    .prologue
    .line 400
    if-nez p1, :cond_0

    .line 401
    const/16 v22, 0x0

    .line 493
    :goto_0
    return v22

    .line 403
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetTarget()Z

    move-result v21

    .line 404
    .local v21, "this_present_target":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetTarget()Z

    move-result v11

    .line 405
    .local v11, "that_present_target":Z
    if-nez v21, :cond_1

    if-eqz v11, :cond_4

    .line 406
    :cond_1
    if-eqz v21, :cond_2

    if-nez v11, :cond_3

    .line 407
    :cond_2
    const/16 v22, 0x0

    goto :goto_0

    .line 408
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/xiaomi/xmpush/thrift/Target;->equals(Lcom/xiaomi/xmpush/thrift/Target;)Z

    move-result v22

    if-nez v22, :cond_4

    .line 409
    const/16 v22, 0x0

    goto :goto_0

    .line 412
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetId()Z

    move-result v17

    .line 413
    .local v17, "this_present_id":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetId()Z

    move-result v7

    .line 414
    .local v7, "that_present_id":Z
    if-nez v17, :cond_5

    if-eqz v7, :cond_8

    .line 415
    :cond_5
    if-eqz v17, :cond_6

    if-nez v7, :cond_7

    .line 416
    :cond_6
    const/16 v22, 0x0

    goto :goto_0

    .line 417
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->id:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->id:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_8

    .line 418
    const/16 v22, 0x0

    goto :goto_0

    .line 421
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetAppId()Z

    move-result v12

    .line 422
    .local v12, "this_present_appId":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetAppId()Z

    move-result v2

    .line 423
    .local v2, "that_present_appId":Z
    if-nez v12, :cond_9

    if-eqz v2, :cond_c

    .line 424
    :cond_9
    if-eqz v12, :cond_a

    if-nez v2, :cond_b

    .line 425
    :cond_a
    const/16 v22, 0x0

    goto :goto_0

    .line 426
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->appId:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->appId:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_c

    .line 427
    const/16 v22, 0x0

    goto :goto_0

    .line 430
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetCmdName()Z

    move-result v15

    .line 431
    .local v15, "this_present_cmdName":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetCmdName()Z

    move-result v5

    .line 432
    .local v5, "that_present_cmdName":Z
    if-nez v15, :cond_d

    if-eqz v5, :cond_10

    .line 433
    :cond_d
    if-eqz v15, :cond_e

    if-nez v5, :cond_f

    .line 434
    :cond_e
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 435
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_10

    .line 436
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 439
    :cond_10
    const/16 v16, 0x1

    .line 440
    .local v16, "this_present_errorCode":Z
    const/4 v6, 0x1

    .line 441
    .local v6, "that_present_errorCode":Z
    if-nez v16, :cond_11

    if-eqz v6, :cond_14

    .line 442
    :cond_11
    if-eqz v16, :cond_12

    if-nez v6, :cond_13

    .line 443
    :cond_12
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 444
    :cond_13
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->errorCode:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->errorCode:J

    move-wide/from16 v24, v0

    cmp-long v22, v22, v24

    if-eqz v22, :cond_14

    .line 445
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 448
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetReason()Z

    move-result v19

    .line 449
    .local v19, "this_present_reason":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetReason()Z

    move-result v9

    .line 450
    .local v9, "that_present_reason":Z
    if-nez v19, :cond_15

    if-eqz v9, :cond_18

    .line 451
    :cond_15
    if-eqz v19, :cond_16

    if-nez v9, :cond_17

    .line 452
    :cond_16
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 453
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->reason:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->reason:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_18

    .line 454
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 457
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetPackageName()Z

    move-result v18

    .line 458
    .local v18, "this_present_packageName":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetPackageName()Z

    move-result v8

    .line 459
    .local v8, "that_present_packageName":Z
    if-nez v18, :cond_19

    if-eqz v8, :cond_1c

    .line 460
    :cond_19
    if-eqz v18, :cond_1a

    if-nez v8, :cond_1b

    .line 461
    :cond_1a
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 462
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1c

    .line 463
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 466
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetCmdArgs()Z

    move-result v14

    .line 467
    .local v14, "this_present_cmdArgs":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetCmdArgs()Z

    move-result v4

    .line 468
    .local v4, "that_present_cmdArgs":Z
    if-nez v14, :cond_1d

    if-eqz v4, :cond_20

    .line 469
    :cond_1d
    if-eqz v14, :cond_1e

    if-nez v4, :cond_1f

    .line 470
    :cond_1e
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 471
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdArgs:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdArgs:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_20

    .line 472
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 475
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetCategory()Z

    move-result v13

    .line 476
    .local v13, "this_present_category":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetCategory()Z

    move-result v3

    .line 477
    .local v3, "that_present_category":Z
    if-nez v13, :cond_21

    if-eqz v3, :cond_24

    .line 478
    :cond_21
    if-eqz v13, :cond_22

    if-nez v3, :cond_23

    .line 479
    :cond_22
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 480
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->category:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->category:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_24

    .line 481
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 484
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetResponse2Client()Z

    move-result v20

    .line 485
    .local v20, "this_present_response2Client":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetResponse2Client()Z

    move-result v10

    .line 486
    .local v10, "that_present_response2Client":Z
    if-nez v20, :cond_25

    if-eqz v10, :cond_28

    .line 487
    :cond_25
    if-eqz v20, :cond_26

    if-nez v10, :cond_27

    .line 488
    :cond_26
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 489
    :cond_27
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->response2Client:Z

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->response2Client:Z

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_28

    .line 490
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 493
    :cond_28
    const/16 v22, 0x1

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 392
    if-nez p1, :cond_1

    .line 396
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 394
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;

    if-eqz v1, :cond_0

    .line 395
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->equals(Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getCmdArgs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdArgs:Ljava/util/List;

    return-object v0
.end method

.method public getCmdName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 498
    const/4 v0, 0x0

    return v0
.end method

.method public isSetAppId()Z
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->appId:Ljava/lang/String;

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
    .line 358
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->category:Ljava/lang/String;

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
    .line 334
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdArgs:Ljava/util/List;

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
    .line 224
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdName:Ljava/lang/String;

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
    .line 249
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetId()Z
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->id:Ljava/lang/String;

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
    .line 295
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->packageName:Ljava/lang/String;

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
    .line 271
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->reason:Ljava/lang/String;

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
    .line 383
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetTarget()Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 8
    .param p1, "iprot"    # Lorg/apache/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0xb

    .line 614
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructBegin()Lorg/apache/thrift/protocol/TStruct;

    .line 617
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldBegin()Lorg/apache/thrift/protocol/TField;

    move-result-object v3

    .line 618
    .local v3, "field":Lorg/apache/thrift/protocol/TField;
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    if-nez v4, :cond_0

    .line 710
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructEnd()V

    .line 713
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetErrorCode()Z

    move-result v4

    if-nez v4, :cond_c

    .line 714
    new-instance v4, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Required field \'errorCode\' was not found in serialized data! Struct: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 621
    :cond_0
    iget-short v4, v3, Lorg/apache/thrift/protocol/TField;->id:S

    packed-switch v4, :pswitch_data_0

    .line 706
    :pswitch_0
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    .line 708
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 623
    :pswitch_1
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v5, 0xc

    if-ne v4, v5, :cond_1

    .line 624
    new-instance v4, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v4}, Lcom/xiaomi/xmpush/thrift/Target;-><init>()V

    iput-object v4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    .line 625
    iget-object v4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v4, p1}, Lcom/xiaomi/xmpush/thrift/Target;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 627
    :cond_1
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 631
    :pswitch_2
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v4, v6, :cond_2

    .line 632
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->id:Ljava/lang/String;

    goto :goto_1

    .line 634
    :cond_2
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 638
    :pswitch_3
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v4, v6, :cond_3

    .line 639
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->appId:Ljava/lang/String;

    goto :goto_1

    .line 641
    :cond_3
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 645
    :pswitch_4
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v4, v6, :cond_4

    .line 646
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdName:Ljava/lang/String;

    goto :goto_1

    .line 648
    :cond_4
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 652
    :pswitch_5
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v5, 0xa

    if-ne v4, v5, :cond_5

    .line 653
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->errorCode:J

    .line 654
    invoke-virtual {p0, v7}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->setErrorCodeIsSet(Z)V

    goto :goto_1

    .line 656
    :cond_5
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 660
    :pswitch_6
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v4, v6, :cond_6

    .line 661
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->reason:Ljava/lang/String;

    goto :goto_1

    .line 663
    :cond_6
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 667
    :pswitch_7
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v4, v6, :cond_7

    .line 668
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->packageName:Ljava/lang/String;

    goto/16 :goto_1

    .line 670
    :cond_7
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 674
    :pswitch_8
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v5, 0xf

    if-ne v4, v5, :cond_9

    .line 676
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readListBegin()Lorg/apache/thrift/protocol/TList;

    move-result-object v2

    .line 677
    .local v2, "_list67":Lorg/apache/thrift/protocol/TList;
    new-instance v4, Ljava/util/ArrayList;

    iget v5, v2, Lorg/apache/thrift/protocol/TList;->size:I

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdArgs:Ljava/util/List;

    .line 678
    const/4 v1, 0x0

    .local v1, "_i68":I
    :goto_2
    iget v4, v2, Lorg/apache/thrift/protocol/TList;->size:I

    if-ge v1, v4, :cond_8

    .line 681
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    .line 682
    .local v0, "_elem69":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdArgs:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 678
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 684
    .end local v0    # "_elem69":Ljava/lang/String;
    :cond_8
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readListEnd()V

    goto/16 :goto_1

    .line 687
    .end local v1    # "_i68":I
    .end local v2    # "_list67":Lorg/apache/thrift/protocol/TList;
    :cond_9
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 691
    :pswitch_9
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v4, v6, :cond_a

    .line 692
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->category:Ljava/lang/String;

    goto/16 :goto_1

    .line 694
    :cond_a
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 698
    :pswitch_a
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    const/4 v5, 0x2

    if-ne v4, v5, :cond_b

    .line 699
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->response2Client:Z

    .line 700
    invoke-virtual {p0, v7}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->setResponse2ClientIsSet(Z)V

    goto/16 :goto_1

    .line 702
    :cond_b
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 716
    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->validate()V

    .line 717
    return-void

    .line 621
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public setErrorCodeIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 253
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 254
    return-void
.end method

.method public setResponse2ClientIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 387
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 388
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 794
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "XmPushActionCommandResult("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 795
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 797
    .local v0, "first":Z
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetTarget()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 798
    const-string/jumbo v2, "target:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-nez v2, :cond_f

    .line 800
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    :goto_0
    const/4 v0, 0x0

    .line 806
    :cond_0
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    :cond_1
    const-string v2, "id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->id:Ljava/lang/String;

    if-nez v2, :cond_10

    .line 809
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    :goto_1
    const/4 v0, 0x0

    .line 814
    if-nez v0, :cond_2

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    :cond_2
    const-string v2, "appId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->appId:Ljava/lang/String;

    if-nez v2, :cond_11

    .line 817
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    :goto_2
    const/4 v0, 0x0

    .line 822
    if-nez v0, :cond_3

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    :cond_3
    const-string v2, "cmdName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdName:Ljava/lang/String;

    if-nez v2, :cond_12

    .line 825
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    :goto_3
    const/4 v0, 0x0

    .line 830
    if-nez v0, :cond_4

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    :cond_4
    const-string v2, "errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->errorCode:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 833
    const/4 v0, 0x0

    .line 834
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetReason()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 835
    if-nez v0, :cond_5

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    :cond_5
    const-string v2, "reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->reason:Ljava/lang/String;

    if-nez v2, :cond_13

    .line 838
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    :goto_4
    const/4 v0, 0x0

    .line 844
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetPackageName()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 845
    if-nez v0, :cond_7

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    :cond_7
    const-string v2, "packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->packageName:Ljava/lang/String;

    if-nez v2, :cond_14

    .line 848
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    :goto_5
    const/4 v0, 0x0

    .line 854
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetCmdArgs()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 855
    if-nez v0, :cond_9

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    :cond_9
    const-string v2, "cmdArgs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdArgs:Ljava/util/List;

    if-nez v2, :cond_15

    .line 858
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    :goto_6
    const/4 v0, 0x0

    .line 864
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetCategory()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 865
    if-nez v0, :cond_b

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    :cond_b
    const-string v2, "category:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->category:Ljava/lang/String;

    if-nez v2, :cond_16

    .line 868
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    :goto_7
    const/4 v0, 0x0

    .line 874
    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetResponse2Client()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 875
    if-nez v0, :cond_d

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    :cond_d
    const-string v2, "response2Client:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    iget-boolean v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->response2Client:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 878
    const/4 v0, 0x0

    .line 880
    :cond_e
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 802
    :cond_f
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 811
    :cond_10
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 819
    :cond_11
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 827
    :cond_12
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 840
    :cond_13
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->reason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 850
    :cond_14
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 860
    :cond_15
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdArgs:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 870
    :cond_16
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->category:Ljava/lang/String;

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
    .line 886
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 887
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->appId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 890
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'appId\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 892
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 893
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'cmdName\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 896
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
    .line 720
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->validate()V

    .line 722
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructBegin(Lorg/apache/thrift/protocol/TStruct;)V

    .line 723
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-eqz v1, :cond_0

    .line 724
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetTarget()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 725
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->TARGET_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 726
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v1, p1}, Lcom/xiaomi/xmpush/thrift/Target;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 727
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 730
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->id:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 731
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 732
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->id:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 733
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 735
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->appId:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 736
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->APP_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 737
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->appId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 738
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 740
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdName:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 741
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->CMD_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 742
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 743
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 745
    :cond_3
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->ERROR_CODE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 746
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->errorCode:J

    invoke-virtual {p1, v2, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeI64(J)V

    .line 747
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 748
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->reason:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 749
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetReason()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 750
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->REASON_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 751
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->reason:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 752
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 755
    :cond_4
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 756
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetPackageName()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 757
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->PACKAGE_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 758
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 759
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 762
    :cond_5
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdArgs:Ljava/util/List;

    if-eqz v1, :cond_7

    .line 763
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetCmdArgs()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 764
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->CMD_ARGS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 766
    new-instance v1, Lorg/apache/thrift/protocol/TList;

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdArgs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeListBegin(Lorg/apache/thrift/protocol/TList;)V

    .line 767
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->cmdArgs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 769
    .local v0, "_iter70":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 771
    .end local v0    # "_iter70":Ljava/lang/String;
    :cond_6
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeListEnd()V

    .line 773
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 776
    :cond_7
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->category:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 777
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetCategory()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 778
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->CATEGORY_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 779
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->category:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 780
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 783
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->isSetResponse2Client()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 784
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->RESPONSE2_CLIENT_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 785
    iget-boolean v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->response2Client:Z

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 786
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 788
    :cond_9
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 789
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 790
    return-void
.end method
