.class public Lcom/miui/gallery/util/Gauss;
.super Ljava/lang/Object;
.source "Gauss.java"


# instance fields
.field private final mCoefficient:D

.field private final mExpDiv:D

.field private final mMean:D

.field private final mVariance:D


# direct methods
.method public constructor <init>(DD)V
    .locals 9
    .param p1, "mean"    # D
    .param p3, "variance"    # D

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-wide/16 v0, 0x0

    cmpg-double v0, p3, v0

    if-gez v0, :cond_0

    .line 13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "variance can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_0
    iput-wide p1, p0, Lcom/miui/gallery/util/Gauss;->mMean:D

    .line 17
    iput-wide p3, p0, Lcom/miui/gallery/util/Gauss;->mVariance:D

    .line 18
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    mul-double v2, v6, p3

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/gallery/util/Gauss;->mCoefficient:D

    .line 19
    mul-double v0, v6, p3

    iput-wide v0, p0, Lcom/miui/gallery/util/Gauss;->mExpDiv:D

    .line 20
    return-void
.end method


# virtual methods
.method value(D)D
    .locals 7
    .param p1, "x"    # D

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/miui/gallery/util/Gauss;->mCoefficient:D

    iget-wide v2, p0, Lcom/miui/gallery/util/Gauss;->mMean:D

    sub-double v2, p1, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    neg-double v2, v2

    iget-wide v4, p0, Lcom/miui/gallery/util/Gauss;->mExpDiv:D

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method
