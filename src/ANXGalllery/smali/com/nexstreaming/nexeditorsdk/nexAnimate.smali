.class public abstract Lcom/nexstreaming/nexeditorsdk/nexAnimate;
.super Ljava/lang/Object;
.source "nexAnimate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/nexeditorsdk/nexAnimate$Scale;,
        Lcom/nexstreaming/nexeditorsdk/nexAnimate$Rotate;,
        Lcom/nexstreaming/nexeditorsdk/nexAnimate$Alpha;,
        Lcom/nexstreaming/nexeditorsdk/nexAnimate$Move;,
        Lcom/nexstreaming/nexeditorsdk/nexAnimate$AnimateImages;,
        Lcom/nexstreaming/nexeditorsdk/nexAnimate$MoveTrackingPath;
    }
.end annotation


# static fields
.field public static final kCoordinateX:I = 0x1

.field public static final kCoordinateY:I = 0x2

.field public static final kCoordinateZ:I = 0x3


# instance fields
.field protected mAlpha:F

.field protected mDuration:I

.field protected mRotateDegreeX:F

.field protected mRotateDegreeY:F

.field protected mRotateDegreeZ:F

.field protected mScaledX:F

.field protected mScaledY:F

.field protected mScaledZ:F

.field protected mStartTime:I

.field private mTimeInterpolator:Landroid/animation/TimeInterpolator;

.field protected mdX:I

.field protected mdY:I

.field protected mdZ:I


# direct methods
.method protected constructor <init>(II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mdX:I

    .line 218
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mdY:I

    .line 219
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mdZ:I

    .line 220
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mAlpha:F

    .line 221
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mScaledX:F

    .line 222
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mScaledY:F

    .line 223
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mScaledZ:F

    .line 224
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mRotateDegreeX:F

    .line 225
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mRotateDegreeY:F

    .line 226
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mRotateDegreeZ:F

    .line 147
    if-gtz p2, :cond_0

    .line 148
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    invoke-direct {v0, p2}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(I)V

    throw v0

    .line 151
    :cond_0
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mStartTime:I

    .line 152
    iput p2, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mDuration:I

    .line 153
    return-void
.end method

.method public static getAlpha(IIFF)Lcom/nexstreaming/nexeditorsdk/nexAnimate;
    .locals 1

    .prologue
    .line 361
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Alpha;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Alpha;-><init>(IIFF)V

    return-object v0
.end method

.method public static varargs getAnimateImages(II[I)Lcom/nexstreaming/nexeditorsdk/nexAnimate;
    .locals 1

    .prologue
    .line 282
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$AnimateImages;

    invoke-direct {v0, p0, p1, p2}, Lcom/nexstreaming/nexeditorsdk/nexAnimate$AnimateImages;-><init>(II[I)V

    return-object v0
.end method

.method public static getMove(IILcom/nexstreaming/nexeditorsdk/nexAnimate$MoveTrackingPath;)Lcom/nexstreaming/nexeditorsdk/nexAnimate;
    .locals 1

    .prologue
    .line 335
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Move;

    invoke-direct {v0, p0, p1, p2}, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Move;-><init>(IILcom/nexstreaming/nexeditorsdk/nexAnimate$MoveTrackingPath;)V

    return-object v0
.end method

.method public static getRotate(IIZFLcom/nexstreaming/nexeditorsdk/nexAnimate$MoveTrackingPath;)Lcom/nexstreaming/nexeditorsdk/nexAnimate;
    .locals 7

    .prologue
    .line 432
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Rotate;

    const/4 v5, 0x3

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Rotate;-><init>(IIZFILcom/nexstreaming/nexeditorsdk/nexAnimate$MoveTrackingPath;)V

    return-object v0
.end method

.method public static getScale(IIFF)Lcom/nexstreaming/nexeditorsdk/nexAnimate;
    .locals 6

    .prologue
    .line 519
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Scale;

    const/high16 v5, 0x3f800000    # 1.0f

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Scale;-><init>(IIFFF)V

    return-object v0
.end method

.method public static getScale(IIFFFF)Lcom/nexstreaming/nexeditorsdk/nexAnimate;
    .locals 9

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 541
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Scale;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    move v7, p5

    move v8, v5

    invoke-direct/range {v0 .. v8}, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Scale;-><init>(IIFFFFFF)V

    return-object v0
.end method

.method public static getScale(IILcom/nexstreaming/nexeditorsdk/nexAnimate$MoveTrackingPath;)Lcom/nexstreaming/nexeditorsdk/nexAnimate;
    .locals 1

    .prologue
    .line 571
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Scale;

    invoke-direct {v0, p0, p1, p2}, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Scale;-><init>(IILcom/nexstreaming/nexeditorsdk/nexAnimate$MoveTrackingPath;)V

    return-object v0
.end method


# virtual methods
.method protected getAlpha(I)F
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mAlpha:F

    return v0
.end method

.method protected getAngleDegree(IFI)F
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 197
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mRotateDegreeX:F

    .line 203
    :goto_0
    return v0

    .line 198
    :cond_0
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 199
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mRotateDegreeY:F

    goto :goto_0

    .line 200
    :cond_1
    const/4 v0, 0x3

    if-ne p3, v0, :cond_2

    .line 201
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mRotateDegreeZ:F

    goto :goto_0

    .line 203
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getEndTime()I
    .locals 2

    .prologue
    .line 173
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mStartTime:I

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mDuration:I

    add-int/2addr v0, v1

    return v0
.end method

.method getImageResourceId(I)I
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method protected getScaledRatio(IFI)F
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 208
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mScaledX:F

    .line 214
    :goto_0
    return v0

    .line 209
    :cond_0
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 210
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mScaledY:F

    goto :goto_0

    .line 211
    :cond_1
    const/4 v0, 0x3

    if-ne p3, v0, :cond_2

    .line 212
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mScaledZ:F

    goto :goto_0

    .line 214
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method protected getTranslatePosition(II)F
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 182
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mdX:I

    int-to-float v0, v0

    .line 188
    :goto_0
    return v0

    .line 183
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 184
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mdY:I

    int-to-float v0, v0

    goto :goto_0

    .line 185
    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 186
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mdZ:I

    int-to-float v0, v0

    goto :goto_0

    .line 188
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFreeTypeAnimate(ILcom/nexstreaming/nexeditorsdk/nexOverlayItem;)Z
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public resetFreeTypeAnimate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 234
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mdX:I

    .line 235
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mdY:I

    .line 236
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mdZ:I

    .line 237
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mAlpha:F

    .line 238
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mScaledX:F

    .line 239
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mScaledY:F

    .line 240
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mScaledZ:F

    .line 241
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mRotateDegreeX:F

    .line 242
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mRotateDegreeY:F

    .line 243
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mRotateDegreeZ:F

    .line 244
    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Lcom/nexstreaming/nexeditorsdk/nexAnimate;
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mTimeInterpolator:Landroid/animation/TimeInterpolator;

    .line 143
    return-object p0
.end method

.method public setTime(II)V
    .locals 1

    .prologue
    .line 121
    if-gtz p2, :cond_0

    .line 122
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    invoke-direct {v0, p2}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(I)V

    throw v0

    .line 125
    :cond_0
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mStartTime:I

    .line 126
    iput p2, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mDuration:I

    .line 127
    return-void
.end method

.method protected timeRatio(I)F
    .locals 6

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 156
    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mStartTime:I

    sub-int v2, p1, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mDuration:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 157
    const-string/jumbo v3, "timeRatio"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "timeRatio ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    cmpl-float v3, v2, v1

    if-lez v3, :cond_2

    .line 162
    :goto_0
    cmpg-float v2, v1, v0

    if-gez v2, :cond_1

    .line 165
    :goto_1
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mTimeInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mTimeInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v1, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    .line 169
    :cond_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method
