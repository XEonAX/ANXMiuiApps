.class public Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;
.super Ljava/lang/Object;
.source "XmPushActionSendMessage.java"

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
        "Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final ALIAS_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final APP_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final CATEGORY_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final DEBUG_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final MESSAGE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final NEED_ACK_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final PACKAGE_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final PARAMS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

.field private static final TARGET_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final TOPIC_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final USER_ACCOUNT_FIELD_DESC:Lorg/apache/thrift/protocol/TField;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public aliasName:Ljava/lang/String;

.field public appId:Ljava/lang/String;

.field public category:Ljava/lang/String;

.field public debug:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public message:Lcom/xiaomi/xmpush/thrift/PushMessage;

.field public needAck:Z

.field public packageName:Ljava/lang/String;

.field public params:Ljava/util/Map;
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

.field public target:Lcom/xiaomi/xmpush/thrift/Target;

.field public topic:Ljava/lang/String;

.field public userAccount:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/16 v5, 0xc

    const/16 v4, 0xb

    .line 30
    new-instance v0, Lorg/apache/thrift/protocol/TStruct;

    const-string v1, "XmPushActionSendMessage"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    .line 32
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->DEBUG_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v5, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->TARGET_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x3

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x4

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->APP_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 36
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x5

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->PACKAGE_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 37
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x6

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->TOPIC_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 38
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x7

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->ALIAS_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 39
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x8

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->MESSAGE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 40
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x9

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->NEED_ACK_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 41
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xd

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->PARAMS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 42
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v4, v4}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->CATEGORY_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 43
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v4, v5}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->USER_ACCOUNT_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->__isset_bit_vector:Ljava/util/BitSet;

    .line 64
    iput-boolean v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->needAck:Z

    .line 66
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;)I
    .locals 4
    .param p1, "other"    # Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    .prologue
    .line 580
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 581
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

    .line 707
    :cond_0
    :goto_0
    return v0

    .line 584
    :cond_1
    const/4 v0, 0x0

    .line 585
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 587
    .local v1, "typedOther":Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetDebug()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetDebug()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 588
    if-nez v0, :cond_0

    .line 591
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetDebug()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 592
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->debug:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->debug:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 593
    if-nez v0, :cond_0

    .line 597
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetTarget()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetTarget()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 598
    if-nez v0, :cond_0

    .line 601
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetTarget()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 602
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 603
    if-nez v0, :cond_0

    .line 607
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 608
    if-nez v0, :cond_0

    .line 611
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetId()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 612
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->id:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 613
    if-nez v0, :cond_0

    .line 617
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetAppId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetAppId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 618
    if-nez v0, :cond_0

    .line 621
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetAppId()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 622
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->appId:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->appId:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 623
    if-nez v0, :cond_0

    .line 627
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetPackageName()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetPackageName()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 628
    if-nez v0, :cond_0

    .line 631
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetPackageName()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 632
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->packageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 633
    if-nez v0, :cond_0

    .line 637
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetTopic()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetTopic()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 638
    if-nez v0, :cond_0

    .line 641
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetTopic()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 642
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->topic:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->topic:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 643
    if-nez v0, :cond_0

    .line 647
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetAliasName()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetAliasName()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 648
    if-nez v0, :cond_0

    .line 651
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetAliasName()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 652
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->aliasName:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->aliasName:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 653
    if-nez v0, :cond_0

    .line 657
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetMessage()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetMessage()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 658
    if-nez v0, :cond_0

    .line 661
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetMessage()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 662
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->message:Lcom/xiaomi/xmpush/thrift/PushMessage;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->message:Lcom/xiaomi/xmpush/thrift/PushMessage;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 663
    if-nez v0, :cond_0

    .line 667
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetNeedAck()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetNeedAck()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 668
    if-nez v0, :cond_0

    .line 671
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetNeedAck()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 672
    iget-boolean v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->needAck:Z

    iget-boolean v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->needAck:Z

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 673
    if-nez v0, :cond_0

    .line 677
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetParams()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetParams()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 678
    if-nez v0, :cond_0

    .line 681
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetParams()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 682
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->params:Ljava/util/Map;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->params:Ljava/util/Map;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    .line 683
    if-nez v0, :cond_0

    .line 687
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetCategory()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetCategory()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 688
    if-nez v0, :cond_0

    .line 691
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetCategory()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 692
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->category:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->category:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 693
    if-nez v0, :cond_0

    .line 697
    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetUserAccount()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetUserAccount()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 698
    if-nez v0, :cond_0

    .line 701
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetUserAccount()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 702
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->userAccount:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->userAccount:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 703
    if-nez v0, :cond_0

    .line 707
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 29
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->compareTo(Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;)I

    move-result v0

    return v0
.end method

.method public equals(Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;)Z
    .locals 28
    .param p1, "that"    # Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    .prologue
    .line 460
    if-nez p1, :cond_0

    .line 461
    const/16 v26, 0x0

    .line 571
    :goto_0
    return v26

    .line 463
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetDebug()Z

    move-result v17

    .line 464
    .local v17, "this_present_debug":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetDebug()Z

    move-result v5

    .line 465
    .local v5, "that_present_debug":Z
    if-nez v17, :cond_1

    if-eqz v5, :cond_4

    .line 466
    :cond_1
    if-eqz v17, :cond_2

    if-nez v5, :cond_3

    .line 467
    :cond_2
    const/16 v26, 0x0

    goto :goto_0

    .line 468
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->debug:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->debug:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_4

    .line 469
    const/16 v26, 0x0

    goto :goto_0

    .line 472
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetTarget()Z

    move-result v23

    .line 473
    .local v23, "this_present_target":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetTarget()Z

    move-result v11

    .line 474
    .local v11, "that_present_target":Z
    if-nez v23, :cond_5

    if-eqz v11, :cond_8

    .line 475
    :cond_5
    if-eqz v23, :cond_6

    if-nez v11, :cond_7

    .line 476
    :cond_6
    const/16 v26, 0x0

    goto :goto_0

    .line 477
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/xiaomi/xmpush/thrift/Target;->equals(Lcom/xiaomi/xmpush/thrift/Target;)Z

    move-result v26

    if-nez v26, :cond_8

    .line 478
    const/16 v26, 0x0

    goto :goto_0

    .line 481
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetId()Z

    move-result v18

    .line 482
    .local v18, "this_present_id":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetId()Z

    move-result v6

    .line 483
    .local v6, "that_present_id":Z
    if-nez v18, :cond_9

    if-eqz v6, :cond_c

    .line 484
    :cond_9
    if-eqz v18, :cond_a

    if-nez v6, :cond_b

    .line 485
    :cond_a
    const/16 v26, 0x0

    goto :goto_0

    .line 486
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->id:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->id:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_c

    .line 487
    const/16 v26, 0x0

    goto :goto_0

    .line 490
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetAppId()Z

    move-result v15

    .line 491
    .local v15, "this_present_appId":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetAppId()Z

    move-result v3

    .line 492
    .local v3, "that_present_appId":Z
    if-nez v15, :cond_d

    if-eqz v3, :cond_10

    .line 493
    :cond_d
    if-eqz v15, :cond_e

    if-nez v3, :cond_f

    .line 494
    :cond_e
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 495
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->appId:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->appId:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_10

    .line 496
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 499
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetPackageName()Z

    move-result v21

    .line 500
    .local v21, "this_present_packageName":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetPackageName()Z

    move-result v9

    .line 501
    .local v9, "that_present_packageName":Z
    if-nez v21, :cond_11

    if-eqz v9, :cond_14

    .line 502
    :cond_11
    if-eqz v21, :cond_12

    if-nez v9, :cond_13

    .line 503
    :cond_12
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 504
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_14

    .line 505
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 508
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetTopic()Z

    move-result v24

    .line 509
    .local v24, "this_present_topic":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetTopic()Z

    move-result v12

    .line 510
    .local v12, "that_present_topic":Z
    if-nez v24, :cond_15

    if-eqz v12, :cond_18

    .line 511
    :cond_15
    if-eqz v24, :cond_16

    if-nez v12, :cond_17

    .line 512
    :cond_16
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 513
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->topic:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->topic:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_18

    .line 514
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 517
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetAliasName()Z

    move-result v14

    .line 518
    .local v14, "this_present_aliasName":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetAliasName()Z

    move-result v2

    .line 519
    .local v2, "that_present_aliasName":Z
    if-nez v14, :cond_19

    if-eqz v2, :cond_1c

    .line 520
    :cond_19
    if-eqz v14, :cond_1a

    if-nez v2, :cond_1b

    .line 521
    :cond_1a
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 522
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->aliasName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->aliasName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_1c

    .line 523
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 526
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetMessage()Z

    move-result v19

    .line 527
    .local v19, "this_present_message":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetMessage()Z

    move-result v7

    .line 528
    .local v7, "that_present_message":Z
    if-nez v19, :cond_1d

    if-eqz v7, :cond_20

    .line 529
    :cond_1d
    if-eqz v19, :cond_1e

    if-nez v7, :cond_1f

    .line 530
    :cond_1e
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 531
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->message:Lcom/xiaomi/xmpush/thrift/PushMessage;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->message:Lcom/xiaomi/xmpush/thrift/PushMessage;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/xiaomi/xmpush/thrift/PushMessage;->equals(Lcom/xiaomi/xmpush/thrift/PushMessage;)Z

    move-result v26

    if-nez v26, :cond_20

    .line 532
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 535
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetNeedAck()Z

    move-result v20

    .line 536
    .local v20, "this_present_needAck":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetNeedAck()Z

    move-result v8

    .line 537
    .local v8, "that_present_needAck":Z
    if-nez v20, :cond_21

    if-eqz v8, :cond_24

    .line 538
    :cond_21
    if-eqz v20, :cond_22

    if-nez v8, :cond_23

    .line 539
    :cond_22
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 540
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->needAck:Z

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->needAck:Z

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_24

    .line 541
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 544
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetParams()Z

    move-result v22

    .line 545
    .local v22, "this_present_params":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetParams()Z

    move-result v10

    .line 546
    .local v10, "that_present_params":Z
    if-nez v22, :cond_25

    if-eqz v10, :cond_28

    .line 547
    :cond_25
    if-eqz v22, :cond_26

    if-nez v10, :cond_27

    .line 548
    :cond_26
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 549
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->params:Ljava/util/Map;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->params:Ljava/util/Map;

    move-object/from16 v27, v0

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_28

    .line 550
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 553
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetCategory()Z

    move-result v16

    .line 554
    .local v16, "this_present_category":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetCategory()Z

    move-result v4

    .line 555
    .local v4, "that_present_category":Z
    if-nez v16, :cond_29

    if-eqz v4, :cond_2c

    .line 556
    :cond_29
    if-eqz v16, :cond_2a

    if-nez v4, :cond_2b

    .line 557
    :cond_2a
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 558
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->category:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->category:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_2c

    .line 559
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 562
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetUserAccount()Z

    move-result v25

    .line 563
    .local v25, "this_present_userAccount":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetUserAccount()Z

    move-result v13

    .line 564
    .local v13, "that_present_userAccount":Z
    if-nez v25, :cond_2d

    if-eqz v13, :cond_30

    .line 565
    :cond_2d
    if-eqz v25, :cond_2e

    if-nez v13, :cond_2f

    .line 566
    :cond_2e
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 567
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->userAccount:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->userAccount:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_30

    .line 568
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 571
    :cond_30
    const/16 v26, 0x1

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 452
    if-nez p1, :cond_1

    .line 456
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 454
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    if-eqz v1, :cond_0

    .line 455
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->equals(Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAliasName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->aliasName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Lcom/xiaomi/xmpush/thrift/PushMessage;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->message:Lcom/xiaomi/xmpush/thrift/PushMessage;

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->userAccount:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 576
    const/4 v0, 0x0

    return v0
.end method

.method public isSetAliasName()Z
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->aliasName:Ljava/lang/String;

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
    .line 239
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->appId:Ljava/lang/String;

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
    .line 417
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->category:Ljava/lang/String;

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
    .line 167
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->debug:Ljava/lang/String;

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
    .line 215
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetMessage()Z
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->message:Lcom/xiaomi/xmpush/thrift/PushMessage;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetNeedAck()Z
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetPackageName()Z
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetParams()Z
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->params:Ljava/util/Map;

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
    .line 191
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

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
    .line 287
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->topic:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetUserAccount()Z
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->userAccount:Ljava/lang/String;

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
    const/16 v8, 0xc

    const/16 v7, 0xb

    .line 712
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructBegin()Lorg/apache/thrift/protocol/TStruct;

    .line 715
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldBegin()Lorg/apache/thrift/protocol/TField;

    move-result-object v4

    .line 716
    .local v4, "field":Lorg/apache/thrift/protocol/TField;
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-nez v5, :cond_0

    .line 824
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructEnd()V

    .line 827
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->validate()V

    .line 828
    return-void

    .line 719
    :cond_0
    iget-short v5, v4, Lorg/apache/thrift/protocol/TField;->id:S

    packed-switch v5, :pswitch_data_0

    .line 820
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    .line 822
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 721
    :pswitch_0
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v7, :cond_1

    .line 722
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->debug:Ljava/lang/String;

    goto :goto_1

    .line 724
    :cond_1
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 728
    :pswitch_1
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_2

    .line 729
    new-instance v5, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v5}, Lcom/xiaomi/xmpush/thrift/Target;-><init>()V

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    .line 730
    iget-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v5, p1}, Lcom/xiaomi/xmpush/thrift/Target;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 732
    :cond_2
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 736
    :pswitch_2
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v7, :cond_3

    .line 737
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->id:Ljava/lang/String;

    goto :goto_1

    .line 739
    :cond_3
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 743
    :pswitch_3
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v7, :cond_4

    .line 744
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->appId:Ljava/lang/String;

    goto :goto_1

    .line 746
    :cond_4
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 750
    :pswitch_4
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v7, :cond_5

    .line 751
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 753
    :cond_5
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 757
    :pswitch_5
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v7, :cond_6

    .line 758
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->topic:Ljava/lang/String;

    goto :goto_1

    .line 760
    :cond_6
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 764
    :pswitch_6
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v7, :cond_7

    .line 765
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->aliasName:Ljava/lang/String;

    goto :goto_1

    .line 767
    :cond_7
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 771
    :pswitch_7
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_8

    .line 772
    new-instance v5, Lcom/xiaomi/xmpush/thrift/PushMessage;

    invoke-direct {v5}, Lcom/xiaomi/xmpush/thrift/PushMessage;-><init>()V

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->message:Lcom/xiaomi/xmpush/thrift/PushMessage;

    .line 773
    iget-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->message:Lcom/xiaomi/xmpush/thrift/PushMessage;

    invoke-virtual {v5, p1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    goto/16 :goto_1

    .line 775
    :cond_8
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 779
    :pswitch_8
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    const/4 v6, 0x2

    if-ne v5, v6, :cond_9

    .line 780
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->needAck:Z

    .line 781
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->setNeedAckIsSet(Z)V

    goto/16 :goto_1

    .line 783
    :cond_9
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 787
    :pswitch_9
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v6, 0xd

    if-ne v5, v6, :cond_b

    .line 789
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readMapBegin()Lorg/apache/thrift/protocol/TMap;

    move-result-object v2

    .line 790
    .local v2, "_map44":Lorg/apache/thrift/protocol/TMap;
    new-instance v5, Ljava/util/HashMap;

    iget v6, v2, Lorg/apache/thrift/protocol/TMap;->size:I

    mul-int/lit8 v6, v6, 0x2

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->params:Ljava/util/Map;

    .line 791
    const/4 v0, 0x0

    .local v0, "_i45":I
    :goto_2
    iget v5, v2, Lorg/apache/thrift/protocol/TMap;->size:I

    if-ge v0, v5, :cond_a

    .line 795
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    .line 796
    .local v1, "_key46":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v3

    .line 797
    .local v3, "_val47":Ljava/lang/String;
    iget-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->params:Ljava/util/Map;

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 799
    .end local v1    # "_key46":Ljava/lang/String;
    .end local v3    # "_val47":Ljava/lang/String;
    :cond_a
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readMapEnd()V

    goto/16 :goto_1

    .line 802
    .end local v0    # "_i45":I
    .end local v2    # "_map44":Lorg/apache/thrift/protocol/TMap;
    :cond_b
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 806
    :pswitch_a
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v7, :cond_c

    .line 807
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->category:Ljava/lang/String;

    goto/16 :goto_1

    .line 809
    :cond_c
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 813
    :pswitch_b
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v7, :cond_d

    .line 814
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->userAccount:Ljava/lang/String;

    goto/16 :goto_1

    .line 816
    :cond_d
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 719
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
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public setNeedAckIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 364
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 365
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 926
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "XmPushActionSendMessage("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 927
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 929
    .local v0, "first":Z
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 930
    const-string v2, "debug:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->debug:Ljava/lang/String;

    if-nez v2, :cond_15

    .line 932
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    :goto_0
    const/4 v0, 0x0

    .line 938
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetTarget()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 939
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 940
    :cond_1
    const-string/jumbo v2, "target:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-nez v2, :cond_16

    .line 942
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    :goto_1
    const/4 v0, 0x0

    .line 948
    :cond_2
    if-nez v0, :cond_3

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 949
    :cond_3
    const-string v2, "id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 950
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->id:Ljava/lang/String;

    if-nez v2, :cond_17

    .line 951
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    :goto_2
    const/4 v0, 0x0

    .line 956
    if-nez v0, :cond_4

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    :cond_4
    const-string v2, "appId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->appId:Ljava/lang/String;

    if-nez v2, :cond_18

    .line 959
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    :goto_3
    const/4 v0, 0x0

    .line 964
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetPackageName()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 965
    if-nez v0, :cond_5

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    :cond_5
    const-string v2, "packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->packageName:Ljava/lang/String;

    if-nez v2, :cond_19

    .line 968
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    :goto_4
    const/4 v0, 0x0

    .line 974
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetTopic()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 975
    if-nez v0, :cond_7

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    :cond_7
    const-string/jumbo v2, "topic:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->topic:Ljava/lang/String;

    if-nez v2, :cond_1a

    .line 978
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    :goto_5
    const/4 v0, 0x0

    .line 984
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetAliasName()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 985
    if-nez v0, :cond_9

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    :cond_9
    const-string v2, "aliasName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->aliasName:Ljava/lang/String;

    if-nez v2, :cond_1b

    .line 988
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    :goto_6
    const/4 v0, 0x0

    .line 994
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetMessage()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 995
    if-nez v0, :cond_b

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    :cond_b
    const-string v2, "message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->message:Lcom/xiaomi/xmpush/thrift/PushMessage;

    if-nez v2, :cond_1c

    .line 998
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    :goto_7
    const/4 v0, 0x0

    .line 1004
    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetNeedAck()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1005
    if-nez v0, :cond_d

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    :cond_d
    const-string v2, "needAck:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    iget-boolean v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->needAck:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1008
    const/4 v0, 0x0

    .line 1010
    :cond_e
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetParams()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1011
    if-nez v0, :cond_f

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    :cond_f
    const-string v2, "params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->params:Ljava/util/Map;

    if-nez v2, :cond_1d

    .line 1014
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    :goto_8
    const/4 v0, 0x0

    .line 1020
    :cond_10
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetCategory()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1021
    if-nez v0, :cond_11

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1022
    :cond_11
    const-string v2, "category:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->category:Ljava/lang/String;

    if-nez v2, :cond_1e

    .line 1024
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    :goto_9
    const/4 v0, 0x0

    .line 1030
    :cond_12
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetUserAccount()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1031
    if-nez v0, :cond_13

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    :cond_13
    const-string/jumbo v2, "userAccount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->userAccount:Ljava/lang/String;

    if-nez v2, :cond_1f

    .line 1034
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    :goto_a
    const/4 v0, 0x0

    .line 1040
    :cond_14
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1041
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 934
    :cond_15
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->debug:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 944
    :cond_16
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 953
    :cond_17
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 961
    :cond_18
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 970
    :cond_19
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 980
    :cond_1a
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->topic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 990
    :cond_1b
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->aliasName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 1000
    :cond_1c
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->message:Lcom/xiaomi/xmpush/thrift/PushMessage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 1016
    :cond_1d
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->params:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 1026
    :cond_1e
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 1036
    :cond_1f
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->userAccount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a
.end method

.method public validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1047
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1049
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->appId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1050
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'appId\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1052
    :cond_1
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
    const/16 v3, 0xb

    .line 831
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->validate()V

    .line 833
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructBegin(Lorg/apache/thrift/protocol/TStruct;)V

    .line 834
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->debug:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 835
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 836
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->DEBUG_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 837
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->debug:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 838
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 841
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-eqz v1, :cond_1

    .line 842
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetTarget()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 843
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->TARGET_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 844
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v1, p1}, Lcom/xiaomi/xmpush/thrift/Target;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 845
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 848
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->id:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 849
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 850
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->id:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 851
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 853
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->appId:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 854
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->APP_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 855
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->appId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 856
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 858
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 859
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetPackageName()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 860
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->PACKAGE_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 861
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 862
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 865
    :cond_4
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->topic:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 866
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetTopic()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 867
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->TOPIC_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 868
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->topic:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 869
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 872
    :cond_5
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->aliasName:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 873
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetAliasName()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 874
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->ALIAS_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 875
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->aliasName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 876
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 879
    :cond_6
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->message:Lcom/xiaomi/xmpush/thrift/PushMessage;

    if-eqz v1, :cond_7

    .line 880
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetMessage()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 881
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->MESSAGE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 882
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->message:Lcom/xiaomi/xmpush/thrift/PushMessage;

    invoke-virtual {v1, p1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 883
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 886
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetNeedAck()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 887
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->NEED_ACK_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 888
    iget-boolean v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->needAck:Z

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 889
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 891
    :cond_8
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->params:Ljava/util/Map;

    if-eqz v1, :cond_a

    .line 892
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetParams()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 893
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->PARAMS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 895
    new-instance v1, Lorg/apache/thrift/protocol/TMap;

    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->params:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v3, v3, v2}, Lorg/apache/thrift/protocol/TMap;-><init>(BBI)V

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeMapBegin(Lorg/apache/thrift/protocol/TMap;)V

    .line 896
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->params:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 898
    .local v0, "_iter48":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 899
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 901
    .end local v0    # "_iter48":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeMapEnd()V

    .line 903
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 906
    :cond_a
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->category:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 907
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetCategory()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 908
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->CATEGORY_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 909
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->category:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 910
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 913
    :cond_b
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->userAccount:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 914
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->isSetUserAccount()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 915
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->USER_ACCOUNT_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 916
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->userAccount:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 917
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 920
    :cond_c
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 921
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 922
    return-void
.end method
