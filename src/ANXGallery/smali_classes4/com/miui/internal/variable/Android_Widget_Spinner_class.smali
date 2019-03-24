.class public abstract Lcom/miui/internal/variable/Android_Widget_Spinner_class;
.super Lcom/miui/internal/util/ClassProxy;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/variable/IManagedClassProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/variable/Android_Widget_Spinner_class$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/internal/util/ClassProxy<",
        "Landroid/widget/Spinner;",
        ">;",
        "Lcom/miui/internal/variable/IManagedClassProxy;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    const-class v0, Landroid/widget/Spinner;

    invoke-direct {p0, v0}, Lcom/miui/internal/util/ClassProxy;-><init>(Ljava/lang/Class;)V

    .line 49
    return-void
.end method


# virtual methods
.method public buildProxy()V
    .locals 2

    .line 55
    const-string v0, "setPrompt"

    const-string v1, "(Ljava/lang/CharSequence;)V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/Android_Widget_Spinner_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 56
    return-void
.end method

.method protected abstract getArrowPopupWindow(Landroid/widget/Spinner;)Lmiui/widget/ArrowPopupWindow;
.end method

.method protected handle()V
    .locals 3

    .line 60
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2, v0, v0}, Lcom/miui/internal/variable/Android_Widget_Spinner_class;->handleSetPrompt(JLandroid/widget/Spinner;Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method

.method protected handleSetPrompt(JLandroid/widget/Spinner;Ljava/lang/CharSequence;)V
    .locals 1

    .line 64
    nop

    .line 65
    invoke-virtual {p0, p3}, Lcom/miui/internal/variable/Android_Widget_Spinner_class;->getArrowPopupWindow(Landroid/widget/Spinner;)Lmiui/widget/ArrowPopupWindow;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0, p4}, Lmiui/widget/ArrowPopupWindow;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/Android_Widget_Spinner_class;->originalSetPrompt(JLandroid/widget/Spinner;Ljava/lang/CharSequence;)V

    .line 71
    :goto_0
    return-void
.end method

.method protected originalSetPrompt(JLandroid/widget/Spinner;Ljava/lang/CharSequence;)V
    .locals 0

    .line 74
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "com.miui.internal.variable.Android_Widget_Spinner_class.originalSetPrompt(long, Spinner, CharSequence)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
