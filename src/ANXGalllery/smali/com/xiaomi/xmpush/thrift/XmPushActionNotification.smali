.class public Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
.super Ljava/lang/Object;
.source "XmPushActionNotification.java"

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
        "Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final ALIAS_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final ALREADY_LOG_CLICK_IN_XMQ_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final APP_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final BINARY_EXTRA_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final CATEGORY_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final CREATED_TS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final DEBUG_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final EXTRA_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final PACKAGE_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final PAYLOAD_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final REG_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final REQUIRE_ACK_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

.field private static final TARGET_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final TYPE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public aliasName:Ljava/lang/String;

.field public alreadyLogClickInXmq:Z

.field public appId:Ljava/lang/String;

.field public binaryExtra:Ljava/nio/ByteBuffer;

.field public category:Ljava/lang/String;

.field public createdTs:J

.field public debug:Ljava/lang/String;

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

.field public payload:Ljava/lang/String;

.field public regId:Ljava/lang/String;

.field public requireAck:Z

.field public target:Lcom/xiaomi/xmpush/thrift/Target;

.field public type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0xc

    const/16 v5, 0xa

    const/4 v4, 0x2

    const/16 v3, 0xb

    .line 30
    new-instance v0, Lorg/apache/thrift/protocol/TStruct;

    const-string v1, "XmPushActionNotification"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    .line 32
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->DEBUG_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v6, v4}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->TARGET_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->APP_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 36
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x5

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->TYPE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 37
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x6

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->REQUIRE_ACK_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 38
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x7

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->PAYLOAD_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 39
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x8

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->EXTRA_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 40
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x9

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->PACKAGE_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 41
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v3, v5}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->CATEGORY_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 42
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v3, v6}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->REG_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 43
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v3, v7}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->ALIAS_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 44
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xe

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->BINARY_EXTRA_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 45
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xf

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->CREATED_TS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 46
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x14

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->ALREADY_LOG_CLICK_IN_XMQ_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->__isset_bit_vector:Ljava/util/BitSet;

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->requireAck:Z

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->alreadyLogClickInXmq:Z

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "requireAck"    # Z

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->id:Ljava/lang/String;

    .line 84
    iput-boolean p2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->requireAck:Z

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setRequireAckIsSet(Z)V

    .line 86
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;)I
    .locals 6
    .param p1, "other"    # Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .prologue
    .line 709
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 710
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

    .line 866
    :cond_0
    :goto_0
    return v0

    .line 713
    :cond_1
    const/4 v0, 0x0

    .line 714
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 716
    .local v1, "typedOther":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetDebug()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetDebug()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 717
    if-nez v0, :cond_0

    .line 720
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetDebug()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 721
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->debug:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->debug:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 722
    if-nez v0, :cond_0

    .line 726
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetTarget()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetTarget()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 727
    if-nez v0, :cond_0

    .line 730
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetTarget()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 731
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->target:Lcom/xiaomi/xmpush/thrift/Target;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 732
    if-nez v0, :cond_0

    .line 736
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 737
    if-nez v0, :cond_0

    .line 740
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetId()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 741
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->id:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 742
    if-nez v0, :cond_0

    .line 746
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetAppId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetAppId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 747
    if-nez v0, :cond_0

    .line 750
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetAppId()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 751
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->appId:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->appId:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 752
    if-nez v0, :cond_0

    .line 756
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetType()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetType()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 757
    if-nez v0, :cond_0

    .line 760
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetType()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 761
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 762
    if-nez v0, :cond_0

    .line 766
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetRequireAck()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetRequireAck()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 767
    if-nez v0, :cond_0

    .line 770
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetRequireAck()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 771
    iget-boolean v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->requireAck:Z

    iget-boolean v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->requireAck:Z

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 772
    if-nez v0, :cond_0

    .line 776
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetPayload()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetPayload()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 777
    if-nez v0, :cond_0

    .line 780
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetPayload()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 781
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->payload:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->payload:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 782
    if-nez v0, :cond_0

    .line 786
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetExtra()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetExtra()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 787
    if-nez v0, :cond_0

    .line 790
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetExtra()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 791
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    .line 792
    if-nez v0, :cond_0

    .line 796
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetPackageName()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetPackageName()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 797
    if-nez v0, :cond_0

    .line 800
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetPackageName()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 801
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->packageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 802
    if-nez v0, :cond_0

    .line 806
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetCategory()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetCategory()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 807
    if-nez v0, :cond_0

    .line 810
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetCategory()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 811
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->category:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->category:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 812
    if-nez v0, :cond_0

    .line 816
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetRegId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetRegId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 817
    if-nez v0, :cond_0

    .line 820
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetRegId()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 821
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->regId:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->regId:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 822
    if-nez v0, :cond_0

    .line 826
    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetAliasName()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetAliasName()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 827
    if-nez v0, :cond_0

    .line 830
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetAliasName()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 831
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->aliasName:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->aliasName:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 832
    if-nez v0, :cond_0

    .line 836
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetBinaryExtra()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetBinaryExtra()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 837
    if-nez v0, :cond_0

    .line 840
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetBinaryExtra()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 841
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->binaryExtra:Ljava/nio/ByteBuffer;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->binaryExtra:Ljava/nio/ByteBuffer;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 842
    if-nez v0, :cond_0

    .line 846
    :cond_e
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetCreatedTs()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetCreatedTs()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 847
    if-nez v0, :cond_0

    .line 850
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetCreatedTs()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 851
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->createdTs:J

    iget-wide v4, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->createdTs:J

    invoke-static {v2, v3, v4, v5}, Lorg/apache/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 852
    if-nez v0, :cond_0

    .line 856
    :cond_f
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetAlreadyLogClickInXmq()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetAlreadyLogClickInXmq()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 857
    if-nez v0, :cond_0

    .line 860
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetAlreadyLogClickInXmq()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 861
    iget-boolean v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->alreadyLogClickInXmq:Z

    iget-boolean v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->alreadyLogClickInXmq:Z

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 862
    if-nez v0, :cond_0

    .line 866
    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 29
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->compareTo(Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;)I

    move-result v0

    return v0
.end method

.method public equals(Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;)Z
    .locals 36
    .param p1, "that"    # Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .prologue
    .line 562
    if-nez p1, :cond_0

    .line 563
    const/16 v32, 0x0

    .line 700
    :goto_0
    return v32

    .line 565
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetDebug()Z

    move-result v23

    .line 566
    .local v23, "this_present_debug":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetDebug()Z

    move-result v8

    .line 567
    .local v8, "that_present_debug":Z
    if-nez v23, :cond_1

    if-eqz v8, :cond_4

    .line 568
    :cond_1
    if-eqz v23, :cond_2

    if-nez v8, :cond_3

    .line 569
    :cond_2
    const/16 v32, 0x0

    goto :goto_0

    .line 570
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->debug:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->debug:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_4

    .line 571
    const/16 v32, 0x0

    goto :goto_0

    .line 574
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetTarget()Z

    move-result v30

    .line 575
    .local v30, "this_present_target":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetTarget()Z

    move-result v15

    .line 576
    .local v15, "that_present_target":Z
    if-nez v30, :cond_5

    if-eqz v15, :cond_8

    .line 577
    :cond_5
    if-eqz v30, :cond_6

    if-nez v15, :cond_7

    .line 578
    :cond_6
    const/16 v32, 0x0

    goto :goto_0

    .line 579
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->target:Lcom/xiaomi/xmpush/thrift/Target;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->target:Lcom/xiaomi/xmpush/thrift/Target;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lcom/xiaomi/xmpush/thrift/Target;->equals(Lcom/xiaomi/xmpush/thrift/Target;)Z

    move-result v32

    if-nez v32, :cond_8

    .line 580
    const/16 v32, 0x0

    goto :goto_0

    .line 583
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetId()Z

    move-result v25

    .line 584
    .local v25, "this_present_id":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetId()Z

    move-result v10

    .line 585
    .local v10, "that_present_id":Z
    if-nez v25, :cond_9

    if-eqz v10, :cond_c

    .line 586
    :cond_9
    if-eqz v25, :cond_a

    if-nez v10, :cond_b

    .line 587
    :cond_a
    const/16 v32, 0x0

    goto :goto_0

    .line 588
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->id:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->id:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_c

    .line 589
    const/16 v32, 0x0

    goto :goto_0

    .line 592
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetAppId()Z

    move-result v19

    .line 593
    .local v19, "this_present_appId":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetAppId()Z

    move-result v4

    .line 594
    .local v4, "that_present_appId":Z
    if-nez v19, :cond_d

    if-eqz v4, :cond_10

    .line 595
    :cond_d
    if-eqz v19, :cond_e

    if-nez v4, :cond_f

    .line 596
    :cond_e
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 597
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->appId:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->appId:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_10

    .line 598
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 601
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetType()Z

    move-result v31

    .line 602
    .local v31, "this_present_type":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetType()Z

    move-result v16

    .line 603
    .local v16, "that_present_type":Z
    if-nez v31, :cond_11

    if-eqz v16, :cond_14

    .line 604
    :cond_11
    if-eqz v31, :cond_12

    if-nez v16, :cond_13

    .line 605
    :cond_12
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 606
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_14

    .line 607
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 610
    :cond_14
    const/16 v29, 0x1

    .line 611
    .local v29, "this_present_requireAck":Z
    const/4 v14, 0x1

    .line 612
    .local v14, "that_present_requireAck":Z
    if-nez v29, :cond_15

    if-eqz v14, :cond_18

    .line 613
    :cond_15
    if-eqz v29, :cond_16

    if-nez v14, :cond_17

    .line 614
    :cond_16
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 615
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->requireAck:Z

    move/from16 v32, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->requireAck:Z

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_18

    .line 616
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 619
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetPayload()Z

    move-result v27

    .line 620
    .local v27, "this_present_payload":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetPayload()Z

    move-result v12

    .line 621
    .local v12, "that_present_payload":Z
    if-nez v27, :cond_19

    if-eqz v12, :cond_1c

    .line 622
    :cond_19
    if-eqz v27, :cond_1a

    if-nez v12, :cond_1b

    .line 623
    :cond_1a
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 624
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->payload:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->payload:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_1c

    .line 625
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 628
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetExtra()Z

    move-result v24

    .line 629
    .local v24, "this_present_extra":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetExtra()Z

    move-result v9

    .line 630
    .local v9, "that_present_extra":Z
    if-nez v24, :cond_1d

    if-eqz v9, :cond_20

    .line 631
    :cond_1d
    if-eqz v24, :cond_1e

    if-nez v9, :cond_1f

    .line 632
    :cond_1e
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 633
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    move-object/from16 v33, v0

    invoke-interface/range {v32 .. v33}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_20

    .line 634
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 637
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetPackageName()Z

    move-result v26

    .line 638
    .local v26, "this_present_packageName":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetPackageName()Z

    move-result v11

    .line 639
    .local v11, "that_present_packageName":Z
    if-nez v26, :cond_21

    if-eqz v11, :cond_24

    .line 640
    :cond_21
    if-eqz v26, :cond_22

    if-nez v11, :cond_23

    .line 641
    :cond_22
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 642
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->packageName:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->packageName:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_24

    .line 643
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 646
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetCategory()Z

    move-result v21

    .line 647
    .local v21, "this_present_category":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetCategory()Z

    move-result v6

    .line 648
    .local v6, "that_present_category":Z
    if-nez v21, :cond_25

    if-eqz v6, :cond_28

    .line 649
    :cond_25
    if-eqz v21, :cond_26

    if-nez v6, :cond_27

    .line 650
    :cond_26
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 651
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->category:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->category:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_28

    .line 652
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 655
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetRegId()Z

    move-result v28

    .line 656
    .local v28, "this_present_regId":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetRegId()Z

    move-result v13

    .line 657
    .local v13, "that_present_regId":Z
    if-nez v28, :cond_29

    if-eqz v13, :cond_2c

    .line 658
    :cond_29
    if-eqz v28, :cond_2a

    if-nez v13, :cond_2b

    .line 659
    :cond_2a
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 660
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->regId:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->regId:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_2c

    .line 661
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 664
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetAliasName()Z

    move-result v17

    .line 665
    .local v17, "this_present_aliasName":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetAliasName()Z

    move-result v2

    .line 666
    .local v2, "that_present_aliasName":Z
    if-nez v17, :cond_2d

    if-eqz v2, :cond_30

    .line 667
    :cond_2d
    if-eqz v17, :cond_2e

    if-nez v2, :cond_2f

    .line 668
    :cond_2e
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 669
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->aliasName:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->aliasName:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_30

    .line 670
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 673
    :cond_30
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetBinaryExtra()Z

    move-result v20

    .line 674
    .local v20, "this_present_binaryExtra":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetBinaryExtra()Z

    move-result v5

    .line 675
    .local v5, "that_present_binaryExtra":Z
    if-nez v20, :cond_31

    if-eqz v5, :cond_34

    .line 676
    :cond_31
    if-eqz v20, :cond_32

    if-nez v5, :cond_33

    .line 677
    :cond_32
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 678
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->binaryExtra:Ljava/nio/ByteBuffer;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->binaryExtra:Ljava/nio/ByteBuffer;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_34

    .line 679
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 682
    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetCreatedTs()Z

    move-result v22

    .line 683
    .local v22, "this_present_createdTs":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetCreatedTs()Z

    move-result v7

    .line 684
    .local v7, "that_present_createdTs":Z
    if-nez v22, :cond_35

    if-eqz v7, :cond_38

    .line 685
    :cond_35
    if-eqz v22, :cond_36

    if-nez v7, :cond_37

    .line 686
    :cond_36
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 687
    :cond_37
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->createdTs:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->createdTs:J

    move-wide/from16 v34, v0

    cmp-long v32, v32, v34

    if-eqz v32, :cond_38

    .line 688
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 691
    :cond_38
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetAlreadyLogClickInXmq()Z

    move-result v18

    .line 692
    .local v18, "this_present_alreadyLogClickInXmq":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetAlreadyLogClickInXmq()Z

    move-result v3

    .line 693
    .local v3, "that_present_alreadyLogClickInXmq":Z
    if-nez v18, :cond_39

    if-eqz v3, :cond_3c

    .line 694
    :cond_39
    if-eqz v18, :cond_3a

    if-nez v3, :cond_3b

    .line 695
    :cond_3a
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 696
    :cond_3b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->alreadyLogClickInXmq:Z

    move/from16 v32, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->alreadyLogClickInXmq:Z

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_3c

    .line 697
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 700
    :cond_3c
    const/16 v32, 0x1

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 554
    if-nez p1, :cond_1

    .line 558
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 556
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    if-eqz v1, :cond_0

    .line 557
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->equals(Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getBinaryExtra()[B
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->binaryExtra:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lorg/apache/thrift/TBaseHelper;->rightSize(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setBinaryExtra(Ljava/nio/ByteBuffer;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 474
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->binaryExtra:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
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
    .line 353
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 705
    const/4 v0, 0x0

    return v0
.end method

.method public isSetAliasName()Z
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->aliasName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetAlreadyLogClickInXmq()Z
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetAppId()Z
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->appId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetBinaryExtra()Z
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->binaryExtra:Ljava/nio/ByteBuffer;

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
    .line 415
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->category:Ljava/lang/String;

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
    .line 522
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetDebug()Z
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->debug:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetExtra()Z
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

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
    .line 237
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->id:Ljava/lang/String;

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
    .line 391
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetPayload()Z
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->payload:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetRegId()Z
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->regId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetRequireAck()Z
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetTarget()Z
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->target:Lcom/xiaomi/xmpush/thrift/Target;

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
    .line 285
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putToExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 346
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 347
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    return-void
.end method

.method public read(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 11
    .param p1, "iprot"    # Lorg/apache/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/16 v8, 0xb

    .line 871
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructBegin()Lorg/apache/thrift/protocol/TStruct;

    .line 874
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldBegin()Lorg/apache/thrift/protocol/TField;

    move-result-object v4

    .line 875
    .local v4, "field":Lorg/apache/thrift/protocol/TField;
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-nez v5, :cond_0

    .line 1005
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructEnd()V

    .line 1008
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetRequireAck()Z

    move-result v5

    if-nez v5, :cond_11

    .line 1009
    new-instance v5, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Required field \'requireAck\' was not found in serialized data! Struct: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 878
    :cond_0
    iget-short v5, v4, Lorg/apache/thrift/protocol/TField;->id:S

    packed-switch v5, :pswitch_data_0

    .line 1001
    :pswitch_0
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    .line 1003
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 880
    :pswitch_1
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_1

    .line 881
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->debug:Ljava/lang/String;

    goto :goto_1

    .line 883
    :cond_1
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 887
    :pswitch_2
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v6, 0xc

    if-ne v5, v6, :cond_2

    .line 888
    new-instance v5, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v5}, Lcom/xiaomi/xmpush/thrift/Target;-><init>()V

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->target:Lcom/xiaomi/xmpush/thrift/Target;

    .line 889
    iget-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v5, p1}, Lcom/xiaomi/xmpush/thrift/Target;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 891
    :cond_2
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 895
    :pswitch_3
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_3

    .line 896
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->id:Ljava/lang/String;

    goto :goto_1

    .line 898
    :cond_3
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 902
    :pswitch_4
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_4

    .line 903
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->appId:Ljava/lang/String;

    goto :goto_1

    .line 905
    :cond_4
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 909
    :pswitch_5
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_5

    .line 910
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    goto :goto_1

    .line 912
    :cond_5
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 916
    :pswitch_6
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v10, :cond_6

    .line 917
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->requireAck:Z

    .line 918
    invoke-virtual {p0, v9}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setRequireAckIsSet(Z)V

    goto :goto_1

    .line 920
    :cond_6
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 924
    :pswitch_7
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_7

    .line 925
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->payload:Ljava/lang/String;

    goto :goto_1

    .line 927
    :cond_7
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 931
    :pswitch_8
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v6, 0xd

    if-ne v5, v6, :cond_9

    .line 933
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readMapBegin()Lorg/apache/thrift/protocol/TMap;

    move-result-object v2

    .line 934
    .local v2, "_map79":Lorg/apache/thrift/protocol/TMap;
    new-instance v5, Ljava/util/HashMap;

    iget v6, v2, Lorg/apache/thrift/protocol/TMap;->size:I

    mul-int/lit8 v6, v6, 0x2

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    .line 935
    const/4 v0, 0x0

    .local v0, "_i80":I
    :goto_2
    iget v5, v2, Lorg/apache/thrift/protocol/TMap;->size:I

    if-ge v0, v5, :cond_8

    .line 939
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    .line 940
    .local v1, "_key81":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v3

    .line 941
    .local v3, "_val82":Ljava/lang/String;
    iget-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 943
    .end local v1    # "_key81":Ljava/lang/String;
    .end local v3    # "_val82":Ljava/lang/String;
    :cond_8
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readMapEnd()V

    goto/16 :goto_1

    .line 946
    .end local v0    # "_i80":I
    .end local v2    # "_map79":Lorg/apache/thrift/protocol/TMap;
    :cond_9
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 950
    :pswitch_9
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_a

    .line 951
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->packageName:Ljava/lang/String;

    goto/16 :goto_1

    .line 953
    :cond_a
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 957
    :pswitch_a
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_b

    .line 958
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->category:Ljava/lang/String;

    goto/16 :goto_1

    .line 960
    :cond_b
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 964
    :pswitch_b
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_c

    .line 965
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->regId:Ljava/lang/String;

    goto/16 :goto_1

    .line 967
    :cond_c
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 971
    :pswitch_c
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_d

    .line 972
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->aliasName:Ljava/lang/String;

    goto/16 :goto_1

    .line 974
    :cond_d
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 978
    :pswitch_d
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_e

    .line 979
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readBinary()Ljava/nio/ByteBuffer;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->binaryExtra:Ljava/nio/ByteBuffer;

    goto/16 :goto_1

    .line 981
    :cond_e
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 985
    :pswitch_e
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v6, 0xa

    if-ne v5, v6, :cond_f

    .line 986
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->createdTs:J

    .line 987
    invoke-virtual {p0, v9}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setCreatedTsIsSet(Z)V

    goto/16 :goto_1

    .line 989
    :cond_f
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 993
    :pswitch_f
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v10, :cond_10

    .line 994
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->alreadyLogClickInXmq:Z

    .line 995
    invoke-virtual {p0, v9}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setAlreadyLogClickInXmqIsSet(Z)V

    goto/16 :goto_1

    .line 997
    :cond_10
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1011
    :cond_11
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->validate()V

    .line 1012
    return-void

    .line 878
    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
    .end packed-switch
.end method

.method public setAlreadyLogClickInXmqIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 549
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 550
    return-void
.end method

.method public setAppId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->appId:Ljava/lang/String;

    .line 252
    return-object p0
.end method

.method public setBinaryExtra(Ljava/nio/ByteBuffer;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    .locals 0
    .param p1, "binaryExtra"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 487
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->binaryExtra:Ljava/nio/ByteBuffer;

    .line 488
    return-object p0
.end method

.method public setBinaryExtra([B)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    .locals 1
    .param p1, "binaryExtra"    # [B

    .prologue
    .line 482
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setBinaryExtra(Ljava/nio/ByteBuffer;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 483
    return-object p0
.end method

.method public setCreatedTsIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 526
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 527
    return-void
.end method

.method public setExtra(Ljava/util/Map;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;"
        }
    .end annotation

    .prologue
    .line 357
    .local p1, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    .line 358
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->id:Ljava/lang/String;

    .line 228
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->packageName:Ljava/lang/String;

    .line 382
    return-object p0
.end method

.method public setRequireAck(Z)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    .locals 1
    .param p1, "requireAck"    # Z

    .prologue
    .line 299
    iput-boolean p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->requireAck:Z

    .line 300
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setRequireAckIsSet(Z)V

    .line 301
    return-object p0
.end method

.method public setRequireAckIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 314
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 315
    return-void
.end method

.method public setType(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    .line 276
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1127
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "XmPushActionNotification("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1128
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 1130
    .local v0, "first":Z
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1131
    const-string v2, "debug:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1132
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->debug:Ljava/lang/String;

    if-nez v2, :cond_1b

    .line 1133
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    :goto_0
    const/4 v0, 0x0

    .line 1139
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetTarget()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1140
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    :cond_1
    const-string/jumbo v2, "target:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-nez v2, :cond_1c

    .line 1143
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1147
    :goto_1
    const/4 v0, 0x0

    .line 1149
    :cond_2
    if-nez v0, :cond_3

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    :cond_3
    const-string v2, "id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1151
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->id:Ljava/lang/String;

    if-nez v2, :cond_1d

    .line 1152
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1156
    :goto_2
    const/4 v0, 0x0

    .line 1157
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetAppId()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1158
    if-nez v0, :cond_4

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1159
    :cond_4
    const-string v2, "appId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1160
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->appId:Ljava/lang/String;

    if-nez v2, :cond_1e

    .line 1161
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1165
    :goto_3
    const/4 v0, 0x0

    .line 1167
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetType()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1168
    if-nez v0, :cond_6

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    :cond_6
    const-string/jumbo v2, "type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    if-nez v2, :cond_1f

    .line 1171
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    :goto_4
    const/4 v0, 0x0

    .line 1177
    :cond_7
    if-nez v0, :cond_8

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    :cond_8
    const-string v2, "requireAck:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1179
    iget-boolean v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->requireAck:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1180
    const/4 v0, 0x0

    .line 1181
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetPayload()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1182
    if-nez v0, :cond_9

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1183
    :cond_9
    const-string v2, "payload:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1184
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->payload:Ljava/lang/String;

    if-nez v2, :cond_20

    .line 1185
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    :goto_5
    const/4 v0, 0x0

    .line 1191
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetExtra()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1192
    if-nez v0, :cond_b

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1193
    :cond_b
    const-string v2, "extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1194
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    if-nez v2, :cond_21

    .line 1195
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1199
    :goto_6
    const/4 v0, 0x0

    .line 1201
    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetPackageName()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1202
    if-nez v0, :cond_d

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1203
    :cond_d
    const-string v2, "packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1204
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->packageName:Ljava/lang/String;

    if-nez v2, :cond_22

    .line 1205
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1209
    :goto_7
    const/4 v0, 0x0

    .line 1211
    :cond_e
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetCategory()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1212
    if-nez v0, :cond_f

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1213
    :cond_f
    const-string v2, "category:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1214
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->category:Ljava/lang/String;

    if-nez v2, :cond_23

    .line 1215
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1219
    :goto_8
    const/4 v0, 0x0

    .line 1221
    :cond_10
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetRegId()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1222
    if-nez v0, :cond_11

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1223
    :cond_11
    const-string v2, "regId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1224
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->regId:Ljava/lang/String;

    if-nez v2, :cond_24

    .line 1225
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1229
    :goto_9
    const/4 v0, 0x0

    .line 1231
    :cond_12
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetAliasName()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1232
    if-nez v0, :cond_13

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1233
    :cond_13
    const-string v2, "aliasName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1234
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->aliasName:Ljava/lang/String;

    if-nez v2, :cond_25

    .line 1235
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1239
    :goto_a
    const/4 v0, 0x0

    .line 1241
    :cond_14
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetBinaryExtra()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1242
    if-nez v0, :cond_15

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1243
    :cond_15
    const-string v2, "binaryExtra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1244
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->binaryExtra:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_26

    .line 1245
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1249
    :goto_b
    const/4 v0, 0x0

    .line 1251
    :cond_16
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetCreatedTs()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1252
    if-nez v0, :cond_17

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1253
    :cond_17
    const-string v2, "createdTs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1254
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->createdTs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1255
    const/4 v0, 0x0

    .line 1257
    :cond_18
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetAlreadyLogClickInXmq()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1258
    if-nez v0, :cond_19

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1259
    :cond_19
    const-string v2, "alreadyLogClickInXmq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1260
    iget-boolean v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->alreadyLogClickInXmq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1261
    const/4 v0, 0x0

    .line 1263
    :cond_1a
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1264
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1135
    :cond_1b
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->debug:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1145
    :cond_1c
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1154
    :cond_1d
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1163
    :cond_1e
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1173
    :cond_1f
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 1187
    :cond_20
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->payload:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 1197
    :cond_21
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 1207
    :cond_22
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 1217
    :cond_23
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 1227
    :cond_24
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->regId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 1237
    :cond_25
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->aliasName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 1247
    :cond_26
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->binaryExtra:Ljava/nio/ByteBuffer;

    invoke-static {v2, v1}, Lorg/apache/thrift/TBaseHelper;->toString(Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;)V

    goto/16 :goto_b
.end method

.method public validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1270
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1273
    :cond_0
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

    .line 1015
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->validate()V

    .line 1017
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructBegin(Lorg/apache/thrift/protocol/TStruct;)V

    .line 1018
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->debug:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1019
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1020
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->DEBUG_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1021
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->debug:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1022
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1025
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-eqz v1, :cond_1

    .line 1026
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetTarget()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1027
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->TARGET_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1028
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v1, p1}, Lcom/xiaomi/xmpush/thrift/Target;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 1029
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1032
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->id:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1033
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1034
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->id:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1035
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1037
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->appId:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1038
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetAppId()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1039
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->APP_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1040
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->appId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1041
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1044
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1045
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetType()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1046
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->TYPE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1047
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1048
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1051
    :cond_4
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->REQUIRE_ACK_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1052
    iget-boolean v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->requireAck:Z

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 1053
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1054
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->payload:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1055
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetPayload()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1056
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->PAYLOAD_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1057
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->payload:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1058
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1061
    :cond_5
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    if-eqz v1, :cond_7

    .line 1062
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetExtra()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1063
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->EXTRA_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1065
    new-instance v1, Lorg/apache/thrift/protocol/TMap;

    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v3, v3, v2}, Lorg/apache/thrift/protocol/TMap;-><init>(BBI)V

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeMapBegin(Lorg/apache/thrift/protocol/TMap;)V

    .line 1066
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1068
    .local v0, "_iter83":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1069
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 1071
    .end local v0    # "_iter83":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeMapEnd()V

    .line 1073
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1076
    :cond_7
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 1077
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetPackageName()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1078
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->PACKAGE_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1079
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1080
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1083
    :cond_8
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->category:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1084
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetCategory()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1085
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->CATEGORY_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1086
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->category:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1087
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1090
    :cond_9
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->regId:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 1091
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetRegId()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1092
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->REG_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1093
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->regId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1094
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1097
    :cond_a
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->aliasName:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 1098
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetAliasName()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1099
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->ALIAS_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1100
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->aliasName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1101
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1104
    :cond_b
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->binaryExtra:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_c

    .line 1105
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetBinaryExtra()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1106
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->BINARY_EXTRA_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1107
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->binaryExtra:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeBinary(Ljava/nio/ByteBuffer;)V

    .line 1108
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1111
    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetCreatedTs()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1112
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->CREATED_TS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1113
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->createdTs:J

    invoke-virtual {p1, v2, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeI64(J)V

    .line 1114
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1116
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->isSetAlreadyLogClickInXmq()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1117
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->ALREADY_LOG_CLICK_IN_XMQ_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1118
    iget-boolean v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->alreadyLogClickInXmq:Z

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 1119
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1121
    :cond_e
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 1122
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 1123
    return-void
.end method
