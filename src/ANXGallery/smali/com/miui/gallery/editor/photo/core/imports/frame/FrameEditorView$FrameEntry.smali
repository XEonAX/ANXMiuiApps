.class public Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;
.super Ljava/lang/Object;
.source "FrameEditorView.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameEntry"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBackgroundRect:Landroid/graphics/RectF;

.field private mBitmapMatrix:Landroid/graphics/Matrix;

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapRect:Landroid/graphics/RectF;

.field private mRatio:F

.field private mScaleProgress:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 191
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry$1;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(FF)V
    .locals 2
    .param p1, "ratio"    # F
    .param p2, "scaleProgress"    # F

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mBackgroundRect:Landroid/graphics/RectF;

    .line 139
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mBitmapRect:Landroid/graphics/RectF;

    .line 140
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mBitmapMatrix:Landroid/graphics/Matrix;

    .line 141
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mBitmapPaint:Landroid/graphics/Paint;

    .line 144
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mRatio:F

    .line 145
    iput p2, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mScaleProgress:F

    .line 146
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mBackgroundRect:Landroid/graphics/RectF;

    .line 139
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mBitmapRect:Landroid/graphics/RectF;

    .line 140
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mBitmapMatrix:Landroid/graphics/Matrix;

    .line 141
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mBitmapPaint:Landroid/graphics/Paint;

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mRatio:F

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mScaleProgress:F

    .line 189
    return-void
.end method


# virtual methods
.method protected apply(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v10, 0x0

    .line 149
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 150
    .local v1, "bitmapWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 151
    .local v0, "bitmapHeight":I
    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mBitmapRect:Landroid/graphics/RectF;

    int-to-float v8, v1

    int-to-float v9, v0

    invoke-virtual {v7, v10, v10, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 154
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 156
    .local v4, "maxLength":I
    iget v7, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mRatio:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    .line 157
    move v6, v4

    .line 158
    .local v6, "width":I
    int-to-float v7, v6

    iget v8, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mRatio:F

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 164
    .local v3, "height":I
    :goto_0
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 165
    .local v5, "target":Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mBackgroundRect:Landroid/graphics/RectF;

    int-to-float v8, v6

    int-to-float v9, v3

    invoke-virtual {v7, v10, v10, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 166
    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mBitmapMatrix:Landroid/graphics/Matrix;

    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mBackgroundRect:Landroid/graphics/RectF;

    sget-object v10, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v7, v8, v9, v10}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 167
    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mBitmapMatrix:Landroid/graphics/Matrix;

    iget v8, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mScaleProgress:F

    iget v9, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mScaleProgress:F

    iget-object v10, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    iget-object v11, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 169
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 170
    .local v2, "canvas":Landroid/graphics/Canvas;
    const/4 v7, -0x1

    invoke-virtual {v2, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 171
    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mBitmapMatrix:Landroid/graphics/Matrix;

    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p1, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 172
    return-object v5

    .line 160
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "height":I
    .end local v5    # "target":Landroid/graphics/Bitmap;
    .end local v6    # "width":I
    :cond_0
    move v3, v4

    .line 161
    .restart local v3    # "height":I
    int-to-float v7, v3

    iget v8, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mRatio:F

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v6

    .restart local v6    # "width":I
    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 182
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 183
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;->mScaleProgress:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 184
    return-void
.end method
