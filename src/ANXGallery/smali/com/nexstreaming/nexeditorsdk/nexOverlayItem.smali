.class public final Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;
.super Ljava/lang/Object;
.source "nexOverlayItem.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$HitPoint;,
        Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;,
        Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;,
        Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;,
        Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$a;
    }
.end annotation


# static fields
.field public static final AnchorPoint_LeftBottom:I = 0x6

.field public static final AnchorPoint_LeftMiddle:I = 0x3

.field public static final AnchorPoint_LeftTop:I = 0x0

.field public static final AnchorPoint_MiddleBottom:I = 0x7

.field public static final AnchorPoint_MiddleMiddle:I = 0x4

.field public static final AnchorPoint_MiddleTop:I = 0x1

.field public static final AnchorPoint_RightBottom:I = 0x8

.field public static final AnchorPoint_RightMiddle:I = 0x5

.field public static final AnchorPoint_RightTop:I = 0x2

.field private static final TAG:Ljava/lang/String; = "nexOverlayItem"

.field private static handleTouchZonePxSize:I = 0x0

.field private static iconSize:I = 0x0

.field public static final kOutLine_Pos_LeftBottom:I = 0x3

.field public static final kOutLine_Pos_LeftTop:I = 0x1

.field public static final kOutLine_Pos_RightBottom:I = 0x4

.field public static final kOutLine_Pos_RightTop:I = 0x2

.field private static marchingAnts_dashSize:I

.field private static marchingAnts_width:I

.field private static outLineIcon:[Landroid/graphics/Bitmap;

.field private static sLastId:I

.field private static solidBlackBitmap:Landroid/graphics/Bitmap;

.field private static solidOutlen:Z

.field private static solidWhiteBitmap:Landroid/graphics/Bitmap;


# instance fields
.field private anchorPoint:I

.field private anchorPointX:I

.field private anchorPointY:I

.field private animateResourceId:I

.field private transient awakeAsset:Lcom/nexstreaming/app/common/nexasset/overlay/AwakeAsset;

.field bApplayLayerExpression:Z

.field private cacheMotion:Lcom/nexstreaming/app/common/nexasset/overlay/OverlayMotion;

.field private lastAnchorPoint:I

.field private lastLayerHeight:I

.field private lastLayerWidth:I

.field private mActiveAnimateList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexAnimate;",
            ">;"
        }
    .end annotation
.end field

.field mAlpha:F

.field mAniList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexAnimate;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimateLastAlpha:F

.field private mAnimateLastRotateDegreeX:F

.field private mAnimateLastRotateDegreeY:F

.field private mAnimateLastRotateDegreeZ:F

.field private mAnimateLastScaledX:F

.field private mAnimateLastScaledY:F

.field private mAnimateLastScaledZ:F

.field private mAnimateTranslateXpos:F

.field private mAnimateTranslateYpos:F

.field private mAnimateTranslateZpos:F

.field private mAudioOnOff:Z

.field private mBrightness:I

.field private mChromaKey:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;

.field private mColorEffect:Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

.field private mContrast:I

.field mEndTime:I

.field private mFlipMode:I

.field private mId:I

.field private mLayerExpression:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

.field private mLayerExpressionDuration:I

.field private mMask:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;

.field private mMaskRect:Landroid/graphics/Rect;

.field private mOverLayFilter:Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;

.field private mOverLayImage:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

.field private mOverlayTitle:Z

.field mRotateDegreeX:F

.field mRotateDegreeY:F

.field mRotateDegreeZ:F

.field private mSaturation:I

.field mScaledX:F

.field mScaledY:F

.field mScaledZ:F

.field private mSpeedControl:I

.field mStartTime:I

.field private mTime:I

.field private mTrimEndDuration:I

.field private mTrimStartDuration:I

.field private mUpdated:Z

.field mVideoEngineId:I

.field private mVolume:I

.field mX:F

.field mY:F

.field mZ:F

.field private mZOrder:I

.field private relationCoordinates:Z

.field private scratchMatrix:Landroid/graphics/Matrix;

.field private scratchPoint:[F

.field private showItem:Z

.field private showOutLien:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    sput v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->sLastId:I

    .line 3064
    const/16 v0, 0xa

    sput v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->marchingAnts_dashSize:I

    .line 3065
    const/4 v0, 0x4

    sput v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->marchingAnts_width:I

    .line 3066
    const/16 v0, 0x18

    sput v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->iconSize:I

    .line 3067
    const/16 v0, 0x24

    sput v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->handleTouchZonePxSize:I

    return-void
.end method

.method public constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;IIII)V
    .locals 6

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-boolean v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mUpdated:Z

    .line 87
    iput-boolean v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->showItem:Z

    .line 93
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mId:I

    .line 98
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateTranslateXpos:F

    .line 99
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateTranslateYpos:F

    .line 100
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateTranslateZpos:F

    .line 109
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->anchorPoint:I

    .line 120
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mActiveAnimateList:Ljava/util/Set;

    .line 233
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAlpha:F

    .line 234
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mScaledX:F

    .line 235
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mScaledY:F

    .line 236
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mScaledZ:F

    .line 237
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mRotateDegreeX:F

    .line 238
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mRotateDegreeY:F

    .line 239
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mRotateDegreeZ:F

    .line 241
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mBrightness:I

    .line 242
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mContrast:I

    .line 243
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mSaturation:I

    .line 245
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->NONE:Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mColorEffect:Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    .line 247
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mLayerExpressionDuration:I

    .line 249
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mMaskRect:Landroid/graphics/Rect;

    .line 251
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mTrimStartDuration:I

    .line 252
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mTrimEndDuration:I

    .line 253
    iput-boolean v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAudioOnOff:Z

    .line 254
    iput v5, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mVolume:I

    .line 255
    iput v5, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mSpeedControl:I

    .line 256
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->scratchPoint:[F

    .line 257
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->scratchMatrix:Landroid/graphics/Matrix;

    .line 259
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->NONE:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mLayerExpression:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    .line 261
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverlayTitle:Z

    .line 1535
    iput-boolean v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->bApplayLayerExpression:Z

    .line 3308
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mZOrder:I

    .line 3385
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mFlipMode:I

    .line 759
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverLayFilter:Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;

    .line 761
    if-gt p5, p4, :cond_0

    .line 762
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    invoke-direct {v0, p4, p5}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(II)V

    throw v0

    .line 765
    :cond_0
    sget v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->sLastId:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mId:I

    .line 766
    sget v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->sLastId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->sLastId:I

    .line 768
    int-to-float v0, p2

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mX:F

    .line 769
    int-to-float v0, p3

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mY:F

    .line 770
    iput p4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mStartTime:I

    .line 771
    iput p5, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mEndTime:I

    .line 772
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->resetAnimate()V

    .line 773
    return-void

    .line 256
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;IZFFII)V
    .locals 6

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-boolean v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mUpdated:Z

    .line 87
    iput-boolean v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->showItem:Z

    .line 93
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mId:I

    .line 98
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateTranslateXpos:F

    .line 99
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateTranslateYpos:F

    .line 100
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateTranslateZpos:F

    .line 109
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->anchorPoint:I

    .line 120
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mActiveAnimateList:Ljava/util/Set;

    .line 233
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAlpha:F

    .line 234
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mScaledX:F

    .line 235
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mScaledY:F

    .line 236
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mScaledZ:F

    .line 237
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mRotateDegreeX:F

    .line 238
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mRotateDegreeY:F

    .line 239
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mRotateDegreeZ:F

    .line 241
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mBrightness:I

    .line 242
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mContrast:I

    .line 243
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mSaturation:I

    .line 245
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->NONE:Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mColorEffect:Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    .line 247
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mLayerExpressionDuration:I

    .line 249
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mMaskRect:Landroid/graphics/Rect;

    .line 251
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mTrimStartDuration:I

    .line 252
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mTrimEndDuration:I

    .line 253
    iput-boolean v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAudioOnOff:Z

    .line 254
    iput v5, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mVolume:I

    .line 255
    iput v5, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mSpeedControl:I

    .line 256
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->scratchPoint:[F

    .line 257
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->scratchMatrix:Landroid/graphics/Matrix;

    .line 259
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->NONE:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mLayerExpression:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    .line 261
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverlayTitle:Z

    .line 1535
    iput-boolean v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->bApplayLayerExpression:Z

    .line 3308
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mZOrder:I

    .line 3385
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mFlipMode:I

    .line 788
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverLayFilter:Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;

    .line 790
    if-gt p7, p6, :cond_0

    .line 791
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    invoke-direct {v0, p6, p7}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(II)V

    throw v0

    .line 794
    :cond_0
    sget v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->sLastId:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mId:I

    .line 795
    sget v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->sLastId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->sLastId:I

    .line 796
    iput p2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->anchorPoint:I

    .line 797
    iput-boolean p3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->relationCoordinates:Z

    .line 798
    iput p4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mX:F

    .line 799
    iput p5, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mY:F

    .line 800
    iput p6, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mStartTime:I

    .line 801
    iput p7, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mEndTime:I

    .line 802
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->resetAnimate()V

    .line 803
    return-void

    .line 256
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;IIII)V
    .locals 6

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-boolean v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mUpdated:Z

    .line 87
    iput-boolean v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->showItem:Z

    .line 93
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mId:I

    .line 98
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateTranslateXpos:F

    .line 99
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateTranslateYpos:F

    .line 100
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateTranslateZpos:F

    .line 109
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->anchorPoint:I

    .line 120
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mActiveAnimateList:Ljava/util/Set;

    .line 233
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAlpha:F

    .line 234
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mScaledX:F

    .line 235
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mScaledY:F

    .line 236
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mScaledZ:F

    .line 237
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mRotateDegreeX:F

    .line 238
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mRotateDegreeY:F

    .line 239
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mRotateDegreeZ:F

    .line 241
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mBrightness:I

    .line 242
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mContrast:I

    .line 243
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mSaturation:I

    .line 245
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->NONE:Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mColorEffect:Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    .line 247
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mLayerExpressionDuration:I

    .line 249
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mMaskRect:Landroid/graphics/Rect;

    .line 251
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mTrimStartDuration:I

    .line 252
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mTrimEndDuration:I

    .line 253
    iput-boolean v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAudioOnOff:Z

    .line 254
    iput v5, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mVolume:I

    .line 255
    iput v5, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mSpeedControl:I

    .line 256
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->scratchPoint:[F

    .line 257
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->scratchMatrix:Landroid/graphics/Matrix;

    .line 259
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->NONE:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mLayerExpression:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    .line 261
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverlayTitle:Z

    .line 1535
    iput-boolean v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->bApplayLayerExpression:Z

    .line 3308
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mZOrder:I

    .line 3385
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mFlipMode:I

    .line 624
    sget v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->sLastId:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mId:I

    .line 625
    sget v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->sLastId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->sLastId:I

    .line 627
    if-gt p5, p4, :cond_0

    .line 628
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    invoke-direct {v0, p4, p5}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(II)V

    throw v0

    .line 631
    :cond_0
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverLayImage:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    .line 633
    int-to-float v0, p2

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mX:F

    .line 634
    int-to-float v0, p3

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mY:F

    .line 635
    iput p4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mStartTime:I

    .line 636
    iput p5, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mEndTime:I

    .line 637
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->resetAnimate()V

    .line 641
    return-void

    .line 256
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;IZFFII)V
    .locals 6

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-boolean v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mUpdated:Z

    .line 87
    iput-boolean v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->showItem:Z

    .line 93
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mId:I

    .line 98
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateTranslateXpos:F

    .line 99
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateTranslateYpos:F

    .line 100
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateTranslateZpos:F

    .line 109
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->anchorPoint:I

    .line 120
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mActiveAnimateList:Ljava/util/Set;

    .line 233
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAlpha:F

    .line 234
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mScaledX:F

    .line 235
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mScaledY:F

    .line 236
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mScaledZ:F

    .line 237
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mRotateDegreeX:F

    .line 238
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mRotateDegreeY:F

    .line 239
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mRotateDegreeZ:F

    .line 241
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mBrightness:I

    .line 242
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mContrast:I

    .line 243
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mSaturation:I

    .line 245
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->NONE:Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mColorEffect:Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    .line 247
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mLayerExpressionDuration:I

    .line 249
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mMaskRect:Landroid/graphics/Rect;

    .line 251
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mTrimStartDuration:I

    .line 252
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mTrimEndDuration:I

    .line 253
    iput-boolean v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAudioOnOff:Z

    .line 254
    iput v5, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mVolume:I

    .line 255
    iput v5, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mSpeedControl:I

    .line 256
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->scratchPoint:[F

    .line 257
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->scratchMatrix:Landroid/graphics/Matrix;

    .line 259
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->NONE:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mLayerExpression:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    .line 261
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverlayTitle:Z

    .line 1535
    iput-boolean v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->bApplayLayerExpression:Z

    .line 3308
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mZOrder:I

    .line 3385
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mFlipMode:I

    .line 659
    sget v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->sLastId:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mId:I

    .line 660
    sget v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->sLastId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->sLastId:I

    .line 662
    if-gt p7, p6, :cond_0

    .line 663
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    invoke-direct {v0, p6, p7}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(II)V

    throw v0

    .line 666
    :cond_0
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverLayImage:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    .line 667
    iput p2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->anchorPoint:I

    .line 668
    iput-boolean p3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->relationCoordinates:Z

    .line 669
    iput p4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mX:F

    .line 670
    iput p5, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mY:F

    .line 671
    iput p6, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mStartTime:I

    .line 672
    iput p7, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mEndTime:I

    .line 673
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->resetAnimate()V

    .line 677
    return-void

    .line 256
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;IIII)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-boolean v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mUpdated:Z

    .line 87
    iput-boolean v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->showItem:Z

    .line 93
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mId:I

    .line 98
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateTranslateXpos:F

    .line 99
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateTranslateYpos:F

    .line 100
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateTranslateZpos:F

    .line 109
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->anchorPoint:I

    .line 120
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mActiveAnimateList:Ljava/util/Set;

    .line 233
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAlpha:F

    .line 234
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mScaledX:F

    .line 235
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mScaledY:F

    .line 236
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mScaledZ:F

    .line 237
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mRotateDegreeX:F

    .line 238
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mRotateDegreeY:F

    .line 239
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mRotateDegreeZ:F

    .line 241
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mBrightness:I

    .line 242
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mContrast:I

    .line 243
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mSaturation:I

    .line 245
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->NONE:Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mColorEffect:Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    .line 247
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mLayerExpressionDuration:I

    .line 249
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mMaskRect:Landroid/graphics/Rect;

    .line 251
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mTrimStartDuration:I

    .line 252
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mTrimEndDuration:I

    .line 253
    iput-boolean v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAudioOnOff:Z

    .line 254
    iput v5, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mVolume:I

    .line 255
    iput v5, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mSpeedControl:I

    .line 256
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->scratchPoint:[F

    .line 257
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->scratchMatrix:Landroid/graphics/Matrix;

    .line 259
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->NONE:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mLayerExpression:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    .line 261
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverlayTitle:Z

    .line 1535
    iput-boolean v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->bApplayLayerExpression:Z

    .line 3308
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mZOrder:I

    .line 3385
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mFlipMode:I

    .line 691
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 692
    sget v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->sLastId:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mId:I

    .line 693
    sget v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->sLastId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->sLastId:I

    .line 695
    if-gt p5, p4, :cond_0

    .line 696
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    invoke-direct {v0, p4, p5}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(II)V

    throw v0

    .line 699
    :cond_0
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverLayImage:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    .line 701
    int-to-float v0, p2

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mX:F

    .line 702
    int-to-float v0, p3

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mY:F

    .line 703
    iput p4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mStartTime:I

    .line 704
    iput p5, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mEndTime:I

    .line 705
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->resetAnimate()V

    .line 709
    return-void

    .line 256
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;IZFFII)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 724
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-boolean v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mUpdated:Z

    .line 87
    iput-boolean v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->showItem:Z

    .line 93
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mId:I

    .line 98
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateTranslateXpos:F

    .line 99
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateTranslateYpos:F

    .line 100
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateTranslateZpos:F

    .line 109
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->anchorPoint:I

    .line 120
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mActiveAnimateList:Ljava/util/Set;

    .line 233
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAlpha:F

    .line 234
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mScaledX:F

    .line 235
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mScaledY:F

    .line 236
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mScaledZ:F

    .line 237
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mRotateDegreeX:F

    .line 238
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mRotateDegreeY:F

    .line 239
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mRotateDegreeZ:F

    .line 241
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mBrightness:I

    .line 242
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mContrast:I

    .line 243
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mSaturation:I

    .line 245
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->NONE:Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mColorEffect:Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    .line 247
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mLayerExpressionDuration:I

    .line 249
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mMaskRect:Landroid/graphics/Rect;

    .line 251
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mTrimStartDuration:I

    .line 252
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mTrimEndDuration:I

    .line 253
    iput-boolean v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAudioOnOff:Z

    .line 254
    iput v5, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mVolume:I

    .line 255
    iput v5, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mSpeedControl:I

    .line 256
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->scratchPoint:[F

    .line 257
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->scratchMatrix:Landroid/graphics/Matrix;

    .line 259
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->NONE:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mLayerExpression:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    .line 261
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverlayTitle:Z

    .line 1535
    iput-boolean v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->bApplayLayerExpression:Z

    .line 3308
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mZOrder:I

    .line 3385
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mFlipMode:I

    .line 725
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 726
    sget v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->sLastId:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mId:I

    .line 727
    sget v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->sLastId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->sLastId:I

    .line 729
    if-gt p7, p6, :cond_0

    .line 730
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    invoke-direct {v0, p6, p7}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(II)V

    throw v0

    .line 733
    :cond_0
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverLayImage:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    .line 734
    iput p2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->anchorPoint:I

    .line 735
    iput-boolean p3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->relationCoordinates:Z

    .line 736
    iput p4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mX:F

    .line 737
    iput p5, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mY:F

    .line 738
    iput p6, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mStartTime:I

    .line 739
    iput p7, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mEndTime:I

    .line 740
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->resetAnimate()V

    .line 744
    return-void

    .line 256
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 6

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-boolean v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mUpdated:Z

    .line 87
    iput-boolean v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->showItem:Z

    .line 93
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mId:I

    .line 98
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateTranslateXpos:F

    .line 99
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateTranslateYpos:F

    .line 100
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateTranslateZpos:F

    .line 109
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->anchorPoint:I

    .line 120
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mActiveAnimateList:Ljava/util/Set;

    .line 233
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAlpha:F

    .line 234
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mScaledX:F

    .line 235
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mScaledY:F

    .line 236
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mScaledZ:F

    .line 237
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mRotateDegreeX:F

    .line 238
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mRotateDegreeY:F

    .line 239
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mRotateDegreeZ:F

    .line 241
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mBrightness:I

    .line 242
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mContrast:I

    .line 243
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mSaturation:I

    .line 245
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->NONE:Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mColorEffect:Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    .line 247
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mLayerExpressionDuration:I

    .line 249
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mMaskRect:Landroid/graphics/Rect;

    .line 251
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mTrimStartDuration:I

    .line 252
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mTrimEndDuration:I

    .line 253
    iput-boolean v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAudioOnOff:Z

    .line 254
    iput v5, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mVolume:I

    .line 255
    iput v5, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mSpeedControl:I

    .line 256
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->scratchPoint:[F

    .line 257
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->scratchMatrix:Landroid/graphics/Matrix;

    .line 259
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->NONE:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mLayerExpression:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    .line 261
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverlayTitle:Z

    .line 1535
    iput-boolean v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->bApplayLayerExpression:Z

    .line 3308
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mZOrder:I

    .line 3385
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mFlipMode:I

    .line 540
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;->getOverlayPreset()Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;

    move-result-object v0

    .line 541
    if-nez v0, :cond_0

    .line 542
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/nexSDKException;

    const-string v1, "nexOverlayPreset is null"

    invoke-direct {v0, v1}, Lcom/nexstreaming/nexeditorsdk/exception/nexSDKException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_0
    invoke-virtual {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;->getOverlayImage(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverLayImage:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    .line 546
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverLayImage:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    if-nez v0, :cond_1

    .line 547
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/nexSDKException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not found OverlayImage. id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nexstreaming/nexeditorsdk/exception/nexSDKException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :cond_1
    if-gt p5, p4, :cond_2

    .line 551
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    invoke-direct {v0, p4, p5}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(II)V

    throw v0

    .line 554
    :cond_2
    sget v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->sLastId:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mId:I

    .line 555
    sget v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->sLastId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->sLastId:I

    .line 557
    int-to-float v0, p2

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mX:F

    .line 558
    int-to-float v0, p3

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mY:F

    .line 559
    iput p4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mStartTime:I

    .line 560
    iput p5, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mEndTime:I

    .line 561
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->resetAnimate()V

    .line 562
    return-void

    .line 256
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;IZFFII)V
    .locals 6

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-boolean v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mUpdated:Z

    .line 87
    iput-boolean v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->showItem:Z

    .line 93
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mId:I

    .line 98
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateTranslateXpos:F

    .line 99
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateTranslateYpos:F

    .line 100
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateTranslateZpos:F

    .line 109
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->anchorPoint:I

    .line 120
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mActiveAnimateList:Ljava/util/Set;

    .line 233
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAlpha:F

    .line 234
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mScaledX:F

    .line 235
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mScaledY:F

    .line 236
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mScaledZ:F

    .line 237
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mRotateDegreeX:F

    .line 238
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mRotateDegreeY:F

    .line 239
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mRotateDegreeZ:F

    .line 241
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mBrightness:I

    .line 242
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mContrast:I

    .line 243
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mSaturation:I

    .line 245
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->NONE:Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mColorEffect:Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    .line 247
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mLayerExpressionDuration:I

    .line 249
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mMaskRect:Landroid/graphics/Rect;

    .line 251
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mTrimStartDuration:I

    .line 252
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mTrimEndDuration:I

    .line 253
    iput-boolean v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAudioOnOff:Z

    .line 254
    iput v5, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mVolume:I

    .line 255
    iput v5, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mSpeedControl:I

    .line 256
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->scratchPoint:[F

    .line 257
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->scratchMatrix:Landroid/graphics/Matrix;

    .line 259
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->NONE:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mLayerExpression:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    .line 261
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverlayTitle:Z

    .line 1535
    iput-boolean v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->bApplayLayerExpression:Z

    .line 3308
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mZOrder:I

    .line 3385
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mFlipMode:I

    .line 580
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;->getOverlayPreset()Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;

    move-result-object v0

    .line 581
    if-nez v0, :cond_0

    .line 582
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/nexSDKException;

    const-string v1, "nexOverlayPreset is null"

    invoke-direct {v0, v1}, Lcom/nexstreaming/nexeditorsdk/exception/nexSDKException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_0
    invoke-virtual {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;->getOverlayImage(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverLayImage:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    .line 586
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverLayImage:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    if-nez v0, :cond_1

    .line 587
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/nexSDKException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not found OverlayImage. id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nexstreaming/nexeditorsdk/exception/nexSDKException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 590
    :cond_1
    if-gt p7, p6, :cond_2

    .line 591
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    invoke-direct {v0, p6, p7}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(II)V

    throw v0

    .line 594
    :cond_2
    sget v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->sLastId:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mId:I

    .line 595
    sget v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->sLastId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->sLastId:I

    .line 596
    iput p2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->anchorPoint:I

    .line 597
    iput-boolean p3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->relationCoordinates:Z

    .line 598
    iput p4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mX:F

    .line 599
    iput p5, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mY:F

    .line 600
    iput p6, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mStartTime:I

    .line 601
    iput p7, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mEndTime:I

    .line 602
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->resetAnimate()V

    .line 603
    return-void

    .line 256
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$1000(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;Z)[I
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getRealPositions(Z)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;)Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverLayImage:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    return-object v0
.end method

.method static synthetic access$1200(III)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 83
    invoke-static {p0, p1, p2}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getDrawBitmapPosition(III)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;)Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverLayFilter:Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;)Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mMask:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;)Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mLayerExpression:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    return-object v0
.end method

.method public static clearOutLine()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3128
    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->solidBlackBitmap:Landroid/graphics/Bitmap;

    .line 3129
    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->solidWhiteBitmap:Landroid/graphics/Bitmap;

    .line 3130
    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->outLineIcon:[Landroid/graphics/Bitmap;

    .line 3131
    return-void
.end method

.method protected static clone(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;)Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;
    .locals 3

    .prologue
    .line 368
    const/4 v1, 0x0

    .line 370
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :try_start_1
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mColorEffect:Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    invoke-static {v1}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->clone(Lcom/nexstreaming/nexeditorsdk/nexColorEffect;)Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    move-result-object v1

    iput-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mColorEffect:Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    .line 372
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverLayImage:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    if-eqz v1, :cond_0

    .line 373
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverLayImage:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    invoke-static {v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->clone(Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;)Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    move-result-object v1

    iput-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverLayImage:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 378
    :cond_0
    :goto_0
    return-object v0

    .line 375
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    .line 376
    :goto_1
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0

    .line 375
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private getAnchorPosition(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 289
    .line 290
    if-nez p1, :cond_0

    .line 291
    invoke-direct {p0, v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->updateCoordinates(Z)Z

    move-result p1

    .line 294
    :cond_0
    if-eqz p1, :cond_1

    .line 296
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->anchorPoint:I

    packed-switch v0, :pswitch_data_0

    .line 346
    :cond_1
    :goto_0
    return-void

    .line 298
    :pswitch_0
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->anchorPointX:I

    .line 299
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->anchorPointY:I

    goto :goto_0

    .line 303
    :pswitch_1
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->lastLayerWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->anchorPointX:I

    .line 304
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->anchorPointY:I

    goto :goto_0

    .line 308
    :pswitch_2
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->lastLayerWidth:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->anchorPointX:I

    .line 309
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->anchorPointY:I

    goto :goto_0

    .line 313
    :pswitch_3
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->anchorPointX:I

    .line 314
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->lastLayerHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->anchorPointY:I

    goto :goto_0

    .line 318
    :pswitch_4
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->lastLayerWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->anchorPointX:I

    .line 319
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->lastLayerHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->anchorPointY:I

    goto :goto_0

    .line 323
    :pswitch_5
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->lastLayerWidth:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->anchorPointX:I

    .line 324
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->lastLayerHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->anchorPointY:I

    goto :goto_0

    .line 328
    :pswitch_6
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->anchorPointX:I

    .line 329
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->lastLayerHeight:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->anchorPointY:I

    goto :goto_0

    .line 333
    :pswitch_7
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->lastLayerWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->anchorPointX:I

    .line 334
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->lastLayerHeight:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->anchorPointY:I

    goto :goto_0

    .line 338
    :pswitch_8
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->lastLayerWidth:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->anchorPointX:I

    .line 339
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->lastLayerHeight:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->anchorPointY:I

    goto :goto_0

    .line 296
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private getCombinedBrightness()I
    .locals 3

    .prologue
    .line 467
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mColorEffect:Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    if-nez v0, :cond_0

    .line 468
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mBrightness:I

    .line 469
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mBrightness:I

    const/high16 v1, 0x437f0000    # 255.0f

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mColorEffect:Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getBrightness()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private getCombinedContrast()I
    .locals 3

    .prologue
    .line 473
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mColorEffect:Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    if-nez v0, :cond_0

    .line 474
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mContrast:I

    .line 475
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mContrast:I

    const/high16 v1, 0x437f0000    # 255.0f

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mColorEffect:Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getContrast()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private getCombinedSaturation()I
    .locals 3

    .prologue
    .line 479
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mColorEffect:Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    if-nez v0, :cond_0

    .line 480
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mSaturation:I

    .line 481
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mSaturation:I

    const/high16 v1, 0x437f0000    # 255.0f

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mColorEffect:Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getSaturation()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private static getDrawBitmapPosition(III)Landroid/graphics/Rect;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1816
    new-instance v0, Landroid/graphics/Rect;

    neg-int v1, p1

    div-int/lit8 v1, v1, 0x2

    neg-int v2, p2

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v3, p1, 0x2

    div-int/lit8 v4, p2, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1817
    packed-switch p0, :pswitch_data_0

    .line 1849
    :goto_0
    :pswitch_0
    return-object v0

    .line 1819
    :pswitch_1
    invoke-virtual {v0, v5, v5, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1823
    :pswitch_2
    neg-int v1, p2

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, p2, 0x2

    invoke-virtual {v0, v5, v1, p1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1826
    :pswitch_3
    neg-int v1, p2

    invoke-virtual {v0, v5, v1, p1, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1829
    :pswitch_4
    neg-int v1, p1

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, p1, 0x2

    invoke-virtual {v0, v1, v5, v2, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1835
    :pswitch_5
    neg-int v1, p1

    div-int/lit8 v1, v1, 0x2

    neg-int v2, p2

    div-int/lit8 v3, p1, 0x2

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1838
    :pswitch_6
    neg-int v1, p1

    invoke-virtual {v0, v1, v5, v5, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1842
    :pswitch_7
    neg-int v1, p1

    neg-int v2, p2

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v3, p2, 0x2

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1845
    :pswitch_8
    neg-int v1, p1

    neg-int v2, p2

    invoke-virtual {v0, v1, v2, v5, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1817
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_7
        :pswitch_3
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method private getRealPositions(Z)[I
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 349
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 350
    invoke-direct {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getAnchorPosition(Z)V

    .line 352
    iget-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->relationCoordinates:Z

    if-eqz v1, :cond_0

    .line 353
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->anchorPointX:I

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->lastLayerWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mX:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    aput v1, v0, v4

    .line 354
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->anchorPointY:I

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->lastLayerHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mY:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    aput v1, v0, v5

    .line 355
    aput v4, v0, v6

    .line 362
    :goto_0
    return-object v0

    .line 357
    :cond_0
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->anchorPointX:I

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mX:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    aput v1, v0, v4

    .line 358
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->anchorPointY:I

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mY:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    aput v1, v0, v5

    .line 359
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mZ:F

    float-to-int v1, v1

    aput v1, v0, v6

    goto :goto_0
.end method

.method private getRelativeScale(II)F
    .locals 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1610
    .line 1612
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectProfile()Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->getWidth()I

    move-result v0

    .line 1613
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectProfile()Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->getHeight()I

    move-result v2

    .line 1616
    if-le v0, p1, :cond_2

    .line 1617
    int-to-float v3, p1

    int-to-float v0, v0

    div-float v0, v3, v0

    .line 1619
    :goto_0
    if-le v2, v2, :cond_0

    .line 1620
    int-to-float v1, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1623
    :cond_0
    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    .line 1626
    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private getTintColor()I
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mColorEffect:Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    if-nez v0, :cond_0

    .line 486
    const/4 v0, 0x0

    .line 487
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mColorEffect:Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getTintColor()I

    move-result v0

    goto :goto_0
.end method

.method private static renderOutLine(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V
    .locals 19

    .prologue
    .line 3195
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->solidBlackBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->solidWhiteBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_9

    .line 3197
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mTime:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getBoundInfo(I)Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;

    move-result-object v18

    .line 3207
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->i()V

    .line 3213
    invoke-static/range {v18 .. v18}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;->access$1700(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;)F

    move-result v1

    invoke-static/range {v18 .. v18}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;->access$1800(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;)F

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a(FF)V

    .line 3214
    invoke-static/range {v18 .. v18}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;->access$1900(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;)F

    move-result v1

    invoke-static/range {v18 .. v18}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;->access$2000(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;)F

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->b(FF)V

    .line 3217
    invoke-static/range {v18 .. v18}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;->access$2100(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;)F

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a(FFFF)V

    .line 3218
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->i()V

    .line 3219
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static/range {v18 .. v18}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;->access$1900(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;)F

    move-result v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static/range {v18 .. v18}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;->access$2000(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;)F

    move-result v3

    div-float/2addr v2, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->b(FF)V

    .line 3231
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 3232
    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;->getDrawBound(Landroid/graphics/Rect;)V

    .line 3234
    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-static/range {v18 .. v18}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;->access$1900(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;)F

    move-result v3

    mul-float/2addr v3, v2

    .line 3235
    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    invoke-static/range {v18 .. v18}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;->access$1900(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;)F

    move-result v4

    mul-float v11, v2, v4

    .line 3236
    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-static/range {v18 .. v18}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;->access$2000(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;)F

    move-result v4

    mul-float/2addr v4, v2

    .line 3237
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-static/range {v18 .. v18}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;->access$2000(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;)F

    move-result v2

    mul-float v6, v1, v2

    .line 3238
    sub-float v1, v6, v4

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v1, v4

    .line 3240
    sget-boolean v1, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->solidOutlen:Z

    if-eqz v1, :cond_2

    .line 3241
    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->solidWhiteBitmap:Landroid/graphics/Bitmap;

    sget v1, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->marchingAnts_width:I

    int-to-float v1, v1

    add-float v5, v3, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a(Landroid/graphics/Bitmap;FFFF)V

    .line 3242
    sget-object v8, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->solidWhiteBitmap:Landroid/graphics/Bitmap;

    sget v1, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->marchingAnts_width:I

    int-to-float v1, v1

    sub-float v9, v11, v1

    move-object/from16 v7, p1

    move v10, v4

    move v12, v6

    invoke-virtual/range {v7 .. v12}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a(Landroid/graphics/Bitmap;FFFF)V

    .line 3243
    sget-object v8, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->solidWhiteBitmap:Landroid/graphics/Bitmap;

    sget v1, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->marchingAnts_width:I

    int-to-float v1, v1

    add-float v12, v4, v1

    move-object/from16 v7, p1

    move v9, v3

    move v10, v4

    invoke-virtual/range {v7 .. v12}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a(Landroid/graphics/Bitmap;FFFF)V

    .line 3244
    sget-object v8, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->solidWhiteBitmap:Landroid/graphics/Bitmap;

    sget v1, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->marchingAnts_width:I

    int-to-float v1, v1

    sub-float v10, v6, v1

    move-object/from16 v7, p1

    move v9, v3

    move v12, v6

    invoke-virtual/range {v7 .. v12}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a(Landroid/graphics/Bitmap;FFFF)V

    .line 3272
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->j()V

    .line 3274
    const/4 v1, 0x0

    move v5, v1

    :goto_0
    const/4 v1, 0x4

    if-ge v5, v1, :cond_8

    .line 3275
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->outLineIcon:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v5

    if-eqz v1, :cond_1

    .line 3276
    add-int/lit8 v7, v5, 0x1

    .line 3277
    const/4 v2, 0x0

    .line 3278
    const/4 v1, 0x0

    .line 3279
    packed-switch v7, :pswitch_data_0

    .line 3297
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->i()V

    .line 3298
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static/range {v18 .. v18}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;->access$1900(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;)F

    move-result v8

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static/range {v18 .. v18}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;->access$2000(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;)F

    move-result v9

    div-float/2addr v8, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->b(FF)V

    .line 3299
    sget-object v7, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->outLineIcon:[Landroid/graphics/Bitmap;

    aget-object v7, v7, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v2, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a(Landroid/graphics/Bitmap;FF)V

    .line 3300
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->j()V

    .line 3274
    :cond_1
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    .line 3247
    :cond_2
    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->solidBlackBitmap:Landroid/graphics/Bitmap;

    sget v1, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->marchingAnts_width:I

    int-to-float v1, v1

    add-float v5, v3, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a(Landroid/graphics/Bitmap;FFFF)V

    .line 3248
    sget-object v8, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->solidBlackBitmap:Landroid/graphics/Bitmap;

    sget v1, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->marchingAnts_width:I

    int-to-float v1, v1

    sub-float v9, v11, v1

    move-object/from16 v7, p1

    move v10, v4

    move v12, v6

    invoke-virtual/range {v7 .. v12}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a(Landroid/graphics/Bitmap;FFFF)V

    .line 3249
    sget-object v8, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->solidBlackBitmap:Landroid/graphics/Bitmap;

    sget v1, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->marchingAnts_width:I

    int-to-float v1, v1

    add-float v12, v4, v1

    move-object/from16 v7, p1

    move v9, v3

    move v10, v4

    invoke-virtual/range {v7 .. v12}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a(Landroid/graphics/Bitmap;FFFF)V

    .line 3250
    sget-object v8, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->solidBlackBitmap:Landroid/graphics/Bitmap;

    sget v1, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->marchingAnts_width:I

    int-to-float v1, v1

    sub-float v10, v6, v1

    move-object/from16 v7, p1

    move v9, v3

    move v12, v6

    invoke-virtual/range {v7 .. v12}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a(Landroid/graphics/Bitmap;FFFF)V

    .line 3252
    sget v1, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->marchingAnts_dashSize:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v1

    .line 3254
    sget v1, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->marchingAnts_dashSize:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, v3, v1

    :goto_2
    cmpg-float v5, v1, v11

    if-gez v5, :cond_5

    .line 3255
    add-float v5, v1, v2

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v14

    .line 3256
    sget v5, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->marchingAnts_dashSize:I

    int-to-float v5, v5

    add-float/2addr v5, v14

    invoke-static {v11, v5}, Ljava/lang/Math;->min(FF)F

    move-result v16

    .line 3257
    cmpg-float v5, v16, v3

    if-ltz v5, :cond_3

    cmpl-float v5, v14, v11

    if-lez v5, :cond_4

    .line 3254
    :cond_3
    :goto_3
    sget v5, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->marchingAnts_dashSize:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v1, v5

    goto :goto_2

    .line 3259
    :cond_4
    sget-object v13, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->solidWhiteBitmap:Landroid/graphics/Bitmap;

    sget v5, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->marchingAnts_width:I

    int-to-float v5, v5

    add-float v17, v4, v5

    move-object/from16 v12, p1

    move v15, v4

    invoke-virtual/range {v12 .. v17}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a(Landroid/graphics/Bitmap;FFFF)V

    .line 3260
    sget-object v13, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->solidWhiteBitmap:Landroid/graphics/Bitmap;

    sget v5, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->marchingAnts_width:I

    int-to-float v5, v5

    sub-float v15, v6, v5

    move-object/from16 v12, p1

    move/from16 v17, v6

    invoke-virtual/range {v12 .. v17}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a(Landroid/graphics/Bitmap;FFFF)V

    goto :goto_3

    .line 3262
    :cond_5
    sget v1, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->marchingAnts_dashSize:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, v4, v1

    :goto_4
    cmpg-float v5, v1, v6

    if-gez v5, :cond_0

    .line 3263
    add-float v5, v1, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 3264
    sget v5, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->marchingAnts_dashSize:I

    int-to-float v5, v5

    add-float/2addr v5, v15

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v17

    .line 3265
    cmpg-float v5, v17, v4

    if-ltz v5, :cond_6

    cmpl-float v5, v15, v6

    if-lez v5, :cond_7

    .line 3262
    :cond_6
    :goto_5
    sget v5, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->marchingAnts_dashSize:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v1, v5

    goto :goto_4

    .line 3267
    :cond_7
    sget-object v13, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->solidWhiteBitmap:Landroid/graphics/Bitmap;

    sget v5, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->marchingAnts_width:I

    int-to-float v5, v5

    add-float v16, v3, v5

    move-object/from16 v12, p1

    move v14, v3

    invoke-virtual/range {v12 .. v17}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a(Landroid/graphics/Bitmap;FFFF)V

    .line 3268
    sget-object v13, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->solidWhiteBitmap:Landroid/graphics/Bitmap;

    sget v5, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->marchingAnts_width:I

    int-to-float v5, v5

    sub-float v14, v11, v5

    move-object/from16 v12, p1

    move/from16 v16, v11

    invoke-virtual/range {v12 .. v17}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a(Landroid/graphics/Bitmap;FFFF)V

    goto :goto_5

    :pswitch_0
    move v1, v4

    move v2, v3

    .line 3283
    goto/16 :goto_1

    :pswitch_1
    move v1, v4

    move v2, v11

    .line 3287
    goto/16 :goto_1

    :pswitch_2
    move v1, v6

    move v2, v3

    .line 3291
    goto/16 :goto_1

    :pswitch_3
    move v1, v6

    move v2, v11

    .line 3294
    goto/16 :goto_1

    .line 3303
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->j()V

    .line 3305
    :cond_9
    return-void

    .line 3279
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private runAnimate(Lcom/nexstreaming/nexeditorsdk/nexAnimate;I)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1558
    instance-of v0, p1, Lcom/nexstreaming/nexeditorsdk/nexAnimate$AnimateImages;

    if-eqz v0, :cond_1

    .line 1559
    invoke-virtual {p1, p2}, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->getImageResourceId(I)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->animateResourceId:I

    .line 1560
    const-string v0, "nexOverlayItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]AnimateImages=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->animateResourceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    :cond_0
    :goto_0
    return-void

    .line 1561
    :cond_1
    instance-of v0, p1, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Move;

    if-eqz v0, :cond_2

    .line 1562
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mLayerExpression:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->getID()I

    move-result v0

    if-nez v0, :cond_0

    .line 1563
    invoke-virtual {p1, p2, v1}, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->getTranslatePosition(II)F

    move-result v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateTranslateXpos:F

    .line 1564
    invoke-virtual {p1, p2, v2}, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->getTranslatePosition(II)F

    move-result v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateTranslateYpos:F

    .line 1565
    invoke-virtual {p1, p2, v3}, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->getTranslatePosition(II)F

    move-result v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateTranslateZpos:F

    .line 1566
    const-string v0, "nexOverlayItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]Move to=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateTranslateXpos:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateTranslateYpos:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateTranslateZpos:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1568
    :cond_2
    instance-of v0, p1, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Alpha;

    if-eqz v0, :cond_3

    .line 1569
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mLayerExpression:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->getID()I

    move-result v0

    if-nez v0, :cond_0

    .line 1570
    invoke-virtual {p1, p2}, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->getAlpha(I)F

    move-result v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateLastAlpha:F

    .line 1571
    const-string v0, "nexOverlayItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]Alpha =("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateLastAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1573
    :cond_3
    instance-of v0, p1, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Rotate;

    if-eqz v0, :cond_4

    .line 1574
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mLayerExpression:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->getID()I

    move-result v0

    if-nez v0, :cond_0

    .line 1575
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mRotateDegreeX:F

    invoke-virtual {p1, p2, v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->getAngleDegree(IFI)F

    move-result v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateLastRotateDegreeX:F

    .line 1576
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mRotateDegreeY:F

    invoke-virtual {p1, p2, v0, v2}, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->getAngleDegree(IFI)F

    move-result v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateLastRotateDegreeY:F

    .line 1577
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mRotateDegreeZ:F

    invoke-virtual {p1, p2, v0, v3}, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->getAngleDegree(IFI)F

    move-result v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateLastRotateDegreeZ:F

    .line 1578
    const-string v0, "nexOverlayItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]Rotate =("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateLastRotateDegreeX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateLastRotateDegreeY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateLastRotateDegreeZ:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1580
    :cond_4
    instance-of v0, p1, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Scale;

    if-eqz v0, :cond_5

    .line 1581
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mLayerExpression:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->getID()I

    move-result v0

    if-nez v0, :cond_0

    .line 1582
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mScaledX:F

    invoke-virtual {p1, p2, v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->getScaledRatio(IFI)F

    move-result v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateLastScaledX:F

    .line 1583
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mScaledY:F

    invoke-virtual {p1, p2, v0, v2}, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->getScaledRatio(IFI)F

    move-result v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateLastScaledY:F

    .line 1584
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mScaledY:F

    invoke-virtual {p1, p2, v0, v3}, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->getScaledRatio(IFI)F

    move-result v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateLastScaledZ:F

    .line 1585
    const-string v0, "nexOverlayItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]Scale =("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateLastScaledX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateLastScaledY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateLastScaledZ:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1588
    :cond_5
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mLayerExpression:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->getID()I

    move-result v0

    if-nez v0, :cond_0

    .line 1589
    invoke-virtual {p1, p2, p0}, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->onFreeTypeAnimate(ILcom/nexstreaming/nexeditorsdk/nexOverlayItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1590
    iget v0, p1, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mdX:I

    int-to-float v0, v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateTranslateXpos:F

    .line 1591
    iget v0, p1, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mdY:I

    int-to-float v0, v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateTranslateYpos:F

    .line 1592
    iget v0, p1, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mdZ:I

    int-to-float v0, v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateTranslateZpos:F

    .line 1594
    iget v0, p1, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mAlpha:F

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateLastAlpha:F

    .line 1596
    iget v0, p1, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mRotateDegreeX:F

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateLastRotateDegreeX:F

    .line 1597
    iget v0, p1, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mRotateDegreeY:F

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateLastRotateDegreeY:F

    .line 1598
    iget v0, p1, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mRotateDegreeZ:F

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateLastRotateDegreeZ:F

    .line 1600
    iget v0, p1, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mScaledX:F

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateLastScaledX:F

    .line 1601
    iget v0, p1, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mScaledY:F

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateLastScaledY:F

    .line 1602
    iget v0, p1, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mScaledZ:F

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateLastScaledZ:F

    .line 1603
    const-string v0, "nexOverlayItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]FreeType =("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateTranslateXpos:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateTranslateYpos:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateTranslateZpos:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static setOutLine()V
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 3097
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->solidOutlen:Z

    .line 3099
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->solidBlackBitmap:Landroid/graphics/Bitmap;

    .line 3100
    new-instance v0, Landroid/graphics/Canvas;

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->solidBlackBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3101
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 3103
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->solidWhiteBitmap:Landroid/graphics/Bitmap;

    .line 3104
    new-instance v0, Landroid/graphics/Canvas;

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->solidWhiteBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3105
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 3107
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Bitmap;

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->outLineIcon:[Landroid/graphics/Bitmap;

    .line 3108
    return-void
.end method

.method public static setOutLineIcon(Landroid/content/Context;II)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3180
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->outLineIcon:[Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 3181
    if-lez p1, :cond_0

    const/4 v1, 0x4

    if-le p1, v1, :cond_1

    .line 3191
    :cond_0
    :goto_0
    return v0

    .line 3184
    :cond_1
    if-nez p2, :cond_2

    .line 3185
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->outLineIcon:[Landroid/graphics/Bitmap;

    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 3189
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 3187
    :cond_2
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->outLineIcon:[Landroid/graphics/Bitmap;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1
.end method

.method public static setOutlineType(Z)V
    .locals 0

    .prologue
    .line 3118
    sput-boolean p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->solidOutlen:Z

    .line 3119
    return-void
.end method

.method private speedControlTab(I)I
    .locals 4

    .prologue
    .line 926
    const/16 v0, 0xa

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    .line 927
    const/16 v1, 0x190

    .line 928
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 929
    aget v3, v2, v0

    if-lt v3, p1, :cond_0

    .line 930
    aget v0, v2, v0

    .line 934
    :goto_1
    return v0

    .line 928
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 926
    nop

    :array_0
    .array-data 4
        0xd
        0x19
        0x32
        0x4b
        0x64
        0x7d
        0x96
        0xaf
        0xc8
        0x190
    .end array-data
.end method

.method private updateCoordinates(Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 264
    const/4 v0, 0x0

    .line 265
    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->lastAnchorPoint:I

    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->anchorPoint:I

    if-eq v2, v3, :cond_1

    .line 266
    if-nez p1, :cond_0

    .line 267
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->anchorPoint:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->lastAnchorPoint:I

    :cond_0
    move v0, v1

    .line 272
    :cond_1
    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->lastLayerWidth:I

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectProfile()Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->getWidth()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 273
    if-nez p1, :cond_2

    .line 274
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectProfile()Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->lastLayerWidth:I

    :cond_2
    move v0, v1

    .line 279
    :cond_3
    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->lastLayerHeight:I

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectProfile()Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_5

    .line 280
    if-nez p1, :cond_4

    .line 281
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectProfile()Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->lastLayerHeight:I

    .line 285
    :cond_4
    :goto_0
    return v1

    :cond_5
    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public addAnimate(Lcom/nexstreaming/nexeditorsdk/nexAnimate;)V
    .locals 3

    .prologue
    .line 1958
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAniList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1959
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAniList:Ljava/util/List;

    .line 1963
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAniList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1964
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mUpdated:Z

    .line 1965
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAniList:Ljava/util/List;

    new-instance v1, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$a;-><init>(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1966
    return-void
.end method

.method public clearAnimate()V
    .locals 1

    .prologue
    .line 1977
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAniList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1978
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAniList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1979
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mUpdated:Z

    .line 1980
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->resetAnimate()V

    .line 1982
    :cond_0
    return-void
.end method

.method public clearCache()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2004
    return-void
.end method

.method public clearTrim()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1315
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->isVideo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1316
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/ClipIsNotVideoException;

    invoke-direct {v0}, Lcom/nexstreaming/nexeditorsdk/exception/ClipIsNotVideoException;-><init>()V

    throw v0

    .line 1318
    :cond_0
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mTrimStartDuration:I

    .line 1319
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mTrimEndDuration:I

    .line 1320
    return-void
.end method

.method public flipHorizontal(Z)V
    .locals 1

    .prologue
    .line 3406
    if-eqz p1, :cond_0

    .line 3407
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mFlipMode:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mFlipMode:I

    .line 3411
    :goto_0
    return-void

    .line 3409
    :cond_0
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mFlipMode:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mFlipMode:I

    goto :goto_0
.end method

.method public flipVertical(Z)V
    .locals 1

    .prologue
    .line 3393
    if-eqz p1, :cond_0

    .line 3394
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mFlipMode:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mFlipMode:I

    .line 3398
    :goto_0
    return-void

    .line 3396
    :cond_0
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mFlipMode:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mFlipMode:I

    goto :goto_0
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 1105
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAlpha:F

    return v0
.end method

.method public getAnchor()I
    .locals 1

    .prologue
    .line 1070
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->anchorPoint:I

    return v0
.end method

.method public getAnimateEndTime()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1923
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAniList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 1932
    :goto_0
    return v0

    .line 1927
    :cond_0
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAniList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexAnimate;

    .line 1928
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->getEndTime()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1929
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->getEndTime()I

    move-result v0

    :goto_2
    move v1, v0

    .line 1931
    goto :goto_1

    :cond_1
    move v0, v1

    .line 1932
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public getAudioOnOff()Z
    .locals 1

    .prologue
    .line 819
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAudioOnOff:Z

    return v0
.end method

.method public getBoundInfo(I)Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;
    .locals 2

    .prologue
    .line 2882
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;-><init>(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;ILcom/nexstreaming/nexeditorsdk/nexOverlayItem$1;)V

    return-object v0
.end method

.method public getBrightness()I
    .locals 1

    .prologue
    .line 1423
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mBrightness:I

    return v0
.end method

.method public getChromaKey()Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;
    .locals 1

    .prologue
    .line 2267
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mChromaKey:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;

    if-nez v0, :cond_0

    .line 2268
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;

    invoke-direct {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mChromaKey:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;

    .line 2270
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mChromaKey:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;

    return-object v0
.end method

.method public getContrast()I
    .locals 1

    .prologue
    .line 1439
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mContrast:I

    return v0
.end method

.method public getEnableShow()Z
    .locals 1

    .prologue
    .line 3446
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->showItem:Z

    return v0
.end method

.method public getEndTime()I
    .locals 1

    .prologue
    .line 1887
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mEndTime:I

    return v0
.end method

.method public getEndTrimTime()I
    .locals 1

    .prologue
    .line 1349
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mTrimEndDuration:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 502
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mId:I

    return v0
.end method

.method public getLayerExpression()Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 417
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mLayerExpression:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    return-object v0
.end method

.method public getLayerExpressionDuration()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 451
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mLayerExpressionDuration:I

    return v0
.end method

.method public getLayerExpressiontParam()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1553
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->bApplayLayerExpression:Z

    return v0
.end method

.method public getMask()Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;
    .locals 1

    .prologue
    .line 2658
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mMask:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;

    if-nez v0, :cond_0

    .line 2659
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;

    invoke-direct {v0, p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;-><init>(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;)V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mMask:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;

    .line 2661
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mMask:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;

    return-object v0
.end method

.method getOverlayImage()Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 518
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverLayImage:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    return-object v0
.end method

.method getOverlayTitle()Z
    .locals 1

    .prologue
    .line 2019
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverlayTitle:Z

    return v0
.end method

.method public getPositionX()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 963
    invoke-direct {p0, v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getRealPositions(Z)[I

    move-result-object v0

    .line 964
    aget v0, v0, v1

    return v0
.end method

.method public getPositionY()I
    .locals 2

    .prologue
    .line 979
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getRealPositions(Z)[I

    move-result-object v0

    .line 980
    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getRelationCoordinates()Z
    .locals 1

    .prologue
    .line 1090
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->relationCoordinates:Z

    return v0
.end method

.method public getRotate()I
    .locals 1

    .prologue
    .line 1222
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getRotateZ()I

    move-result v0

    return v0
.end method

.method public getRotateX()I
    .locals 1

    .prologue
    .line 1238
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mRotateDegreeX:F

    float-to-int v0, v0

    return v0
.end method

.method public getRotateY()I
    .locals 1

    .prologue
    .line 1254
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mRotateDegreeY:F

    float-to-int v0, v0

    return v0
.end method

.method public getRotateZ()I
    .locals 1

    .prologue
    .line 1270
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mRotateDegreeZ:F

    float-to-int v0, v0

    return v0
.end method

.method public getSaturation()I
    .locals 1

    .prologue
    .line 1455
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mSaturation:I

    return v0
.end method

.method public getScaledX()F
    .locals 1

    .prologue
    .line 1139
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mScaledX:F

    return v0
.end method

.method public getScaledY()F
    .locals 1

    .prologue
    .line 1155
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mScaledY:F

    return v0
.end method

.method public getScaledZ()F
    .locals 1

    .prologue
    .line 1164
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mScaledZ:F

    return v0
.end method

.method public getSpeedControl()I
    .locals 1

    .prologue
    .line 923
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mSpeedControl:I

    return v0
.end method

.method public getStartTime()I
    .locals 1

    .prologue
    .line 1868
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mStartTime:I

    return v0
.end method

.method public getStartTrimTime()I
    .locals 1

    .prologue
    .line 1334
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mTrimStartDuration:I

    return v0
.end method

.method public getVolume()I
    .locals 1

    .prologue
    .line 859
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mVolume:I

    return v0
.end method

.method public getZOrder()I
    .locals 1

    .prologue
    .line 3310
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mZOrder:I

    return v0
.end method

.method public isFlipHorizontal()Z
    .locals 2

    .prologue
    .line 3428
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mFlipMode:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFlipVertical()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3419
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mFlipMode:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPointInOverlayItem(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$HitPoint;)Z
    .locals 12

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2993
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->scratchPoint:[F

    .line 2994
    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->scratchMatrix:Landroid/graphics/Matrix;

    .line 2996
    iget v4, p1, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$HitPoint;->mTime:I

    invoke-virtual {p0, v4}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getBoundInfo(I)Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;

    move-result-object v4

    .line 2998
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 2999
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectProfile()Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->getWidth()I

    move-result v5

    int-to-float v5, v5

    .line 3000
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectProfile()Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->getHeight()I

    move-result v6

    int-to-float v6, v6

    .line 3001
    iget v7, p1, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$HitPoint;->mViewWidth:F

    div-float/2addr v5, v7

    iget v7, p1, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$HitPoint;->mViewHeight:F

    div-float/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 3016
    invoke-static {v4}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;->access$1700(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;)F

    move-result v5

    neg-float v5, v5

    invoke-static {v4}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;->access$1800(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;)F

    move-result v6

    neg-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 3017
    invoke-static {v4}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;->access$1900(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;)F

    move-result v5

    div-float v5, v9, v5

    invoke-static {v4}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;->access$2000(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;)F

    move-result v6

    div-float v6, v9, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 3018
    invoke-static {v4}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;->access$2100(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;)F

    move-result v5

    neg-float v5, v5

    invoke-virtual {v3, v5, v8, v8}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 3019
    iget v5, p1, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$HitPoint;->mViewX:F

    aput v5, v2, v1

    .line 3020
    iget v5, p1, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$HitPoint;->mViewY:F

    aput v5, v2, v0

    .line 3021
    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 3022
    aget v3, v2, v1

    .line 3023
    aget v2, v2, v0

    .line 3024
    const/high16 v5, 0x42100000    # 36.0f

    .line 3031
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 3032
    invoke-virtual {v4, v6}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;->getDrawBound(Landroid/graphics/Rect;)V

    .line 3033
    iget v7, v6, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    invoke-static {v4}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;->access$1900(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;)F

    move-result v8

    mul-float/2addr v7, v8

    .line 3034
    iget v8, v6, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    invoke-static {v4}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;->access$1900(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;)F

    move-result v9

    mul-float/2addr v8, v9

    .line 3035
    iget v9, v6, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    invoke-static {v4}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;->access$2000(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;)F

    move-result v10

    mul-float/2addr v9, v10

    .line 3036
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    invoke-static {v4}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;->access$2000(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$BoundInfo;)F

    move-result v4

    mul-float/2addr v4, v6

    .line 3039
    const-string v6, "nexOverlayItem"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "new pos("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") , Rect("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") , handleRadius="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3041
    sub-float v6, v7, v5

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_0

    add-float v6, v7, v5

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_0

    sub-float v6, v9, v5

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_0

    add-float v6, v9, v5

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_0

    .line 3042
    invoke-static {p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$HitPoint;->access$2202(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$HitPoint;I)I

    .line 3056
    :goto_0
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getId()I

    move-result v1

    invoke-static {p1, v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$HitPoint;->access$2302(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$HitPoint;I)I

    .line 3057
    :goto_1
    return v0

    .line 3043
    :cond_0
    sub-float v6, v8, v5

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_1

    add-float v6, v8, v5

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_1

    sub-float v6, v9, v5

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_1

    add-float v6, v9, v5

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_1

    .line 3044
    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$HitPoint;->access$2202(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$HitPoint;I)I

    goto :goto_0

    .line 3045
    :cond_1
    sub-float v6, v7, v5

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_2

    add-float v6, v7, v5

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_2

    sub-float v6, v4, v5

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_2

    add-float v6, v4, v5

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_2

    .line 3046
    const/4 v1, 0x3

    invoke-static {p1, v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$HitPoint;->access$2202(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$HitPoint;I)I

    goto :goto_0

    .line 3047
    :cond_2
    sub-float v6, v8, v5

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_3

    add-float v6, v8, v5

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_3

    sub-float v6, v4, v5

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_3

    add-float/2addr v5, v4

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_3

    .line 3048
    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$HitPoint;->access$2202(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$HitPoint;I)I

    goto :goto_0

    .line 3049
    :cond_3
    cmpl-float v5, v3, v7

    if-ltz v5, :cond_4

    cmpg-float v3, v3, v8

    if-gtz v3, :cond_4

    cmpl-float v3, v2, v9

    if-ltz v3, :cond_4

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_4

    .line 3050
    invoke-static {p1, v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$HitPoint;->access$2202(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$HitPoint;I)I

    goto :goto_0

    .line 3052
    :cond_4
    invoke-static {p1, v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$HitPoint;->access$2302(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$HitPoint;I)I

    .line 3053
    invoke-static {p1, v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$HitPoint;->access$2202(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$HitPoint;I)I

    move v0, v1

    .line 3054
    goto :goto_1
.end method

.method isVideo()Z
    .locals 1

    .prologue
    .line 2007
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverLayImage:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    if-nez v0, :cond_0

    .line 2008
    const/4 v0, 0x0

    .line 2009
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverLayImage:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->isVideo()Z

    move-result v0

    goto :goto_0
.end method

.method public movePosition(FF)V
    .locals 1

    .prologue
    .line 1024
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mX:F

    .line 1025
    iput p2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mY:F

    .line 1026
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mUpdated:Z

    .line 1027
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->resetAnimate()V

    .line 1028
    return-void
.end method

.method onRender(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V
    .locals 3

    .prologue
    .line 3365
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverLayFilter:Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;

    if-eqz v0, :cond_0

    .line 3366
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverLayFilter:Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->isUpdated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3367
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->awakeAsset:Lcom/nexstreaming/app/common/nexasset/overlay/AwakeAsset;

    if-eqz v0, :cond_0

    .line 3369
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3370
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverLayFilter:Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;

    invoke-virtual {v1, v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->getBound(Landroid/graphics/Rect;)V

    .line 3372
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->awakeAsset:Lcom/nexstreaming/app/common/nexasset/overlay/AwakeAsset;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverLayFilter:Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->getEncodedEffectOptions()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, v2, v0}, Lcom/nexstreaming/app/common/nexasset/overlay/AwakeAsset;->onRefresh(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;Landroid/graphics/RectF;Ljava/lang/String;)Z

    .line 3376
    :cond_0
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->renderOverlay(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;Landroid/content/Context;)V

    .line 3377
    return-void
.end method

.method onRenderAsleep(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V
    .locals 1

    .prologue
    .line 3355
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->renderOverlay(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;Landroid/content/Context;)V

    .line 3357
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->awakeAsset:Lcom/nexstreaming/app/common/nexasset/overlay/AwakeAsset;

    if-eqz v0, :cond_0

    .line 3358
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->awakeAsset:Lcom/nexstreaming/app/common/nexasset/overlay/AwakeAsset;

    invoke-interface {v0, p1}, Lcom/nexstreaming/app/common/nexasset/overlay/AwakeAsset;->onAsleep(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V

    .line 3359
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->awakeAsset:Lcom/nexstreaming/app/common/nexasset/overlay/AwakeAsset;

    .line 3362
    :cond_0
    return-void
.end method

.method onRenderAwake(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V
    .locals 4

    .prologue
    .line 3322
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverLayFilter:Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;

    if-eqz v0, :cond_1

    .line 3324
    :try_start_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverLayFilter:Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->getOverlayAssetFilter()Lcom/nexstreaming/app/common/nexasset/overlay/OverlayAsset;

    move-result-object v0

    .line 3325
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 3326
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverLayFilter:Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;

    invoke-virtual {v2, v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->getBound(Landroid/graphics/Rect;)V

    .line 3327
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverLayFilter:Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayFilter;->getEncodedEffectOptions()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v0, p1, v2, v1, v3}, Lcom/nexstreaming/app/common/nexasset/overlay/OverlayAsset;->onAwake(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;Landroid/graphics/RectF;Ljava/lang/String;Ljava/util/Map;)Lcom/nexstreaming/app/common/nexasset/overlay/AwakeAsset;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->awakeAsset:Lcom/nexstreaming/app/common/nexasset/overlay/AwakeAsset;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3351
    :cond_0
    :goto_0
    return-void

    .line 3329
    :catch_0
    move-exception v0

    .line 3330
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 3331
    :catch_1
    move-exception v0

    .line 3332
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    .line 3336
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverLayImage:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    if-eqz v0, :cond_0

    .line 3337
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverLayImage:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->isAssetManager()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3339
    :try_start_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverLayImage:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->getOverlayAssetBitmap()Lcom/nexstreaming/app/common/nexasset/overlay/OverlayAsset;

    move-result-object v0

    .line 3340
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 3341
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverLayImage:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    invoke-virtual {v2, v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->getBound(Landroid/graphics/Rect;)V

    .line 3342
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, p1, v2, v1, v3}, Lcom/nexstreaming/app/common/nexasset/overlay/OverlayAsset;->onAwake(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;Landroid/graphics/RectF;Ljava/lang/String;Ljava/util/Map;)Lcom/nexstreaming/app/common/nexasset/overlay/AwakeAsset;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->awakeAsset:Lcom/nexstreaming/app/common/nexasset/overlay/AwakeAsset;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 3343
    :catch_2
    move-exception v0

    .line 3344
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 3345
    :catch_3
    move-exception v0

    .line 3346
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0
.end method

.method renderOverlay(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;Landroid/content/Context;)V
    .locals 10

    .prologue
    .line 1630
    .line 1632
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->showItem:Z

    if-nez v0, :cond_1

    .line 1813
    :cond_0
    :goto_0
    return-void

    .line 1635
    :cond_1
    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->lastLayerWidth:I

    .line 1636
    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->b()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->lastLayerHeight:I

    .line 1638
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1639
    iget-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->relationCoordinates:Z

    if-eqz v1, :cond_15

    .line 1640
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->lastLayerWidth:I

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->lastLayerHeight:I

    invoke-direct {p0, v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getRelativeScale(II)F

    move-result v0

    move v6, v0

    .line 1642
    :goto_1
    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->setTime(I)V

    .line 1644
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getRealPositions(Z)[I

    move-result-object v0

    .line 1645
    const/4 v1, 0x0

    aget v7, v0, v1

    .line 1646
    const/4 v1, 0x1

    aget v8, v0, v1

    .line 1647
    const/4 v1, 0x2

    aget v9, v0, v1

    .line 1649
    const/4 v0, 0x0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->animateResourceId:I

    .line 1651
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAniList:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 1653
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAniList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexAnimate;

    .line 1654
    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mTime:I

    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mStartTime:I

    sub-int/2addr v2, v3

    .line 1655
    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mActiveAnimateList:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 1656
    iget v4, v0, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mStartTime:I

    if-gt v4, v2, :cond_5

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->getEndTime()I

    move-result v4

    if-le v4, v2, :cond_5

    .line 1657
    if-nez v3, :cond_4

    .line 1658
    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mActiveAnimateList:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1659
    iget v3, v0, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->mStartTime:I

    sub-int v3, v2, v3

    const/16 v4, 0x21

    if-ge v3, v4, :cond_3

    .line 1660
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->runAnimate(Lcom/nexstreaming/nexeditorsdk/nexAnimate;I)V

    goto :goto_2

    .line 1662
    :cond_3
    invoke-direct {p0, v0, v2}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->runAnimate(Lcom/nexstreaming/nexeditorsdk/nexAnimate;I)V

    goto :goto_2

    .line 1665
    :cond_4
    invoke-direct {p0, v0, v2}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->runAnimate(Lcom/nexstreaming/nexeditorsdk/nexAnimate;I)V

    goto :goto_2

    .line 1668
    :cond_5
    if-eqz v3, :cond_2

    .line 1669
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mActiveAnimateList:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1670
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->getEndTime()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->runAnimate(Lcom/nexstreaming/nexeditorsdk/nexAnimate;I)V

    goto :goto_2

    .line 1676
    :cond_6
    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->i()V

    .line 1678
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mMask:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;

    if-eqz v0, :cond_7

    .line 1679
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mMask:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->access$000(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mMask:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->access$100(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1681
    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->h()V

    .line 1682
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$RenderTarget;->Mask:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$RenderTarget;

    invoke-virtual {p1, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$RenderTarget;)V

    .line 1683
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mMask:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mMaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->getPosition(Landroid/graphics/Rect;)V

    .line 1684
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mMask:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->getMaskImage()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1685
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mMask:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->getMaskImage()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mMaskRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mMaskRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mMaskRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mMaskRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a(Landroid/graphics/Bitmap;FFFF)V

    .line 1689
    :goto_3
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a(Z)V

    .line 1690
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$RenderTarget;->Normal:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$RenderTarget;

    invoke-virtual {p1, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$RenderTarget;)V

    .line 1694
    :cond_7
    int-to-float v0, v7

    int-to-float v1, v8

    invoke-virtual {p1, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a(FF)V

    .line 1695
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateTranslateXpos:F

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateTranslateYpos:F

    invoke-virtual {p1, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a(FF)V

    .line 1696
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateLastScaledX:F

    mul-float/2addr v0, v6

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateLastScaledY:F

    mul-float/2addr v1, v6

    invoke-virtual {p1, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->b(FF)V

    .line 1699
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateLastRotateDegreeX:F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a(FFFF)V

    .line 1700
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateLastRotateDegreeY:F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a(FFFF)V

    .line 1701
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateLastRotateDegreeZ:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a(FFFF)V

    .line 1703
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->showOutLien:Z

    if-eqz v0, :cond_b

    .line 1704
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a(F)V

    .line 1709
    :goto_4
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mMask:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;

    if-eqz v0, :cond_8

    .line 1710
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mMask:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->access$000(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mMask:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->access$100(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1712
    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->h()V

    .line 1713
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$RenderTarget;->Mask:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$RenderTarget;

    invoke-virtual {p1, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$RenderTarget;)V

    .line 1714
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mMask:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mMaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->getPosition(Landroid/graphics/Rect;)V

    .line 1715
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mMask:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->getMaskImage()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1716
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mMask:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->getMaskImage()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mMaskRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mMaskRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mMaskRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mMaskRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a(Landroid/graphics/Bitmap;FFFF)V

    .line 1720
    :goto_5
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a(Z)V

    .line 1721
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$RenderTarget;->Normal:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$RenderTarget;

    invoke-virtual {p1, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$RenderTarget;)V

    .line 1725
    :cond_8
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->awakeAsset:Lcom/nexstreaming/app/common/nexasset/overlay/AwakeAsset;

    if-eqz v0, :cond_d

    .line 1726
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->awakeAsset:Lcom/nexstreaming/app/common/nexasset/overlay/AwakeAsset;

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->cacheMotion:Lcom/nexstreaming/app/common/nexasset/overlay/OverlayMotion;

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mStartTime:I

    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mEndTime:I

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/nexstreaming/app/common/nexasset/overlay/AwakeAsset;->onRender(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;Lcom/nexstreaming/app/common/nexasset/overlay/OverlayMotion;II)V

    .line 1809
    :cond_9
    :goto_6
    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->j()V

    .line 1810
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->showOutLien:Z

    if-eqz v0, :cond_0

    .line 1811
    invoke-static {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->renderOutLine(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V

    goto/16 :goto_0

    .line 1687
    :cond_a
    const/4 v1, -0x1

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mMaskRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mMaskRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mMaskRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mMaskRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a(IFFFF)V

    goto/16 :goto_3

    .line 1706
    :cond_b
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateLastAlpha:F

    invoke-virtual {p1, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a(F)V

    goto/16 :goto_4

    .line 1718
    :cond_c
    const/4 v1, -0x1

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mMaskRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mMaskRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mMaskRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mMaskRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a(IFFFF)V

    goto :goto_5

    .line 1727
    :cond_d
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverLayImage:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    if-eqz v0, :cond_9

    .line 1728
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverLayImage:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1729
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getChromaKey()Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->getChromaKeyEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1730
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getChromaKey()Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->getChromaKeyEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->b(Z)V

    .line 1731
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getChromaKey()Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->getChromaKeyMaskEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->c(Z)V

    .line 1732
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getChromaKey()Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;

    move-result-object v0

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->access$200(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;)I

    move-result v1

    .line 1733
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getChromaKey()Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;

    move-result-object v0

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->access$300(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;)F

    move-result v2

    .line 1734
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getChromaKey()Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;

    move-result-object v0

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->access$400(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;)F

    move-result v3

    .line 1735
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getChromaKey()Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;

    move-result-object v0

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->access$500(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;)F

    move-result v4

    .line 1736
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getChromaKey()Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;

    move-result-object v0

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->access$600(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;)F

    move-result v5

    .line 1737
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getChromaKey()Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;

    move-result-object v0

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->access$700(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;)F

    move-result v6

    .line 1738
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getChromaKey()Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;

    move-result-object v0

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->access$800(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;)F

    move-result v7

    move-object v0, p1

    .line 1732
    invoke-virtual/range {v0 .. v7}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a(IFFFFFF)V

    .line 1742
    :cond_e
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->a()Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->o()Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$RenderMode;

    move-result-object v1

    iget v1, v1, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$RenderMode;->id:I

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mVideoEngineId:I

    invoke-virtual {v0, v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->b(II)I

    move-result v1

    .line 1743
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getCombinedBrightness()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v0, v2

    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getCombinedContrast()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getCombinedSaturation()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getTintColor()I

    move-result v4

    invoke-static {v0, v2, v3, v4}, Lcom/nexstreaming/app/common/thememath/a;->a(FFFI)Landroid/graphics/ColorMatrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a(Landroid/graphics/ColorMatrix;)V

    .line 1744
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverLayImage:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->getVideoClipInfo()Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverLayImage:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->getVideoClipInfo()Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget v6, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mFlipMode:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a(IFFFFI)V

    .line 1745
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->b(Z)V

    .line 1746
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a(Landroid/graphics/Bitmap;)V

    goto/16 :goto_6

    .line 1749
    :cond_f
    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/b;->a()Lcom/nexstreaming/kminternal/nexvideoeditor/b;

    move-result-object v3

    .line 1751
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->animateResourceId:I

    .line 1752
    if-nez v0, :cond_14

    .line 1753
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverLayImage:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    iget v0, v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mResourceId:I

    move v2, v0

    .line 1756
    :goto_7
    if-nez v2, :cond_12

    .line 1757
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverLayImage:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->getUserBitmapID()Ljava/lang/String;

    move-result-object v0

    .line 1759
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverLayImage:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    iget-boolean v1, v1, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mUpdate:Z

    if-eqz v1, :cond_11

    .line 1760
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverLayImage:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->mUpdate:Z

    .line 1761
    const/4 v1, 0x0

    .line 1762
    invoke-virtual {v3, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/b;->b(Ljava/lang/Object;)V

    .line 1767
    :goto_8
    if-nez v1, :cond_10

    .line 1768
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverLayImage:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->getUserBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1769
    if-eqz v1, :cond_10

    .line 1771
    :try_start_0
    invoke-virtual {v3, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/b;->a(Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1792
    :cond_10
    :goto_9
    if-eqz v1, :cond_9

    .line 1793
    const-string v2, "nexOverlayItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "renderOverlay bitmap id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", wid = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", hei = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", X="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", Y="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", Z="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", ScaledX="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateLastScaledX:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", Alpha="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateLastAlpha:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", Rx="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateLastRotateDegreeX:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", Ry="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateLastRotateDegreeY:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", Rz="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateLastRotateDegreeZ:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", flip="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mFlipMode:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", baseScale="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", cts="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1797
    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->g()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1793
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getCombinedBrightness()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v0, v2

    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getCombinedContrast()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getCombinedSaturation()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getTintColor()I

    move-result v4

    invoke-static {v0, v2, v3, v4}, Lcom/nexstreaming/app/common/thememath/a;->a(FFFI)Landroid/graphics/ColorMatrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a(Landroid/graphics/ColorMatrix;)V

    .line 1799
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverLayImage:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    if-eqz v0, :cond_13

    .line 1800
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverLayImage:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->getAnchorPoint()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getDrawBitmapPosition(III)Landroid/graphics/Rect;

    move-result-object v0

    .line 1801
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget v6, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mFlipMode:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a(Landroid/graphics/Bitmap;FFFFI)V

    goto/16 :goto_6

    .line 1764
    :cond_11
    invoke-virtual {v3, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/b;->a(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_8

    .line 1772
    :catch_0
    move-exception v2

    .line 1773
    const-string v3, "nexOverlayItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception: message="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 1778
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverLayImage:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->getUserBitmapID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1779
    invoke-virtual {v3, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/b;->a(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1780
    if-nez v1, :cond_10

    .line 1781
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1782
    if-eqz v1, :cond_10

    .line 1784
    :try_start_1
    invoke-virtual {v3, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/b;->a(Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_9

    .line 1785
    :catch_1
    move-exception v2

    .line 1786
    const-string v3, "nexOverlayItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception: message="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 1803
    :cond_13
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mFlipMode:I

    invoke-virtual {p1, v1, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->b(Landroid/graphics/Bitmap;I)V

    goto/16 :goto_6

    :cond_14
    move v2, v0

    goto/16 :goto_7

    :cond_15
    move v6, v0

    goto/16 :goto_1
.end method

.method resetAnimate()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 938
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateTranslateXpos:F

    .line 939
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateTranslateYpos:F

    .line 940
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateTranslateZpos:F

    .line 941
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAlpha:F

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateLastAlpha:F

    .line 942
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mRotateDegreeX:F

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateLastRotateDegreeX:F

    .line 943
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mRotateDegreeY:F

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateLastRotateDegreeY:F

    .line 944
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mRotateDegreeZ:F

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateLastRotateDegreeZ:F

    .line 945
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mScaledX:F

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateLastScaledX:F

    .line 946
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mScaledY:F

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateLastScaledY:F

    .line 947
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mScaledZ:F

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAnimateLastScaledZ:F

    .line 948
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mActiveAnimateList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 949
    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    .prologue
    .line 1120
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mUpdated:Z

    .line 1122
    :cond_0
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAlpha:F

    .line 1123
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->resetAnimate()V

    .line 1124
    return-void
.end method

.method public setAnchor(I)V
    .locals 1

    .prologue
    .line 1047
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->anchorPoint:I

    .line 1048
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mUpdated:Z

    .line 1049
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->resetAnimate()V

    .line 1050
    return-void
.end method

.method public setAudioOnOff(Z)V
    .locals 1

    .prologue
    .line 837
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->isVideo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 838
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/ClipIsNotVideoException;

    invoke-direct {v0}, Lcom/nexstreaming/nexeditorsdk/exception/ClipIsNotVideoException;-><init>()V

    throw v0

    .line 840
    :cond_0
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAudioOnOff:Z

    if-eq v0, p1, :cond_1

    .line 841
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mUpdated:Z

    .line 842
    :cond_1
    iput-boolean p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mAudioOnOff:Z

    .line 843
    return-void
.end method

.method public setBrightness(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1473
    const/16 v1, -0xff

    if-lt p1, v1, :cond_0

    const/16 v1, 0xff

    if-le p1, v1, :cond_1

    .line 1474
    :cond_0
    const/4 v0, 0x0

    .line 1478
    :goto_0
    return v0

    .line 1475
    :cond_1
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mBrightness:I

    if-eq v1, p1, :cond_2

    .line 1476
    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mUpdated:Z

    .line 1477
    :cond_2
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mBrightness:I

    goto :goto_0
.end method

.method public setColorEffect(Lcom/nexstreaming/nexeditorsdk/nexColorEffect;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mColorEffect:Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    .line 464
    return-void
.end method

.method public setContrast(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1496
    const/16 v1, -0xff

    if-lt p1, v1, :cond_0

    const/16 v1, 0xff

    if-le p1, v1, :cond_1

    .line 1497
    :cond_0
    const/4 v0, 0x0

    .line 1501
    :goto_0
    return v0

    .line 1498
    :cond_1
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mContrast:I

    if-eq v1, p1, :cond_2

    .line 1499
    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mUpdated:Z

    .line 1500
    :cond_2
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mContrast:I

    goto :goto_0
.end method

.method public setEnableShow(Z)V
    .locals 0

    .prologue
    .line 3437
    iput-boolean p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->showItem:Z

    .line 3438
    return-void
.end method

.method public setLayerExpression(Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 398
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mLayerExpression:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    .line 399
    return-void
.end method

.method public setLayerExpressionDuration(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 434
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mLayerExpressionDuration:I

    .line 435
    return-void
.end method

.method public setLayerExpressionParam(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1543
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->bApplayLayerExpression:Z

    if-eq v0, p1, :cond_0

    .line 1544
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mUpdated:Z

    .line 1545
    :cond_0
    iput-boolean p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->bApplayLayerExpression:Z

    .line 1546
    return-void
.end method

.method setOverlayTitle(Z)V
    .locals 0

    .prologue
    .line 2014
    iput-boolean p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverlayTitle:Z

    .line 2015
    return-void
.end method

.method public setPosition(II)V
    .locals 2

    .prologue
    .line 1002
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->updateCoordinates(Z)Z

    .line 1003
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->relationCoordinates:Z

    if-eqz v0, :cond_0

    .line 1004
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->anchorPointX:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->lastLayerWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mX:F

    .line 1005
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->anchorPointY:I

    sub-int v0, p2, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->lastLayerHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mY:F

    .line 1010
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mUpdated:Z

    .line 1011
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->resetAnimate()V

    .line 1012
    return-void

    .line 1007
    :cond_0
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->anchorPointX:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mX:F

    .line 1008
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->anchorPointY:I

    sub-int v0, p2, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mY:F

    goto :goto_0
.end method

.method public setRelationCoordinates(Z)V
    .locals 1

    .prologue
    .line 1079
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->relationCoordinates:Z

    if-eq v0, p1, :cond_0

    .line 1080
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mUpdated:Z

    .line 1081
    :cond_0
    iput-boolean p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->relationCoordinates:Z

    .line 1082
    return-void
.end method

.method public setRotate(F)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1392
    invoke-virtual {p0, v0, v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->setRotate(FFF)V

    .line 1393
    return-void
.end method

.method public setRotate(FFF)V
    .locals 1

    .prologue
    .line 1403
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mRotateDegreeX:F

    .line 1404
    iput p2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mRotateDegreeY:F

    .line 1405
    iput p3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mRotateDegreeZ:F

    .line 1406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mUpdated:Z

    .line 1407
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->resetAnimate()V

    .line 1408
    return-void
.end method

.method public setRotate(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1363
    invoke-virtual {p0, v0, v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->setRotate(III)V

    .line 1364
    return-void
.end method

.method public setRotate(III)V
    .locals 1

    .prologue
    .line 1379
    int-to-float v0, p1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mRotateDegreeX:F

    .line 1380
    int-to-float v0, p2

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mRotateDegreeY:F

    .line 1381
    int-to-float v0, p3

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mRotateDegreeZ:F

    .line 1382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mUpdated:Z

    .line 1383
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->resetAnimate()V

    .line 1384
    return-void
.end method

.method public setSaturation(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1519
    const/16 v1, -0xff

    if-lt p1, v1, :cond_0

    const/16 v1, 0xff

    if-le p1, v1, :cond_1

    .line 1520
    :cond_0
    const/4 v0, 0x0

    .line 1524
    :goto_0
    return v0

    .line 1521
    :cond_1
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mSaturation:I

    if-eq v1, p1, :cond_2

    .line 1522
    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mUpdated:Z

    .line 1523
    :cond_2
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mSaturation:I

    goto :goto_0
.end method

.method public setScale(FF)V
    .locals 1

    .prologue
    .line 1182
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2, v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->setScale(FFF)V

    .line 1183
    return-void
.end method

.method public setScale(FFF)V
    .locals 1

    .prologue
    .line 1202
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mScaledX:F

    .line 1203
    iput p2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mScaledY:F

    .line 1204
    iput p3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mScaledZ:F

    .line 1205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mUpdated:Z

    .line 1206
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->resetAnimate()V

    .line 1207
    return-void
.end method

.method public setSpeedControl(I)V
    .locals 2

    .prologue
    .line 899
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->isVideo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 900
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/ClipIsNotVideoException;

    invoke-direct {v0}, Lcom/nexstreaming/nexeditorsdk/exception/ClipIsNotVideoException;-><init>()V

    throw v0

    .line 902
    :cond_0
    invoke-direct {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->speedControlTab(I)I

    move-result v0

    .line 903
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mSpeedControl:I

    if-eq v1, v0, :cond_1

    .line 904
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mUpdated:Z

    .line 905
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mSpeedControl:I

    .line 907
    :cond_1
    return-void
.end method

.method setTime(I)V
    .locals 1

    .prologue
    .line 1529
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mTime:I

    if-le v0, p1, :cond_0

    .line 1530
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->resetAnimate()V

    .line 1532
    :cond_0
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mTime:I

    .line 1533
    return-void
.end method

.method public setTimePosition(II)V
    .locals 1

    .prologue
    .line 1906
    if-gt p2, p1, :cond_0

    .line 1907
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    invoke-direct {v0, p1, p2}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(II)V

    throw v0

    .line 1909
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mUpdated:Z

    .line 1910
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mStartTime:I

    .line 1911
    iput p2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mEndTime:I

    .line 1912
    return-void
.end method

.method public setTrim(II)V
    .locals 3

    .prologue
    .line 1288
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->isVideo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1289
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/ClipIsNotVideoException;

    invoke-direct {v0}, Lcom/nexstreaming/nexeditorsdk/exception/ClipIsNotVideoException;-><init>()V

    throw v0

    .line 1291
    :cond_0
    if-gt p2, p1, :cond_1

    .line 1292
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    invoke-direct {v0, p1, p2}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(II)V

    throw v0

    .line 1294
    :cond_1
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mTrimStartDuration:I

    .line 1295
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mOverLayImage:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->getVideoClipInfo()Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;->getTotalTime()I

    move-result v0

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mTrimEndDuration:I

    .line 1296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mUpdated:Z

    .line 1297
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mTrimEndDuration:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mTrimStartDuration:I

    if-gez v0, :cond_3

    .line 1298
    :cond_2
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mTrimStartDuration:I

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mTrimEndDuration:I

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(II)V

    throw v0

    .line 1300
    :cond_3
    return-void
.end method

.method public setVolume(I)V
    .locals 1

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->isVideo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 877
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/ClipIsNotVideoException;

    invoke-direct {v0}, Lcom/nexstreaming/nexeditorsdk/exception/ClipIsNotVideoException;-><init>()V

    throw v0

    .line 879
    :cond_0
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mVolume:I

    if-eq v0, p1, :cond_1

    .line 880
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mUpdated:Z

    .line 882
    :cond_1
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mVolume:I

    .line 883
    return-void
.end method

.method public setZOrder(I)V
    .locals 1

    .prologue
    .line 3314
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mZOrder:I

    if-eq v0, p1, :cond_0

    .line 3315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mUpdated:Z

    .line 3316
    :cond_0
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mZOrder:I

    .line 3318
    return-void
.end method

.method public showOutline(Z)V
    .locals 0

    .prologue
    .line 3081
    iput-boolean p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->showOutLien:Z

    .line 3082
    return-void
.end method

.method updated(Z)Z
    .locals 1

    .prologue
    .line 3380
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mUpdated:Z

    .line 3381
    iput-boolean p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mUpdated:Z

    .line 3382
    return v0
.end method
