.class public Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry;
.super Ljava/lang/Object;
.source "Crop.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CropEntry"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCropArea:Landroid/graphics/RectF;

.field private mMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

.field private mSampleSize:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1831
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry$1;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix;F)V
    .locals 3
    .param p1, "sample"    # Landroid/graphics/RectF;
    .param p2, "area"    # Landroid/graphics/RectF;
    .param p3, "matrix"    # Landroid/graphics/Matrix;
    .param p4, "degree"    # F

    .prologue
    .line 1771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1767
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry;->mSampleSize:Landroid/graphics/RectF;

    .line 1768
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry;->mCropArea:Landroid/graphics/RectF;

    .line 1769
    new-instance v0, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry;->mMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    .line 1772
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry;->mSampleSize:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1773
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry;->mCropArea:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1774
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry;->mMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    invoke-virtual {v0, p3}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;->set(Landroid/graphics/Matrix;)V

    .line 1776
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry;->mSampleSize:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry;->mCropArea:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry;->mMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    invoke-static {v0, v1, v2, p4}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry;->normalize(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix;F)V

    .line 1777
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1825
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1767
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry;->mSampleSize:Landroid/graphics/RectF;

    .line 1768
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry;->mCropArea:Landroid/graphics/RectF;

    .line 1769
    new-instance v0, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry;->mMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    .line 1826
    const-class v0, Landroid/graphics/RectF;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry;->mSampleSize:Landroid/graphics/RectF;

    .line 1827
    const-class v0, Landroid/graphics/RectF;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry;->mCropArea:Landroid/graphics/RectF;

    .line 1828
    const-class v0, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry;->mMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    .line 1829
    return-void
.end method

.method private static normalize(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix;F)V
    .locals 6
    .param p0, "sample"    # Landroid/graphics/RectF;
    .param p1, "cropArea"    # Landroid/graphics/RectF;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "degree"    # F

    .prologue
    .line 1802
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1803
    .local v0, "normalize":Landroid/graphics/Matrix;
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 1804
    .local v2, "scaled":Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 1805
    .local v1, "origin":Landroid/graphics/RectF;
    invoke-virtual {v0, p3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 1806
    invoke-virtual {v0, v1, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1807
    invoke-virtual {p2, v2, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1808
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v3, v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1809
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1810
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 1811
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    .line 1780
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 1782
    .local v2, "matrix":Landroid/graphics/Matrix;
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry;->mSampleSize:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v5, v8, v9

    .line 1783
    .local v5, "scaleX":F
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry;->mSampleSize:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v6, v8, v9

    .line 1784
    .local v6, "scaleY":F
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry;->mMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    invoke-virtual {v2, v8}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1785
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry;->mCropArea:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    neg-float v8, v8

    iget-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry;->mCropArea:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    neg-float v9, v9

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1786
    invoke-virtual {v2, v5, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1787
    div-float v8, v10, v5

    div-float v9, v10, v6

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1789
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry;->mCropArea:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 1790
    .local v7, "width":I
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry;->mCropArea:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1791
    .local v1, "height":I
    if-lez v7, :cond_0

    if-gtz v1, :cond_1

    .line 1792
    :cond_0
    const/4 v4, 0x0

    .line 1798
    :goto_0
    return-object v4

    .line 1794
    :cond_1
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v1, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1795
    .local v4, "result":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1796
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    const/4 v8, 0x3

    invoke-direct {v3, v8}, Landroid/graphics/Paint;-><init>(I)V

    .line 1797
    .local v3, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0, p1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1815
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1820
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry;->mSampleSize:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1821
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry;->mCropArea:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1822
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry;->mMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1823
    return-void
.end method
