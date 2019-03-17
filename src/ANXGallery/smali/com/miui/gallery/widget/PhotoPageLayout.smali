.class public Lcom/miui/gallery/widget/PhotoPageLayout;
.super Landroid/widget/FrameLayout;
.source "PhotoPageLayout.java"

# interfaces
.implements Lcom/miui/gallery/widget/IMultiThemeView;


# static fields
.field private static final DEFAULT_THEME:Lcom/miui/gallery/widget/IMultiThemeView$Theme;


# instance fields
.field private mAnimFinalValue:F

.field private mBackgroundAlpha:F

.field private mBackgroundColor:I

.field private mColorAnim:Landroid/animation/ValueAnimator;

.field private mPreBackgroundAlpha:F

.field private mPreBackgroundColor:I

.field private mTheme:Lcom/miui/gallery/widget/IMultiThemeView$Theme;

.field private mTransition:Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/miui/gallery/widget/IMultiThemeView$Theme;->LIGHT:Lcom/miui/gallery/widget/IMultiThemeView$Theme;

    sput-object v0, Lcom/miui/gallery/widget/PhotoPageLayout;->DEFAULT_THEME:Lcom/miui/gallery/widget/IMultiThemeView$Theme;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/widget/PhotoPageLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/widget/PhotoPageLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-direct {p0}, Lcom/miui/gallery/widget/PhotoPageLayout;->init()V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/widget/PhotoPageLayout;)Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/PhotoPageLayout;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mTransition:Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/gallery/widget/PhotoPageLayout;F)F
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/PhotoPageLayout;
    .param p1, "x1"    # F

    .prologue
    .line 21
    iput p1, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mBackgroundAlpha:F

    return p1
.end method

.method static synthetic access$202(Lcom/miui/gallery/widget/PhotoPageLayout;F)F
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/PhotoPageLayout;
    .param p1, "x1"    # F

    .prologue
    .line 21
    iput p1, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mPreBackgroundAlpha:F

    return p1
.end method

.method private cancelBackgroundTransition()V
    .locals 1

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/miui/gallery/widget/PhotoPageLayout;->isBackColorTransiting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mColorAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 188
    :cond_0
    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/miui/gallery/widget/PhotoPageLayout;->isBackColorTransiting()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 196
    iget v1, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mPreBackgroundColor:I

    .line 197
    .local v1, "downColor":I
    iget v0, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mPreBackgroundAlpha:F

    .line 198
    .local v0, "downAlpha":F
    iget v3, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mBackgroundColor:I

    .line 199
    .local v3, "upColor":I
    iget v2, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mBackgroundAlpha:F

    .line 200
    .local v2, "upAlpha":F
    iget-object v4, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mTransition:Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;

    sget-object v5, Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;->FADE_OUT:Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;

    if-ne v4, v5, :cond_0

    .line 201
    iget v1, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mBackgroundColor:I

    .line 202
    iget v0, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mBackgroundAlpha:F

    .line 203
    iget v3, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mPreBackgroundColor:I

    .line 204
    iget v2, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mPreBackgroundAlpha:F

    .line 207
    :cond_0
    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1

    .line 208
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 209
    invoke-direct {p0, p1, v1, v0}, Lcom/miui/gallery/widget/PhotoPageLayout;->drawColor(Landroid/graphics/Canvas;IF)V

    .line 210
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 213
    :cond_1
    invoke-direct {p0, p1, v3, v2}, Lcom/miui/gallery/widget/PhotoPageLayout;->drawColor(Landroid/graphics/Canvas;IF)V

    .line 217
    .end local v0    # "downAlpha":F
    .end local v1    # "downColor":I
    .end local v2    # "upAlpha":F
    .end local v3    # "upColor":I
    :goto_0
    return-void

    .line 215
    :cond_2
    iget v4, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mBackgroundColor:I

    iget v5, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mBackgroundAlpha:F

    invoke-direct {p0, p1, v4, v5}, Lcom/miui/gallery/widget/PhotoPageLayout;->drawColor(Landroid/graphics/Canvas;IF)V

    goto :goto_0
.end method

.method private drawColor(Landroid/graphics/Canvas;IF)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "color"    # I
    .param p3, "alpha"    # F

    .prologue
    .line 220
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    .line 221
    invoke-direct {p0, p2, p3}, Lcom/miui/gallery/widget/PhotoPageLayout;->genColor(IF)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 223
    :cond_0
    return-void
.end method

.method private genColor(IF)I
    .locals 4
    .param p1, "color"    # I
    .param p2, "alpha"    # F

    .prologue
    .line 191
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p2

    float-to-int v0, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private getBackgroundColor(Lcom/miui/gallery/widget/IMultiThemeView$Theme;)I
    .locals 2
    .param p1, "theme"    # Lcom/miui/gallery/widget/IMultiThemeView$Theme;

    .prologue
    .line 156
    sget-object v0, Lcom/miui/gallery/widget/PhotoPageLayout$2;->$SwitchMap$com$miui$gallery$widget$IMultiThemeView$Theme:[I

    invoke-virtual {p1}, Lcom/miui/gallery/widget/IMultiThemeView$Theme;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 162
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 158
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/gallery/widget/PhotoPageLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 160
    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/gallery/widget/PhotoPageLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getDefaultTransitionInterpolator(Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;)Landroid/view/animation/Interpolator;
    .locals 2
    .param p1, "transition"    # Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;

    .prologue
    .line 134
    sget-object v0, Lcom/miui/gallery/widget/PhotoPageLayout$2;->$SwitchMap$com$miui$gallery$widget$IMultiThemeView$ThemeTransition:[I

    invoke-virtual {p1}, Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 140
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 136
    :pswitch_0
    new-instance v0, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    goto :goto_0

    .line 138
    :pswitch_1
    new-instance v0, Lmiui/view/animation/SineEaseInOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/SineEaseInOutInterpolator;-><init>()V

    goto :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getDefaultTransitionTime(Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;)J
    .locals 2
    .param p1, "transition"    # Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;

    .prologue
    .line 145
    sget-object v0, Lcom/miui/gallery/widget/PhotoPageLayout$2;->$SwitchMap$com$miui$gallery$widget$IMultiThemeView$ThemeTransition:[I

    invoke-virtual {p1}, Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 151
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 147
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/gallery/widget/PhotoPageLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 149
    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/gallery/widget/PhotoPageLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private init()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/PhotoPageLayout;->setWillNotDraw(Z)V

    .line 52
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mBackgroundAlpha:F

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mPreBackgroundAlpha:F

    .line 54
    sget-object v0, Lcom/miui/gallery/widget/PhotoPageLayout;->DEFAULT_THEME:Lcom/miui/gallery/widget/IMultiThemeView$Theme;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/PhotoPageLayout;->setTheme(Lcom/miui/gallery/widget/IMultiThemeView$Theme;)V

    .line 55
    return-void
.end method

.method private isBackColorTransiting()Z
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mColorAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mColorAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/PhotoPageLayout;->drawBackground(Landroid/graphics/Canvas;)V

    .line 228
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 229
    return-void
.end method

.method public setBackgroundAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/miui/gallery/widget/PhotoPageLayout;->isBackColorTransiting()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mAnimFinalValue:F

    invoke-static {p1, v0}, Lcom/miui/gallery/util/MiscUtil;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    const-string v0, "PhotoPageLayout"

    const-string v1, "color transiting while set alpha %s"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/widget/PhotoPageLayout;->cancelBackgroundTransition()V

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mPreBackgroundAlpha:F

    .line 174
    iget v0, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mBackgroundAlpha:F

    invoke-static {v0, p1}, Lcom/miui/gallery/util/MiscUtil;->floatEquals(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iput p1, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mBackgroundAlpha:F

    .line 176
    invoke-virtual {p0}, Lcom/miui/gallery/widget/PhotoPageLayout;->invalidate()V

    goto :goto_0
.end method

.method public setTheme(Lcom/miui/gallery/widget/IMultiThemeView$Theme;)V
    .locals 1
    .param p1, "theme"    # Lcom/miui/gallery/widget/IMultiThemeView$Theme;

    .prologue
    .line 59
    sget-object v0, Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;->NONE:Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;

    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/widget/PhotoPageLayout;->setTheme(Lcom/miui/gallery/widget/IMultiThemeView$Theme;Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;)V

    .line 60
    return-void
.end method

.method public setTheme(Lcom/miui/gallery/widget/IMultiThemeView$Theme;Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;)V
    .locals 6
    .param p1, "theme"    # Lcom/miui/gallery/widget/IMultiThemeView$Theme;
    .param p2, "transition"    # Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;

    .prologue
    .line 64
    invoke-direct {p0, p2}, Lcom/miui/gallery/widget/PhotoPageLayout;->getDefaultTransitionInterpolator(Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-direct {p0, p2}, Lcom/miui/gallery/widget/PhotoPageLayout;->getDefaultTransitionTime(Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/widget/PhotoPageLayout;->setTheme(Lcom/miui/gallery/widget/IMultiThemeView$Theme;Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;Landroid/view/animation/Interpolator;J)V

    .line 65
    return-void
.end method

.method public setTheme(Lcom/miui/gallery/widget/IMultiThemeView$Theme;Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;Landroid/view/animation/Interpolator;J)V
    .locals 6
    .param p1, "theme"    # Lcom/miui/gallery/widget/IMultiThemeView$Theme;
    .param p2, "transition"    # Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;
    .param p3, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p4, "time"    # J

    .prologue
    .line 69
    iget-object v2, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mTheme:Lcom/miui/gallery/widget/IMultiThemeView$Theme;

    if-ne v2, p1, :cond_0

    .line 131
    :goto_0
    return-void

    .line 72
    :cond_0
    const-string v2, "PhotoPageLayout"

    const-string/jumbo v3, "setTheme %s -> %s"

    iget-object v4, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mTheme:Lcom/miui/gallery/widget/IMultiThemeView$Theme;

    invoke-static {v2, v3, v4, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    iput-object p1, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mTheme:Lcom/miui/gallery/widget/IMultiThemeView$Theme;

    .line 74
    iget v2, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mBackgroundColor:I

    iput v2, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mPreBackgroundColor:I

    .line 75
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/PhotoPageLayout;->getBackgroundColor(Lcom/miui/gallery/widget/IMultiThemeView$Theme;)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mBackgroundColor:I

    .line 76
    iput-object p2, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mTransition:Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;

    .line 77
    const/high16 v0, 0x3f800000    # 1.0f

    .line 78
    .local v0, "from":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 79
    .local v1, "to":F
    sget-object v2, Lcom/miui/gallery/widget/PhotoPageLayout$2;->$SwitchMap$com$miui$gallery$widget$IMultiThemeView$ThemeTransition:[I

    invoke-virtual {p2}, Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 102
    const/4 v2, 0x0

    iput v2, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mPreBackgroundAlpha:F

    .line 103
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mBackgroundAlpha:F

    iput v2, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mAnimFinalValue:F

    .line 106
    :goto_1
    invoke-static {v0, v1}, Lcom/miui/gallery/util/MiscUtil;->floatEquals(FF)Z

    move-result v2

    if-nez v2, :cond_5

    .line 107
    invoke-direct {p0}, Lcom/miui/gallery/widget/PhotoPageLayout;->cancelBackgroundTransition()V

    .line 108
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-lez v2, :cond_3

    .line 109
    :goto_2
    if-eqz p3, :cond_4

    .line 110
    :goto_3
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mColorAnim:Landroid/animation/ValueAnimator;

    .line 111
    iget-object v2, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mColorAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 112
    iget-object v2, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mColorAnim:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/miui/gallery/widget/PhotoPageLayout$1;

    invoke-direct {v3, p0}, Lcom/miui/gallery/widget/PhotoPageLayout$1;-><init>(Lcom/miui/gallery/widget/PhotoPageLayout;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 127
    iget-object v2, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mColorAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 82
    :pswitch_0
    iget v2, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mBackgroundAlpha:F

    iput v2, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mPreBackgroundAlpha:F

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mBackgroundAlpha:F

    .line 84
    invoke-direct {p0}, Lcom/miui/gallery/widget/PhotoPageLayout;->isBackColorTransiting()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    iget v2, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mAnimFinalValue:F

    iput v2, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mPreBackgroundAlpha:F

    .line 89
    :goto_4
    iget v1, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mAnimFinalValue:F

    .line 90
    goto :goto_1

    .line 87
    :cond_1
    iget v2, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mPreBackgroundAlpha:F

    iput v2, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mAnimFinalValue:F

    goto :goto_4

    .line 93
    :pswitch_1
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Lcom/miui/gallery/widget/PhotoPageLayout;->isBackColorTransiting()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    iget v2, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mAnimFinalValue:F

    iput v2, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mBackgroundAlpha:F

    .line 99
    :goto_5
    iget v0, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mAnimFinalValue:F

    iput v0, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mPreBackgroundAlpha:F

    goto :goto_1

    .line 97
    :cond_2
    iget v2, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mBackgroundAlpha:F

    iput v2, p0, Lcom/miui/gallery/widget/PhotoPageLayout;->mAnimFinalValue:F

    goto :goto_5

    .line 108
    :cond_3
    invoke-direct {p0, p2}, Lcom/miui/gallery/widget/PhotoPageLayout;->getDefaultTransitionTime(Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;)J

    move-result-wide p4

    goto :goto_2

    .line 109
    :cond_4
    invoke-direct {p0, p2}, Lcom/miui/gallery/widget/PhotoPageLayout;->getDefaultTransitionInterpolator(Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;)Landroid/view/animation/Interpolator;

    move-result-object p3

    goto :goto_3

    .line 129
    :cond_5
    invoke-virtual {p0}, Lcom/miui/gallery/widget/PhotoPageLayout;->invalidate()V

    goto/16 :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
