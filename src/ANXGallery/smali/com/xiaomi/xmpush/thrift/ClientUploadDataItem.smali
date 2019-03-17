.class public Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;
.super Ljava/lang/Object;
.source "ClientUploadDataItem.java"

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
        "Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final CATEGORY_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final CHANNEL_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final COUNTER_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final DATA_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final EXTRA_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final FROM_SDK_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final PKG_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final SOURCE_PACKAGE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

.field private static final TIMESTAMP_FIELD_DESC:Lorg/apache/thrift/protocol/TField;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public category:Ljava/lang/String;

.field public channel:Ljava/lang/String;

.field public counter:J

.field public data:Ljava/lang/String;

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

.field public fromSdk:Z

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public pkgName:Ljava/lang/String;

.field public sourcePackage:Ljava/lang/String;

.field public timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/16 v4, 0xa

    const/16 v3, 0xb

    .line 27
    new-instance v0, Lorg/apache/thrift/protocol/TStruct;

    const-string v1, "ClientUploadDataItem"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    .line 29
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->CHANNEL_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 30
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v3, v5}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->DATA_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 31
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 32
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x4

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->COUNTER_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x5

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->TIMESTAMP_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x6

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->FROM_SDK_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x7

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->CATEGORY_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 36
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x8

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->SOURCE_PACKAGE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 37
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x9

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 38
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v4}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->EXTRA_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 39
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v3, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->PKG_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->__isset_bit_vector:Ljava/util/BitSet;

    .line 61
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;)I
    .locals 6
    .param p1, "other"    # Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .prologue
    .line 525
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 526
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

    .line 642
    :cond_0
    :goto_0
    return v0

    .line 529
    :cond_1
    const/4 v0, 0x0

    .line 530
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 532
    .local v1, "typedOther":Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetChannel()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetChannel()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 533
    if-nez v0, :cond_0

    .line 536
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetChannel()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 537
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->channel:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->channel:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 538
    if-nez v0, :cond_0

    .line 542
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetData()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetData()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 543
    if-nez v0, :cond_0

    .line 546
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetData()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 547
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->data:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->data:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 548
    if-nez v0, :cond_0

    .line 552
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetName()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetName()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 553
    if-nez v0, :cond_0

    .line 556
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetName()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 557
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->name:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 558
    if-nez v0, :cond_0

    .line 562
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetCounter()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetCounter()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 563
    if-nez v0, :cond_0

    .line 566
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetCounter()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 567
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->counter:J

    iget-wide v4, v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->counter:J

    invoke-static {v2, v3, v4, v5}, Lorg/apache/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 568
    if-nez v0, :cond_0

    .line 572
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetTimestamp()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetTimestamp()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 573
    if-nez v0, :cond_0

    .line 576
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetTimestamp()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 577
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->timestamp:J

    iget-wide v4, v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->timestamp:J

    invoke-static {v2, v3, v4, v5}, Lorg/apache/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 578
    if-nez v0, :cond_0

    .line 582
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetFromSdk()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetFromSdk()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 583
    if-nez v0, :cond_0

    .line 586
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetFromSdk()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 587
    iget-boolean v2, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->fromSdk:Z

    iget-boolean v3, v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->fromSdk:Z

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 588
    if-nez v0, :cond_0

    .line 592
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetCategory()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetCategory()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 593
    if-nez v0, :cond_0

    .line 596
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetCategory()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 597
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->category:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->category:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 598
    if-nez v0, :cond_0

    .line 602
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetSourcePackage()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetSourcePackage()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 603
    if-nez v0, :cond_0

    .line 606
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetSourcePackage()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 607
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->sourcePackage:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->sourcePackage:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 608
    if-nez v0, :cond_0

    .line 612
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 613
    if-nez v0, :cond_0

    .line 616
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetId()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 617
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->id:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 618
    if-nez v0, :cond_0

    .line 622
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetExtra()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetExtra()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 623
    if-nez v0, :cond_0

    .line 626
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetExtra()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 627
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->extra:Ljava/util/Map;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->extra:Ljava/util/Map;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    .line 628
    if-nez v0, :cond_0

    .line 632
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetPkgName()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetPkgName()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 633
    if-nez v0, :cond_0

    .line 636
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetPkgName()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 637
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->pkgName:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->pkgName:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 638
    if-nez v0, :cond_0

    .line 642
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 26
    check-cast p1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->compareTo(Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;)I

    move-result v0

    return v0
.end method

.method public equals(Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;)Z
    .locals 28
    .param p1, "that"    # Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .prologue
    .line 414
    if-nez p1, :cond_0

    .line 415
    const/16 v24, 0x0

    .line 516
    :goto_0
    return v24

    .line 417
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetChannel()Z

    move-result v14

    .line 418
    .local v14, "this_present_channel":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetChannel()Z

    move-result v3

    .line 419
    .local v3, "that_present_channel":Z
    if-nez v14, :cond_1

    if-eqz v3, :cond_4

    .line 420
    :cond_1
    if-eqz v14, :cond_2

    if-nez v3, :cond_3

    .line 421
    :cond_2
    const/16 v24, 0x0

    goto :goto_0

    .line 422
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->channel:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->channel:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_4

    .line 423
    const/16 v24, 0x0

    goto :goto_0

    .line 426
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetData()Z

    move-result v16

    .line 427
    .local v16, "this_present_data":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetData()Z

    move-result v5

    .line 428
    .local v5, "that_present_data":Z
    if-nez v16, :cond_5

    if-eqz v5, :cond_8

    .line 429
    :cond_5
    if-eqz v16, :cond_6

    if-nez v5, :cond_7

    .line 430
    :cond_6
    const/16 v24, 0x0

    goto :goto_0

    .line 431
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->data:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->data:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_8

    .line 432
    const/16 v24, 0x0

    goto :goto_0

    .line 435
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetName()Z

    move-result v20

    .line 436
    .local v20, "this_present_name":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetName()Z

    move-result v9

    .line 437
    .local v9, "that_present_name":Z
    if-nez v20, :cond_9

    if-eqz v9, :cond_c

    .line 438
    :cond_9
    if-eqz v20, :cond_a

    if-nez v9, :cond_b

    .line 439
    :cond_a
    const/16 v24, 0x0

    goto :goto_0

    .line 440
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_c

    .line 441
    const/16 v24, 0x0

    goto :goto_0

    .line 444
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetCounter()Z

    move-result v15

    .line 445
    .local v15, "this_present_counter":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetCounter()Z

    move-result v4

    .line 446
    .local v4, "that_present_counter":Z
    if-nez v15, :cond_d

    if-eqz v4, :cond_10

    .line 447
    :cond_d
    if-eqz v15, :cond_e

    if-nez v4, :cond_f

    .line 448
    :cond_e
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 449
    :cond_f
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->counter:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->counter:J

    move-wide/from16 v26, v0

    cmp-long v24, v24, v26

    if-eqz v24, :cond_10

    .line 450
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 453
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetTimestamp()Z

    move-result v23

    .line 454
    .local v23, "this_present_timestamp":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetTimestamp()Z

    move-result v12

    .line 455
    .local v12, "that_present_timestamp":Z
    if-nez v23, :cond_11

    if-eqz v12, :cond_14

    .line 456
    :cond_11
    if-eqz v23, :cond_12

    if-nez v12, :cond_13

    .line 457
    :cond_12
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 458
    :cond_13
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->timestamp:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->timestamp:J

    move-wide/from16 v26, v0

    cmp-long v24, v24, v26

    if-eqz v24, :cond_14

    .line 459
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 462
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetFromSdk()Z

    move-result v18

    .line 463
    .local v18, "this_present_fromSdk":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetFromSdk()Z

    move-result v7

    .line 464
    .local v7, "that_present_fromSdk":Z
    if-nez v18, :cond_15

    if-eqz v7, :cond_18

    .line 465
    :cond_15
    if-eqz v18, :cond_16

    if-nez v7, :cond_17

    .line 466
    :cond_16
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 467
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->fromSdk:Z

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->fromSdk:Z

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_18

    .line 468
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 471
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetCategory()Z

    move-result v13

    .line 472
    .local v13, "this_present_category":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetCategory()Z

    move-result v2

    .line 473
    .local v2, "that_present_category":Z
    if-nez v13, :cond_19

    if-eqz v2, :cond_1c

    .line 474
    :cond_19
    if-eqz v13, :cond_1a

    if-nez v2, :cond_1b

    .line 475
    :cond_1a
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 476
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->category:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->category:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_1c

    .line 477
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 480
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetSourcePackage()Z

    move-result v22

    .line 481
    .local v22, "this_present_sourcePackage":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetSourcePackage()Z

    move-result v11

    .line 482
    .local v11, "that_present_sourcePackage":Z
    if-nez v22, :cond_1d

    if-eqz v11, :cond_20

    .line 483
    :cond_1d
    if-eqz v22, :cond_1e

    if-nez v11, :cond_1f

    .line 484
    :cond_1e
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 485
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->sourcePackage:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->sourcePackage:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_20

    .line 486
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 489
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetId()Z

    move-result v19

    .line 490
    .local v19, "this_present_id":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetId()Z

    move-result v8

    .line 491
    .local v8, "that_present_id":Z
    if-nez v19, :cond_21

    if-eqz v8, :cond_24

    .line 492
    :cond_21
    if-eqz v19, :cond_22

    if-nez v8, :cond_23

    .line 493
    :cond_22
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 494
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->id:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->id:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_24

    .line 495
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 498
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetExtra()Z

    move-result v17

    .line 499
    .local v17, "this_present_extra":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetExtra()Z

    move-result v6

    .line 500
    .local v6, "that_present_extra":Z
    if-nez v17, :cond_25

    if-eqz v6, :cond_28

    .line 501
    :cond_25
    if-eqz v17, :cond_26

    if-nez v6, :cond_27

    .line 502
    :cond_26
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 503
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->extra:Ljava/util/Map;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->extra:Ljava/util/Map;

    move-object/from16 v25, v0

    invoke-interface/range {v24 .. v25}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_28

    .line 504
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 507
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetPkgName()Z

    move-result v21

    .line 508
    .local v21, "this_present_pkgName":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetPkgName()Z

    move-result v10

    .line 509
    .local v10, "that_present_pkgName":Z
    if-nez v21, :cond_29

    if-eqz v10, :cond_2c

    .line 510
    :cond_29
    if-eqz v21, :cond_2a

    if-nez v10, :cond_2b

    .line 511
    :cond_2a
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 512
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->pkgName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->pkgName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_2c

    .line 513
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 516
    :cond_2c
    const/16 v24, 0x1

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 406
    if-nez p1, :cond_1

    .line 410
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 408
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    if-eqz v1, :cond_0

    .line 409
    check-cast p1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->equals(Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getSourcePackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->sourcePackage:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 228
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->timestamp:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 521
    const/4 v0, 0x0

    return v0
.end method

.method public isSetCategory()Z
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->category:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetChannel()Z
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->channel:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetCounter()Z
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetData()Z
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->data:Ljava/lang/String;

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
    .line 371
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->extra:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetFromSdk()Z
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetId()Z
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetName()Z
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetPkgName()Z
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->pkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetSourcePackage()Z
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->sourcePackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetTimestamp()Z
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
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
    const/16 v10, 0xa

    const/4 v9, 0x1

    const/16 v8, 0xb

    .line 647
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructBegin()Lorg/apache/thrift/protocol/TStruct;

    .line 650
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldBegin()Lorg/apache/thrift/protocol/TField;

    move-result-object v4

    .line 651
    .local v4, "field":Lorg/apache/thrift/protocol/TField;
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-nez v5, :cond_0

    .line 752
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructEnd()V

    .line 755
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->validate()V

    .line 756
    return-void

    .line 654
    :cond_0
    iget-short v5, v4, Lorg/apache/thrift/protocol/TField;->id:S

    packed-switch v5, :pswitch_data_0

    .line 748
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    .line 750
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 656
    :pswitch_0
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_1

    .line 657
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->channel:Ljava/lang/String;

    goto :goto_1

    .line 659
    :cond_1
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 663
    :pswitch_1
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_2

    .line 664
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->data:Ljava/lang/String;

    goto :goto_1

    .line 666
    :cond_2
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 670
    :pswitch_2
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_3

    .line 671
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->name:Ljava/lang/String;

    goto :goto_1

    .line 673
    :cond_3
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 677
    :pswitch_3
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v10, :cond_4

    .line 678
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->counter:J

    .line 679
    invoke-virtual {p0, v9}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setCounterIsSet(Z)V

    goto :goto_1

    .line 681
    :cond_4
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 685
    :pswitch_4
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v10, :cond_5

    .line 686
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->timestamp:J

    .line 687
    invoke-virtual {p0, v9}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setTimestampIsSet(Z)V

    goto :goto_1

    .line 689
    :cond_5
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 693
    :pswitch_5
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    .line 694
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->fromSdk:Z

    .line 695
    invoke-virtual {p0, v9}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setFromSdkIsSet(Z)V

    goto :goto_1

    .line 697
    :cond_6
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 701
    :pswitch_6
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_7

    .line 702
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->category:Ljava/lang/String;

    goto :goto_1

    .line 704
    :cond_7
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 708
    :pswitch_7
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_8

    .line 709
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->sourcePackage:Ljava/lang/String;

    goto/16 :goto_1

    .line 711
    :cond_8
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 715
    :pswitch_8
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_9

    .line 716
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->id:Ljava/lang/String;

    goto/16 :goto_1

    .line 718
    :cond_9
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 722
    :pswitch_9
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v6, 0xd

    if-ne v5, v6, :cond_b

    .line 724
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readMapBegin()Lorg/apache/thrift/protocol/TMap;

    move-result-object v2

    .line 725
    .local v2, "_map0":Lorg/apache/thrift/protocol/TMap;
    new-instance v5, Ljava/util/HashMap;

    iget v6, v2, Lorg/apache/thrift/protocol/TMap;->size:I

    mul-int/lit8 v6, v6, 0x2

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->extra:Ljava/util/Map;

    .line 726
    const/4 v0, 0x0

    .local v0, "_i1":I
    :goto_2
    iget v5, v2, Lorg/apache/thrift/protocol/TMap;->size:I

    if-ge v0, v5, :cond_a

    .line 730
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    .line 731
    .local v1, "_key2":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v3

    .line 732
    .local v3, "_val3":Ljava/lang/String;
    iget-object v5, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->extra:Ljava/util/Map;

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 734
    .end local v1    # "_key2":Ljava/lang/String;
    .end local v3    # "_val3":Ljava/lang/String;
    :cond_a
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readMapEnd()V

    goto/16 :goto_1

    .line 737
    .end local v0    # "_i1":I
    .end local v2    # "_map0":Lorg/apache/thrift/protocol/TMap;
    :cond_b
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 741
    :pswitch_a
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v5, v8, :cond_c

    .line 742
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->pkgName:Ljava/lang/String;

    goto/16 :goto_1

    .line 744
    :cond_c
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 654
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
    .end packed-switch
.end method

.method public setCategory(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->category:Ljava/lang/String;

    .line 279
    return-object p0
.end method

.method public setChannel(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;
    .locals 0
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->channel:Ljava/lang/String;

    .line 138
    return-object p0
.end method

.method public setCounter(J)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;
    .locals 1
    .param p1, "counter"    # J

    .prologue
    .line 209
    iput-wide p1, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->counter:J

    .line 210
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setCounterIsSet(Z)V

    .line 211
    return-object p0
.end method

.method public setCounterIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 224
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 225
    return-void
.end method

.method public setData(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->data:Ljava/lang/String;

    .line 162
    return-object p0
.end method

.method public setFromSdk(Z)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;
    .locals 1
    .param p1, "fromSdk"    # Z

    .prologue
    .line 255
    iput-boolean p1, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->fromSdk:Z

    .line 256
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setFromSdkIsSet(Z)V

    .line 257
    return-object p0
.end method

.method public setFromSdkIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 270
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 271
    return-void
.end method

.method public setId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->id:Ljava/lang/String;

    .line 327
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->name:Ljava/lang/String;

    .line 186
    return-object p0
.end method

.method public setPkgName(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->pkgName:Ljava/lang/String;

    .line 386
    return-object p0
.end method

.method public setSourcePackage(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;
    .locals 0
    .param p1, "sourcePackage"    # Ljava/lang/String;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->sourcePackage:Ljava/lang/String;

    .line 303
    return-object p0
.end method

.method public setTimestamp(J)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 232
    iput-wide p1, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->timestamp:J

    .line 233
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setTimestampIsSet(Z)V

    .line 234
    return-object p0
.end method

.method public setTimestampIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 247
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 248
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 847
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ClientUploadDataItem("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 848
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 850
    .local v0, "first":Z
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetChannel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 851
    const-string v2, "channel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->channel:Ljava/lang/String;

    if-nez v2, :cond_15

    .line 853
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    :goto_0
    const/4 v0, 0x0

    .line 859
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetData()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 860
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    :cond_1
    const-string v2, "data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->data:Ljava/lang/String;

    if-nez v2, :cond_16

    .line 863
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    :goto_1
    const/4 v0, 0x0

    .line 869
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetName()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 870
    if-nez v0, :cond_3

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    :cond_3
    const-string v2, "name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->name:Ljava/lang/String;

    if-nez v2, :cond_17

    .line 873
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    :goto_2
    const/4 v0, 0x0

    .line 879
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetCounter()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 880
    if-nez v0, :cond_5

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    :cond_5
    const-string v2, "counter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->counter:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 883
    const/4 v0, 0x0

    .line 885
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetTimestamp()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 886
    if-nez v0, :cond_7

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    :cond_7
    const-string/jumbo v2, "timestamp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->timestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 889
    const/4 v0, 0x0

    .line 891
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetFromSdk()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 892
    if-nez v0, :cond_9

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    :cond_9
    const-string v2, "fromSdk:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    iget-boolean v2, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->fromSdk:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 895
    const/4 v0, 0x0

    .line 897
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetCategory()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 898
    if-nez v0, :cond_b

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    :cond_b
    const-string v2, "category:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->category:Ljava/lang/String;

    if-nez v2, :cond_18

    .line 901
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    :goto_3
    const/4 v0, 0x0

    .line 907
    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetSourcePackage()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 908
    if-nez v0, :cond_d

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    :cond_d
    const-string/jumbo v2, "sourcePackage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->sourcePackage:Ljava/lang/String;

    if-nez v2, :cond_19

    .line 911
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    :goto_4
    const/4 v0, 0x0

    .line 917
    :cond_e
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetId()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 918
    if-nez v0, :cond_f

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    :cond_f
    const-string v2, "id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->id:Ljava/lang/String;

    if-nez v2, :cond_1a

    .line 921
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    :goto_5
    const/4 v0, 0x0

    .line 927
    :cond_10
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetExtra()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 928
    if-nez v0, :cond_11

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    :cond_11
    const-string v2, "extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->extra:Ljava/util/Map;

    if-nez v2, :cond_1b

    .line 931
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    :goto_6
    const/4 v0, 0x0

    .line 937
    :cond_12
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetPkgName()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 938
    if-nez v0, :cond_13

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    :cond_13
    const-string v2, "pkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 940
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->pkgName:Ljava/lang/String;

    if-nez v2, :cond_1c

    .line 941
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    :goto_7
    const/4 v0, 0x0

    .line 947
    :cond_14
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 948
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 855
    :cond_15
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->channel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 865
    :cond_16
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->data:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 875
    :cond_17
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 903
    :cond_18
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 913
    :cond_19
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 923
    :cond_1a
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 933
    :cond_1b
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->extra:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 943
    :cond_1c
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7
.end method

.method public validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 953
    return-void
.end method

.method public write(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 5
    .param p1, "oprot"    # Lorg/apache/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xb

    .line 759
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->validate()V

    .line 761
    sget-object v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructBegin(Lorg/apache/thrift/protocol/TStruct;)V

    .line 762
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->channel:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 763
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetChannel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 764
    sget-object v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->CHANNEL_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 765
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->channel:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 766
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 769
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->data:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 770
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetData()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 771
    sget-object v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->DATA_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 772
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->data:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 773
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 776
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->name:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 777
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetName()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 778
    sget-object v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 779
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 780
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 783
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetCounter()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 784
    sget-object v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->COUNTER_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 785
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->counter:J

    invoke-virtual {p1, v2, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeI64(J)V

    .line 786
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 788
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetTimestamp()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 789
    sget-object v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->TIMESTAMP_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 790
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->timestamp:J

    invoke-virtual {p1, v2, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeI64(J)V

    .line 791
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 793
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetFromSdk()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 794
    sget-object v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->FROM_SDK_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 795
    iget-boolean v1, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->fromSdk:Z

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 796
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 798
    :cond_5
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->category:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 799
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetCategory()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 800
    sget-object v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->CATEGORY_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 801
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->category:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 802
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 805
    :cond_6
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->sourcePackage:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 806
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetSourcePackage()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 807
    sget-object v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->SOURCE_PACKAGE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 808
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 809
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 812
    :cond_7
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->id:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 813
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetId()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 814
    sget-object v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 815
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->id:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 816
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 819
    :cond_8
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->extra:Ljava/util/Map;

    if-eqz v1, :cond_a

    .line 820
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetExtra()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 821
    sget-object v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->EXTRA_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 823
    new-instance v1, Lorg/apache/thrift/protocol/TMap;

    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->extra:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v4, v4, v2}, Lorg/apache/thrift/protocol/TMap;-><init>(BBI)V

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeMapBegin(Lorg/apache/thrift/protocol/TMap;)V

    .line 824
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->extra:Ljava/util/Map;

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

    .line 826
    .local v0, "_iter4":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 827
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 829
    .end local v0    # "_iter4":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeMapEnd()V

    .line 831
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 834
    :cond_a
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->pkgName:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 835
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->isSetPkgName()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 836
    sget-object v1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->PKG_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 837
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 838
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 841
    :cond_b
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 842
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 843
    return-void
.end method
