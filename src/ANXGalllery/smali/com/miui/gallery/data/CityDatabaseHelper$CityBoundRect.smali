.class public Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRect;
.super Ljava/lang/Object;
.source "CityDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/data/CityDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CityBoundRect"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRect$BoundRect;
    }
.end annotation


# instance fields
.field public boundRects:[Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRect$BoundRect;

.field public cityId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;[Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRect$BoundRect;)V
    .locals 0
    .param p1, "cityId"    # Ljava/lang/String;
    .param p2, "boundRects"    # [Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRect$BoundRect;

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p1, p0, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRect;->cityId:Ljava/lang/String;

    .line 166
    iput-object p2, p0, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRect;->boundRects:[Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRect$BoundRect;

    .line 167
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;[Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRect$BoundRect;Lcom/miui/gallery/data/CityDatabaseHelper$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # [Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRect$BoundRect;
    .param p3, "x2"    # Lcom/miui/gallery/data/CityDatabaseHelper$1;

    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRect;-><init>(Ljava/lang/String;[Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRect$BoundRect;)V

    return-void
.end method


# virtual methods
.method public containsIntCoordinate(II)Z
    .locals 7
    .param p1, "intLatitude"    # I
    .param p2, "intLongitude"    # I

    .prologue
    const/4 v1, 0x0

    .line 172
    iget-object v2, p0, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRect;->boundRects:[Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRect$BoundRect;

    if-eqz v2, :cond_0

    .line 173
    iget-object v3, p0, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRect;->boundRects:[Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRect$BoundRect;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 174
    .local v0, "boundRect":Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRect$BoundRect;
    iget v5, v0, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRect$BoundRect;->flag:I

    sget v6, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRect$BoundRect;->FLAG_ADD:I

    if-ne v5, v6, :cond_1

    iget-object v5, v0, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRect$BoundRect;->boundRect:Lcom/miui/gallery/util/portJava/Rectangle;

    .line 175
    invoke-virtual {v5, p1, p2}, Lcom/miui/gallery/util/portJava/Rectangle;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 176
    const/4 v1, 0x1

    .line 180
    .end local v0    # "boundRect":Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRect$BoundRect;
    :cond_0
    return v1

    .line 173
    .restart local v0    # "boundRect":Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRect$BoundRect;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
