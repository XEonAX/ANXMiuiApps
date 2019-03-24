.class public Lcom/miui/internal/variable/v16/Android_Widget_AbsSpinner_class;
.super Lcom/miui/internal/variable/Android_Widget_AbsSpinner_class;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Widget_AbsSpinner_class;-><init>()V

    return-void
.end method


# virtual methods
.method public buildProxy()V
    .locals 2

    .line 21
    const-string v0, "setAdapter"

    const-string v1, "(Landroid/widget/SpinnerAdapter;)V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSpinner_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 22
    return-void
.end method

.method protected handle()V
    .locals 3

    .line 26
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2, v0, v0}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSpinner_class;->handleSetAdapter(JLandroid/widget/AbsSpinner;Landroid/widget/SpinnerAdapter;)V

    .line 27
    return-void
.end method

.method protected handleSetAdapter(JLandroid/widget/AbsSpinner;Landroid/widget/SpinnerAdapter;)V
    .locals 2

    .line 30
    instance-of v0, p4, Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p3}, Landroid/widget/AbsSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/util/AttributeResolver;->isUsingMiuiTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    move-object v0, p4

    check-cast v0, Landroid/widget/ArrayAdapter;

    sget v1, Lcom/miui/internal/R$layout;->simple_spinner_dropdown_item:I

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 34
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSpinner_class;->originalSetAdapter(JLandroid/widget/AbsSpinner;Landroid/widget/SpinnerAdapter;)V

    .line 35
    return-void
.end method

.method protected originalSetAdapter(JLandroid/widget/AbsSpinner;Landroid/widget/SpinnerAdapter;)V
    .locals 0

    .line 38
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "com.miui.internal.variable.v16.Android_Widget_AbsSpinner_class.original_init_(long, AbsSpinner, Context, AttributeSet, int)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
