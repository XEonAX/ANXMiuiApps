.class public Lcom/xiaomi/scanner/camera/exif/Rational;
.super Ljava/lang/Object;
.source "Rational.java"


# instance fields
.field private final mDenominator:J

.field private final mNumerator:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "numerator"    # J
    .param p3, "denominator"    # J

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p1, p0, Lcom/xiaomi/scanner/camera/exif/Rational;->mNumerator:J

    .line 37
    iput-wide p3, p0, Lcom/xiaomi/scanner/camera/exif/Rational;->mDenominator:J

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/scanner/camera/exif/Rational;)V
    .locals 2
    .param p1, "r"    # Lcom/xiaomi/scanner/camera/exif/Rational;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iget-wide v0, p1, Lcom/xiaomi/scanner/camera/exif/Rational;->mNumerator:J

    iput-wide v0, p0, Lcom/xiaomi/scanner/camera/exif/Rational;->mNumerator:J

    .line 45
    iget-wide v0, p1, Lcom/xiaomi/scanner/camera/exif/Rational;->mDenominator:J

    iput-wide v0, p0, Lcom/xiaomi/scanner/camera/exif/Rational;->mDenominator:J

    .line 46
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    if-nez p1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v2

    .line 75
    :cond_1
    if-ne p0, p1, :cond_2

    move v2, v1

    .line 76
    goto :goto_0

    .line 78
    :cond_2
    instance-of v3, p1, Lcom/xiaomi/scanner/camera/exif/Rational;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 79
    check-cast v0, Lcom/xiaomi/scanner/camera/exif/Rational;

    .line 80
    .local v0, "data":Lcom/xiaomi/scanner/camera/exif/Rational;
    iget-wide v4, p0, Lcom/xiaomi/scanner/camera/exif/Rational;->mNumerator:J

    iget-wide v6, v0, Lcom/xiaomi/scanner/camera/exif/Rational;->mNumerator:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    iget-wide v4, p0, Lcom/xiaomi/scanner/camera/exif/Rational;->mDenominator:J

    iget-wide v6, v0, Lcom/xiaomi/scanner/camera/exif/Rational;->mDenominator:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public getDenominator()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/xiaomi/scanner/camera/exif/Rational;->mDenominator:J

    return-wide v0
.end method

.method public getNumerator()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/xiaomi/scanner/camera/exif/Rational;->mNumerator:J

    return-wide v0
.end method

.method public toDouble()D
    .locals 4

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/xiaomi/scanner/camera/exif/Rational;->mNumerator:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/xiaomi/scanner/camera/exif/Rational;->mDenominator:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/xiaomi/scanner/camera/exif/Rational;->mNumerator:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/xiaomi/scanner/camera/exif/Rational;->mDenominator:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
