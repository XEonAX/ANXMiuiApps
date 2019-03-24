.class public Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/os/AsyncTaskWithProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressDialogFragment"
.end annotation


# instance fields
.field private DQ:Lmiui/os/AsyncTaskWithProgress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/os/AsyncTaskWithProgress<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 277
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static G(Ljava/lang/String;)Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;
    .locals 3

    .line 280
    new-instance v0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    invoke-direct {v0}, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;-><init>()V

    .line 281
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 282
    const-string v2, "task"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual {v0, v1}, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 284
    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 338
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->DQ:Lmiui/os/AsyncTaskWithProgress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->DQ:Lmiui/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiui/os/AsyncTaskWithProgress;->b(Lmiui/os/AsyncTaskWithProgress;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->DQ:Lmiui/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiui/os/AsyncTaskWithProgress;->c(Lmiui/os/AsyncTaskWithProgress;)Lmiui/os/AsyncTaskWithProgress$Listeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/os/AsyncTaskWithProgress$Listeners;->onCancel(Landroid/content/DialogInterface;)V

    .line 341
    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 342
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 294
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 295
    invoke-static {}, Lmiui/os/AsyncTaskWithProgress;->cI()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p0}, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "task"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/os/AsyncTaskWithProgress;

    iput-object p1, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->DQ:Lmiui/os/AsyncTaskWithProgress;

    .line 296
    iget-object p1, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->DQ:Lmiui/os/AsyncTaskWithProgress;

    if-nez p1, :cond_0

    .line 297
    invoke-virtual {p0}, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 298
    invoke-virtual {p1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 299
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    .line 301
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 349
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->DQ:Lmiui/os/AsyncTaskWithProgress;

    if-nez v0, :cond_0

    .line 350
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    .line 353
    :cond_0
    new-instance p1, Lmiui/app/ProgressDialog;

    invoke-virtual {p0}, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->DQ:Lmiui/os/AsyncTaskWithProgress;

    invoke-static {v1}, Lmiui/os/AsyncTaskWithProgress;->d(Lmiui/os/AsyncTaskWithProgress;)I

    move-result v1

    invoke-direct {p1, v0, v1}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 354
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->DQ:Lmiui/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiui/os/AsyncTaskWithProgress;->e(Lmiui/os/AsyncTaskWithProgress;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->DQ:Lmiui/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiui/os/AsyncTaskWithProgress;->e(Lmiui/os/AsyncTaskWithProgress;)I

    move-result v0

    invoke-virtual {p1, v0}, Lmiui/app/ProgressDialog;->setTitle(I)V

    goto :goto_0

    .line 357
    :cond_1
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->DQ:Lmiui/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiui/os/AsyncTaskWithProgress;->f(Lmiui/os/AsyncTaskWithProgress;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiui/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 359
    :goto_0
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->DQ:Lmiui/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiui/os/AsyncTaskWithProgress;->g(Lmiui/os/AsyncTaskWithProgress;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 360
    invoke-virtual {p0}, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->DQ:Lmiui/os/AsyncTaskWithProgress;

    invoke-static {v1}, Lmiui/os/AsyncTaskWithProgress;->g(Lmiui/os/AsyncTaskWithProgress;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 362
    :cond_2
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->DQ:Lmiui/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiui/os/AsyncTaskWithProgress;->h(Lmiui/os/AsyncTaskWithProgress;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 364
    :goto_1
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->DQ:Lmiui/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiui/os/AsyncTaskWithProgress;->i(Lmiui/os/AsyncTaskWithProgress;)I

    move-result v0

    invoke-virtual {p1, v0}, Lmiui/app/ProgressDialog;->setProgressStyle(I)V

    .line 365
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->DQ:Lmiui/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiui/os/AsyncTaskWithProgress;->j(Lmiui/os/AsyncTaskWithProgress;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 366
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->DQ:Lmiui/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiui/os/AsyncTaskWithProgress;->j(Lmiui/os/AsyncTaskWithProgress;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 367
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->DQ:Lmiui/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiui/os/AsyncTaskWithProgress;->k(Lmiui/os/AsyncTaskWithProgress;)I

    move-result v0

    invoke-virtual {p1, v0}, Lmiui/app/ProgressDialog;->setMax(I)V

    .line 368
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->DQ:Lmiui/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiui/os/AsyncTaskWithProgress;->l(Lmiui/os/AsyncTaskWithProgress;)I

    move-result v0

    invoke-virtual {p1, v0}, Lmiui/app/ProgressDialog;->setProgress(I)V

    .line 370
    :cond_3
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->DQ:Lmiui/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiui/os/AsyncTaskWithProgress;->b(Lmiui/os/AsyncTaskWithProgress;)Z

    move-result v0

    const/4 v1, -0x2

    if-eqz v0, :cond_4

    .line 371
    invoke-virtual {p1}, Lmiui/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->DQ:Lmiui/os/AsyncTaskWithProgress;

    invoke-static {v2}, Lmiui/os/AsyncTaskWithProgress;->c(Lmiui/os/AsyncTaskWithProgress;)Lmiui/os/AsyncTaskWithProgress$Listeners;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2}, Lmiui/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 372
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmiui/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_2

    .line 374
    :cond_4
    const/4 v0, 0x0

    move-object v2, v0

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v1, v0, v2}, Lmiui/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 375
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiui/app/ProgressDialog;->setCancelable(Z)V

    .line 377
    :goto_2
    return-object p1
.end method

.method public onStart()V
    .locals 1

    .line 308
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 309
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->DQ:Lmiui/os/AsyncTaskWithProgress;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->DQ:Lmiui/os/AsyncTaskWithProgress;

    invoke-static {v0, p0}, Lmiui/os/AsyncTaskWithProgress;->a(Lmiui/os/AsyncTaskWithProgress;Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;)Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    .line 312
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 319
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->DQ:Lmiui/os/AsyncTaskWithProgress;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->DQ:Lmiui/os/AsyncTaskWithProgress;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/os/AsyncTaskWithProgress;->a(Lmiui/os/AsyncTaskWithProgress;Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;)Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    .line 322
    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    .line 323
    return-void
.end method

.method setProgress(I)V
    .locals 2

    .line 326
    invoke-virtual {p0}, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 327
    instance-of v1, v0, Lmiui/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 328
    check-cast v0, Lmiui/app/ProgressDialog;

    .line 329
    invoke-virtual {v0, p1}, Lmiui/app/ProgressDialog;->setProgress(I)V

    .line 331
    :cond_0
    return-void
.end method
