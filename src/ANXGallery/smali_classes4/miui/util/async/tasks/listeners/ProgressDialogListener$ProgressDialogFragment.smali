.class public Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;
.super Landroid/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/async/tasks/listeners/ProgressDialogListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressDialogFragment"
.end annotation


# instance fields
.field private LZ:Lmiui/util/async/tasks/listeners/ProgressDialogListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 284
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method ab(I)V
    .locals 2

    .line 303
    invoke-virtual {p0}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 304
    instance-of v1, v0, Lmiui/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 305
    check-cast v0, Lmiui/app/ProgressDialog;

    invoke-virtual {v0, p1}, Lmiui/app/ProgressDialog;->setMax(I)V

    .line 307
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 346
    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->LZ:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->LZ:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget-boolean v0, v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mCancelable:Z

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->LZ:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget-object v0, v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->LO:Ljava/lang/ref/WeakReference;

    .line 348
    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/Task;

    .line 350
    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {v0}, Lmiui/util/async/Task;->cancel()V

    .line 355
    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 356
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 396
    invoke-virtual {p0, p1}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 397
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 360
    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->LZ:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    if-nez v0, :cond_0

    .line 361
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    .line 364
    :cond_0
    new-instance p1, Lmiui/app/ProgressDialog;

    invoke-virtual {p0}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->LZ:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget v1, v1, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->wT:I

    invoke-direct {p1, v0, v1}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 365
    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->LZ:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget v0, v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->DG:I

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->LZ:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget v0, v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->DG:I

    invoke-virtual {p1, v0}, Lmiui/app/ProgressDialog;->setTitle(I)V

    goto :goto_0

    .line 368
    :cond_1
    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->LZ:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget-object v0, v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lmiui/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 371
    :goto_0
    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->LZ:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget v0, v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->DH:I

    if-eqz v0, :cond_2

    .line 372
    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->LZ:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget v0, v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->DH:I

    invoke-virtual {p1, v0}, Lmiui/app/ProgressDialog;->setTitle(I)V

    goto :goto_1

    .line 374
    :cond_2
    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->LZ:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget-object v0, v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 377
    :goto_1
    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->LZ:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget v0, v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->xi:I

    invoke-virtual {p1, v0}, Lmiui/app/ProgressDialog;->setProgressStyle(I)V

    .line 378
    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->LZ:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget-boolean v0, v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->xs:Z

    invoke-virtual {p1, v0}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 379
    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->LZ:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget-boolean v0, v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->xs:Z

    if-eqz v0, :cond_3

    .line 380
    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->LZ:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget v0, v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->DI:I

    invoke-virtual {p1, v0}, Lmiui/app/ProgressDialog;->setMax(I)V

    .line 381
    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->LZ:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget v0, v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->fr:I

    invoke-virtual {p1, v0}, Lmiui/app/ProgressDialog;->setProgress(I)V

    .line 384
    :cond_3
    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->LZ:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget-boolean v0, v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mCancelable:Z

    const/4 v1, -0x2

    if-eqz v0, :cond_4

    .line 385
    invoke-virtual {p1}, Lmiui/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v1, v0, p0}, Lmiui/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 386
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmiui/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_2

    .line 388
    :cond_4
    const/4 v0, 0x0

    move-object v2, v0

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v1, v0, v2}, Lmiui/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 389
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiui/app/ProgressDialog;->setCancelable(Z)V

    .line 391
    :goto_2
    return-object p1
.end method

.method public onResume()V
    .locals 3

    .line 321
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 322
    sget-object v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->LW:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ProgressDialogListener"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iput-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->LZ:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    .line 323
    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->LZ:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    if-nez v0, :cond_0

    .line 324
    invoke-virtual {p0}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 325
    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 326
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 327
    goto :goto_0

    .line 328
    :cond_0
    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->LZ:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iput-object p0, v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->LX:Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;

    .line 329
    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->LZ:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    invoke-virtual {p0}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iput-object v1, v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->bn:Landroid/app/FragmentManager;

    .line 331
    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->LZ:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iget-object v0, v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->LO:Ljava/lang/ref/WeakReference;

    .line 332
    const/4 v1, 0x0

    .line 333
    if-eqz v0, :cond_1

    .line 334
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lmiui/util/async/Task;

    .line 337
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lmiui/util/async/Task;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    .line 338
    :cond_2
    invoke-virtual {p0}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->dismiss()V

    .line 339
    sget-object v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->LW:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ProgressDialogListener"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    :cond_3
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 311
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 312
    iget-object p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->LZ:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    if-eqz p1, :cond_0

    .line 313
    iget-object p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->LZ:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    const/4 v0, 0x0

    iput-object v0, p1, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->LX:Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;

    .line 314
    iget-object p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->LZ:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    iput-object v0, p1, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->bn:Landroid/app/FragmentManager;

    .line 315
    iput-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->LZ:Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    .line 317
    :cond_0
    return-void
.end method

.method setIndeterminate(Z)V
    .locals 2

    .line 289
    invoke-virtual {p0}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 290
    instance-of v1, v0, Lmiui/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 291
    check-cast v0, Lmiui/app/ProgressDialog;

    invoke-virtual {v0, p1}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 293
    :cond_0
    return-void
.end method

.method setProgress(I)V
    .locals 2

    .line 296
    invoke-virtual {p0}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 297
    instance-of v1, v0, Lmiui/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 298
    check-cast v0, Lmiui/app/ProgressDialog;

    invoke-virtual {v0, p1}, Lmiui/app/ProgressDialog;->setProgress(I)V

    .line 300
    :cond_0
    return-void
.end method
