.class public Lmiui/app/AlertDialog$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

.field private wT:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 333
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmiui/app/AlertDialog;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 334
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    new-instance v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p1, p2}, Lmiui/app/AlertDialog;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    .line 349
    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    const/4 v0, 0x4

    if-lt p2, v0, :cond_0

    const/4 v0, 0x7

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mEditMode:Z

    .line 350
    iput p2, p0, Lmiui/app/AlertDialog$Builder;->wT:I

    .line 351
    return-void
.end method


# virtual methods
.method public addActionItem(III)Lmiui/app/AlertDialog$Builder;
    .locals 1

    .line 629
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v0, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lmiui/app/AlertDialog$Builder;->addActionItem(Ljava/lang/CharSequence;II)Lmiui/app/AlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addActionItem(Ljava/lang/CharSequence;II)Lmiui/app/AlertDialog$Builder;
    .locals 2

    .line 613
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v0, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mActionItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 614
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mActionItems:Ljava/util/ArrayList;

    .line 617
    :cond_0
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v0, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mActionItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$ActionItem;

    invoke-direct {v1, p1, p2, p3}, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$ActionItem;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    return-object p0
.end method

.method public create()Lmiui/app/AlertDialog;
    .locals 3

    .line 943
    new-instance v0, Lmiui/app/AlertDialog;

    iget-object v1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v1, v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mContext:Landroid/content/Context;

    iget v2, p0, Lmiui/app/AlertDialog$Builder;->wT:I

    invoke-direct {v0, v1, v2}, Lmiui/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 944
    iget-object v1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    invoke-static {v0}, Lmiui/app/AlertDialog;->a(Lmiui/app/AlertDialog;)Lcom/miui/internal/variable/AlertControllerWrapper;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->apply(Lcom/android/internal/app/AlertController;)V

    .line 945
    iget-object v1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-boolean v1, v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog;->setCancelable(Z)V

    .line 946
    iget-object v1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-boolean v1, v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCancelable:Z

    if-eqz v1, :cond_0

    .line 947
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 949
    :cond_0
    iget-object v1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v1, v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 950
    iget-object v1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v1, v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 951
    iget-object v1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v1, v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 952
    iget-object v1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v1, v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    .line 953
    iget-object v1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v1, v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 955
    :cond_1
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 362
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v0, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    .line 678
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 679
    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p2, p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 680
    return-object p0
.end method

.method public setCancelable(Z)Lmiui/app/AlertDialog$Builder;
    .locals 1

    .line 556
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-boolean p1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCancelable:Z

    .line 557
    return-object p0
.end method

.method public setCheckBox(ZLjava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    .line 426
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-boolean p1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mIsChecked:Z

    .line 427
    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p2, p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCheckBoxMessage:Ljava/lang/CharSequence;

    .line 428
    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    .line 696
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 697
    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p3, p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 698
    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p2, p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 699
    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    .line 396
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCustomTitleView:Landroid/view/View;

    .line 397
    return-object p0
.end method

.method public setIcon(I)Lmiui/app/AlertDialog$Builder;
    .locals 1

    .line 439
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput p1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mIconId:I

    .line 440
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    .line 454
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 455
    return-object p0
.end method

.method public setIconAttribute(I)Lmiui/app/AlertDialog$Builder;
    .locals 2

    .line 468
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v1, v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lmiui/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result p1

    iput p1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mIconId:I

    .line 469
    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;
    .locals 2

    .line 650
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v1, v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 651
    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p2, p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 652
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    .line 662
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 663
    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p2, p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 664
    return-object p0
.end method

.method public setMessage(I)Lmiui/app/AlertDialog$Builder;
    .locals 2

    .line 406
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v1, v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 407
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    .line 416
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 417
    return-object p0
.end method

.method public setMultiChoiceAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    .line 800
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 801
    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mIsMultiChoice:Z

    .line 802
    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p2, p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 803
    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lmiui/app/AlertDialog$Builder;
    .locals 2

    .line 722
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v1, v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 723
    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p3, p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 724
    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p2, p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCheckedItems:[Z

    .line 725
    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mIsMultiChoice:Z

    .line 726
    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    .line 776
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 777
    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p4, p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 778
    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p2, p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    .line 779
    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p3, p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 780
    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mIsMultiChoice:Z

    .line 781
    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    .line 748
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 749
    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p3, p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 750
    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p2, p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCheckedItems:[Z

    .line 751
    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mIsMultiChoice:Z

    .line 752
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;
    .locals 2

    .line 506
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v1, v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 507
    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p2, p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 508
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    .line 519
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 520
    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p2, p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 521
    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;
    .locals 2

    .line 532
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v1, v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 533
    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p2, p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 534
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    .line 545
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 546
    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p2, p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 547
    return-object p0
.end method

.method public setOnActionItemClickListener(Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    .line 639
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mOnActionItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 640
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    .line 567
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 568
    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    .line 578
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 579
    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    .line 908
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 909
    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    .line 600
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 601
    return-object p0
.end method

.method public setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    .line 589
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

    .line 590
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;
    .locals 2

    .line 480
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v1, v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 481
    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p2, p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 482
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    .line 493
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 494
    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p2, p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 495
    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;
    .locals 2

    .line 822
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v1, v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 823
    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p3, p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 824
    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput p2, p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCheckedItem:I

    .line 825
    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mIsSingleChoice:Z

    .line 826
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    .line 847
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 848
    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p4, p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 849
    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput p2, p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCheckedItem:I

    .line 850
    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p3, p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 851
    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mIsSingleChoice:Z

    .line 852
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    .line 892
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 893
    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p3, p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 894
    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput p2, p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCheckedItem:I

    .line 895
    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mIsSingleChoice:Z

    .line 896
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    .line 870
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 871
    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p3, p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 872
    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput p2, p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCheckedItem:I

    .line 873
    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mIsSingleChoice:Z

    .line 874
    return-object p0
.end method

.method public setTitle(I)Lmiui/app/AlertDialog$Builder;
    .locals 2

    .line 371
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v1, v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 372
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    .line 381
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 382
    return-object p0
.end method

.method public setView(I)Lmiui/app/AlertDialog$Builder;
    .locals 3

    .line 920
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v1, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v1, v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mView:Landroid/view/View;

    .line 921
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    .line 932
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->wS:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mView:Landroid/view/View;

    .line 933
    return-object p0
.end method

.method public show()Lmiui/app/AlertDialog;
    .locals 1

    .line 963
    invoke-virtual {p0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    .line 964
    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    .line 965
    return-object v0
.end method
