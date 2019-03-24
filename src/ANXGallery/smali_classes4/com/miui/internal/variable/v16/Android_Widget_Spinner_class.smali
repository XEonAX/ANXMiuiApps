.class public Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class;
.super Lcom/miui/internal/variable/Android_Widget_Spinner_class;
.source "SourceFile"


# static fields
.field private static final lY:Lmiui/reflect/Field;

.field private static final ma:Lmiui/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 21
    const-class v0, Landroid/widget/Spinner;

    const-string v1, "mPopup"

    const-string v2, "Landroid/widget/Spinner$SpinnerPopup;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class;->lY:Lmiui/reflect/Field;

    .line 25
    const-class v0, Landroid/widget/ListPopupWindow;

    const-string v1, "mPopup"

    const-string v2, "Landroid/widget/PopupWindow;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class;->ma:Lmiui/reflect/Field;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Widget_Spinner_class;-><init>()V

    return-void
.end method


# virtual methods
.method protected getArrowPopupWindow(Landroid/widget/Spinner;)Lmiui/widget/ArrowPopupWindow;
    .locals 2

    .line 32
    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class;->lY:Lmiui/reflect/Field;

    invoke-virtual {v0, p1}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 33
    instance-of v0, p1, Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class;->ma:Lmiui/reflect/Field;

    invoke-virtual {v0, p1}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 35
    instance-of v0, p1, Lmiui/widget/ArrowPopupWindow;

    if-eqz v0, :cond_0

    .line 36
    check-cast p1, Lmiui/widget/ArrowPopupWindow;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 41
    :cond_0
    goto :goto_0

    .line 39
    :catch_0
    move-exception p1

    .line 40
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v0

    const-string v1, "mPopup"

    invoke-virtual {v0, v1, p1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
