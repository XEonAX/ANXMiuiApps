.class Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;
.super Landroid/app/Dialog;
.source "DeleteMediaDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/DeleteMediaDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FirstDeleteDialog"
.end annotation


# instance fields
.field private mCurOrientation:I

.field private mDeleteTipIcon:Landroid/view/View;

.field private mDeleteTitle:Landroid/view/View;

.field private mNegativeBtn:Landroid/widget/Button;

.field private mNegativeListener:Landroid/view/View$OnClickListener;

.field private mNegativeRes:I

.field private mPositiveBtn:Landroid/widget/Button;

.field private mPositiveListener:Landroid/view/View$OnClickListener;

.field private mPositiveRes:I

.field private mSubTitle:Landroid/widget/TextView;

.field private mSubTitleRes:I

.field private mTipOne:Landroid/widget/TextView;

.field private mTipOneText:Ljava/lang/String;

.field private mTipOneVisibility:I

.field private mTipThree:Landroid/widget/TextView;

.field private mTipThreeText:Ljava/lang/String;

.field private mTipThreeVisibility:I

.field private mTipTwo:Landroid/widget/TextView;

.field private mTipTwoText:Ljava/lang/String;

.field private mTipTwoVisibility:I

.field final synthetic this$0:Lcom/miui/gallery/ui/DeleteMediaDialogFragment;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/DeleteMediaDialogFragment;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 370
    iput-object p1, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->this$0:Lcom/miui/gallery/ui/DeleteMediaDialogFragment;

    .line 371
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 358
    iput v0, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mTipOneVisibility:I

    .line 359
    iput v0, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mTipTwoVisibility:I

    .line 360
    iput v0, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mTipThreeVisibility:I

    .line 368
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mCurOrientation:I

    .line 372
    return-void
.end method

.method private setText(Landroid/widget/TextView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "resId"    # I

    .prologue
    .line 427
    if-lez p2, :cond_0

    .line 428
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 430
    :cond_0
    return-void
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 433
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    :cond_0
    return-void
.end method


# virtual methods
.method public changeOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 521
    iput p1, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mCurOrientation:I

    .line 522
    iget-object v0, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mDeleteTitle:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 523
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 524
    iget-object v0, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mDeleteTipIcon:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 525
    iget-object v0, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mDeleteTitle:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mDeleteTipIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mDeleteTitle:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 504
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 518
    :goto_0
    return-void

    .line 506
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mPositiveListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mPositiveListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 509
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->dismiss()V

    goto :goto_0

    .line 512
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mNegativeListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 513
    iget-object v0, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mNegativeListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 515
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->dismiss()V

    goto :goto_0

    .line 504
    :pswitch_data_0
    .packed-switch 0x7f12017a
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 376
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 377
    const v2, 0x7f040083

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->setContentView(I)V

    .line 378
    const v2, 0x7f120174

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mDeleteTipIcon:Landroid/view/View;

    .line 379
    const v2, 0x7f120175

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mDeleteTitle:Landroid/view/View;

    .line 380
    const v2, 0x7f120176

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mSubTitle:Landroid/widget/TextView;

    .line 381
    const v2, 0x7f120177

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mTipOne:Landroid/widget/TextView;

    .line 382
    const v2, 0x7f120178

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mTipTwo:Landroid/widget/TextView;

    .line 383
    const v2, 0x7f120179

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mTipThree:Landroid/widget/TextView;

    .line 384
    const v2, 0x7f12017b

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mPositiveBtn:Landroid/widget/Button;

    .line 385
    const v2, 0x7f12017a

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mNegativeBtn:Landroid/widget/Button;

    .line 386
    iget-object v2, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mSubTitle:Landroid/widget/TextView;

    iget v3, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mSubTitleRes:I

    invoke-direct {p0, v2, v3}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->setText(Landroid/widget/TextView;I)V

    .line 387
    iget-object v2, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mPositiveBtn:Landroid/widget/Button;

    iget v3, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mPositiveRes:I

    invoke-direct {p0, v2, v3}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->setText(Landroid/widget/TextView;I)V

    .line 388
    iget-object v2, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mNegativeBtn:Landroid/widget/Button;

    iget v3, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mNegativeRes:I

    invoke-direct {p0, v2, v3}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->setText(Landroid/widget/TextView;I)V

    .line 389
    iget-object v2, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mTipOne:Landroid/widget/TextView;

    iget v3, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mTipOneVisibility:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 390
    iget-object v2, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mTipTwo:Landroid/widget/TextView;

    iget v3, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mTipTwoVisibility:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 391
    iget-object v2, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mTipThree:Landroid/widget/TextView;

    iget v3, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mTipThreeVisibility:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 392
    iget-object v2, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mTipOne:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mTipOneText:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 393
    iget-object v2, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mTipTwo:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mTipTwoText:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 394
    iget-object v2, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mTipThree:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mTipThreeText:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 395
    iget-object v2, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mPositiveBtn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    iget-object v2, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mNegativeBtn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    invoke-virtual {p0}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 398
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 399
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x50

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 400
    const/4 v2, -0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 401
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 402
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 403
    iget v2, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mCurOrientation:I

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->changeOrientation(I)V

    .line 404
    return-void
.end method

.method public setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;
    .locals 1
    .param p1, "resId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 417
    iget-object v0, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mNegativeBtn:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 418
    iput p1, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mNegativeRes:I

    .line 422
    :goto_0
    iput-object p2, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mNegativeListener:Landroid/view/View$OnClickListener;

    .line 423
    return-object p0

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mNegativeBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method public setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;
    .locals 1
    .param p1, "resId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mPositiveBtn:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 408
    iput p1, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mPositiveRes:I

    .line 412
    :goto_0
    iput-object p2, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mPositiveListener:Landroid/view/View$OnClickListener;

    .line 413
    return-object p0

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mPositiveBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method public setSubTitle(I)Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 439
    iget-object v0, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mSubTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 440
    iput p1, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mSubTitleRes:I

    .line 444
    :goto_0
    return-object p0

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mSubTitle:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mSubTitleRes:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public setTipText(ILjava/lang/String;)Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;
    .locals 1
    .param p1, "which"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 476
    packed-switch p1, :pswitch_data_0

    .line 499
    :goto_0
    return-object p0

    .line 478
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mTipOne:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 479
    iput-object p2, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mTipOneText:Ljava/lang/String;

    goto :goto_0

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mTipOne:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 485
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mTipTwo:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 486
    iput-object p2, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mTipTwoText:Ljava/lang/String;

    goto :goto_0

    .line 488
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mTipTwo:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 492
    :pswitch_2
    iget-object v0, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mTipThree:Landroid/widget/TextView;

    if-nez v0, :cond_2

    .line 493
    iput-object p2, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mTipThreeText:Ljava/lang/String;

    goto :goto_0

    .line 495
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mTipThree:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 476
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setTipVisibility(IZ)Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;
    .locals 2
    .param p1, "which"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 448
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 449
    .local v0, "visibility":I
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 472
    :goto_1
    return-object p0

    .line 448
    .end local v0    # "visibility":I
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 451
    .restart local v0    # "visibility":I
    :pswitch_0
    iget-object v1, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mTipOne:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 452
    iput v0, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mTipOneVisibility:I

    goto :goto_1

    .line 454
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mTipOne:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 458
    :pswitch_1
    iget-object v1, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mTipTwo:Landroid/widget/TextView;

    if-nez v1, :cond_2

    .line 459
    iput v0, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mTipTwoVisibility:I

    goto :goto_1

    .line 461
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mTipTwo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 465
    :pswitch_2
    iget-object v1, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mTipThree:Landroid/widget/TextView;

    if-nez v1, :cond_3

    .line 466
    iput v0, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mTipThreeVisibility:I

    goto :goto_1

    .line 468
    :cond_3
    iget-object v1, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->mTipThree:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 449
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
