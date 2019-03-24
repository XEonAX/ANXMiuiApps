.class public Lmiui/widget/SlidingButton;
.super Landroid/widget/CheckBox;
.source "SourceFile"


# static fields
.field private static final ANIMATION_DURATION:I = 0x104

.field private static final Pv:[I

.field private static final RC:I = 0xff


# instance fields
.field private OS:Z

.field private Rt:Landroid/animation/Animator$AnimatorListener;

.field private aaA:I

.field private aaB:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private aaC:Landroid/animation/Animator;

.field private aaD:Landroid/graphics/drawable/StateListDrawable;

.field private aan:Landroid/graphics/drawable/Drawable;

.field private aao:Landroid/graphics/drawable/Drawable;

.field private aap:I

.field private aaq:Landroid/graphics/drawable/Drawable;

.field private aar:I

.field private aas:I

.field private aat:I

.field private aau:I

.field private aav:I

.field private aaw:I

.field private aax:I

.field private aay:Z

.field private aaz:Z

.field private mHeight:I

.field private mWidth:I

.field private ti:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lmiui/widget/SlidingButton;->Pv:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/SlidingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 125
    sget v0, Lcom/miui/internal/R$attr;->slidingButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/SlidingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 129
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/widget/SlidingButton;->ti:Landroid/graphics/Rect;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/SlidingButton;->OS:Z

    .line 91
    new-instance v1, Lmiui/widget/SlidingButton$1;

    invoke-direct {v1, p0}, Lmiui/widget/SlidingButton$1;-><init>(Lmiui/widget/SlidingButton;)V

    iput-object v1, p0, Lmiui/widget/SlidingButton;->Rt:Landroid/animation/Animator$AnimatorListener;

    .line 130
    sget-object v1, Lcom/miui/internal/R$styleable;->SlidingButton:[I

    sget v2, Lcom/miui/internal/R$style;->Widget_SlidingButton:I

    .line 131
    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 134
    invoke-virtual {p0, v0}, Lmiui/widget/SlidingButton;->setDrawingCacheEnabled(Z)V

    .line 135
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    iput p3, p0, Lmiui/widget/SlidingButton;->aaA:I

    .line 137
    sget p3, Lcom/miui/internal/R$styleable;->SlidingButton_frame:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiui/widget/SlidingButton;->aan:Landroid/graphics/drawable/Drawable;

    .line 138
    sget p3, Lcom/miui/internal/R$styleable;->SlidingButton_sliderOn:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiui/widget/SlidingButton;->aao:Landroid/graphics/drawable/Drawable;

    .line 139
    sget p3, Lcom/miui/internal/R$styleable;->SlidingButton_sliderOff:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiui/widget/SlidingButton;->aaq:Landroid/graphics/drawable/Drawable;

    .line 140
    sget p3, Lcom/miui/internal/R$styleable;->SlidingButton_android_background:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0, p3}, Lmiui/widget/SlidingButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 142
    iget-object p3, p0, Lmiui/widget/SlidingButton;->aan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    iput p3, p0, Lmiui/widget/SlidingButton;->mWidth:I

    .line 143
    iget-object p3, p0, Lmiui/widget/SlidingButton;->aan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    iput p3, p0, Lmiui/widget/SlidingButton;->mHeight:I

    .line 145
    iget p3, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget-object v1, p0, Lmiui/widget/SlidingButton;->aao:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    iput p3, p0, Lmiui/widget/SlidingButton;->aar:I

    .line 146
    iget p3, p0, Lmiui/widget/SlidingButton;->mHeight:I

    iget-object v1, p0, Lmiui/widget/SlidingButton;->aao:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    iput p3, p0, Lmiui/widget/SlidingButton;->aas:I

    .line 147
    iput v0, p0, Lmiui/widget/SlidingButton;->aat:I

    .line 148
    iget p3, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget v1, p0, Lmiui/widget/SlidingButton;->aar:I

    sub-int/2addr p3, v1

    iput p3, p0, Lmiui/widget/SlidingButton;->aau:I

    .line 149
    iget p3, p0, Lmiui/widget/SlidingButton;->aat:I

    iput p3, p0, Lmiui/widget/SlidingButton;->aav:I

    .line 151
    new-instance p3, Landroid/util/TypedValue;

    invoke-direct {p3}, Landroid/util/TypedValue;-><init>()V

    .line 152
    sget v1, Lcom/miui/internal/R$styleable;->SlidingButton_barOff:I

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 153
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 154
    sget v2, Lcom/miui/internal/R$styleable;->SlidingButton_barOn:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 155
    sget v2, Lcom/miui/internal/R$styleable;->SlidingButton_barOff:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 156
    sget v3, Lcom/miui/internal/R$styleable;->SlidingButton_barOn:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 159
    invoke-direct {p0, v2}, Lmiui/widget/SlidingButton;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 160
    iget v4, p3, Landroid/util/TypedValue;->type:I

    iget v5, v1, Landroid/util/TypedValue;->type:I

    if-ne v4, v5, :cond_0

    iget v4, p3, Landroid/util/TypedValue;->data:I

    iget v5, v1, Landroid/util/TypedValue;->data:I

    if-ne v4, v5, :cond_0

    iget p3, p3, Landroid/util/TypedValue;->resourceId:I

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    if-ne p3, v1, :cond_0

    .line 163
    nop

    .line 167
    move-object p3, v2

    goto :goto_0

    .line 165
    :cond_0
    invoke-direct {p0, v3}, Lmiui/widget/SlidingButton;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 167
    :goto_0
    iget-object v1, p0, Lmiui/widget/SlidingButton;->aan:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget v4, p0, Lmiui/widget/SlidingButton;->mHeight:I

    invoke-virtual {v1, v0, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 169
    if-eqz p3, :cond_1

    if-eqz v2, :cond_1

    .line 170
    sget v1, Lcom/miui/internal/R$styleable;->SlidingButton_mask:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 171
    iget v3, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget v4, p0, Lmiui/widget/SlidingButton;->mHeight:I

    invoke-virtual {v1, v0, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 172
    invoke-direct {p0, v1}, Lmiui/widget/SlidingButton;->h(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 173
    invoke-direct {p0, p1, v0, p3, v2}, Lmiui/widget/SlidingButton;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p1

    iput-object p1, p0, Lmiui/widget/SlidingButton;->aaD:Landroid/graphics/drawable/StateListDrawable;

    .line 174
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 177
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 178
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 180
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_3

    .line 181
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 185
    :cond_3
    invoke-direct {p0}, Lmiui/widget/SlidingButton;->fN()V

    .line 186
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 187
    iget p1, p0, Lmiui/widget/SlidingButton;->aau:I

    invoke-virtual {p0, p1}, Lmiui/widget/SlidingButton;->setSliderOffset(I)V

    .line 190
    :cond_4
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 191
    return-void
.end method

.method private C(Z)V
    .locals 3

    .line 385
    iget-object v0, p0, Lmiui/widget/SlidingButton;->aaC:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lmiui/widget/SlidingButton;->aaC:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 387
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/SlidingButton;->aaC:Landroid/animation/Animator;

    .line 389
    :cond_0
    const-string v0, "SliderOffset"

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 391
    if-eqz p1, :cond_1

    iget p1, p0, Lmiui/widget/SlidingButton;->aau:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lmiui/widget/SlidingButton;->aat:I

    :goto_0
    aput p1, v1, v2

    .line 390
    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 392
    new-instance v0, Lmiui/view/animation/QuarticEaseInOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/QuarticEaseInOutInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 393
    nop

    .line 394
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x104

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x0

    .line 393
    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 395
    iput-object p1, p0, Lmiui/widget/SlidingButton;->aaC:Landroid/animation/Animator;

    .line 396
    iget-object p1, p0, Lmiui/widget/SlidingButton;->aaC:Landroid/animation/Animator;

    iget-object v0, p0, Lmiui/widget/SlidingButton;->Rt:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 397
    iget-object p1, p0, Lmiui/widget/SlidingButton;->aaC:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 398
    return-void
.end method

.method static synthetic a(Lmiui/widget/SlidingButton;)I
    .locals 0

    .line 39
    iget p0, p0, Lmiui/widget/SlidingButton;->aav:I

    return p0
.end method

.method static synthetic a(Lmiui/widget/SlidingButton;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 39
    iput-object p1, p0, Lmiui/widget/SlidingButton;->aaC:Landroid/animation/Animator;

    return-object p1
.end method

.method private a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 216
    iget v0, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget v1, p0, Lmiui/widget/SlidingButton;->mHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 217
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 219
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 221
    invoke-virtual {v1, p2, v3, v3, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 222
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 223
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-direct {p1, p2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 224
    iget p2, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget p3, p0, Lmiui/widget/SlidingButton;->mHeight:I

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 225
    return-object p1
.end method

.method private a(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/StateListDrawable;
    .locals 5

    .line 194
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 195
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 196
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 197
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lmiui/R$attr;->colorAccent:I

    .line 198
    invoke-static {p1, v3}, Lmiui/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 197
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 200
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 202
    invoke-direct {p0, p2, p3, v1}, Lmiui/widget/SlidingButton;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 203
    invoke-direct {p0, p2, p4, v0}, Lmiui/widget/SlidingButton;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 205
    new-instance p4, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 206
    sget-object v0, Lmiui/widget/SlidingButton;->Pv:[I

    invoke-virtual {p4, v0, p3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 207
    sget-object p3, Lmiui/widget/SlidingButton;->EMPTY_STATE_SET:[I

    invoke-virtual {p4, p3, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 208
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/miui/internal/R$integer;->button_exit_fade_duration:I

    .line 209
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 208
    invoke-virtual {p4, p1}, Landroid/graphics/drawable/StateListDrawable;->setExitFadeDuration(I)V

    .line 210
    iget p1, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget p2, p0, Lmiui/widget/SlidingButton;->mHeight:I

    const/4 p3, 0x0

    invoke-virtual {p4, p3, p3, p1, p2}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 211
    invoke-virtual {p4, p0}, Landroid/graphics/drawable/StateListDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 212
    return-object p4
.end method

.method static synthetic a(Lmiui/widget/SlidingButton;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lmiui/widget/SlidingButton;->OS:Z

    return p1
.end method

.method private aK(I)V
    .locals 1

    .line 402
    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    neg-int p1, p1

    .line 405
    :cond_0
    iget v0, p0, Lmiui/widget/SlidingButton;->aav:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiui/widget/SlidingButton;->aav:I

    .line 406
    iget p1, p0, Lmiui/widget/SlidingButton;->aav:I

    iget v0, p0, Lmiui/widget/SlidingButton;->aat:I

    if-ge p1, v0, :cond_1

    .line 407
    iget p1, p0, Lmiui/widget/SlidingButton;->aat:I

    iput p1, p0, Lmiui/widget/SlidingButton;->aav:I

    goto :goto_0

    .line 408
    :cond_1
    iget p1, p0, Lmiui/widget/SlidingButton;->aav:I

    iget v0, p0, Lmiui/widget/SlidingButton;->aau:I

    if-le p1, v0, :cond_2

    .line 409
    iget p1, p0, Lmiui/widget/SlidingButton;->aau:I

    iput p1, p0, Lmiui/widget/SlidingButton;->aav:I

    .line 411
    :cond_2
    :goto_0
    iget p1, p0, Lmiui/widget/SlidingButton;->aav:I

    invoke-virtual {p0, p1}, Lmiui/widget/SlidingButton;->setSliderOffset(I)V

    .line 412
    return-void
.end method

.method private animateToggle()V
    .locals 1

    .line 381
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lmiui/widget/SlidingButton;->C(Z)V

    .line 382
    return-void
.end method

.method static synthetic b(Lmiui/widget/SlidingButton;)I
    .locals 0

    .line 39
    iget p0, p0, Lmiui/widget/SlidingButton;->aau:I

    return p0
.end method

.method static synthetic c(Lmiui/widget/SlidingButton;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lmiui/widget/SlidingButton;->fO()V

    return-void
.end method

.method static synthetic d(Lmiui/widget/SlidingButton;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lmiui/widget/SlidingButton;->aaB:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object p0
.end method

.method private fN()V
    .locals 2

    .line 274
    iget-object v0, p0, Lmiui/widget/SlidingButton;->aao:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lmiui/widget/SlidingButton;->aao:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 276
    iget-object v0, p0, Lmiui/widget/SlidingButton;->aaD:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 278
    :cond_0
    return-void
.end method

.method private fO()V
    .locals 2

    .line 367
    iget-object v0, p0, Lmiui/widget/SlidingButton;->aaB:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v0

    .line 369
    new-instance v1, Lmiui/widget/SlidingButton$2;

    invoke-direct {v1, p0, v0}, Lmiui/widget/SlidingButton$2;-><init>(Lmiui/widget/SlidingButton;Z)V

    invoke-virtual {p0, v1}, Lmiui/widget/SlidingButton;->post(Ljava/lang/Runnable;)Z

    .line 378
    :cond_0
    return-void
.end method

.method private g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 3

    .line 229
    iget v0, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget v1, p0, Lmiui/widget/SlidingButton;->mHeight:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 230
    iget v0, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget v1, p0, Lmiui/widget/SlidingButton;->mHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 231
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 232
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 233
    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 234
    return-object v0
.end method

.method private h(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 3

    .line 242
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 244
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 245
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 246
    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 247
    return-object v0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .line 269
    invoke-super {p0}, Landroid/widget/CheckBox;->drawableStateChanged()V

    .line 270
    invoke-direct {p0}, Lmiui/widget/SlidingButton;->fN()V

    .line 271
    return-void
.end method

.method public getSliderOffset()I
    .locals 1

    .line 418
    iget v0, p0, Lmiui/widget/SlidingButton;->aav:I

    return v0
.end method

.method public getSliderOnAlpha()I
    .locals 1

    .line 433
    iget v0, p0, Lmiui/widget/SlidingButton;->aap:I

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 474
    const/4 v0, 0x0

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 484
    invoke-super {p0}, Landroid/widget/CheckBox;->jumpDrawablesToCurrentState()V

    .line 485
    iget-object v0, p0, Lmiui/widget/SlidingButton;->aaD:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lmiui/widget/SlidingButton;->aaD:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->jumpToCurrentState()V

    .line 488
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 446
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    goto :goto_0

    :cond_0
    const/16 v0, 0x7f

    .line 447
    :goto_0
    iget-object v1, p0, Lmiui/widget/SlidingButton;->aaD:Landroid/graphics/drawable/StateListDrawable;

    .line 448
    if-eqz v1, :cond_1

    .line 449
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 453
    :cond_1
    iget-object v1, p0, Lmiui/widget/SlidingButton;->aan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 456
    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    .line 457
    if-eqz v1, :cond_2

    iget v2, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget v3, p0, Lmiui/widget/SlidingButton;->aav:I

    sub-int/2addr v2, v3

    iget v3, p0, Lmiui/widget/SlidingButton;->aar:I

    sub-int/2addr v2, v3

    goto :goto_1

    :cond_2
    iget v2, p0, Lmiui/widget/SlidingButton;->aav:I

    .line 458
    :goto_1
    if-eqz v1, :cond_3

    iget v1, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget v3, p0, Lmiui/widget/SlidingButton;->aav:I

    sub-int/2addr v1, v3

    goto :goto_2

    :cond_3
    iget v1, p0, Lmiui/widget/SlidingButton;->aar:I

    iget v3, p0, Lmiui/widget/SlidingButton;->aav:I

    add-int/2addr v1, v3

    .line 459
    :goto_2
    iget v3, p0, Lmiui/widget/SlidingButton;->mHeight:I

    iget v4, p0, Lmiui/widget/SlidingButton;->aas:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 460
    iget v4, p0, Lmiui/widget/SlidingButton;->aas:I

    add-int/2addr v4, v3

    .line 461
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 462
    iget-object v5, p0, Lmiui/widget/SlidingButton;->aao:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v2, v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 463
    iget-object v1, p0, Lmiui/widget/SlidingButton;->aao:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 465
    :cond_4
    iget-object v5, p0, Lmiui/widget/SlidingButton;->aaq:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v2, v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 466
    iget-object v1, p0, Lmiui/widget/SlidingButton;->aaq:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 469
    :goto_3
    int-to-float p1, v0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lmiui/widget/SlidingButton;->setAlpha(F)V

    .line 470
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 282
    iget p1, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget p2, p0, Lmiui/widget/SlidingButton;->mHeight:I

    invoke-virtual {p0, p1, p2}, Lmiui/widget/SlidingButton;->setMeasuredDimension(II)V

    .line 283
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 294
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 295
    return v1

    .line 298
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 299
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 300
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 301
    iget-object v3, p0, Lmiui/widget/SlidingButton;->ti:Landroid/graphics/Rect;

    .line 302
    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v4

    .line 303
    if-eqz v4, :cond_1

    iget v5, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget v6, p0, Lmiui/widget/SlidingButton;->aav:I

    sub-int/2addr v5, v6

    iget v6, p0, Lmiui/widget/SlidingButton;->aar:I

    sub-int/2addr v5, v6

    goto :goto_0

    :cond_1
    iget v5, p0, Lmiui/widget/SlidingButton;->aav:I

    .line 304
    :goto_0
    if-eqz v4, :cond_2

    iget v4, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget v6, p0, Lmiui/widget/SlidingButton;->aav:I

    sub-int/2addr v4, v6

    goto :goto_1

    :cond_2
    iget v4, p0, Lmiui/widget/SlidingButton;->aav:I

    iget v6, p0, Lmiui/widget/SlidingButton;->aar:I

    add-int/2addr v4, v6

    .line 305
    :goto_1
    iget v6, p0, Lmiui/widget/SlidingButton;->mHeight:I

    invoke-virtual {v3, v5, v1, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 307
    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    .line 321
    :pswitch_0
    iget-boolean p1, p0, Lmiui/widget/SlidingButton;->aay:Z

    if-eqz p1, :cond_a

    .line 322
    iget p1, p0, Lmiui/widget/SlidingButton;->aaw:I

    sub-int p1, v2, p1

    invoke-direct {p0, p1}, Lmiui/widget/SlidingButton;->aK(I)V

    .line 323
    iput v2, p0, Lmiui/widget/SlidingButton;->aaw:I

    .line 324
    iget p1, p0, Lmiui/widget/SlidingButton;->aax:I

    sub-int/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lmiui/widget/SlidingButton;->aaA:I

    if-lt p1, v0, :cond_a

    .line 325
    iput-boolean v4, p0, Lmiui/widget/SlidingButton;->aaz:Z

    .line 326
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_5

    .line 335
    :pswitch_1
    const/4 v5, 0x3

    if-ne v0, v5, :cond_4

    iget v0, v3, Landroid/graphics/Rect;->left:I

    if-lt v2, v0, :cond_3

    iget v0, v3, Landroid/graphics/Rect;->right:I

    if-le v2, v0, :cond_4

    :cond_3
    iget v0, v3, Landroid/graphics/Rect;->top:I

    if-lt p1, v0, :cond_8

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    if-le p1, v0, :cond_4

    .line 339
    goto :goto_3

    .line 341
    :cond_4
    iget-boolean p1, p0, Lmiui/widget/SlidingButton;->aay:Z

    if-eqz p1, :cond_7

    .line 342
    iget-boolean p1, p0, Lmiui/widget/SlidingButton;->aaz:Z

    if-nez p1, :cond_5

    .line 343
    invoke-direct {p0}, Lmiui/widget/SlidingButton;->animateToggle()V

    goto :goto_3

    .line 345
    :cond_5
    iget p1, p0, Lmiui/widget/SlidingButton;->aav:I

    iget v0, p0, Lmiui/widget/SlidingButton;->aau:I

    div-int/lit8 v0, v0, 0x2

    if-lt p1, v0, :cond_6

    move p1, v4

    goto :goto_2

    :cond_6
    move p1, v1

    :goto_2
    invoke-direct {p0, p1}, Lmiui/widget/SlidingButton;->C(Z)V

    goto :goto_3

    .line 348
    :cond_7
    invoke-direct {p0}, Lmiui/widget/SlidingButton;->animateToggle()V

    .line 351
    :cond_8
    :goto_3
    iput-boolean v1, p0, Lmiui/widget/SlidingButton;->aay:Z

    .line 352
    iput-boolean v1, p0, Lmiui/widget/SlidingButton;->aaz:Z

    .line 353
    invoke-virtual {p0, v1}, Lmiui/widget/SlidingButton;->setPressed(Z)V

    goto :goto_5

    .line 309
    :pswitch_2
    invoke-virtual {v3, v2, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 310
    iput-boolean v4, p0, Lmiui/widget/SlidingButton;->aay:Z

    .line 311
    invoke-virtual {p0, v4}, Lmiui/widget/SlidingButton;->setPressed(Z)V

    goto :goto_4

    .line 313
    :cond_9
    iput-boolean v1, p0, Lmiui/widget/SlidingButton;->aay:Z

    .line 315
    :goto_4
    iput v2, p0, Lmiui/widget/SlidingButton;->aaw:I

    .line 316
    iput v2, p0, Lmiui/widget/SlidingButton;->aax:I

    .line 317
    iput-boolean v1, p0, Lmiui/widget/SlidingButton;->aaz:Z

    .line 318
    nop

    .line 357
    :cond_a
    :goto_5
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public performClick()Z
    .locals 1

    .line 287
    invoke-super {p0}, Landroid/widget/CheckBox;->performClick()Z

    .line 288
    invoke-direct {p0}, Lmiui/widget/SlidingButton;->fO()V

    .line 289
    const/4 v0, 0x1

    return v0
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 265
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 252
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v0

    .line 254
    if-eq v0, p1, :cond_2

    .line 255
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 256
    if-eqz p1, :cond_0

    iget v0, p0, Lmiui/widget/SlidingButton;->aau:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lmiui/widget/SlidingButton;->aat:I

    :goto_0
    iput v0, p0, Lmiui/widget/SlidingButton;->aav:I

    .line 257
    if-eqz p1, :cond_1

    const/16 p1, 0xff

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput p1, p0, Lmiui/widget/SlidingButton;->aap:I

    .line 258
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->invalidate()V

    .line 260
    :cond_2
    return-void
.end method

.method public setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lmiui/widget/SlidingButton;->aaB:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 239
    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    .line 362
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setPressed(Z)V

    .line 363
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->invalidate()V

    .line 364
    return-void
.end method

.method public setSliderOffset(I)V
    .locals 0

    .line 425
    iput p1, p0, Lmiui/widget/SlidingButton;->aav:I

    .line 426
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->invalidate()V

    .line 427
    return-void
.end method

.method public setSliderOnAlpha(I)V
    .locals 0

    .line 440
    iput p1, p0, Lmiui/widget/SlidingButton;->aap:I

    .line 441
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->invalidate()V

    .line 442
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 479
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/widget/SlidingButton;->aaD:Landroid/graphics/drawable/StateListDrawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
