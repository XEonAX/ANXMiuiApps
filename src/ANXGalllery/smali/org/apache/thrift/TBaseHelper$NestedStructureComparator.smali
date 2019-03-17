.class Lorg/apache/thrift/TBaseHelper$NestedStructureComparator;
.super Ljava/lang/Object;
.source "TBaseHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/thrift/TBaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NestedStructureComparator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/thrift/TBaseHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/thrift/TBaseHelper$1;

    .prologue
    .line 201
    invoke-direct {p0}, Lorg/apache/thrift/TBaseHelper$NestedStructureComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "oA"    # Ljava/lang/Object;
    .param p2, "oB"    # Ljava/lang/Object;

    .prologue
    .line 203
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 204
    const/4 v0, 0x0

    .line 218
    .end local p1    # "oA":Ljava/lang/Object;
    .end local p2    # "oB":Ljava/lang/Object;
    :goto_0
    return v0

    .line 205
    .restart local p1    # "oA":Ljava/lang/Object;
    .restart local p2    # "oB":Ljava/lang/Object;
    :cond_0
    if-nez p1, :cond_1

    .line 206
    const/4 v0, -0x1

    goto :goto_0

    .line 207
    :cond_1
    if-nez p2, :cond_2

    .line 208
    const/4 v0, 0x1

    goto :goto_0

    .line 209
    :cond_2
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 210
    check-cast p1, Ljava/util/List;

    .end local p1    # "oA":Ljava/lang/Object;
    check-cast p2, Ljava/util/List;

    .end local p2    # "oB":Ljava/lang/Object;
    invoke-static {p1, p2}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    goto :goto_0

    .line 211
    .restart local p1    # "oA":Ljava/lang/Object;
    .restart local p2    # "oB":Ljava/lang/Object;
    :cond_3
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_4

    .line 212
    check-cast p1, Ljava/util/Set;

    .end local p1    # "oA":Ljava/lang/Object;
    check-cast p2, Ljava/util/Set;

    .end local p2    # "oB":Ljava/lang/Object;
    invoke-static {p1, p2}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/util/Set;Ljava/util/Set;)I

    move-result v0

    goto :goto_0

    .line 213
    .restart local p1    # "oA":Ljava/lang/Object;
    .restart local p2    # "oB":Ljava/lang/Object;
    :cond_4
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 214
    check-cast p1, Ljava/util/Map;

    .end local p1    # "oA":Ljava/lang/Object;
    check-cast p2, Ljava/util/Map;

    .end local p2    # "oB":Ljava/lang/Object;
    invoke-static {p1, p2}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    goto :goto_0

    .line 215
    .restart local p1    # "oA":Ljava/lang/Object;
    .restart local p2    # "oB":Ljava/lang/Object;
    :cond_5
    instance-of v0, p1, [B

    if-eqz v0, :cond_6

    .line 216
    check-cast p1, [B

    .end local p1    # "oA":Ljava/lang/Object;
    check-cast p1, [B

    check-cast p2, [B

    .end local p2    # "oB":Ljava/lang/Object;
    check-cast p2, [B

    invoke-static {p1, p2}, Lorg/apache/thrift/TBaseHelper;->compareTo([B[B)I

    move-result v0

    goto :goto_0

    .line 218
    .restart local p1    # "oA":Ljava/lang/Object;
    .restart local p2    # "oB":Ljava/lang/Object;
    :cond_6
    check-cast p1, Ljava/lang/Comparable;

    .end local p1    # "oA":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Comparable;

    .end local p2    # "oB":Ljava/lang/Object;
    invoke-static {p1, p2}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    goto :goto_0
.end method
