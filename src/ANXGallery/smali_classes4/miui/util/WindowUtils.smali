.class public Lmiui/util/WindowUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static setTranslucentStatus(Landroid/view/Window;I)V
    .locals 1

    .line 20
    invoke-static {}, Lcom/miui/internal/variable/Android_View_Window_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_Window_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_View_Window_class$Factory;->get()Lcom/miui/internal/variable/Android_View_Window_class;

    move-result-object v0

    .line 21
    invoke-virtual {v0, p0, p1}, Lcom/miui/internal/variable/Android_View_Window_class;->setTranslucentStatus(Landroid/view/Window;I)Z

    .line 22
    return-void
.end method
