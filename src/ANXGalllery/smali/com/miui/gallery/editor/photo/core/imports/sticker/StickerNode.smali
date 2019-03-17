.class Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;
.super Ljava/lang/Object;
.source "StickerEditorView.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;,
        Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;,
        Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$ModifyListener;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDrawBounds:Landroid/graphics/RectF;

.field private mImageBounds:Landroid/graphics/RectF;

.field private mInvert:Landroid/graphics/Matrix;

.field private mListener:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$ModifyListener;

.field private mMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

.field private mMatrixValue:[F

.field private mPaint:Landroid/graphics/Paint;

.field private mPathName:Ljava/lang/String;

.field private mRotate:Landroid/graphics/Matrix;

.field private mSticker:Landroid/graphics/Bitmap;

.field public mStickerCateName:Ljava/lang/String;

.field public mStickerId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 908
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$1;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;JLjava/lang/String;)V
    .locals 5
    .param p1, "sticker"    # Landroid/graphics/Bitmap;
    .param p2, "pathName"    # Ljava/lang/String;
    .param p3, "id"    # J
    .param p5, "cateName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    new-instance v0, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    .line 503
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mInvert:Landroid/graphics/Matrix;

    .line 504
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mRotate:Landroid/graphics/Matrix;

    .line 508
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mPaint:Landroid/graphics/Paint;

    .line 510
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mMatrixValue:[F

    .line 517
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mSticker:Landroid/graphics/Bitmap;

    .line 518
    iput-wide p3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mStickerId:J

    .line 519
    iput-object p5, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mStickerCateName:Ljava/lang/String;

    .line 520
    iput-object p2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mPathName:Ljava/lang/String;

    .line 521
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mImageBounds:Landroid/graphics/RectF;

    .line 522
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mImageBounds:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mDrawBounds:Landroid/graphics/RectF;

    .line 523
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    new-instance v0, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    .line 503
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mInvert:Landroid/graphics/Matrix;

    .line 504
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mRotate:Landroid/graphics/Matrix;

    .line 508
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mPaint:Landroid/graphics/Paint;

    .line 510
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mMatrixValue:[F

    .line 903
    const-class v0, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    .line 904
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mPathName:Ljava/lang/String;

    .line 905
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->initForParcelable()V

    .line 906
    return-void
.end method

.method static synthetic access$002(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$ModifyListener;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$ModifyListener;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;
    .param p1, "x1"    # Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$ModifyListener;

    .prologue
    .line 492
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mListener:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$ModifyListener;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;

    .prologue
    .line 492
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mRotate:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;[F)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;
    .param p1, "x1"    # [F

    .prologue
    .line 492
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->contains([F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;

    .prologue
    .line 492
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mirror()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;Landroid/graphics/Matrix;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;
    .param p1, "x1"    # Landroid/graphics/Matrix;

    .prologue
    .line 492
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->rotate(Landroid/graphics/Matrix;)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;F)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;
    .param p1, "x1"    # F

    .prologue
    .line 492
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->scale(F)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 492
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->translate(FF)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;

    .prologue
    .line 492
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mDrawBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;)Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;

    .prologue
    .line 492
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;

    .prologue
    .line 492
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mImageBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method private contains([F)Z
    .locals 8
    .param p1, "pt"    # [F

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 564
    aget v1, p1, v6

    .line 565
    .local v1, "x":F
    aget v2, p1, v7

    .line 566
    .local v2, "y":F
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mInvert:Landroid/graphics/Matrix;

    invoke-virtual {v3, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 567
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mImageBounds:Landroid/graphics/RectF;

    aget v4, p1, v6

    aget v5, p1, v7

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    .line 568
    .local v0, "result":Z
    aput v1, p1, v6

    .line 569
    aput v2, p1, v7

    .line 570
    return v0
.end method

.method private mirror()V
    .locals 5

    .prologue
    .line 559
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mImageBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mImageBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;->preScale(FFFF)Z

    .line 560
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->postModify()V

    .line 561
    return-void
.end method

.method private postModify()V
    .locals 3

    .prologue
    .line 574
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mDrawBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mImageBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 575
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mInvert:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;->invert(Landroid/graphics/Matrix;)Z

    .line 576
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mListener:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$ModifyListener;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mListener:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$ModifyListener;

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$ModifyListener;->onModified()V

    .line 579
    :cond_0
    return-void
.end method

.method private rotate(Landroid/graphics/Matrix;)V
    .locals 3
    .param p1, "rotate"    # Landroid/graphics/Matrix;

    .prologue
    .line 551
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mRotate:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 552
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mDrawBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mDrawBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;->postTranslate(FF)Z

    .line 553
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 554
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mDrawBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mDrawBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;->postTranslate(FF)Z

    .line 555
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->postModify()V

    .line 556
    return-void
.end method

.method private scale(F)V
    .locals 3
    .param p1, "scale"    # F

    .prologue
    .line 546
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mDrawBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mDrawBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v0, p1, p1, v1, v2}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;->postScale(FFFF)Z

    .line 547
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->postModify()V

    .line 548
    return-void
.end method

.method private translate(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 541
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;->postTranslate(FF)Z

    .line 542
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->postModify()V

    .line 543
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 893
    const/4 v0, 0x0

    return v0
.end method

.method draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 537
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mSticker:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 538
    return-void
.end method

.method init(Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "canvasMatrixInvert"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v3, 0x0

    .line 526
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mMatrixValue:[F

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 527
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mMatrixValue:[F

    const/4 v2, 0x0

    aget v0, v1, v2

    .line 528
    .local v0, "scale":F
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    invoke-virtual {v1, v0, v0, v3, v3}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;->postScale(FFFF)Z

    .line 529
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->postModify()V

    .line 530
    return-void
.end method

.method public initForParcelable()V
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mPathName:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mSticker:Landroid/graphics/Bitmap;

    .line 534
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 898
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 899
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mPathName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 900
    return-void
.end method
