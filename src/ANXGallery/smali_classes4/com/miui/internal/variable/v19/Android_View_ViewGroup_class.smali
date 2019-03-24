.class public Lcom/miui/internal/variable/v19/Android_View_ViewGroup_class;
.super Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;
.source "SourceFile"


# static fields
.field protected static final LAYOUT_MODE_UNDEFINED:I

.field protected static final R_styleable_ViewGroup_layoutMode:I

.field protected static final setLayoutMode:Lmiui/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 20
    sget-object v0, Lcom/miui/internal/variable/v19/Android_View_ViewGroup_class;->com_android_internal_R_styleable:Ljava/lang/Class;

    const-string v1, "ViewGroup_layoutMode"

    const-string v2, "I"

    .line 21
    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/miui/internal/variable/v19/Android_View_ViewGroup_class;->R_styleable_ViewGroup_layoutMode:I

    .line 23
    const-class v0, Landroid/view/ViewGroup;

    const-string v2, "LAYOUT_MODE_UNDEFINED"

    const-string v3, "I"

    .line 24
    invoke-static {v0, v2, v3}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/miui/internal/variable/v19/Android_View_ViewGroup_class;->LAYOUT_MODE_UNDEFINED:I

    .line 26
    const-class v0, Landroid/view/ViewGroup;

    const-string v1, "setLayoutMode"

    const-string v2, "(I)V"

    .line 27
    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v19/Android_View_ViewGroup_class;->setLayoutMode:Lmiui/reflect/Method;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;-><init>()V

    return-void
.end method


# virtual methods
.method protected processAttribute(Landroid/view/ViewGroup;ILandroid/content/res/TypedArray;Landroid/content/Context;)V
    .locals 4

    .line 30
    sget v0, Lcom/miui/internal/variable/v19/Android_View_ViewGroup_class;->R_styleable_ViewGroup_layoutMode:I

    if-ne p2, v0, :cond_0

    .line 31
    sget-object p4, Lcom/miui/internal/variable/v19/Android_View_ViewGroup_class;->setLayoutMode:Lmiui/reflect/Method;

    const-class v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget v3, Lcom/miui/internal/variable/v19/Android_View_ViewGroup_class;->LAYOUT_MODE_UNDEFINED:I

    invoke-virtual {p3, p2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-virtual {p4, v0, p1, v1}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 33
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->processAttribute(Landroid/view/ViewGroup;ILandroid/content/res/TypedArray;Landroid/content/Context;)V

    .line 35
    :goto_0
    return-void
.end method
