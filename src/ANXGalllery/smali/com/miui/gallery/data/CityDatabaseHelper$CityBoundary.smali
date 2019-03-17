.class public Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary;
.super Ljava/lang/Object;
.source "CityDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/data/CityDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CityBoundary"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary$Boundary;
    }
.end annotation


# instance fields
.field public boundaries:[Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary$Boundary;

.field public cityId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;[Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary$Boundary;)V
    .locals 0
    .param p1, "cityId"    # Ljava/lang/String;
    .param p2, "boundaries"    # [Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary$Boundary;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary;->cityId:Ljava/lang/String;

    .line 114
    iput-object p2, p0, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary;->boundaries:[Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary$Boundary;

    .line 115
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;[Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary$Boundary;Lcom/miui/gallery/data/CityDatabaseHelper$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # [Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary$Boundary;
    .param p3, "x2"    # Lcom/miui/gallery/data/CityDatabaseHelper$1;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary;-><init>(Ljava/lang/String;[Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary$Boundary;)V

    return-void
.end method


# virtual methods
.method public containsIntCoordinate(II)Z
    .locals 8
    .param p1, "intLatitude"    # I
    .param p2, "intLongitude"    # I

    .prologue
    const/4 v2, 0x0

    .line 95
    const/4 v1, 0x0

    .line 96
    .local v1, "inAddedBoundary":Z
    iget-object v4, p0, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary;->boundaries:[Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary$Boundary;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v0, v4, v3

    .line 97
    .local v0, "boundary":Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary$Boundary;
    iget v6, v0, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary$Boundary;->flag:I

    sget v7, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary$Boundary;->FLAG_ADD:I

    if-ne v6, v7, :cond_2

    .line 98
    if-eqz v1, :cond_1

    .line 96
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 101
    :cond_1
    iget-object v6, v0, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary$Boundary;->boundary:Lcom/miui/gallery/util/portJava/Polygon;

    invoke-virtual {v6, p1, p2}, Lcom/miui/gallery/util/portJava/Polygon;->contains(II)Z

    move-result v1

    goto :goto_1

    .line 103
    :cond_2
    iget v6, v0, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary$Boundary;->flag:I

    sget v7, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary$Boundary;->FlAG_MINUS:I

    if-ne v6, v7, :cond_0

    .line 104
    iget-object v6, v0, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary$Boundary;->boundary:Lcom/miui/gallery/util/portJava/Polygon;

    invoke-virtual {v6, p1, p2}, Lcom/miui/gallery/util/portJava/Polygon;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_0

    move v1, v2

    .line 109
    .end local v0    # "boundary":Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary$Boundary;
    .end local v1    # "inAddedBoundary":Z
    :cond_3
    return v1
.end method
