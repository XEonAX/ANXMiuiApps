.class public Lmiui/widget/ArrowPopupWindow;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# static fields
.field public static final ARROW_BOTTOM_MODE:I = 0x0

.field public static final ARROW_LEFT_MODE:I = 0x3

.field public static final ARROW_RIGHT_MODE:I = 0x2

.field public static final ARROW_TOP_MODE:I = 0x1


# instance fields
.field private OT:I

.field protected mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 93
    sget v0, Lcom/miui/internal/R$style;->Widget_PopupWindow:I

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lmiui/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 117
    iput-object p1, p0, Lmiui/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    .line 118
    invoke-direct {p0}, Lmiui/widget/ArrowPopupWindow;->eg()V

    .line 119
    return-void
.end method

.method private eg()V
    .locals 4

    .line 134
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$dimen;->arrow_popup_window_list_max_height:I

    .line 135
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lmiui/widget/ArrowPopupWindow;->OT:I

    .line 136
    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 137
    sget v1, Lcom/miui/internal/R$layout;->arrow_popup_view:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ArrowPopupView;

    iput-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    .line 139
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 141
    nop

    .line 142
    invoke-direct {p0}, Lmiui/widget/ArrowPopupWindow;->eh()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 143
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 144
    iget-object v2, p0, Lmiui/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 145
    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 146
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    .line 148
    :cond_0
    move v0, v1

    :goto_0
    invoke-super {p0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 149
    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 151
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lmiui/widget/ArrowPopupWindow;->setSoftInputMode(I)V

    .line 152
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p0}, Lcom/miui/internal/widget/ArrowPopupView;->setArrowPopupWindow(Lmiui/widget/ArrowPopupWindow;)V

    .line 153
    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getDefaultOnTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 156
    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->onPrepareWindow()V

    .line 158
    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->update()V

    .line 159
    return-void
.end method

.method private eh()Z
    .locals 3

    .line 277
    nop

    .line 278
    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$integer;->window_translucent_status:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/miui/internal/R$attr;->windowTranslucentStatus:I

    invoke-static {v0, v2, v1}, Lmiui/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    .line 278
    :cond_0
    return v1
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 0

    .line 298
    if-eqz p1, :cond_0

    .line 299
    iget-object p1, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {p1}, Lcom/miui/internal/widget/ArrowPopupView;->animateToDismiss()V

    goto :goto_0

    .line 301
    :cond_0
    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->dismiss()V

    .line 303
    :goto_0
    return-void
.end method

.method public getArrowMode()I
    .locals 1

    .line 243
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ArrowPopupView;->getArrowMode()I

    move-result v0

    return v0
.end method

.method public getContentHeight()I
    .locals 1

    .line 412
    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 413
    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    .line 416
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 219
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ArrowPopupView;->getContentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getContentWidth()I
    .locals 1

    .line 355
    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 356
    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0

    .line 359
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 127
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDefaultOnTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .line 526
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 399
    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getContentHeight()I

    move-result v0

    return v0
.end method

.method protected getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 167
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 168
    return-object v0
.end method

.method public getNegativeButton()Landroid/widget/Button;
    .locals 1

    .line 499
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ArrowPopupView;->getNegativeButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getPositiveButton()Landroid/widget/Button;
    .locals 1

    .line 470
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ArrowPopupView;->getPositiveButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 342
    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getContentWidth()I

    move-result v0

    return v0
.end method

.method protected onPrepareWindow()V
    .locals 0

    .line 177
    return-void
.end method

.method public setArrowMode(I)V
    .locals 1

    .line 252
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ArrowPopupView;->setArrowMode(I)V

    .line 253
    return-void
.end method

.method public setContentHeight(I)V
    .locals 2

    .line 442
    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 443
    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_0

    iget v1, p0, Lmiui/widget/ArrowPopupWindow;->OT:I

    if-le p1, v1, :cond_0

    .line 445
    iget p1, p0, Lmiui/widget/ArrowPopupWindow;->OT:I

    .line 447
    :cond_0
    if-eqz v0, :cond_1

    .line 448
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 449
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 450
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 452
    :cond_1
    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    .line 234
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ArrowPopupView;->setContentView(I)V

    .line 235
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ArrowPopupView;->setContentView(Landroid/view/View;)V

    .line 193
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 208
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/ArrowPopupView;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    return-void
.end method

.method public setContentWidth(I)V
    .locals 2

    .line 385
    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 386
    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 388
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 389
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    :cond_0
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 426
    invoke-virtual {p0, p1}, Lmiui/widget/ArrowPopupWindow;->setContentHeight(I)V

    .line 427
    return-void
.end method

.method public setNegativeButton(ILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 490
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lmiui/widget/ArrowPopupWindow;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 491
    return-void
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 480
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/ArrowPopupView;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 481
    return-void
.end method

.method public setPositiveButton(ILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 461
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lmiui/widget/ArrowPopupWindow;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 462
    return-void
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 333
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/ArrowPopupView;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 334
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 517
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiui/widget/ArrowPopupWindow;->setTitle(Ljava/lang/CharSequence;)V

    .line 518
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 508
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ArrowPopupView;->setTitle(Ljava/lang/CharSequence;)V

    .line 509
    return-void
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 1

    .line 323
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ArrowPopupView;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 324
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 369
    invoke-virtual {p0, p1}, Lmiui/widget/ArrowPopupWindow;->setContentWidth(I)V

    .line 370
    return-void
.end method

.method public show(Landroid/view/View;II)V
    .locals 1

    .line 266
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ArrowPopupView;->setAnchor(Landroid/view/View;)V

    .line 267
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p2, p3}, Lcom/miui/internal/widget/ArrowPopupView;->setOffset(II)V

    .line 270
    invoke-static {}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;->get()Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;

    move-result-object p2

    invoke-direct {p0}, Lmiui/widget/ArrowPopupWindow;->eh()Z

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;->setLayoutInScreenEnabled(Landroid/widget/PopupWindow;Z)V

    .line 272
    const/4 p2, 0x0

    const p3, 0x800033

    invoke-virtual {p0, p1, p3, p2, p2}, Lmiui/widget/ArrowPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 273
    iget-object p1, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {p1}, Lcom/miui/internal/widget/ArrowPopupView;->animateToShow()V

    .line 274
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 0

    .line 286
    invoke-virtual {p0, p1, p2, p3}, Lmiui/widget/ArrowPopupWindow;->show(Landroid/view/View;II)V

    .line 287
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 0

    .line 312
    invoke-virtual {p0, p1, p2, p3}, Lmiui/widget/ArrowPopupWindow;->show(Landroid/view/View;II)V

    .line 313
    return-void
.end method

.method public update(IIIIZ)V
    .locals 6

    .line 317
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/4 v4, -0x2

    move-object v0, p0

    move v5, p5

    invoke-super/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 318
    invoke-virtual {p0, p4}, Lmiui/widget/ArrowPopupWindow;->setContentHeight(I)V

    .line 319
    return-void
.end method
