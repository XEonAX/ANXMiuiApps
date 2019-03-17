.class public Lcom/xiaomi/xmpush/thrift/PushMessage;
.super Ljava/lang/Object;
.source "PushMessage.java"

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
        "Lcom/xiaomi/xmpush/thrift/PushMessage;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final ALIAS_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final APP_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final CATEGORY_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final COLLAPSE_KEY_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final CREATE_AT_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final DEVICE_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final IMEI_MD5_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final IS_ONLINE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final META_INFO_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final MIID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final PACKAGE_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final PAYLOAD_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final REG_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

.field private static final TOPIC_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final TO_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final TTL_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final USER_ACCOUNT_FIELD_DESC:Lorg/apache/thrift/protocol/TField;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public aliasName:Ljava/lang/String;

.field public appId:Ljava/lang/String;

.field public category:Ljava/lang/String;

.field public collapseKey:Ljava/lang/String;

.field public createAt:J

.field public deviceId:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public imeiMd5:Ljava/lang/String;

.field public isOnline:Z

.field public metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

.field public miid:J

.field public packageName:Ljava/lang/String;

.field public payload:Ljava/lang/String;

.field public regId:Ljava/lang/String;

.field public to:Lcom/xiaomi/xmpush/thrift/Target;

.field public topic:Ljava/lang/String;

.field public ttl:J

.field public userAccount:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/16 v5, 0xc

    const/16 v4, 0xa

    const/16 v3, 0xb

    .line 30
    new-instance v0, Lorg/apache/thrift/protocol/TStruct;

    const-string v1, "PushMessage"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    .line 32
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->TO_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v3, v6}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->APP_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->PAYLOAD_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 36
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x5

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->CREATE_AT_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 37
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x6

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->TTL_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 38
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x7

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->COLLAPSE_KEY_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 39
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x8

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->PACKAGE_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 40
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x9

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->REG_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 41
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v3, v4}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->CATEGORY_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 42
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v3, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->TOPIC_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 43
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v5, v5}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->META_INFO_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 44
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xd

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->ALIAS_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 45
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xe

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->IS_ONLINE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 46
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xf

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->USER_ACCOUNT_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 47
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x10

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->MIID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 48
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x14

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->IMEI_MD5_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 49
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x15

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->DEVICE_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->__isset_bit_vector:Ljava/util/BitSet;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->isOnline:Z

    .line 81
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/xiaomi/xmpush/thrift/PushMessage;)I
    .locals 6
    .param p1, "other"    # Lcom/xiaomi/xmpush/thrift/PushMessage;

    .prologue
    .line 790
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 791
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

    .line 977
    :cond_0
    :goto_0
    return v0

    .line 794
    :cond_1
    const/4 v0, 0x0

    .line 795
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 797
    .local v1, "typedOther":Lcom/xiaomi/xmpush/thrift/PushMessage;
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetTo()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetTo()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 798
    if-nez v0, :cond_0

    .line 801
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetTo()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 802
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->to:Lcom/xiaomi/xmpush/thrift/Target;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/PushMessage;->to:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 803
    if-nez v0, :cond_0

    .line 807
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 808
    if-nez v0, :cond_0

    .line 811
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetId()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 812
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->id:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/PushMessage;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 813
    if-nez v0, :cond_0

    .line 817
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetAppId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetAppId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 818
    if-nez v0, :cond_0

    .line 821
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetAppId()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 822
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->appId:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/PushMessage;->appId:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 823
    if-nez v0, :cond_0

    .line 827
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetPayload()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetPayload()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 828
    if-nez v0, :cond_0

    .line 831
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetPayload()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 832
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->payload:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/PushMessage;->payload:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 833
    if-nez v0, :cond_0

    .line 837
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetCreateAt()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetCreateAt()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 838
    if-nez v0, :cond_0

    .line 841
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetCreateAt()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 842
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->createAt:J

    iget-wide v4, v1, Lcom/xiaomi/xmpush/thrift/PushMessage;->createAt:J

    invoke-static {v2, v3, v4, v5}, Lorg/apache/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 843
    if-nez v0, :cond_0

    .line 847
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetTtl()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetTtl()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 848
    if-nez v0, :cond_0

    .line 851
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetTtl()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 852
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->ttl:J

    iget-wide v4, v1, Lcom/xiaomi/xmpush/thrift/PushMessage;->ttl:J

    invoke-static {v2, v3, v4, v5}, Lorg/apache/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 853
    if-nez v0, :cond_0

    .line 857
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetCollapseKey()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetCollapseKey()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 858
    if-nez v0, :cond_0

    .line 861
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetCollapseKey()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 862
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->collapseKey:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/PushMessage;->collapseKey:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 863
    if-nez v0, :cond_0

    .line 867
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetPackageName()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetPackageName()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 868
    if-nez v0, :cond_0

    .line 871
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetPackageName()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 872
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->packageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/PushMessage;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 873
    if-nez v0, :cond_0

    .line 877
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetRegId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetRegId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 878
    if-nez v0, :cond_0

    .line 881
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetRegId()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 882
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->regId:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/PushMessage;->regId:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 883
    if-nez v0, :cond_0

    .line 887
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetCategory()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetCategory()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 888
    if-nez v0, :cond_0

    .line 891
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetCategory()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 892
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->category:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/PushMessage;->category:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 893
    if-nez v0, :cond_0

    .line 897
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetTopic()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetTopic()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 898
    if-nez v0, :cond_0

    .line 901
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetTopic()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 902
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->topic:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/PushMessage;->topic:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 903
    if-nez v0, :cond_0

    .line 907
    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetMetaInfo()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetMetaInfo()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 908
    if-nez v0, :cond_0

    .line 911
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetMetaInfo()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 912
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/PushMessage;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 913
    if-nez v0, :cond_0

    .line 917
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetAliasName()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetAliasName()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 918
    if-nez v0, :cond_0

    .line 921
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetAliasName()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 922
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->aliasName:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/PushMessage;->aliasName:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 923
    if-nez v0, :cond_0

    .line 927
    :cond_e
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetIsOnline()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetIsOnline()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 928
    if-nez v0, :cond_0

    .line 931
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetIsOnline()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 932
    iget-boolean v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->isOnline:Z

    iget-boolean v3, v1, Lcom/xiaomi/xmpush/thrift/PushMessage;->isOnline:Z

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 933
    if-nez v0, :cond_0

    .line 937
    :cond_f
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetUserAccount()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetUserAccount()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 938
    if-nez v0, :cond_0

    .line 941
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetUserAccount()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 942
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->userAccount:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/PushMessage;->userAccount:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 943
    if-nez v0, :cond_0

    .line 947
    :cond_10
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetMiid()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetMiid()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 948
    if-nez v0, :cond_0

    .line 951
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetMiid()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 952
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->miid:J

    iget-wide v4, v1, Lcom/xiaomi/xmpush/thrift/PushMessage;->miid:J

    invoke-static {v2, v3, v4, v5}, Lorg/apache/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 953
    if-nez v0, :cond_0

    .line 957
    :cond_11
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetImeiMd5()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetImeiMd5()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 958
    if-nez v0, :cond_0

    .line 961
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetImeiMd5()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 962
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->imeiMd5:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/PushMessage;->imeiMd5:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 963
    if-nez v0, :cond_0

    .line 967
    :cond_12
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetDeviceId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetDeviceId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 968
    if-nez v0, :cond_0

    .line 971
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetDeviceId()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 972
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->deviceId:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/PushMessage;->deviceId:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 973
    if-nez v0, :cond_0

    .line 977
    :cond_13
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 29
    check-cast p1, Lcom/xiaomi/xmpush/thrift/PushMessage;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->compareTo(Lcom/xiaomi/xmpush/thrift/PushMessage;)I

    move-result v0

    return v0
.end method

.method public equals(Lcom/xiaomi/xmpush/thrift/PushMessage;)Z
    .locals 42
    .param p1, "that"    # Lcom/xiaomi/xmpush/thrift/PushMessage;

    .prologue
    .line 616
    if-nez p1, :cond_0

    .line 617
    const/16 v38, 0x0

    .line 781
    :goto_0
    return v38

    .line 619
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetTo()Z

    move-result v34

    .line 620
    .local v34, "this_present_to":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetTo()Z

    move-result v16

    .line 621
    .local v16, "that_present_to":Z
    if-nez v34, :cond_1

    if-eqz v16, :cond_4

    .line 622
    :cond_1
    if-eqz v34, :cond_2

    if-nez v16, :cond_3

    .line 623
    :cond_2
    const/16 v38, 0x0

    goto :goto_0

    .line 624
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->to:Lcom/xiaomi/xmpush/thrift/Target;

    move-object/from16 v38, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->to:Lcom/xiaomi/xmpush/thrift/Target;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Lcom/xiaomi/xmpush/thrift/Target;->equals(Lcom/xiaomi/xmpush/thrift/Target;)Z

    move-result v38

    if-nez v38, :cond_4

    .line 625
    const/16 v38, 0x0

    goto :goto_0

    .line 628
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetId()Z

    move-result v26

    .line 629
    .local v26, "this_present_id":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetId()Z

    move-result v8

    .line 630
    .local v8, "that_present_id":Z
    if-nez v26, :cond_5

    if-eqz v8, :cond_8

    .line 631
    :cond_5
    if-eqz v26, :cond_6

    if-nez v8, :cond_7

    .line 632
    :cond_6
    const/16 v38, 0x0

    goto :goto_0

    .line 633
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->id:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->id:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_8

    .line 634
    const/16 v38, 0x0

    goto :goto_0

    .line 637
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetAppId()Z

    move-result v21

    .line 638
    .local v21, "this_present_appId":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetAppId()Z

    move-result v3

    .line 639
    .local v3, "that_present_appId":Z
    if-nez v21, :cond_9

    if-eqz v3, :cond_c

    .line 640
    :cond_9
    if-eqz v21, :cond_a

    if-nez v3, :cond_b

    .line 641
    :cond_a
    const/16 v38, 0x0

    goto :goto_0

    .line 642
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->appId:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->appId:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_c

    .line 643
    const/16 v38, 0x0

    goto :goto_0

    .line 646
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetPayload()Z

    move-result v32

    .line 647
    .local v32, "this_present_payload":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetPayload()Z

    move-result v14

    .line 648
    .local v14, "that_present_payload":Z
    if-nez v32, :cond_d

    if-eqz v14, :cond_10

    .line 649
    :cond_d
    if-eqz v32, :cond_e

    if-nez v14, :cond_f

    .line 650
    :cond_e
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 651
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->payload:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->payload:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_10

    .line 652
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 655
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetCreateAt()Z

    move-result v24

    .line 656
    .local v24, "this_present_createAt":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetCreateAt()Z

    move-result v6

    .line 657
    .local v6, "that_present_createAt":Z
    if-nez v24, :cond_11

    if-eqz v6, :cond_14

    .line 658
    :cond_11
    if-eqz v24, :cond_12

    if-nez v6, :cond_13

    .line 659
    :cond_12
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 660
    :cond_13
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->createAt:J

    move-wide/from16 v38, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->createAt:J

    move-wide/from16 v40, v0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_14

    .line 661
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 664
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetTtl()Z

    move-result v36

    .line 665
    .local v36, "this_present_ttl":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetTtl()Z

    move-result v18

    .line 666
    .local v18, "that_present_ttl":Z
    if-nez v36, :cond_15

    if-eqz v18, :cond_18

    .line 667
    :cond_15
    if-eqz v36, :cond_16

    if-nez v18, :cond_17

    .line 668
    :cond_16
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 669
    :cond_17
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->ttl:J

    move-wide/from16 v38, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->ttl:J

    move-wide/from16 v40, v0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_18

    .line 670
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 673
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetCollapseKey()Z

    move-result v23

    .line 674
    .local v23, "this_present_collapseKey":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetCollapseKey()Z

    move-result v5

    .line 675
    .local v5, "that_present_collapseKey":Z
    if-nez v23, :cond_19

    if-eqz v5, :cond_1c

    .line 676
    :cond_19
    if-eqz v23, :cond_1a

    if-nez v5, :cond_1b

    .line 677
    :cond_1a
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 678
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->collapseKey:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->collapseKey:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_1c

    .line 679
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 682
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetPackageName()Z

    move-result v31

    .line 683
    .local v31, "this_present_packageName":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetPackageName()Z

    move-result v13

    .line 684
    .local v13, "that_present_packageName":Z
    if-nez v31, :cond_1d

    if-eqz v13, :cond_20

    .line 685
    :cond_1d
    if-eqz v31, :cond_1e

    if-nez v13, :cond_1f

    .line 686
    :cond_1e
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 687
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->packageName:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->packageName:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_20

    .line 688
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 691
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetRegId()Z

    move-result v33

    .line 692
    .local v33, "this_present_regId":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetRegId()Z

    move-result v15

    .line 693
    .local v15, "that_present_regId":Z
    if-nez v33, :cond_21

    if-eqz v15, :cond_24

    .line 694
    :cond_21
    if-eqz v33, :cond_22

    if-nez v15, :cond_23

    .line 695
    :cond_22
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 696
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->regId:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->regId:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_24

    .line 697
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 700
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetCategory()Z

    move-result v22

    .line 701
    .local v22, "this_present_category":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetCategory()Z

    move-result v4

    .line 702
    .local v4, "that_present_category":Z
    if-nez v22, :cond_25

    if-eqz v4, :cond_28

    .line 703
    :cond_25
    if-eqz v22, :cond_26

    if-nez v4, :cond_27

    .line 704
    :cond_26
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 705
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->category:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->category:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_28

    .line 706
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 709
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetTopic()Z

    move-result v35

    .line 710
    .local v35, "this_present_topic":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetTopic()Z

    move-result v17

    .line 711
    .local v17, "that_present_topic":Z
    if-nez v35, :cond_29

    if-eqz v17, :cond_2c

    .line 712
    :cond_29
    if-eqz v35, :cond_2a

    if-nez v17, :cond_2b

    .line 713
    :cond_2a
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 714
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->topic:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->topic:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_2c

    .line 715
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 718
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetMetaInfo()Z

    move-result v29

    .line 719
    .local v29, "this_present_metaInfo":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetMetaInfo()Z

    move-result v11

    .line 720
    .local v11, "that_present_metaInfo":Z
    if-nez v29, :cond_2d

    if-eqz v11, :cond_30

    .line 721
    :cond_2d
    if-eqz v29, :cond_2e

    if-nez v11, :cond_2f

    .line 722
    :cond_2e
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 723
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->equals(Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)Z

    move-result v38

    if-nez v38, :cond_30

    .line 724
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 727
    :cond_30
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetAliasName()Z

    move-result v20

    .line 728
    .local v20, "this_present_aliasName":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetAliasName()Z

    move-result v2

    .line 729
    .local v2, "that_present_aliasName":Z
    if-nez v20, :cond_31

    if-eqz v2, :cond_34

    .line 730
    :cond_31
    if-eqz v20, :cond_32

    if-nez v2, :cond_33

    .line 731
    :cond_32
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 732
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->aliasName:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->aliasName:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_34

    .line 733
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 736
    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetIsOnline()Z

    move-result v28

    .line 737
    .local v28, "this_present_isOnline":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetIsOnline()Z

    move-result v10

    .line 738
    .local v10, "that_present_isOnline":Z
    if-nez v28, :cond_35

    if-eqz v10, :cond_38

    .line 739
    :cond_35
    if-eqz v28, :cond_36

    if-nez v10, :cond_37

    .line 740
    :cond_36
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 741
    :cond_37
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->isOnline:Z

    move/from16 v38, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->isOnline:Z

    move/from16 v39, v0

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_38

    .line 742
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 745
    :cond_38
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetUserAccount()Z

    move-result v37

    .line 746
    .local v37, "this_present_userAccount":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetUserAccount()Z

    move-result v19

    .line 747
    .local v19, "that_present_userAccount":Z
    if-nez v37, :cond_39

    if-eqz v19, :cond_3c

    .line 748
    :cond_39
    if-eqz v37, :cond_3a

    if-nez v19, :cond_3b

    .line 749
    :cond_3a
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 750
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->userAccount:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->userAccount:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_3c

    .line 751
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 754
    :cond_3c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetMiid()Z

    move-result v30

    .line 755
    .local v30, "this_present_miid":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetMiid()Z

    move-result v12

    .line 756
    .local v12, "that_present_miid":Z
    if-nez v30, :cond_3d

    if-eqz v12, :cond_40

    .line 757
    :cond_3d
    if-eqz v30, :cond_3e

    if-nez v12, :cond_3f

    .line 758
    :cond_3e
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 759
    :cond_3f
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->miid:J

    move-wide/from16 v38, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->miid:J

    move-wide/from16 v40, v0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_40

    .line 760
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 763
    :cond_40
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetImeiMd5()Z

    move-result v27

    .line 764
    .local v27, "this_present_imeiMd5":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetImeiMd5()Z

    move-result v9

    .line 765
    .local v9, "that_present_imeiMd5":Z
    if-nez v27, :cond_41

    if-eqz v9, :cond_44

    .line 766
    :cond_41
    if-eqz v27, :cond_42

    if-nez v9, :cond_43

    .line 767
    :cond_42
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 768
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->imeiMd5:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->imeiMd5:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_44

    .line 769
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 772
    :cond_44
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetDeviceId()Z

    move-result v25

    .line 773
    .local v25, "this_present_deviceId":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetDeviceId()Z

    move-result v7

    .line 774
    .local v7, "that_present_deviceId":Z
    if-nez v25, :cond_45

    if-eqz v7, :cond_48

    .line 775
    :cond_45
    if-eqz v25, :cond_46

    if-nez v7, :cond_47

    .line 776
    :cond_46
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 777
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->deviceId:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->deviceId:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_48

    .line 778
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 781
    :cond_48
    const/16 v38, 0x1

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 608
    if-nez p1, :cond_1

    .line 612
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 610
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/PushMessage;

    if-eqz v1, :cond_0

    .line 611
    check-cast p1, Lcom/xiaomi/xmpush/thrift/PushMessage;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->equals(Lcom/xiaomi/xmpush/thrift/PushMessage;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateAt()J
    .locals 2

    .prologue
    .line 275
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->createAt:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->payload:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 786
    const/4 v0, 0x0

    return v0
.end method

.method public isSetAliasName()Z
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->aliasName:Ljava/lang/String;

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
    .line 241
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->appId:Ljava/lang/String;

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
    .line 407
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->category:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetCollapseKey()Z
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->collapseKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetCreateAt()Z
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetDeviceId()Z
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->deviceId:Ljava/lang/String;

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
    .line 217
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetImeiMd5()Z
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->imeiMd5:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetIsOnline()Z
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetMetaInfo()Z
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetMiid()Z
    .locals 2

    .prologue
    .line 551
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetPackageName()Z
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->packageName:Ljava/lang/String;

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
    .line 265
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->payload:Ljava/lang/String;

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
    .line 383
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->regId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetTo()Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->to:Lcom/xiaomi/xmpush/thrift/Target;

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
    .line 431
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->topic:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetTtl()Z
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetUserAccount()Z
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->userAccount:Ljava/lang/String;

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
    const/16 v7, 0xc

    const/16 v6, 0xa

    const/4 v5, 0x1

    const/16 v4, 0xb

    .line 982
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructBegin()Lorg/apache/thrift/protocol/TStruct;

    .line 985
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldBegin()Lorg/apache/thrift/protocol/TField;

    move-result-object v0

    .line 986
    .local v0, "field":Lorg/apache/thrift/protocol/TField;
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 1127
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructEnd()V

    .line 1130
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->validate()V

    .line 1131
    return-void

    .line 989
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 1123
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    .line 1125
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 991
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v7, :cond_1

    .line 992
    new-instance v1, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/Target;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->to:Lcom/xiaomi/xmpush/thrift/Target;

    .line 993
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->to:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v1, p1}, Lcom/xiaomi/xmpush/thrift/Target;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 995
    :cond_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 999
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_2

    .line 1000
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->id:Ljava/lang/String;

    goto :goto_1

    .line 1002
    :cond_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1006
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_3

    .line 1007
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->appId:Ljava/lang/String;

    goto :goto_1

    .line 1009
    :cond_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1013
    :pswitch_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_4

    .line 1014
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->payload:Ljava/lang/String;

    goto :goto_1

    .line 1016
    :cond_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1020
    :pswitch_5
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v6, :cond_5

    .line 1021
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->createAt:J

    .line 1022
    invoke-virtual {p0, v5}, Lcom/xiaomi/xmpush/thrift/PushMessage;->setCreateAtIsSet(Z)V

    goto :goto_1

    .line 1024
    :cond_5
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1028
    :pswitch_6
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v6, :cond_6

    .line 1029
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->ttl:J

    .line 1030
    invoke-virtual {p0, v5}, Lcom/xiaomi/xmpush/thrift/PushMessage;->setTtlIsSet(Z)V

    goto :goto_1

    .line 1032
    :cond_6
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1036
    :pswitch_7
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_7

    .line 1037
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->collapseKey:Ljava/lang/String;

    goto :goto_1

    .line 1039
    :cond_7
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1043
    :pswitch_8
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_8

    .line 1044
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->packageName:Ljava/lang/String;

    goto/16 :goto_1

    .line 1046
    :cond_8
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1050
    :pswitch_9
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_9

    .line 1051
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->regId:Ljava/lang/String;

    goto/16 :goto_1

    .line 1053
    :cond_9
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1057
    :pswitch_a
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_a

    .line 1058
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->category:Ljava/lang/String;

    goto/16 :goto_1

    .line 1060
    :cond_a
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1064
    :pswitch_b
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_b

    .line 1065
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->topic:Ljava/lang/String;

    goto/16 :goto_1

    .line 1067
    :cond_b
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1071
    :pswitch_c
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v7, :cond_c

    .line 1072
    new-instance v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    .line 1073
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    invoke-virtual {v1, p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    goto/16 :goto_1

    .line 1075
    :cond_c
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1079
    :pswitch_d
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_d

    .line 1080
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->aliasName:Ljava/lang/String;

    goto/16 :goto_1

    .line 1082
    :cond_d
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1086
    :pswitch_e
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_e

    .line 1087
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->isOnline:Z

    .line 1088
    invoke-virtual {p0, v5}, Lcom/xiaomi/xmpush/thrift/PushMessage;->setIsOnlineIsSet(Z)V

    goto/16 :goto_1

    .line 1090
    :cond_e
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1094
    :pswitch_f
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_f

    .line 1095
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->userAccount:Ljava/lang/String;

    goto/16 :goto_1

    .line 1097
    :cond_f
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1101
    :pswitch_10
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v6, :cond_10

    .line 1102
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->miid:J

    .line 1103
    invoke-virtual {p0, v5}, Lcom/xiaomi/xmpush/thrift/PushMessage;->setMiidIsSet(Z)V

    goto/16 :goto_1

    .line 1105
    :cond_10
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1109
    :pswitch_11
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_11

    .line 1110
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->imeiMd5:Ljava/lang/String;

    goto/16 :goto_1

    .line 1112
    :cond_11
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1116
    :pswitch_12
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v4, :cond_12

    .line 1117
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->deviceId:Ljava/lang/String;

    goto/16 :goto_1

    .line 1119
    :cond_12
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 989
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
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method public setCreateAtIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 294
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 295
    return-void
.end method

.method public setIsOnlineIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 508
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 509
    return-void
.end method

.method public setMiidIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 555
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 556
    return-void
.end method

.method public setTtlIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 317
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 318
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1255
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PushMessage("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1256
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 1258
    .local v0, "first":Z
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetTo()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1259
    const-string/jumbo v2, "to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1260
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->to:Lcom/xiaomi/xmpush/thrift/Target;

    if-nez v2, :cond_20

    .line 1261
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1265
    :goto_0
    const/4 v0, 0x0

    .line 1267
    :cond_0
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1268
    :cond_1
    const-string v2, "id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->id:Ljava/lang/String;

    if-nez v2, :cond_21

    .line 1270
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1274
    :goto_1
    const/4 v0, 0x0

    .line 1275
    if-nez v0, :cond_2

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1276
    :cond_2
    const-string v2, "appId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1277
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->appId:Ljava/lang/String;

    if-nez v2, :cond_22

    .line 1278
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1282
    :goto_2
    const/4 v0, 0x0

    .line 1283
    if-nez v0, :cond_3

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1284
    :cond_3
    const-string v2, "payload:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1285
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->payload:Ljava/lang/String;

    if-nez v2, :cond_23

    .line 1286
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1290
    :goto_3
    const/4 v0, 0x0

    .line 1291
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetCreateAt()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1292
    if-nez v0, :cond_4

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1293
    :cond_4
    const-string v2, "createAt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1294
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->createAt:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1295
    const/4 v0, 0x0

    .line 1297
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetTtl()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1298
    if-nez v0, :cond_6

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1299
    :cond_6
    const-string/jumbo v2, "ttl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1300
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->ttl:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1301
    const/4 v0, 0x0

    .line 1303
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetCollapseKey()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1304
    if-nez v0, :cond_8

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1305
    :cond_8
    const-string v2, "collapseKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1306
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->collapseKey:Ljava/lang/String;

    if-nez v2, :cond_24

    .line 1307
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1311
    :goto_4
    const/4 v0, 0x0

    .line 1313
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetPackageName()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1314
    if-nez v0, :cond_a

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1315
    :cond_a
    const-string v2, "packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1316
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->packageName:Ljava/lang/String;

    if-nez v2, :cond_25

    .line 1317
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1321
    :goto_5
    const/4 v0, 0x0

    .line 1323
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetRegId()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1324
    if-nez v0, :cond_c

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1325
    :cond_c
    const-string v2, "regId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1326
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->regId:Ljava/lang/String;

    if-nez v2, :cond_26

    .line 1327
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1331
    :goto_6
    const/4 v0, 0x0

    .line 1333
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetCategory()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1334
    if-nez v0, :cond_e

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1335
    :cond_e
    const-string v2, "category:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1336
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->category:Ljava/lang/String;

    if-nez v2, :cond_27

    .line 1337
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1341
    :goto_7
    const/4 v0, 0x0

    .line 1343
    :cond_f
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetTopic()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1344
    if-nez v0, :cond_10

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1345
    :cond_10
    const-string/jumbo v2, "topic:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1346
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->topic:Ljava/lang/String;

    if-nez v2, :cond_28

    .line 1347
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1351
    :goto_8
    const/4 v0, 0x0

    .line 1353
    :cond_11
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetMetaInfo()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1354
    if-nez v0, :cond_12

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1355
    :cond_12
    const-string v2, "metaInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1356
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    if-nez v2, :cond_29

    .line 1357
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1361
    :goto_9
    const/4 v0, 0x0

    .line 1363
    :cond_13
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetAliasName()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1364
    if-nez v0, :cond_14

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1365
    :cond_14
    const-string v2, "aliasName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1366
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->aliasName:Ljava/lang/String;

    if-nez v2, :cond_2a

    .line 1367
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1371
    :goto_a
    const/4 v0, 0x0

    .line 1373
    :cond_15
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetIsOnline()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1374
    if-nez v0, :cond_16

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1375
    :cond_16
    const-string v2, "isOnline:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1376
    iget-boolean v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->isOnline:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1377
    const/4 v0, 0x0

    .line 1379
    :cond_17
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetUserAccount()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1380
    if-nez v0, :cond_18

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1381
    :cond_18
    const-string/jumbo v2, "userAccount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1382
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->userAccount:Ljava/lang/String;

    if-nez v2, :cond_2b

    .line 1383
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1387
    :goto_b
    const/4 v0, 0x0

    .line 1389
    :cond_19
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetMiid()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1390
    if-nez v0, :cond_1a

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1391
    :cond_1a
    const-string v2, "miid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1392
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->miid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1393
    const/4 v0, 0x0

    .line 1395
    :cond_1b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetImeiMd5()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1396
    if-nez v0, :cond_1c

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1397
    :cond_1c
    const-string v2, "imeiMd5:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1398
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->imeiMd5:Ljava/lang/String;

    if-nez v2, :cond_2c

    .line 1399
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1403
    :goto_c
    const/4 v0, 0x0

    .line 1405
    :cond_1d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetDeviceId()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1406
    if-nez v0, :cond_1e

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1407
    :cond_1e
    const-string v2, "deviceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1408
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->deviceId:Ljava/lang/String;

    if-nez v2, :cond_2d

    .line 1409
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1413
    :goto_d
    const/4 v0, 0x0

    .line 1415
    :cond_1f
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1416
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1263
    :cond_20
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->to:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1272
    :cond_21
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1280
    :cond_22
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1288
    :cond_23
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->payload:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1309
    :cond_24
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->collapseKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 1319
    :cond_25
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 1329
    :cond_26
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->regId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 1339
    :cond_27
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 1349
    :cond_28
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->topic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 1359
    :cond_29
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 1369
    :cond_2a
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->aliasName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 1385
    :cond_2b
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->userAccount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 1401
    :cond_2c
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->imeiMd5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 1411
    :cond_2d
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d
.end method

.method public validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1422
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1424
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->appId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1425
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'appId\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1427
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->payload:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1428
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'payload\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1430
    :cond_2
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
    .line 1134
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->validate()V

    .line 1136
    sget-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeStructBegin(Lorg/apache/thrift/protocol/TStruct;)V

    .line 1137
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->to:Lcom/xiaomi/xmpush/thrift/Target;

    if-eqz v0, :cond_0

    .line 1138
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetTo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1139
    sget-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->TO_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1140
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->to:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/Target;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 1141
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1144
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->id:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1145
    sget-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1146
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1147
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1149
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->appId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1150
    sget-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->APP_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1151
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1152
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1154
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->payload:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1155
    sget-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->PAYLOAD_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1156
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->payload:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1157
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1159
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetCreateAt()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1160
    sget-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->CREATE_AT_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1161
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->createAt:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeI64(J)V

    .line 1162
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1164
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetTtl()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1165
    sget-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->TTL_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1166
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->ttl:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeI64(J)V

    .line 1167
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1169
    :cond_5
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->collapseKey:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1170
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetCollapseKey()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1171
    sget-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->COLLAPSE_KEY_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1172
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->collapseKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1173
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1176
    :cond_6
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1177
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetPackageName()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1178
    sget-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->PACKAGE_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1179
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1180
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1183
    :cond_7
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->regId:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1184
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetRegId()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1185
    sget-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->REG_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1186
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->regId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1187
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1190
    :cond_8
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->category:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 1191
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetCategory()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1192
    sget-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->CATEGORY_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1193
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1194
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1197
    :cond_9
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->topic:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 1198
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetTopic()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1199
    sget-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->TOPIC_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1200
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->topic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1201
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1204
    :cond_a
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    if-eqz v0, :cond_b

    .line 1205
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetMetaInfo()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1206
    sget-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->META_INFO_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1207
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 1208
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1211
    :cond_b
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->aliasName:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 1212
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetAliasName()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1213
    sget-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->ALIAS_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1214
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->aliasName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1215
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1218
    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetIsOnline()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1219
    sget-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->IS_ONLINE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1220
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->isOnline:Z

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 1221
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1223
    :cond_d
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->userAccount:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 1224
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetUserAccount()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1225
    sget-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->USER_ACCOUNT_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1226
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->userAccount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1227
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1230
    :cond_e
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetMiid()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1231
    sget-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->MIID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1232
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->miid:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeI64(J)V

    .line 1233
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1235
    :cond_f
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->imeiMd5:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 1236
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetImeiMd5()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1237
    sget-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->IMEI_MD5_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1238
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->imeiMd5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1239
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1242
    :cond_10
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->deviceId:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 1243
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMessage;->isSetDeviceId()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1244
    sget-object v0, Lcom/xiaomi/xmpush/thrift/PushMessage;->DEVICE_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1245
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMessage;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1246
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1249
    :cond_11
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 1250
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 1251
    return-void
.end method
