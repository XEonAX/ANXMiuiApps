.class public Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRect$BoundRect;
.super Ljava/lang/Object;
.source "CityDatabaseHelper.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BoundRect"
.end annotation


# static fields
.field public static FLAG_ADD:I = 0x0

.field public static FlAG_MINUS:I = 0x0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public boundRect:Lcom/miui/gallery/util/portJava/Rectangle;

.field public flag:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x1

    sput v0, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRect$BoundRect;->FLAG_ADD:I

    .line 142
    const/4 v0, 0x2

    sput v0, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRect$BoundRect;->FlAG_MINUS:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoundRect flag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRect$BoundRect;->flag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  BoundRect:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRect$BoundRect;->boundRect:Lcom/miui/gallery/util/portJava/Rectangle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRect$BoundRect;->boundRect:Lcom/miui/gallery/util/portJava/Rectangle;

    .line 155
    invoke-virtual {v0}, Lcom/miui/gallery/util/portJava/Rectangle;->toString()Ljava/lang/String;

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
