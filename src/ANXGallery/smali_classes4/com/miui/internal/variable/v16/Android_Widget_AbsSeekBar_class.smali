.class public Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;
.super Lcom/miui/internal/variable/Android_Widget_AbsSeekBar_class;
.source "SourceFile"


# static fields
.field protected static final mIsDragging:Lmiui/reflect/Field;

.field protected static final mThumb:Lmiui/reflect/Field;

.field protected static final mThumbOffset:Lmiui/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 20
    const-class v0, Landroid/widget/AbsSeekBar;

    const-string v1, "mThumb"

    const-string v2, "Landroid/graphics/drawable/Drawable;"

    .line 21
    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->mThumb:Lmiui/reflect/Field;

    .line 23
    const-class v0, Landroid/widget/AbsSeekBar;

    const-string v1, "mThumbOffset"

    const-string v2, "I"

    .line 24
    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->mThumbOffset:Lmiui/reflect/Field;

    .line 26
    const-class v0, Landroid/widget/AbsSeekBar;

    const-string v1, "mIsDragging"

    const-string v2, "Z"

    .line 27
    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->mIsDragging:Lmiui/reflect/Field;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Widget_AbsSeekBar_class;-><init>()V

    return-void
.end method


# virtual methods
.method public buildProxy()V
    .locals 2

    .line 31
    const-string v0, "onTouchEvent"

    const-string v1, "(Landroid/view/MotionEvent;)Z"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 32
    return-void
.end method

.method protected handle()V
    .locals 3

    .line 36
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2, v0, v0}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->handleOnTouchEvent(JLandroid/widget/AbsSeekBar;Landroid/view/MotionEvent;)Z

    .line 37
    return-void
.end method

.method protected handleOnTouchEvent(JLandroid/widget/AbsSeekBar;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 40
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->mThumb:Lmiui/reflect/Field;

    invoke-virtual {v0, p3}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 41
    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->originalOnTouchEvent(JLandroid/widget/AbsSeekBar;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 45
    :cond_0
    sget-object v1, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->mIsDragging:Lmiui/reflect/Field;

    invoke-virtual {v1, p3}, Lmiui/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v1

    .line 46
    if-nez v1, :cond_1

    .line 47
    invoke-virtual {p3}, Landroid/widget/AbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    .line 48
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->originalOnTouchEvent(JLandroid/widget/AbsSeekBar;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 53
    :cond_1
    sget-object v2, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->mThumbOffset:Lmiui/reflect/Field;

    invoke-virtual {v2, p3}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 54
    invoke-virtual {p3}, Landroid/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v3, v2

    .line 55
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    .line 56
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v4, v0

    .line 58
    if-nez v1, :cond_3

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    int-to-float v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    int-to-float v1, v4

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    goto :goto_0

    .line 61
    :cond_2
    const/4 p1, 0x0

    return p1

    .line 59
    :cond_3
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->originalOnTouchEvent(JLandroid/widget/AbsSeekBar;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected originalOnTouchEvent(JLandroid/widget/AbsSeekBar;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 65
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "com.miui.internal.variable.v16.Android_Widget_AbsSeekBar_class.originalOnTouchEvent(long, AbsSeekBar, MotionEvent)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
