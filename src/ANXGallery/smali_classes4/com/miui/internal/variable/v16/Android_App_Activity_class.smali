.class public Lcom/miui/internal/variable/v16/Android_App_Activity_class;
.super Lcom/miui/internal/variable/Android_App_Activity_class;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_App_Activity_class;-><init>()V

    return-void
.end method


# virtual methods
.method public buildProxy()V
    .locals 2

    .line 19
    const-string v0, "setProgressBarVisibility"

    const-string v1, "(Z)V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_App_Activity_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 20
    const-string v0, "setProgressBarIndeterminateVisibility"

    const-string v1, "(Z)V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_App_Activity_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 21
    const-string v0, "setProgressBarIndeterminate"

    const-string v1, "(Z)V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_App_Activity_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 22
    const-string v0, "setProgress"

    const-string v1, "(I)V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_App_Activity_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 23
    return-void
.end method

.method protected handle()V
    .locals 4

    .line 27
    const/4 v0, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/miui/internal/variable/v16/Android_App_Activity_class;->handleSetProgressBarVisibility(JLandroid/app/Activity;Z)V

    .line 28
    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/miui/internal/variable/v16/Android_App_Activity_class;->handleSetProgressBarIndeterminateVisibility(JLandroid/app/Activity;Z)V

    .line 29
    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/miui/internal/variable/v16/Android_App_Activity_class;->handleSetProgressBarIndeterminate(JLandroid/app/Activity;Z)V

    .line 30
    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/miui/internal/variable/v16/Android_App_Activity_class;->handleSetProgress(JLandroid/app/Activity;I)V

    .line 31
    return-void
.end method

.method protected handleSetProgress(JLandroid/app/Activity;I)V
    .locals 1

    .line 82
    instance-of v0, p3, Lmiui/app/Activity;

    if-eqz v0, :cond_1

    .line 83
    check-cast p3, Lmiui/app/Activity;

    invoke-virtual {p3}, Lmiui/app/Activity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object p1

    .line 84
    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p1, p4}, Lmiui/app/ActionBar;->setProgress(I)V

    .line 87
    :cond_0
    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_App_Activity_class;->originalSetProgress(JLandroid/app/Activity;I)V

    .line 90
    :goto_0
    return-void
.end method

.method protected handleSetProgressBarIndeterminate(JLandroid/app/Activity;Z)V
    .locals 1

    .line 66
    instance-of v0, p3, Lmiui/app/Activity;

    if-eqz v0, :cond_1

    .line 67
    check-cast p3, Lmiui/app/Activity;

    invoke-virtual {p3}, Lmiui/app/Activity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object p1

    .line 68
    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p1, p4}, Lmiui/app/ActionBar;->setProgressBarIndeterminate(Z)V

    .line 71
    :cond_0
    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_App_Activity_class;->originalSetProgressBarIndeterminate(JLandroid/app/Activity;Z)V

    .line 74
    :goto_0
    return-void
.end method

.method protected handleSetProgressBarIndeterminateVisibility(JLandroid/app/Activity;Z)V
    .locals 1

    .line 50
    instance-of v0, p3, Lmiui/app/Activity;

    if-eqz v0, :cond_1

    .line 51
    check-cast p3, Lmiui/app/Activity;

    invoke-virtual {p3}, Lmiui/app/Activity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object p1

    .line 52
    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p1, p4}, Lmiui/app/ActionBar;->setProgressBarIndeterminateVisibility(Z)V

    .line 55
    :cond_0
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_App_Activity_class;->originalSetProgressBarIndeterminateVisibility(JLandroid/app/Activity;Z)V

    .line 58
    :goto_0
    return-void
.end method

.method protected handleSetProgressBarVisibility(JLandroid/app/Activity;Z)V
    .locals 1

    .line 34
    instance-of v0, p3, Lmiui/app/Activity;

    if-eqz v0, :cond_1

    .line 35
    check-cast p3, Lmiui/app/Activity;

    invoke-virtual {p3}, Lmiui/app/Activity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p1, p4}, Lmiui/app/ActionBar;->setProgressBarVisibility(Z)V

    .line 39
    :cond_0
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_App_Activity_class;->originalSetProgressBarVisibility(JLandroid/app/Activity;Z)V

    .line 42
    :goto_0
    return-void
.end method

.method protected originalSetProgress(JLandroid/app/Activity;I)V
    .locals 0

    .line 93
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "com.miui.internal.variable.v16.Android_App_Activity_class.originalSetProgress(long, Activity, int)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected originalSetProgressBarIndeterminate(JLandroid/app/Activity;Z)V
    .locals 0

    .line 77
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "com.miui.internal.variable.v16.Android_App_Activity_class.originalSetProgressBarIndeterminate(long, Activity, boolean)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected originalSetProgressBarIndeterminateVisibility(JLandroid/app/Activity;Z)V
    .locals 0

    .line 61
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "com.miui.internal.variable.v16.Android_App_Activity_class.originalSetProgressBarIndeterminateVisibility(long, Activity, boolean)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected originalSetProgressBarVisibility(JLandroid/app/Activity;Z)V
    .locals 0

    .line 45
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "com.miui.internal.variable.v16.Android_App_Activity_class.originalSetProgressBarVisibility(long, Activity, boolean)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
