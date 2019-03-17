.class public final enum Lcom/miui/gallery/movie/entity/MovieAspectRatio;
.super Ljava/lang/Enum;
.source "MovieAspectRatio.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/movie/entity/MovieAspectRatio;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/movie/entity/MovieAspectRatio;

.field public static final enum A16V9:Lcom/miui/gallery/movie/entity/MovieAspectRatio;

.field public static final enum A18V9:Lcom/miui/gallery/movie/entity/MovieAspectRatio;

.field public static final enum A19V9:Lcom/miui/gallery/movie/entity/MovieAspectRatio;


# instance fields
.field private ratio:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/miui/gallery/movie/entity/MovieAspectRatio;

    const-string v1, "A16V9"

    const v2, 0x3fe38e39

    invoke-direct {v0, v1, v3, v2}, Lcom/miui/gallery/movie/entity/MovieAspectRatio;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/miui/gallery/movie/entity/MovieAspectRatio;->A16V9:Lcom/miui/gallery/movie/entity/MovieAspectRatio;

    .line 8
    new-instance v0, Lcom/miui/gallery/movie/entity/MovieAspectRatio;

    const-string v1, "A18V9"

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v4, v2}, Lcom/miui/gallery/movie/entity/MovieAspectRatio;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/miui/gallery/movie/entity/MovieAspectRatio;->A18V9:Lcom/miui/gallery/movie/entity/MovieAspectRatio;

    new-instance v0, Lcom/miui/gallery/movie/entity/MovieAspectRatio;

    const-string v1, "A19V9"

    const v2, 0x40071c72

    invoke-direct {v0, v1, v5, v2}, Lcom/miui/gallery/movie/entity/MovieAspectRatio;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/miui/gallery/movie/entity/MovieAspectRatio;->A19V9:Lcom/miui/gallery/movie/entity/MovieAspectRatio;

    .line 5
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/miui/gallery/movie/entity/MovieAspectRatio;

    sget-object v1, Lcom/miui/gallery/movie/entity/MovieAspectRatio;->A16V9:Lcom/miui/gallery/movie/entity/MovieAspectRatio;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/gallery/movie/entity/MovieAspectRatio;->A18V9:Lcom/miui/gallery/movie/entity/MovieAspectRatio;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/gallery/movie/entity/MovieAspectRatio;->A19V9:Lcom/miui/gallery/movie/entity/MovieAspectRatio;

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/gallery/movie/entity/MovieAspectRatio;->$VALUES:[Lcom/miui/gallery/movie/entity/MovieAspectRatio;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 0
    .param p3, "ratio"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcom/miui/gallery/movie/entity/MovieAspectRatio;->ratio:F

    .line 13
    return-void
.end method

.method public static getFitRatio(F)Lcom/miui/gallery/movie/entity/MovieAspectRatio;
    .locals 1
    .param p0, "heightToWidth"    # F

    .prologue
    .line 24
    invoke-static {}, Lcom/miui/gallery/movie/entity/MovieAspectRatio;->isNoSupportSpecialRatio()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/gallery/movie/entity/MovieAspectRatio;->A18V9:Lcom/miui/gallery/movie/entity/MovieAspectRatio;

    iget v0, v0, Lcom/miui/gallery/movie/entity/MovieAspectRatio;->ratio:F

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1

    .line 25
    :cond_0
    sget-object v0, Lcom/miui/gallery/movie/entity/MovieAspectRatio;->A16V9:Lcom/miui/gallery/movie/entity/MovieAspectRatio;

    .line 29
    :goto_0
    return-object v0

    .line 26
    :cond_1
    sget-object v0, Lcom/miui/gallery/movie/entity/MovieAspectRatio;->A19V9:Lcom/miui/gallery/movie/entity/MovieAspectRatio;

    iget v0, v0, Lcom/miui/gallery/movie/entity/MovieAspectRatio;->ratio:F

    cmpg-float v0, p0, v0

    if-gez v0, :cond_2

    .line 27
    sget-object v0, Lcom/miui/gallery/movie/entity/MovieAspectRatio;->A18V9:Lcom/miui/gallery/movie/entity/MovieAspectRatio;

    goto :goto_0

    .line 29
    :cond_2
    sget-object v0, Lcom/miui/gallery/movie/entity/MovieAspectRatio;->A19V9:Lcom/miui/gallery/movie/entity/MovieAspectRatio;

    goto :goto_0
.end method

.method private static isNoSupportSpecialRatio()Z
    .locals 2

    .prologue
    .line 37
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "lotus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "cepheus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/movie/entity/MovieAspectRatio;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/miui/gallery/movie/entity/MovieAspectRatio;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/movie/entity/MovieAspectRatio;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/movie/entity/MovieAspectRatio;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/miui/gallery/movie/entity/MovieAspectRatio;->$VALUES:[Lcom/miui/gallery/movie/entity/MovieAspectRatio;

    invoke-virtual {v0}, [Lcom/miui/gallery/movie/entity/MovieAspectRatio;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/movie/entity/MovieAspectRatio;

    return-object v0
.end method


# virtual methods
.method public getRatio()F
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/miui/gallery/movie/entity/MovieAspectRatio;->ratio:F

    return v0
.end method
