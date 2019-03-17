.class public Lcom/xiaomi/xmpush/thrift/GeoFencing;
.super Ljava/lang/Object;
.source "GeoFencing.java"

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
        "Lcom/xiaomi/xmpush/thrift/GeoFencing;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final APP_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final CIRCLE_CENTER_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final CIRCLE_RADIUS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final COORDINATE_PROVIDER_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final CREATE_TIME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final PACKAGE_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final POLYGON_POINTS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

.field private static final TYPE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public appId:J

.field public circleCenter:Lcom/xiaomi/xmpush/thrift/Location;

.field public circleRadius:D

.field public coordinateProvider:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

.field public createTime:J

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public polygonPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/xmpush/thrift/Location;",
            ">;"
        }
    .end annotation
.end field

.field public type:Lcom/xiaomi/xmpush/thrift/GeoType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/16 v5, 0xa

    const/16 v4, 0xb

    .line 31
    new-instance v0, Lorg/apache/thrift/protocol/TStruct;

    const-string v1, "GeoFencing"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x2

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x3

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->APP_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 36
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v4, v6}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->PACKAGE_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 37
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x5

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->CREATE_TIME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 38
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x6

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->TYPE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 39
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xc

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->CIRCLE_CENTER_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 40
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x9

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->CIRCLE_RADIUS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 41
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v5}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->POLYGON_POINTS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 42
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v7, v4}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->COORDINATE_PROVIDER_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->__isset_bit_vector:Ljava/util/BitSet;

    .line 71
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/xiaomi/xmpush/thrift/GeoFencing;)I
    .locals 6
    .param p1, "other"    # Lcom/xiaomi/xmpush/thrift/GeoFencing;

    .prologue
    .line 531
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 532
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

    .line 638
    :cond_0
    :goto_0
    return v0

    .line 535
    :cond_1
    const/4 v0, 0x0

    .line 536
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 538
    .local v1, "typedOther":Lcom/xiaomi/xmpush/thrift/GeoFencing;
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 539
    if-nez v0, :cond_0

    .line 542
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetId()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 543
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->id:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/GeoFencing;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 544
    if-nez v0, :cond_0

    .line 548
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetName()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetName()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 549
    if-nez v0, :cond_0

    .line 552
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetName()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 553
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->name:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/GeoFencing;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 554
    if-nez v0, :cond_0

    .line 558
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetAppId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetAppId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 559
    if-nez v0, :cond_0

    .line 562
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetAppId()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 563
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->appId:J

    iget-wide v4, v1, Lcom/xiaomi/xmpush/thrift/GeoFencing;->appId:J

    invoke-static {v2, v3, v4, v5}, Lorg/apache/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 564
    if-nez v0, :cond_0

    .line 568
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetPackageName()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetPackageName()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 569
    if-nez v0, :cond_0

    .line 572
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetPackageName()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 573
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->packageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/GeoFencing;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 574
    if-nez v0, :cond_0

    .line 578
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetCreateTime()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetCreateTime()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 579
    if-nez v0, :cond_0

    .line 582
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetCreateTime()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 583
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->createTime:J

    iget-wide v4, v1, Lcom/xiaomi/xmpush/thrift/GeoFencing;->createTime:J

    invoke-static {v2, v3, v4, v5}, Lorg/apache/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 584
    if-nez v0, :cond_0

    .line 588
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetType()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetType()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 589
    if-nez v0, :cond_0

    .line 592
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetType()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 593
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->type:Lcom/xiaomi/xmpush/thrift/GeoType;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/GeoFencing;->type:Lcom/xiaomi/xmpush/thrift/GeoType;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 594
    if-nez v0, :cond_0

    .line 598
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetCircleCenter()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetCircleCenter()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 599
    if-nez v0, :cond_0

    .line 602
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetCircleCenter()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 603
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->circleCenter:Lcom/xiaomi/xmpush/thrift/Location;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/GeoFencing;->circleCenter:Lcom/xiaomi/xmpush/thrift/Location;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 604
    if-nez v0, :cond_0

    .line 608
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetCircleRadius()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetCircleRadius()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 609
    if-nez v0, :cond_0

    .line 612
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetCircleRadius()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 613
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->circleRadius:D

    iget-wide v4, v1, Lcom/xiaomi/xmpush/thrift/GeoFencing;->circleRadius:D

    invoke-static {v2, v3, v4, v5}, Lorg/apache/thrift/TBaseHelper;->compareTo(DD)I

    move-result v0

    .line 614
    if-nez v0, :cond_0

    .line 618
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetPolygonPoints()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetPolygonPoints()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 619
    if-nez v0, :cond_0

    .line 622
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetPolygonPoints()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 623
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->polygonPoints:Ljava/util/List;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/GeoFencing;->polygonPoints:Ljava/util/List;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 624
    if-nez v0, :cond_0

    .line 628
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetCoordinateProvider()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetCoordinateProvider()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 629
    if-nez v0, :cond_0

    .line 632
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetCoordinateProvider()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 633
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->coordinateProvider:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/GeoFencing;->coordinateProvider:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 634
    if-nez v0, :cond_0

    .line 638
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 30
    check-cast p1, Lcom/xiaomi/xmpush/thrift/GeoFencing;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->compareTo(Lcom/xiaomi/xmpush/thrift/GeoFencing;)I

    move-result v0

    return v0
.end method

.method public equals(Lcom/xiaomi/xmpush/thrift/GeoFencing;)Z
    .locals 26
    .param p1, "that"    # Lcom/xiaomi/xmpush/thrift/GeoFencing;

    .prologue
    .line 429
    if-nez p1, :cond_0

    .line 430
    const/16 v22, 0x0

    .line 522
    :goto_0
    return v22

    .line 432
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetId()Z

    move-result v17

    .line 433
    .local v17, "this_present_id":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetId()Z

    move-result v7

    .line 434
    .local v7, "that_present_id":Z
    if-nez v17, :cond_1

    if-eqz v7, :cond_4

    .line 435
    :cond_1
    if-eqz v17, :cond_2

    if-nez v7, :cond_3

    .line 436
    :cond_2
    const/16 v22, 0x0

    goto :goto_0

    .line 437
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->id:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->id:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_4

    .line 438
    const/16 v22, 0x0

    goto :goto_0

    .line 441
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetName()Z

    move-result v18

    .line 442
    .local v18, "this_present_name":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetName()Z

    move-result v8

    .line 443
    .local v8, "that_present_name":Z
    if-nez v18, :cond_5

    if-eqz v8, :cond_8

    .line 444
    :cond_5
    if-eqz v18, :cond_6

    if-nez v8, :cond_7

    .line 445
    :cond_6
    const/16 v22, 0x0

    goto :goto_0

    .line 446
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_8

    .line 447
    const/16 v22, 0x0

    goto :goto_0

    .line 450
    :cond_8
    const/4 v12, 0x1

    .line 451
    .local v12, "this_present_appId":Z
    const/4 v2, 0x1

    .line 452
    .local v2, "that_present_appId":Z
    if-nez v12, :cond_9

    if-eqz v2, :cond_c

    .line 453
    :cond_9
    if-eqz v12, :cond_a

    if-nez v2, :cond_b

    .line 454
    :cond_a
    const/16 v22, 0x0

    goto :goto_0

    .line 455
    :cond_b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->appId:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->appId:J

    move-wide/from16 v24, v0

    cmp-long v22, v22, v24

    if-eqz v22, :cond_c

    .line 456
    const/16 v22, 0x0

    goto :goto_0

    .line 459
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetPackageName()Z

    move-result v19

    .line 460
    .local v19, "this_present_packageName":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetPackageName()Z

    move-result v9

    .line 461
    .local v9, "that_present_packageName":Z
    if-nez v19, :cond_d

    if-eqz v9, :cond_10

    .line 462
    :cond_d
    if-eqz v19, :cond_e

    if-nez v9, :cond_f

    .line 463
    :cond_e
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 464
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_10

    .line 465
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 468
    :cond_10
    const/16 v16, 0x1

    .line 469
    .local v16, "this_present_createTime":Z
    const/4 v6, 0x1

    .line 470
    .local v6, "that_present_createTime":Z
    if-nez v16, :cond_11

    if-eqz v6, :cond_14

    .line 471
    :cond_11
    if-eqz v16, :cond_12

    if-nez v6, :cond_13

    .line 472
    :cond_12
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 473
    :cond_13
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->createTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->createTime:J

    move-wide/from16 v24, v0

    cmp-long v22, v22, v24

    if-eqz v22, :cond_14

    .line 474
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 477
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetType()Z

    move-result v21

    .line 478
    .local v21, "this_present_type":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetType()Z

    move-result v11

    .line 479
    .local v11, "that_present_type":Z
    if-nez v21, :cond_15

    if-eqz v11, :cond_18

    .line 480
    :cond_15
    if-eqz v21, :cond_16

    if-nez v11, :cond_17

    .line 481
    :cond_16
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 482
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->type:Lcom/xiaomi/xmpush/thrift/GeoType;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->type:Lcom/xiaomi/xmpush/thrift/GeoType;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/xiaomi/xmpush/thrift/GeoType;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_18

    .line 483
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 486
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetCircleCenter()Z

    move-result v13

    .line 487
    .local v13, "this_present_circleCenter":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetCircleCenter()Z

    move-result v3

    .line 488
    .local v3, "that_present_circleCenter":Z
    if-nez v13, :cond_19

    if-eqz v3, :cond_1c

    .line 489
    :cond_19
    if-eqz v13, :cond_1a

    if-nez v3, :cond_1b

    .line 490
    :cond_1a
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 491
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->circleCenter:Lcom/xiaomi/xmpush/thrift/Location;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->circleCenter:Lcom/xiaomi/xmpush/thrift/Location;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/xiaomi/xmpush/thrift/Location;->equals(Lcom/xiaomi/xmpush/thrift/Location;)Z

    move-result v22

    if-nez v22, :cond_1c

    .line 492
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 495
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetCircleRadius()Z

    move-result v14

    .line 496
    .local v14, "this_present_circleRadius":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetCircleRadius()Z

    move-result v4

    .line 497
    .local v4, "that_present_circleRadius":Z
    if-nez v14, :cond_1d

    if-eqz v4, :cond_20

    .line 498
    :cond_1d
    if-eqz v14, :cond_1e

    if-nez v4, :cond_1f

    .line 499
    :cond_1e
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 500
    :cond_1f
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->circleRadius:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->circleRadius:D

    move-wide/from16 v24, v0

    cmpl-double v22, v22, v24

    if-eqz v22, :cond_20

    .line 501
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 504
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetPolygonPoints()Z

    move-result v20

    .line 505
    .local v20, "this_present_polygonPoints":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetPolygonPoints()Z

    move-result v10

    .line 506
    .local v10, "that_present_polygonPoints":Z
    if-nez v20, :cond_21

    if-eqz v10, :cond_24

    .line 507
    :cond_21
    if-eqz v20, :cond_22

    if-nez v10, :cond_23

    .line 508
    :cond_22
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 509
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->polygonPoints:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->polygonPoints:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_24

    .line 510
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 513
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetCoordinateProvider()Z

    move-result v15

    .line 514
    .local v15, "this_present_coordinateProvider":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetCoordinateProvider()Z

    move-result v5

    .line 515
    .local v5, "that_present_coordinateProvider":Z
    if-nez v15, :cond_25

    if-eqz v5, :cond_28

    .line 516
    :cond_25
    if-eqz v15, :cond_26

    if-nez v5, :cond_27

    .line 517
    :cond_26
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 518
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->coordinateProvider:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->coordinateProvider:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/xiaomi/xmpush/thrift/CoordinateProvider;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_28

    .line 519
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 522
    :cond_28
    const/16 v22, 0x1

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 421
    if-nez p1, :cond_1

    .line 425
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 423
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/GeoFencing;

    if-eqz v1, :cond_0

    .line 424
    check-cast p1, Lcom/xiaomi/xmpush/thrift/GeoFencing;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->equals(Lcom/xiaomi/xmpush/thrift/GeoFencing;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAppId()J
    .locals 2

    .prologue
    .line 200
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->appId:J

    return-wide v0
.end method

.method public getCircleCenter()Lcom/xiaomi/xmpush/thrift/Location;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->circleCenter:Lcom/xiaomi/xmpush/thrift/Location;

    return-object v0
.end method

.method public getCircleRadius()D
    .locals 2

    .prologue
    .line 326
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->circleRadius:D

    return-wide v0
.end method

.method public getCoordinateProvider()Lcom/xiaomi/xmpush/thrift/CoordinateProvider;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->coordinateProvider:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 247
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->createTime:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPolygonPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/xmpush/thrift/Location;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->polygonPoints:Ljava/util/List;

    return-object v0
.end method

.method public getType()Lcom/xiaomi/xmpush/thrift/GeoType;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->type:Lcom/xiaomi/xmpush/thrift/GeoType;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 527
    const/4 v0, 0x0

    return v0
.end method

.method public isSetAppId()Z
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetCircleCenter()Z
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->circleCenter:Lcom/xiaomi/xmpush/thrift/Location;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetCircleRadius()Z
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetCoordinateProvider()Z
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->coordinateProvider:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetCreateTime()Z
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetId()Z
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->id:Ljava/lang/String;

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
    .line 190
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->name:Ljava/lang/String;

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
    .line 237
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetPolygonPoints()Z
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->polygonPoints:Ljava/util/List;

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
    .line 292
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->type:Lcom/xiaomi/xmpush/thrift/GeoType;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 10
    .param p1, "iprot"    # Lorg/apache/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xa

    const/16 v8, 0x8

    const/16 v7, 0xb

    const/4 v6, 0x1

    .line 643
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructBegin()Lorg/apache/thrift/protocol/TStruct;

    .line 646
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldBegin()Lorg/apache/thrift/protocol/TField;

    move-result-object v3

    .line 647
    .local v3, "field":Lorg/apache/thrift/protocol/TField;
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    if-nez v4, :cond_0

    .line 741
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructEnd()V

    .line 744
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetAppId()Z

    move-result v4

    if-nez v4, :cond_c

    .line 745
    new-instance v4, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Required field \'appId\' was not found in serialized data! Struct: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 650
    :cond_0
    iget-short v4, v3, Lorg/apache/thrift/protocol/TField;->id:S

    packed-switch v4, :pswitch_data_0

    .line 737
    :pswitch_0
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    .line 739
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 652
    :pswitch_1
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v4, v7, :cond_1

    .line 653
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->id:Ljava/lang/String;

    goto :goto_1

    .line 655
    :cond_1
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 659
    :pswitch_2
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v4, v7, :cond_2

    .line 660
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->name:Ljava/lang/String;

    goto :goto_1

    .line 662
    :cond_2
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 666
    :pswitch_3
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v4, v9, :cond_3

    .line 667
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->appId:J

    .line 668
    invoke-virtual {p0, v6}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->setAppIdIsSet(Z)V

    goto :goto_1

    .line 670
    :cond_3
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 674
    :pswitch_4
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v4, v7, :cond_4

    .line 675
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 677
    :cond_4
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 681
    :pswitch_5
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v4, v9, :cond_5

    .line 682
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->createTime:J

    .line 683
    invoke-virtual {p0, v6}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->setCreateTimeIsSet(Z)V

    goto :goto_1

    .line 685
    :cond_5
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 689
    :pswitch_6
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v4, v8, :cond_6

    .line 690
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI32()I

    move-result v4

    invoke-static {v4}, Lcom/xiaomi/xmpush/thrift/GeoType;->findByValue(I)Lcom/xiaomi/xmpush/thrift/GeoType;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->type:Lcom/xiaomi/xmpush/thrift/GeoType;

    goto :goto_1

    .line 692
    :cond_6
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 696
    :pswitch_7
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v5, 0xc

    if-ne v4, v5, :cond_7

    .line 697
    new-instance v4, Lcom/xiaomi/xmpush/thrift/Location;

    invoke-direct {v4}, Lcom/xiaomi/xmpush/thrift/Location;-><init>()V

    iput-object v4, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->circleCenter:Lcom/xiaomi/xmpush/thrift/Location;

    .line 698
    iget-object v4, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->circleCenter:Lcom/xiaomi/xmpush/thrift/Location;

    invoke-virtual {v4, p1}, Lcom/xiaomi/xmpush/thrift/Location;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    goto/16 :goto_1

    .line 700
    :cond_7
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 704
    :pswitch_8
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    const/4 v5, 0x4

    if-ne v4, v5, :cond_8

    .line 705
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->circleRadius:D

    .line 706
    invoke-virtual {p0, v6}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->setCircleRadiusIsSet(Z)V

    goto/16 :goto_1

    .line 708
    :cond_8
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 712
    :pswitch_9
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v5, 0xf

    if-ne v4, v5, :cond_a

    .line 714
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readListBegin()Lorg/apache/thrift/protocol/TList;

    move-result-object v2

    .line 715
    .local v2, "_list9":Lorg/apache/thrift/protocol/TList;
    new-instance v4, Ljava/util/ArrayList;

    iget v5, v2, Lorg/apache/thrift/protocol/TList;->size:I

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->polygonPoints:Ljava/util/List;

    .line 716
    const/4 v1, 0x0

    .local v1, "_i10":I
    :goto_2
    iget v4, v2, Lorg/apache/thrift/protocol/TList;->size:I

    if-ge v1, v4, :cond_9

    .line 719
    new-instance v0, Lcom/xiaomi/xmpush/thrift/Location;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/Location;-><init>()V

    .line 720
    .local v0, "_elem11":Lcom/xiaomi/xmpush/thrift/Location;
    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/Location;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 721
    iget-object v4, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->polygonPoints:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 716
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 723
    .end local v0    # "_elem11":Lcom/xiaomi/xmpush/thrift/Location;
    :cond_9
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readListEnd()V

    goto/16 :goto_1

    .line 726
    .end local v1    # "_i10":I
    .end local v2    # "_list9":Lorg/apache/thrift/protocol/TList;
    :cond_a
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 730
    :pswitch_a
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v4, v8, :cond_b

    .line 731
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI32()I

    move-result v4

    invoke-static {v4}, Lcom/xiaomi/xmpush/thrift/CoordinateProvider;->findByValue(I)Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->coordinateProvider:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    goto/16 :goto_1

    .line 733
    :cond_b
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 747
    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetCreateTime()Z

    move-result v4

    if-nez v4, :cond_d

    .line 748
    new-instance v4, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Required field \'createTime\' was not found in serialized data! Struct: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 750
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->validate()V

    .line 751
    return-void

    .line 650
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public setAppId(J)Lcom/xiaomi/xmpush/thrift/GeoFencing;
    .locals 1
    .param p1, "appId"    # J

    .prologue
    .line 204
    iput-wide p1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->appId:J

    .line 205
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->setAppIdIsSet(Z)V

    .line 206
    return-object p0
.end method

.method public setAppIdIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 219
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 220
    return-void
.end method

.method public setCircleCenter(Lcom/xiaomi/xmpush/thrift/Location;)Lcom/xiaomi/xmpush/thrift/GeoFencing;
    .locals 0
    .param p1, "circleCenter"    # Lcom/xiaomi/xmpush/thrift/Location;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->circleCenter:Lcom/xiaomi/xmpush/thrift/Location;

    .line 307
    return-object p0
.end method

.method public setCircleRadius(D)Lcom/xiaomi/xmpush/thrift/GeoFencing;
    .locals 1
    .param p1, "circleRadius"    # D

    .prologue
    .line 330
    iput-wide p1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->circleRadius:D

    .line 331
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->setCircleRadiusIsSet(Z)V

    .line 332
    return-object p0
.end method

.method public setCircleRadiusIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 345
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 346
    return-void
.end method

.method public setCoordinateProvider(Lcom/xiaomi/xmpush/thrift/CoordinateProvider;)Lcom/xiaomi/xmpush/thrift/GeoFencing;
    .locals 0
    .param p1, "coordinateProvider"    # Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    .prologue
    .line 400
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->coordinateProvider:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    .line 401
    return-object p0
.end method

.method public setCreateTime(J)Lcom/xiaomi/xmpush/thrift/GeoFencing;
    .locals 1
    .param p1, "createTime"    # J

    .prologue
    .line 251
    iput-wide p1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->createTime:J

    .line 252
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->setCreateTimeIsSet(Z)V

    .line 253
    return-object p0
.end method

.method public setCreateTimeIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 266
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 267
    return-void
.end method

.method public setId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/GeoFencing;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->id:Ljava/lang/String;

    .line 157
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/GeoFencing;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->name:Ljava/lang/String;

    .line 181
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/GeoFencing;
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->packageName:Ljava/lang/String;

    .line 228
    return-object p0
.end method

.method public setPolygonPoints(Ljava/util/List;)Lcom/xiaomi/xmpush/thrift/GeoFencing;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/xmpush/thrift/Location;",
            ">;)",
            "Lcom/xiaomi/xmpush/thrift/GeoFencing;"
        }
    .end annotation

    .prologue
    .line 368
    .local p1, "polygonPoints":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/xmpush/thrift/Location;>;"
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->polygonPoints:Ljava/util/List;

    .line 369
    return-object p0
.end method

.method public setType(Lcom/xiaomi/xmpush/thrift/GeoType;)Lcom/xiaomi/xmpush/thrift/GeoFencing;
    .locals 0
    .param p1, "type"    # Lcom/xiaomi/xmpush/thrift/GeoType;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->type:Lcom/xiaomi/xmpush/thrift/GeoType;

    .line 283
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 820
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GeoFencing("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 821
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 823
    .local v0, "first":Z
    const-string v2, "id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->id:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 825
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    :goto_0
    const/4 v0, 0x0

    .line 830
    if-nez v0, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    :cond_0
    const-string v2, "name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->name:Ljava/lang/String;

    if-nez v2, :cond_d

    .line 833
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    :goto_1
    const/4 v0, 0x0

    .line 838
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    :cond_1
    const-string v2, "appId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->appId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 841
    const/4 v0, 0x0

    .line 842
    if-nez v0, :cond_2

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    :cond_2
    const-string v2, "packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->packageName:Ljava/lang/String;

    if-nez v2, :cond_e

    .line 845
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    :goto_2
    const/4 v0, 0x0

    .line 850
    if-nez v0, :cond_3

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    :cond_3
    const-string v2, "createTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->createTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 853
    const/4 v0, 0x0

    .line 854
    if-nez v0, :cond_4

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    :cond_4
    const-string/jumbo v2, "type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->type:Lcom/xiaomi/xmpush/thrift/GeoType;

    if-nez v2, :cond_f

    .line 857
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    :goto_3
    const/4 v0, 0x0

    .line 862
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetCircleCenter()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 863
    if-nez v0, :cond_5

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    :cond_5
    const-string v2, "circleCenter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->circleCenter:Lcom/xiaomi/xmpush/thrift/Location;

    if-nez v2, :cond_10

    .line 866
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    :goto_4
    const/4 v0, 0x0

    .line 872
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetCircleRadius()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 873
    if-nez v0, :cond_7

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    :cond_7
    const-string v2, "circleRadius:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->circleRadius:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 876
    const/4 v0, 0x0

    .line 878
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetPolygonPoints()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 879
    if-nez v0, :cond_9

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    :cond_9
    const-string v2, "polygonPoints:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->polygonPoints:Ljava/util/List;

    if-nez v2, :cond_11

    .line 882
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    :goto_5
    const/4 v0, 0x0

    .line 888
    :cond_a
    if-nez v0, :cond_b

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    :cond_b
    const-string v2, "coordinateProvider:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->coordinateProvider:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    if-nez v2, :cond_12

    .line 891
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    :goto_6
    const/4 v0, 0x0

    .line 896
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 827
    :cond_c
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 835
    :cond_d
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 847
    :cond_e
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 859
    :cond_f
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->type:Lcom/xiaomi/xmpush/thrift/GeoType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 868
    :cond_10
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->circleCenter:Lcom/xiaomi/xmpush/thrift/Location;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 884
    :cond_11
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->polygonPoints:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 893
    :cond_12
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->coordinateProvider:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_6
.end method

.method public validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 902
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 903
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 905
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->name:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 906
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'name\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 909
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->packageName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 910
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'packageName\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 913
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->type:Lcom/xiaomi/xmpush/thrift/GeoType;

    if-nez v0, :cond_3

    .line 914
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'type\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 916
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->coordinateProvider:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    if-nez v0, :cond_4

    .line 917
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'coordinateProvider\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 919
    :cond_4
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
    .line 754
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->validate()V

    .line 756
    sget-object v1, Lcom/xiaomi/xmpush/thrift/GeoFencing;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructBegin(Lorg/apache/thrift/protocol/TStruct;)V

    .line 757
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->id:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 758
    sget-object v1, Lcom/xiaomi/xmpush/thrift/GeoFencing;->ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 759
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->id:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 760
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 762
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->name:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 763
    sget-object v1, Lcom/xiaomi/xmpush/thrift/GeoFencing;->NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 764
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 765
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 767
    :cond_1
    sget-object v1, Lcom/xiaomi/xmpush/thrift/GeoFencing;->APP_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 768
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->appId:J

    invoke-virtual {p1, v2, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeI64(J)V

    .line 769
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 770
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 771
    sget-object v1, Lcom/xiaomi/xmpush/thrift/GeoFencing;->PACKAGE_NAME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 772
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 773
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 775
    :cond_2
    sget-object v1, Lcom/xiaomi/xmpush/thrift/GeoFencing;->CREATE_TIME_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 776
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->createTime:J

    invoke-virtual {p1, v2, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeI64(J)V

    .line 777
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 778
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->type:Lcom/xiaomi/xmpush/thrift/GeoType;

    if-eqz v1, :cond_3

    .line 779
    sget-object v1, Lcom/xiaomi/xmpush/thrift/GeoFencing;->TYPE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 780
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->type:Lcom/xiaomi/xmpush/thrift/GeoType;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/GeoType;->getValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeI32(I)V

    .line 781
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 783
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->circleCenter:Lcom/xiaomi/xmpush/thrift/Location;

    if-eqz v1, :cond_4

    .line 784
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetCircleCenter()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 785
    sget-object v1, Lcom/xiaomi/xmpush/thrift/GeoFencing;->CIRCLE_CENTER_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 786
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->circleCenter:Lcom/xiaomi/xmpush/thrift/Location;

    invoke-virtual {v1, p1}, Lcom/xiaomi/xmpush/thrift/Location;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 787
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 790
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetCircleRadius()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 791
    sget-object v1, Lcom/xiaomi/xmpush/thrift/GeoFencing;->CIRCLE_RADIUS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 792
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->circleRadius:D

    invoke-virtual {p1, v2, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeDouble(D)V

    .line 793
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 795
    :cond_5
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->polygonPoints:Ljava/util/List;

    if-eqz v1, :cond_7

    .line 796
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->isSetPolygonPoints()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 797
    sget-object v1, Lcom/xiaomi/xmpush/thrift/GeoFencing;->POLYGON_POINTS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 799
    new-instance v1, Lorg/apache/thrift/protocol/TList;

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->polygonPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeListBegin(Lorg/apache/thrift/protocol/TList;)V

    .line 800
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->polygonPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/Location;

    .line 802
    .local v0, "_iter12":Lcom/xiaomi/xmpush/thrift/Location;
    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/Location;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_0

    .line 804
    .end local v0    # "_iter12":Lcom/xiaomi/xmpush/thrift/Location;
    :cond_6
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeListEnd()V

    .line 806
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 809
    :cond_7
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->coordinateProvider:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    if-eqz v1, :cond_8

    .line 810
    sget-object v1, Lcom/xiaomi/xmpush/thrift/GeoFencing;->COORDINATE_PROVIDER_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 811
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/GeoFencing;->coordinateProvider:Lcom/xiaomi/xmpush/thrift/CoordinateProvider;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/CoordinateProvider;->getValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeI32(I)V

    .line 812
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 814
    :cond_8
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 815
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 816
    return-void
.end method
