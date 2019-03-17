.class public Lcom/miui/gallery/data/CitySearcher$PhotoGpsCache;
.super Ljava/util/HashMap;
.source "CitySearcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/data/CitySearcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhotoGpsCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method public static makeKey(Lcom/miui/gallery/data/Coordinate;)Ljava/lang/String;
    .locals 4
    .param p0, "coordinate"    # Lcom/miui/gallery/data/Coordinate;

    .prologue
    .line 51
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/data/Coordinate;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    :cond_0
    const-string v0, ""

    .line 54
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/data/Coordinate;->latitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/data/Coordinate;->longitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
