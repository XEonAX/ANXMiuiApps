.class public abstract Lmiui/app/AlertActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field protected mAlert:Lcom/android/internal/app/AlertController;

.field protected mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 48
    invoke-virtual {p0}, Lmiui/app/AlertActivity;->finish()V

    .line 49
    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 54
    invoke-virtual {p0}, Lmiui/app/AlertActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lmiui/app/AlertActivity;->finish()V

    .line 57
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    .line 85
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lmiui/app/AlertActivity;->overridePendingTransition(II)V

    .line 87
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    new-instance p1, Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {p0}, Lmiui/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p1, p0, p0, v0}, Lcom/miui/internal/variable/AlertControllerWrapper;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object p1, p0, Lmiui/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    .line 44
    new-instance p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    invoke-direct {p1, p0}, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lmiui/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 45
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 73
    iget-object v0, p0, Lmiui/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 74
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 79
    iget-object v0, p0, Lmiui/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 80
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected setupAlert()V
    .locals 2

    .line 67
    iget-object v0, p0, Lmiui/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Lmiui/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController$AlertParams;->apply(Lcom/android/internal/app/AlertController;)V

    .line 68
    iget-object v0, p0, Lmiui/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertController;->installContent()V

    .line 69
    return-void
.end method
