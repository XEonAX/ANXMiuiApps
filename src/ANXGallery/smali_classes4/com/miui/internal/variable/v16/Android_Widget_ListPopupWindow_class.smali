.class public Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;
.super Lcom/miui/internal/variable/Android_Widget_ListPopupWindow_class;
.source "SourceFile"


# static fields
.field private static final lY:Lmiui/reflect/Field;

.field private static final lZ:Lmiui/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    const-class v0, Landroid/widget/ListPopupWindow;

    const-string v1, "mPopup"

    const-string v2, "Landroid/widget/PopupWindow;"

    .line 29
    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->lY:Lmiui/reflect/Field;

    .line 31
    const-class v0, Landroid/widget/ListPopupWindow;

    const-string v1, "mDropDownHorizontalOffset"

    const-string v2, "I"

    .line 32
    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->lZ:Lmiui/reflect/Field;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Widget_ListPopupWindow_class;-><init>()V

    return-void
.end method


# virtual methods
.method public buildProxy()V
    .locals 2

    .line 40
    const-string v0, "(Landroid/content/Context;Landroid/util/AttributeSet;II)V"

    invoke-virtual {p0, v0}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->attachConstructor(Ljava/lang/String;)J

    .line 41
    const-string v0, "show"

    const-string v1, "()V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 42
    return-void
.end method

.method protected handle()V
    .locals 8

    .line 46
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->handle_init_(JLandroid/widget/ListPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->handleShow(JLandroid/widget/ListPopupWindow;)V

    .line 48
    return-void
.end method

.method protected handleShow(JLandroid/widget/ListPopupWindow;)V
    .locals 4

    .line 69
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->lZ:Lmiui/reflect/Field;

    invoke-virtual {v0, p3}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 70
    nop

    .line 71
    invoke-virtual {p3}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    .line 73
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/widget/Spinner;

    if-eqz v2, :cond_0

    .line 74
    const/4 v2, 0x1

    .line 75
    sget-object v3, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->lZ:Lmiui/reflect/Field;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {v3, p3, v1}, Lmiui/reflect/Field;->set(Ljava/lang/Object;I)V

    goto :goto_0

    .line 78
    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->originalShow(JLandroid/widget/ListPopupWindow;)V

    .line 80
    if-eqz v2, :cond_1

    .line 81
    sget-object p1, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->lZ:Lmiui/reflect/Field;

    invoke-virtual {p1, p3, v0}, Lmiui/reflect/Field;->set(Ljava/lang/Object;I)V

    .line 83
    :cond_1
    return-void
.end method

.method protected handle_init_(JLandroid/widget/ListPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9

    move-object v0, p4

    .line 52
    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-eqz v1, :cond_1

    sget v1, Lmiui/R$attr;->windowActionBar:I

    invoke-static {v0, v1}, Lmiui/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result v1

    if-ltz v1, :cond_1

    sget v1, Lcom/miui/internal/R$attr;->hidePopupArrow:I

    const/4 v2, 0x0

    .line 53
    invoke-static {v0, v1, v2}, Lmiui/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 58
    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, v0

    move-object v6, p5

    invoke-virtual/range {v1 .. v8}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->original_init_(JLandroid/widget/ListPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 60
    :try_start_0
    new-instance v1, Lmiui/widget/ArrowPopupWindow;

    move-object v2, p5

    move v3, p6

    move/from16 v4, p7

    invoke-direct {v1, v0, v2, v3, v4}, Lmiui/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 61
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lmiui/widget/ArrowPopupWindow;->setInputMethodMode(I)V

    .line 62
    move-object v5, p0

    move-object v6, p3

    invoke-virtual {v5, v6, v1}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->setPopupWindow(Landroid/widget/ListPopupWindow;Landroid/widget/PopupWindow;)V
    :try_end_0
    .catch Lmiui/reflect/ReflectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "ListPopupWindow constructor"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    :goto_0
    return-void

    .line 54
    :cond_1
    :goto_1
    move-object v5, p0

    move-object v6, p3

    move-object v2, p5

    move v3, p6

    move/from16 v4, p7

    invoke-virtual/range {p0 .. p7}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->original_init_(JLandroid/widget/ListPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 55
    return-void
.end method

.method protected originalShow(JLandroid/widget/ListPopupWindow;)V
    .locals 0

    .line 91
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "com.miui.internal.variable.v16.Android_Widget_ListPopupWindow_class.originalShow(long, ListPopupWindow)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected original_init_(JLandroid/widget/ListPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 86
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "com.miui.internal.variable.v16.Android_Widget_ListPopupWindow_class.original_init_(long, ListPopupWindow, Context, AttributeSet, int, int)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPopupWindow(Landroid/widget/ListPopupWindow;Landroid/widget/PopupWindow;)V
    .locals 1

    .line 35
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->lY:Lmiui/reflect/Field;

    invoke-virtual {v0, p1, p2}, Lmiui/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    return-void
.end method
