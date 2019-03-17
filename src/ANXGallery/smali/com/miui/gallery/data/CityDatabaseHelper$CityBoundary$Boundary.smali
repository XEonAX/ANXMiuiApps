.class public Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary$Boundary;
.super Ljava/lang/Object;
.source "CityDatabaseHelper.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Boundary"
.end annotation


# static fields
.field public static FLAG_ADD:I = 0x0

.field public static FlAG_MINUS:I = 0x0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public boundary:Lcom/miui/gallery/util/portJava/Polygon;

.field public flag:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    sput v0, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary$Boundary;->FLAG_ADD:I

    .line 70
    const/4 v0, 0x2

    sput v0, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary$Boundary;->FlAG_MINUS:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Boundary flag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary$Boundary;->flag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  boundray:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary$Boundary;->boundary:Lcom/miui/gallery/util/portJava/Polygon;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary$Boundary;->boundary:Lcom/miui/gallery/util/portJava/Polygon;

    iget-object v2, v2, Lcom/miui/gallery/util/portJava/Polygon;->xpoints:[I

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary$Boundary;->boundary:Lcom/miui/gallery/util/portJava/Polygon;

    iget-object v2, v2, Lcom/miui/gallery/util/portJava/Polygon;->ypoints:[I

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method
