.class public Lcom/miui/internal/variable/v16/Android_Widget_PopupWindow_class;
.super Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;-><init>()V

    return-void
.end method


# virtual methods
.method protected handle()V
    .locals 0

    .line 38
    return-void
.end method

.method public setLayoutInScreenEnabled(Landroid/widget/PopupWindow;Z)V
    .locals 4

    .line 16
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Widget_PopupWindow_class;->setLayoutInScreenEnabled:Lmiui/reflect/Method;

    if-eqz v0, :cond_0

    .line 18
    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Widget_PopupWindow_class;->setLayoutInScreenEnabled:Lmiui/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, p1, v2}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 19
    :catch_0
    move-exception p1

    .line 20
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object p2

    const-string v0, "invoke setLayoutInScreenEnabled failed"

    invoke-virtual {p2, v0, p1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    :cond_0
    :goto_0
    return-void
.end method

.method public setLayoutInsetDecor(Landroid/widget/PopupWindow;Z)V
    .locals 4

    .line 27
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Widget_PopupWindow_class;->setLayoutInsetDecor:Lmiui/reflect/Method;

    if-eqz v0, :cond_0

    .line 29
    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Widget_PopupWindow_class;->setLayoutInsetDecor:Lmiui/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, p1, v2}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object p2

    const-string v0, "invoke setLayoutInsetDecor failed"

    invoke-virtual {p2, v0, p1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    :cond_0
    :goto_0
    return-void
.end method
