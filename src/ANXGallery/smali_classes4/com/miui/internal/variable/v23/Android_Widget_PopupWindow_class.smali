.class public Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class;
.super Lcom/miui/internal/variable/v21/Android_Widget_PopupWindow_class;
.source "SourceFile"


# static fields
.field private static final mi:I = 0x2000

.field private static final mj:Lmiui/reflect/Field;

.field private static final mk:Lmiui/reflect/Field;

.field private static final ml:Lmiui/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 19
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "mBackgroundView"

    const-string v2, "Landroid/view/View;"

    .line 20
    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class;->mj:Lmiui/reflect/Field;

    .line 22
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "mDecorView"

    const-string v2, "Landroid/widget/PopupWindow$PopupDecorView;"

    .line 23
    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class;->mk:Lmiui/reflect/Field;

    .line 25
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "mLayoutInsetDecor"

    const-string v2, "Z"

    .line 26
    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class;->ml:Lmiui/reflect/Field;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/miui/internal/variable/v21/Android_Widget_PopupWindow_class;-><init>()V

    return-void
.end method


# virtual methods
.method protected handleInvokePopup(JLandroid/widget/PopupWindow;Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    .line 31
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v21/Android_Widget_PopupWindow_class;->handleInvokePopup(JLandroid/widget/PopupWindow;Landroid/view/WindowManager$LayoutParams;)V

    .line 33
    invoke-virtual {p3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/miui/internal/R$attr;->windowTranslucentStatus:I

    const/4 p4, 0x1

    invoke-static {p1, p2, p4}, Lmiui/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result p1

    .line 36
    sget-object p2, Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class;->ml:Lmiui/reflect/Field;

    invoke-virtual {p2, p3}, Lmiui/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p2

    .line 37
    sget-object v0, Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class;->mj:Lmiui/reflect/Field;

    invoke-virtual {v0, p3}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 38
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    .line 40
    sget-object v1, Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class;->mk:Lmiui/reflect/Field;

    invoke-virtual {v1, p3}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {p3, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 41
    invoke-virtual {v0, p2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 43
    if-ne p1, p4, :cond_0

    .line 44
    const/16 p1, 0x2000

    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    and-int/lit16 p1, p1, -0x2001

    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 50
    :cond_1
    :goto_0
    return-void
.end method
