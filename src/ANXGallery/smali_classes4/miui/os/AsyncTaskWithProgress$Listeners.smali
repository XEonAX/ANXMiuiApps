.class Lmiui/os/AsyncTaskWithProgress$Listeners;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/os/AsyncTaskWithProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listeners"
.end annotation


# instance fields
.field final synthetic DP:Lmiui/os/AsyncTaskWithProgress;


# direct methods
.method private constructor <init>(Lmiui/os/AsyncTaskWithProgress;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lmiui/os/AsyncTaskWithProgress$Listeners;->DP:Lmiui/os/AsyncTaskWithProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/os/AsyncTaskWithProgress;Lmiui/os/AsyncTaskWithProgress$1;)V
    .locals 0

    .line 253
    invoke-direct {p0, p1}, Lmiui/os/AsyncTaskWithProgress$Listeners;-><init>(Lmiui/os/AsyncTaskWithProgress;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 272
    const/4 v0, -0x2

    invoke-virtual {p0, p1, v0}, Lmiui/os/AsyncTaskWithProgress$Listeners;->onClick(Landroid/content/DialogInterface;I)V

    .line 273
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 259
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress$Listeners;->DP:Lmiui/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiui/os/AsyncTaskWithProgress;->a(Lmiui/os/AsyncTaskWithProgress;)Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress$Listeners;->DP:Lmiui/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiui/os/AsyncTaskWithProgress;->a(Lmiui/os/AsyncTaskWithProgress;)Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 261
    if-eqz v0, :cond_0

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    if-ne p2, p1, :cond_0

    .line 262
    iget-object p1, p0, Lmiui/os/AsyncTaskWithProgress$Listeners;->DP:Lmiui/os/AsyncTaskWithProgress;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lmiui/os/AsyncTaskWithProgress;->cancel(Z)Z

    .line 265
    :cond_0
    return-void
.end method
