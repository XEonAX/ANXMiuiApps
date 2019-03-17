.class public Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;
.super Ljava/lang/Object;
.source "TextAppendConfig.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

.field private mColor:I

.field private mContext:Landroid/content/Context;

.field private final mCornerDialogWidth:I

.field private final mCorrectionDegrees:I

.field private final mCountSizeSpacing:F

.field private mDefaultLocationX:F

.field private mDefaultLocationY:F

.field private final mDefaultStrokeWidth:I

.field private final mDefaultTextSize:F

.field private mDialogDrawable:Landroid/graphics/drawable/Drawable;

.field private mDialogModel:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

.field private final mDialogOutLineOffsetX:I

.field private final mDialogOutLineOffsetY:I

.field private mDialogRect:Landroid/graphics/RectF;

.field private final mDialogWidth:I

.field private mIsActivation:Z

.field private mIsBoldText:Z

.field private mIsCorrection:Z

.field private mIsMirror:Z

.field private mIsRTL:Z

.field private mIsShadow:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private final mMaxTextSize:F

.field private mMaxWidth:F

.field private final mMinTextSize:I

.field private final mOutLineOffsetX:I

.field private final mOutLineOffsetY:I

.field private mOutLineRect:Landroid/graphics/RectF;

.field private mRotateDegrees:F

.field private mScaleMultipleOrigin:F

.field private mTemRect:Landroid/graphics/RectF;

.field private mText:Ljava/lang/String;

.field private final mTextAppendPadding:F

.field private mTextDrawable:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;

.field private mTextInDialogRect:Landroid/graphics/RectF;

.field private mTextRect:Landroid/graphics/RectF;

.field private mTextStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

.field private mTextTransparent:F

.field private mUserLocationX:F

.field private mUserLocationY:F

.field private mUserScaleMultiple:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 688
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$1;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-boolean v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsRTL:Z

    .line 94
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mContext:Landroid/content/Context;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 96
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 97
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-ne v2, v7, :cond_0

    .line 98
    iput-boolean v7, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsRTL:Z

    .line 100
    :cond_0
    const v2, 0x7f0b0347

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mOutLineOffsetX:I

    .line 101
    const v2, 0x7f0b0348

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mOutLineOffsetY:I

    .line 102
    const v2, 0x7f0b0339

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogOutLineOffsetX:I

    .line 103
    const v2, 0x7f0b033a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogOutLineOffsetY:I

    .line 104
    const v2, 0x7f0b0338

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogWidth:I

    .line 105
    const v2, 0x7f0b0334

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mCornerDialogWidth:I

    .line 106
    const v2, 0x7f0b0346

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mMinTextSize:I

    .line 107
    const v2, 0x7f0b0336

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDefaultStrokeWidth:I

    .line 108
    const/4 v2, 0x5

    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mCorrectionDegrees:I

    .line 109
    const v2, 0x7f0b0337

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDefaultTextSize:F

    .line 110
    const v2, 0x7f0b0345

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mMaxTextSize:F

    .line 111
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mCountSizeSpacing:F

    .line 112
    const v2, 0x7f0b0349

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextAppendPadding:F

    .line 114
    const/4 v2, -0x1

    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mColor:I

    .line 115
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    .line 116
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mText:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 117
    const v2, 0x7f0c04da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mText:Ljava/lang/String;

    .line 119
    :cond_1
    iput-boolean v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsActivation:Z

    .line 120
    iput v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextTransparent:F

    .line 121
    iput-boolean v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsBoldText:Z

    .line 122
    iput-boolean v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsShadow:Z

    .line 124
    iput v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDefaultLocationX:F

    .line 125
    iput v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDefaultLocationY:F

    .line 126
    iput v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserLocationX:F

    .line 127
    iput v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserLocationY:F

    .line 128
    iput v6, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserScaleMultiple:F

    .line 129
    iput v6, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mScaleMultipleOrigin:F

    .line 130
    iput v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mRotateDegrees:F

    .line 131
    iput-boolean v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsMirror:Z

    .line 132
    iput-boolean v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsCorrection:Z

    .line 133
    new-instance v2, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    invoke-direct {v2}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;-><init>()V

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    .line 134
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDefaultTextSize:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 135
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    const v3, 0x7f0b0344

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->setLineHeightOffset(F)V

    .line 137
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mOutLineRect:Landroid/graphics/RectF;

    .line 138
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextRect:Landroid/graphics/RectF;

    .line 139
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextInDialogRect:Landroid/graphics/RectF;

    .line 140
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogRect:Landroid/graphics/RectF;

    .line 142
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTemRect:Landroid/graphics/RectF;

    .line 144
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mMatrix:Landroid/graphics/Matrix;

    .line 146
    new-instance v2, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$1;)V

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextDrawable:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;

    .line 148
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    iget-boolean v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsRTL:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;->RIGHT:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    :goto_0
    invoke-virtual {v3, v2}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->setTextAlignment(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;)V

    .line 149
    return-void

    .line 148
    :cond_2
    sget-object v2, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;->LEFT:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 656
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;-><init>(Landroid/content/Context;)V

    .line 657
    invoke-static {p1}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableGenericUtils;->readObject(Landroid/os/Parcel;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogModel:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

    .line 658
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mColor:I

    .line 659
    invoke-static {p1}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableGenericUtils;->readObject(Landroid/os/Parcel;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    .line 660
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mText:Ljava/lang/String;

    .line 661
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsActivation:Z

    .line 662
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextTransparent:F

    .line 663
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsBoldText:Z

    .line 664
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsShadow:Z

    .line 665
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDefaultLocationX:F

    .line 666
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDefaultLocationY:F

    .line 667
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserLocationX:F

    .line 668
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserLocationY:F

    .line 669
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserScaleMultiple:F

    .line 670
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mScaleMultipleOrigin:F

    .line 671
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mRotateDegrees:F

    .line 672
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsMirror:Z

    .line 673
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_4

    :goto_4
    iput-boolean v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsCorrection:Z

    .line 674
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 675
    .local v0, "tmpMTextAlignment":I
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    invoke-static {}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;->values()[Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->setTextAlignment(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;)V

    .line 676
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mMaxWidth:F

    .line 677
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->initForParcelable()V

    .line 678
    return-void

    .end local v0    # "tmpMTextAlignment":I
    :cond_0
    move v1, v3

    .line 661
    goto :goto_0

    :cond_1
    move v1, v3

    .line 663
    goto :goto_1

    :cond_2
    move v1, v3

    .line 664
    goto :goto_2

    :cond_3
    move v1, v3

    .line 672
    goto :goto_3

    :cond_4
    move v2, v3

    .line 673
    goto :goto_4
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .prologue
    .line 36
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDefaultLocationX:F

    return v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;F)F
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;
    .param p1, "x1"    # F

    .prologue
    .line 36
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDefaultLocationX:F

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .prologue
    .line 36
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserLocationX:F

    return v0
.end method

.method static synthetic access$1200(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .prologue
    .line 36
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserLocationY:F

    return v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .prologue
    .line 36
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDefaultLocationY:F

    return v0
.end method

.method static synthetic access$202(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;F)F
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;
    .param p1, "x1"    # F

    .prologue
    .line 36
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDefaultLocationY:F

    return p1
.end method

.method static synthetic access$300(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsMirror:Z

    return v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->isCornerDialog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .prologue
    .line 36
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mColor:I

    return v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextInDialogRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method private configTextPaint(Landroid/graphics/Paint;)V
    .locals 3
    .param p1, "textPaint"    # Landroid/graphics/Paint;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 462
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mColor:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 463
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    if-nez v1, :cond_2

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 464
    .local v0, "typeface":Landroid/graphics/Typeface;
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 465
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getAlphaByConfig()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 466
    iget-boolean v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsBoldText:Z

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 467
    iget-boolean v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsShadow:Z

    if-eqz v1, :cond_3

    .line 468
    const/high16 v1, 0x66000000

    invoke-virtual {p1, v2, v2, v2, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 472
    :goto_1
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->isDialogEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->isCornerDialog()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 473
    :cond_0
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDefaultTextSize:F

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 475
    :cond_1
    return-void

    .line 463
    .end local v0    # "typeface":Landroid/graphics/Typeface;
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->getTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 470
    .restart local v0    # "typeface":Landroid/graphics/Typeface;
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Paint;->clearShadowLayer()V

    goto :goto_1
.end method

.method private countDialog()V
    .locals 5

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 400
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v1, v2

    .line 401
    .local v1, "width":F
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v0, v2

    .line 402
    .local v0, "height":F
    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    mul-float/2addr v0, v2

    .line 403
    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogWidth:I

    int-to-float v1, v2

    .line 404
    div-float/2addr v0, v3

    .line 405
    div-float/2addr v1, v3

    .line 406
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogRect:Landroid/graphics/RectF;

    neg-float v3, v1

    neg-float v4, v0

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 407
    return-void
.end method

.method private countDialogCorner()V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 430
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->getTextRect(Landroid/graphics/RectF;)V

    .line 431
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v3, v4

    .line 432
    .local v3, "width":F
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v0, v4

    .line 433
    .local v0, "height":F
    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mCornerDialogWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    mul-float/2addr v0, v4

    .line 434
    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mCornerDialogWidth:I

    int-to-float v3, v4

    .line 435
    div-float/2addr v0, v7

    .line 436
    div-float/2addr v3, v7

    .line 437
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogRect:Landroid/graphics/RectF;

    neg-float v5, v3

    neg-float v6, v0

    invoke-virtual {v4, v5, v6, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 438
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float v1, v4, v7

    .line 439
    .local v1, "offsetX":F
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float v2, v4, v7

    .line 440
    .local v2, "offsetY":F
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextInDialogRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 441
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogModel:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

    iget v4, v4, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->cornerPosition:I

    packed-switch v4, :pswitch_data_0

    .line 459
    :goto_0
    return-void

    .line 443
    :pswitch_0
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogRect:Landroid/graphics/RectF;

    neg-float v5, v1

    neg-float v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 444
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextInDialogRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v3, v0}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_0

    .line 447
    :pswitch_1
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogRect:Landroid/graphics/RectF;

    neg-float v5, v2

    invoke-virtual {v4, v1, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 448
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextInDialogRect:Landroid/graphics/RectF;

    neg-float v5, v3

    invoke-virtual {v4, v5, v0}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_0

    .line 451
    :pswitch_2
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogRect:Landroid/graphics/RectF;

    neg-float v5, v1

    invoke-virtual {v4, v5, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 452
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextInDialogRect:Landroid/graphics/RectF;

    neg-float v5, v0

    invoke-virtual {v4, v3, v5}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_0

    .line 455
    :pswitch_3
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 456
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextInDialogRect:Landroid/graphics/RectF;

    neg-float v5, v3

    neg-float v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_0

    .line 441
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private countOutLine()V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 374
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->getTextRect(Landroid/graphics/RectF;)V

    .line 375
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->isDialogEnable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 376
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 377
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->setEmpty()V

    .line 378
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDefaultStrokeWidth:I

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDefaultStrokeWidth:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 380
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mOutLineRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 389
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->isDialogEnable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 390
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mOutLineRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogOutLineOffsetX:I

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogOutLineOffsetY:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 394
    :goto_1
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mOutLineRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getScaleMultiple()F

    move-result v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mOutLineRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v2, v3

    div-float v1, v2, v5

    .line 395
    .local v1, "widthOffset":F
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mOutLineRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getScaleMultiple()F

    move-result v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mOutLineRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v2, v3

    div-float v0, v2, v5

    .line 396
    .local v0, "heightOffset":F
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mOutLineRect:Landroid/graphics/RectF;

    neg-float v3, v1

    neg-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 397
    return-void

    .line 382
    .end local v0    # "heightOffset":F
    .end local v1    # "widthOffset":F
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->isCornerDialog()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 383
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mOutLineRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 384
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mOutLineRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextInDialogRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 386
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mOutLineRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 392
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mOutLineRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mOutLineOffsetX:I

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mOutLineOffsetY:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    goto :goto_1
.end method

.method private countTextInDialog()V
    .locals 10

    .prologue
    .line 418
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextInDialogRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 419
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->setText(Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextInDialogRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 422
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogModel:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextInDialogRect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->configRect(Landroid/graphics/RectF;Z)V

    .line 423
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 424
    .local v6, "a":J
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextInDialogRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextInDialogRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mMinTextSize:I

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mMaxTextSize:F

    iget v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mCountSizeSpacing:F

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->countTextArea(FFFFF)V

    .line 425
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 426
    .local v8, "b":J
    const-string v0, "TextAppendConfig"

    const-string/jumbo v1, "\u6d4b\u91cf\u8017\u65f6\uff1a %d"

    sub-long v2, v8, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private countTextNormal(F)V
    .locals 8
    .param p1, "maxWidth"    # F

    .prologue
    .line 410
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->setText(Ljava/lang/String;)V

    .line 411
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 412
    .local v0, "a":J
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v4, p1, v5}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->countText(FF)V

    .line 413
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 414
    .local v2, "b":J
    const-string v4, "TextAppendConfig"

    const-string/jumbo v5, "\u6587\u5b57\u8ba1\u7b97\u8017\u65f6\uff1a %d"

    sub-long v6, v2, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 415
    return-void
.end method

.method private getAlphaByConfig()I
    .locals 3

    .prologue
    .line 478
    const/high16 v0, 0x437f0000    # 255.0f

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextTransparent:F

    const/high16 v2, 0x43660000    # 230.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private initForParcelable()V
    .locals 2

    .prologue
    .line 681
    invoke-static {}, Lcom/miui/gallery/editor/photo/core/imports/text/TextManager;->loadModule()V

    .line 682
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogModel:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogModel:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->readDialogDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogDrawable:Landroid/graphics/drawable/Drawable;

    .line 685
    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mMaxWidth:F

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->countLocation(ZF)V

    .line 686
    return-void
.end method

.method private isCornerDialog()Z
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogModel:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogModel:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

    iget-boolean v0, v0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->isCorner:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private offsetRect(Landroid/graphics/RectF;)V
    .locals 4
    .param p1, "rectF"    # Landroid/graphics/RectF;

    .prologue
    .line 336
    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDefaultLocationX:F

    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserLocationX:F

    add-float v0, v2, v3

    .line 337
    .local v0, "x":F
    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDefaultLocationY:F

    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserLocationY:F

    add-float v1, v2, v3

    .line 338
    .local v1, "y":F
    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 339
    return-void
.end method


# virtual methods
.method public appendUserLocationX(F)V
    .locals 1
    .param p1, "userLocationX"    # F

    .prologue
    .line 248
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserLocationX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserLocationX:F

    .line 249
    return-void
.end method

.method public appendUserLocationY(F)V
    .locals 1
    .param p1, "userLocationY"    # F

    .prologue
    .line 252
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserLocationY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserLocationY:F

    .line 253
    return-void
.end method

.method public contains(FF)Z
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 342
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTemRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getOutLineRect(Landroid/graphics/RectF;)V

    .line 343
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 344
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getRotateDegrees()F

    move-result v2

    neg-float v2, v2

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTemRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTemRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 345
    const/4 v1, 0x2

    new-array v0, v1, [F

    aput p1, v0, v5

    aput p2, v0, v6

    .line 346
    .local v0, "tem":[F
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 347
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTemRect:Landroid/graphics/RectF;

    aget v2, v0, v5

    aget v3, v0, v6

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    return v1
.end method

.method public countLocation(ZF)V
    .locals 1
    .param p1, "isTextChange"    # Z
    .param p2, "maxWidth"    # F

    .prologue
    .line 353
    iput p2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mMaxWidth:F

    .line 354
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mScaleMultipleOrigin:F

    div-float/2addr p2, v0

    .line 355
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextAppendPadding:F

    sub-float/2addr p2, v0

    .line 356
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->configTextPaint(Landroid/graphics/Paint;)V

    .line 357
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->isDialogEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 358
    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->countTextNormal(F)V

    .line 359
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->countOutLine()V

    .line 371
    :goto_0
    return-void

    .line 361
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->isCornerDialog()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 362
    if-eqz p1, :cond_2

    invoke-direct {p0, p2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->countTextNormal(F)V

    .line 363
    :cond_2
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->countDialogCorner()V

    .line 364
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->countOutLine()V

    goto :goto_0

    .line 366
    :cond_3
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->countDialog()V

    .line 367
    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->countTextInDialog()V

    .line 368
    :cond_4
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->countOutLine()V

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 629
    const/4 v0, 0x0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 482
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextDrawable:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextDrawable:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 485
    :cond_0
    return-void
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mColor:I

    return v0
.end method

.method public getDialogModel()Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogModel:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

    return-object v0
.end method

.method public getDialogStatusData(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;)V
    .locals 1
    .param p1, "dialogStatusData"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getUserLocationX()F

    move-result v0

    iput v0, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->itemPositionX:F

    .line 598
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getUserLocationY()F

    move-result v0

    iput v0, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->itemPositionY:F

    .line 599
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getUserScaleMultiple()F

    move-result v0

    iput v0, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->itemScale:F

    .line 600
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getRotateDegrees()F

    move-result v0

    iput v0, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->itemDegree:F

    .line 601
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getColor()I

    move-result v0

    iput v0, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->color:I

    .line 602
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getTextTransparent()F

    move-result v0

    iput v0, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->transparentProgress:F

    .line 603
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getTextStyle()Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    move-result-object v0

    iput-object v0, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->textStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    .line 604
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->isBoldText()Z

    move-result v0

    iput-boolean v0, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->textBold:Z

    .line 605
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->isShadow()Z

    move-result v0

    iput-boolean v0, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->textShadow:Z

    .line 606
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getTextAlignment()Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    move-result-object v0

    iput-object v0, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->textAlignment:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    .line 607
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->text:Ljava/lang/String;

    .line 608
    return-void
.end method

.method public getOutLineRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "dst"    # Landroid/graphics/RectF;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mOutLineRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 270
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->offsetRect(Landroid/graphics/RectF;)V

    .line 271
    return-void
.end method

.method public getRotateDegrees()F
    .locals 5

    .prologue
    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 292
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mRotateDegrees:F

    .line 293
    .local v0, "degrees":F
    cmpg-float v1, v0, v3

    if-gez v1, :cond_0

    add-float/2addr v0, v4

    .line 294
    :cond_0
    rem-float/2addr v0, v4

    .line 295
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsCorrection:Z

    .line 296
    cmpl-float v1, v0, v3

    if-lez v1, :cond_1

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mCorrectionDegrees:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 297
    iput-boolean v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsCorrection:Z

    .line 298
    const/4 v0, 0x0

    .line 300
    :cond_1
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mCorrectionDegrees:I

    rsub-int v1, v1, 0x168

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 301
    iput-boolean v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsCorrection:Z

    .line 302
    const/4 v0, 0x0

    .line 304
    :cond_2
    const/high16 v1, 0x42b40000    # 90.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mCorrectionDegrees:I

    rsub-int/lit8 v1, v1, 0x5a

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mCorrectionDegrees:I

    add-int/lit8 v1, v1, 0x5a

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3

    .line 305
    iput-boolean v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsCorrection:Z

    .line 306
    const/high16 v0, 0x42b40000    # 90.0f

    .line 308
    :cond_3
    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mCorrectionDegrees:I

    rsub-int v1, v1, 0xb4

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_4

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mCorrectionDegrees:I

    add-int/lit16 v1, v1, 0xb4

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_4

    .line 309
    iput-boolean v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsCorrection:Z

    .line 310
    const/high16 v0, 0x43340000    # 180.0f

    .line 312
    :cond_4
    const/high16 v1, 0x43870000    # 270.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mCorrectionDegrees:I

    rsub-int v1, v1, 0x10e

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_5

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mCorrectionDegrees:I

    add-int/lit16 v1, v1, 0x10e

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_5

    .line 313
    iput-boolean v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsCorrection:Z

    .line 314
    const/high16 v0, 0x43870000    # 270.0f

    .line 316
    :cond_5
    return v0
.end method

.method public getSampleName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogModel:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dialog_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogModel:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "dialog_none"

    goto :goto_0
.end method

.method public getScaleMultiple()F
    .locals 2

    .prologue
    .line 284
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserScaleMultiple:F

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mScaleMultipleOrigin:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextAlignment()Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->getTextAlignment()Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    move-result-object v0

    return-object v0
.end method

.method public getTextStyle()Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    return-object v0
.end method

.method public getTextTransparent()F
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextTransparent:F

    return v0
.end method

.method public getUserLocationX()F
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserLocationX:F

    return v0
.end method

.method public getUserLocationY()F
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserLocationY:F

    return v0
.end method

.method public getUserScaleMultiple()F
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserScaleMultiple:F

    return v0
.end method

.method public isActivation()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsActivation:Z

    return v0
.end method

.method public isBoldText()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsBoldText:Z

    return v0
.end method

.method public isDialogEnable()Z
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogModel:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogModel:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->hasDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReverseColor()Z
    .locals 1

    .prologue
    .line 592
    const/4 v0, 0x0

    return v0
.end method

.method public isShadow()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsShadow:Z

    return v0
.end method

.method public isWatermark()Z
    .locals 1

    .prologue
    .line 581
    const/4 v0, 0x0

    return v0
.end method

.method public refreshRotateDegree()V
    .locals 1

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getRotateDegrees()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mRotateDegrees:F

    .line 325
    return-void
.end method

.method public reverseColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 587
    return-void
.end method

.method public setActivation(Z)V
    .locals 0
    .param p1, "activation"    # Z

    .prologue
    .line 212
    iput-boolean p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsActivation:Z

    .line 213
    return-void
.end method

.method public setBoldText(Z)V
    .locals 0
    .param p1, "boldText"    # Z

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsBoldText:Z

    .line 221
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 176
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mColor:I

    .line 177
    return-void
.end method

.method public setDialogModel(Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "dialogModel"    # Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogModel:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

    .line 153
    invoke-virtual {p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;->readDialogDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogDrawable:Landroid/graphics/drawable/Drawable;

    .line 154
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogModel:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

    .line 157
    :cond_0
    return-void
.end method

.method public setDialogWithStatusData(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;)V
    .locals 1
    .param p1, "dialogStatusData"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;

    .prologue
    .line 612
    iget v0, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->itemPositionX:F

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setUserLocationX(F)V

    .line 613
    iget v0, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->itemPositionY:F

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setUserLocationY(F)V

    .line 614
    iget v0, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->itemScale:F

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setUserScaleMultiple(F)V

    .line 615
    iget v0, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->itemDegree:F

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setRotateDegrees(F)V

    .line 616
    iget v0, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->color:I

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setColor(I)V

    .line 617
    iget v0, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->transparentProgress:F

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setTextTransparent(F)V

    .line 618
    iget-object v0, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->textStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setTextStyle(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;)V

    .line 619
    iget-boolean v0, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->textBold:Z

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setBoldText(Z)V

    .line 620
    iget-boolean v0, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->textShadow:Z

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setShadow(Z)V

    .line 621
    iget-object v0, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->textAlignment:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setTextAlignment(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;)V

    .line 622
    iget-object v0, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->text:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setText(Ljava/lang/String;)V

    .line 625
    :cond_0
    return-void
.end method

.method public setDisplaySize(FF)V
    .locals 2
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 488
    div-float v0, p1, v1

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDefaultLocationX:F

    .line 489
    div-float v0, p2, v1

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDefaultLocationY:F

    .line 490
    return-void
.end method

.method public setDrawOutline(Z)V
    .locals 0
    .param p1, "drawOutline"    # Z

    .prologue
    .line 266
    return-void
.end method

.method public setRotateDegrees(F)V
    .locals 0
    .param p1, "rotateDegrees"    # F

    .prologue
    .line 320
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mRotateDegrees:F

    .line 321
    return-void
.end method

.method public setScaleMultipleOrigin(F)V
    .locals 0
    .param p1, "scaleMultipleOrigin"    # F

    .prologue
    .line 280
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mScaleMultipleOrigin:F

    .line 281
    return-void
.end method

.method public setShadow(Z)V
    .locals 0
    .param p1, "shadow"    # Z

    .prologue
    .line 228
    iput-boolean p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsShadow:Z

    .line 229
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mText:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setTextAlignment(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;)V
    .locals 1
    .param p1, "textAlignment"    # Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->setTextAlignment(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;)V

    .line 245
    return-void
.end method

.method public setTextStyle(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;)V
    .locals 0
    .param p1, "textStyle"    # Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    .line 189
    return-void
.end method

.method public setTextTransparent(F)V
    .locals 0
    .param p1, "textTransparent"    # F

    .prologue
    .line 200
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextTransparent:F

    .line 201
    return-void
.end method

.method public setUserLocationX(F)V
    .locals 0
    .param p1, "userLocationX"    # F

    .prologue
    .line 256
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserLocationX:F

    .line 257
    return-void
.end method

.method public setUserLocationY(F)V
    .locals 0
    .param p1, "userLocationY"    # F

    .prologue
    .line 260
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserLocationY:F

    .line 261
    return-void
.end method

.method public setUserScaleMultiple(F)V
    .locals 3
    .param p1, "scaleMultiple"    # F

    .prologue
    const/high16 v2, 0x40a00000    # 5.0f

    const v1, 0x3e99999a    # 0.3f

    .line 274
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserScaleMultiple:F

    .line 275
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserScaleMultiple:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserScaleMultiple:F

    .line 276
    :cond_0
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserScaleMultiple:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserScaleMultiple:F

    .line 277
    :cond_1
    return-void
.end method

.method public toggleMirror()V
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsMirror:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsMirror:Z

    .line 173
    return-void

    .line 172
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 634
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDialogModel:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

    invoke-static {p1, p2, v0}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableGenericUtils;->writeObject(Landroid/os/Parcel;ILandroid/os/Parcelable;)V

    .line 635
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 636
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    invoke-static {p1, p2, v0}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableGenericUtils;->writeObject(Landroid/os/Parcel;ILandroid/os/Parcelable;)V

    .line 637
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 638
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsActivation:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 639
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mTextTransparent:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 640
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsBoldText:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 641
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsShadow:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 642
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDefaultLocationX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 643
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mDefaultLocationY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 644
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserLocationX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 645
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserLocationY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 646
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mUserScaleMultiple:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 647
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mScaleMultipleOrigin:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 648
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mRotateDegrees:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 649
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsMirror:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 650
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mIsCorrection:Z

    if-eqz v0, :cond_4

    :goto_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 651
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->getTextAlignment()Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 652
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->mMaxWidth:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 653
    return-void

    :cond_0
    move v0, v2

    .line 638
    goto :goto_0

    :cond_1
    move v0, v2

    .line 640
    goto :goto_1

    :cond_2
    move v0, v2

    .line 641
    goto :goto_2

    :cond_3
    move v0, v2

    .line 649
    goto :goto_3

    :cond_4
    move v1, v2

    .line 650
    goto :goto_4
.end method
