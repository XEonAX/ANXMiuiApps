.class public abstract Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;
.super Ljava/lang/Object;
.source "StatusHandleHelper.java"

# interfaces
.implements Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/StatusHandleHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractErrorViewAdapter"
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p1, p0, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;->mContext:Landroid/content/Context;

    .line 267
    iget-object v0, p0, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 268
    return-void
.end method

.method private getInfoSubTitleForStatus(I)Ljava/lang/String;
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 531
    packed-switch p1, :pswitch_data_0

    .line 539
    const/4 v1, 0x0

    .line 541
    :goto_0
    return-object v1

    .line 533
    :pswitch_0
    const v0, 0x7f0c0445

    .line 541
    .local v0, "resId":I
    :goto_1
    iget-object v1, p0, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 536
    .end local v0    # "resId":I
    :pswitch_1
    const v0, 0x7f0c042b

    .line 537
    .restart local v0    # "resId":I
    goto :goto_1

    .line 531
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected bindFixActionForStatus(ILandroid/view/View;Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "clickView"    # Landroid/view/View;
    .param p3, "position"    # Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    .prologue
    .line 376
    packed-switch p1, :pswitch_data_0

    .line 416
    :pswitch_0
    new-instance v2, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter$3;

    invoke-direct {v2, p0}, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter$3;-><init>(Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    :goto_0
    return-void

    .line 378
    :pswitch_1
    new-instance v2, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter$1;-><init>(Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 389
    :pswitch_2
    new-instance v2, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter$2;

    invoke-direct {v2, p0}, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter$2;-><init>(Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 400
    :pswitch_3
    const-string v0, "com.miui.gallery.cloud.provider.SYNC_SETTINGS"

    .line 424
    .local v0, "action":Ljava/lang/String;
    :goto_1
    move-object v1, v0

    .line 425
    .local v1, "intentAction":Ljava/lang/String;
    new-instance v2, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter$4;

    invoke-direct {v2, p0, v1}, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter$4;-><init>(Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 403
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "intentAction":Ljava/lang/String;
    :pswitch_4
    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 406
    :pswitch_5
    const-string v0, "android.settings.SETTINGS"

    .line 407
    .restart local v0    # "action":Ljava/lang/String;
    goto :goto_1

    .line 409
    .end local v0    # "action":Ljava/lang/String;
    :pswitch_6
    const-string v0, "android.settings.WIFI_SETTINGS"

    .line 410
    .restart local v0    # "action":Ljava/lang/String;
    goto :goto_1

    .line 413
    .end local v0    # "action":Ljava/lang/String;
    :pswitch_7
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 376
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public bindInfoView(Landroid/view/View;ILcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "status"    # I
    .param p3, "position"    # Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    .prologue
    const v2, 0x7f120272

    .line 284
    if-nez p1, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    const v0, 0x7f12002d

    invoke-virtual {p0, p2, p3}, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;->getInfoTitleForStatus(ILcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;->setTextIfExist(Landroid/view/View;ILjava/lang/String;)V

    .line 287
    const v0, 0x7f120268

    invoke-direct {p0, p2}, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;->getInfoSubTitleForStatus(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;->setTextIfExist(Landroid/view/View;ILjava/lang/String;)V

    .line 288
    invoke-virtual {p0, p2, p3}, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;->shouldShowFixButtonForStatus(ILcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 289
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;->setVisibilityIfExist(Landroid/view/View;II)V

    .line 290
    invoke-virtual {p0, p2, p3}, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;->getFixButtonTextForStatus(ILcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v2, v0}, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;->setTextIfExist(Landroid/view/View;ILjava/lang/String;)V

    .line 294
    :goto_1
    const v0, 0x7f1200d8

    invoke-virtual {p0, p2, p3}, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;->getIconResForStatus(ILcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;->setIconIfExist(Landroid/view/View;II)V

    .line 295
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p2, v0, p3}, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;->bindFixActionForStatus(ILandroid/view/View;Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;)V

    goto :goto_0

    .line 292
    :cond_2
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v2, v0}, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;->setVisibilityIfExist(Landroid/view/View;II)V

    goto :goto_1
.end method

.method public bindLoadingView(Landroid/view/View;ILcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;)Landroid/view/View;
    .locals 5
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "status"    # I
    .param p3, "position"    # Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const v2, 0x7f120017

    const v1, 0x7f1200d8

    .line 339
    invoke-static {p2}, Lcom/miui/gallery/search/SearchConstants;->isErrorStatus(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 340
    invoke-virtual {p0, p2, p3}, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;->getIconResForStatus(ILcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;)I

    move-result v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;->setIconIfExist(Landroid/view/View;II)V

    .line 341
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 344
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 345
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 355
    :cond_1
    :goto_0
    return-object p1

    .line 348
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 349
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 351
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 352
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected getFixButtonTextForStatus(ILcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;)Ljava/lang/String;
    .locals 2
    .param p1, "status"    # I
    .param p2, "position"    # Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    .prologue
    .line 507
    sparse-switch p1, :sswitch_data_0

    .line 524
    const v0, 0x7f0c044f

    .line 526
    .local v0, "resId":I
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 509
    .end local v0    # "resId":I
    :sswitch_0
    const v0, 0x7f0c0444

    .line 510
    .restart local v0    # "resId":I
    goto :goto_0

    .line 512
    .end local v0    # "resId":I
    :sswitch_1
    const v0, 0x7f0c042a

    .line 513
    .restart local v0    # "resId":I
    goto :goto_0

    .line 515
    .end local v0    # "resId":I
    :sswitch_2
    const v0, 0x7f0c0451

    .line 516
    .restart local v0    # "resId":I
    goto :goto_0

    .line 518
    .end local v0    # "resId":I
    :sswitch_3
    const v0, 0x7f0c0450

    .line 519
    .restart local v0    # "resId":I
    goto :goto_0

    .line 521
    .end local v0    # "resId":I
    :sswitch_4
    const v0, 0x7f0c002a

    .line 522
    .restart local v0    # "resId":I
    goto :goto_0

    .line 507
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_3
        0xc -> :sswitch_4
    .end sparse-switch
.end method

.method protected getIconResForStatus(ILcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;)I
    .locals 1
    .param p1, "status"    # I
    .param p2, "position"    # Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    .prologue
    .line 481
    sget-object v0, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;->FULL_SCREEN:Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    if-ne p2, v0, :cond_0

    .line 482
    packed-switch p1, :pswitch_data_0

    .line 487
    const v0, 0x7f020256

    .line 492
    :goto_0
    return v0

    .line 485
    :pswitch_0
    const v0, 0x7f020255

    goto :goto_0

    .line 489
    :cond_0
    sget-object v0, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;->FOOTER:Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    if-ne p2, v0, :cond_1

    .line 490
    const v0, 0x7f020254

    goto :goto_0

    .line 492
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 482
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected getInfoItemView(Landroid/view/View;ILcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;)Landroid/view/View;
    .locals 3
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "status"    # I
    .param p3, "position"    # Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    .prologue
    const/4 v2, 0x0

    .line 435
    packed-switch p2, :pswitch_data_0

    .line 440
    iget-object v0, p0, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04012c

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 438
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040134

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 435
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected getInfoTitleForStatus(ILcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;)Ljava/lang/String;
    .locals 3
    .param p1, "status"    # I
    .param p2, "position"    # Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    .prologue
    .line 450
    sget-object v2, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;->FULL_SCREEN:Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    if-ne p2, v2, :cond_0

    const/4 v0, 0x1

    .line 451
    .local v0, "fullScreen":Z
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 475
    :pswitch_0
    if-eqz v0, :cond_4

    const v1, 0x7f0c0431

    .line 477
    .local v1, "resId":I
    :goto_1
    iget-object v2, p0, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 450
    .end local v0    # "fullScreen":Z
    .end local v1    # "resId":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 453
    .restart local v0    # "fullScreen":Z
    :pswitch_1
    if-eqz v0, :cond_1

    const v1, 0x7f0c0447

    .line 454
    .restart local v1    # "resId":I
    :goto_2
    goto :goto_1

    .line 453
    .end local v1    # "resId":I
    :cond_1
    const v1, 0x7f0c0446

    goto :goto_2

    .line 456
    :pswitch_2
    if-eqz v0, :cond_2

    const v1, 0x7f0c0429

    .line 457
    .restart local v1    # "resId":I
    :goto_3
    goto :goto_1

    .line 456
    .end local v1    # "resId":I
    :cond_2
    const v1, 0x7f0c042c

    goto :goto_3

    .line 459
    :pswitch_3
    const v1, 0x7f0c0454

    .line 460
    .restart local v1    # "resId":I
    goto :goto_1

    .line 462
    .end local v1    # "resId":I
    :pswitch_4
    if-eqz v0, :cond_3

    const v1, 0x7f0c042e

    .line 463
    .restart local v1    # "resId":I
    :goto_4
    goto :goto_1

    .line 462
    .end local v1    # "resId":I
    :cond_3
    const v1, 0x7f0c042f

    goto :goto_4

    .line 465
    :pswitch_5
    const v1, 0x7f0c044a

    .line 466
    .restart local v1    # "resId":I
    goto :goto_1

    .line 469
    .end local v1    # "resId":I
    :pswitch_6
    const v1, 0x7f0c002b

    .line 470
    .restart local v1    # "resId":I
    goto :goto_1

    .line 472
    .end local v1    # "resId":I
    :pswitch_7
    const v1, 0x7f0c0430

    .line 473
    .restart local v1    # "resId":I
    goto :goto_1

    .line 475
    .end local v1    # "resId":I
    :cond_4
    const v1, 0x7f0c0432

    goto :goto_1

    .line 451
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public getInfoView(Landroid/view/View;ILcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;)Landroid/view/View;
    .locals 1
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "status"    # I
    .param p3, "position"    # Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    .prologue
    .line 272
    invoke-static {p2}, Lcom/miui/gallery/search/SearchConstants;->isErrorStatus(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    const/4 v0, 0x0

    .line 279
    :goto_0
    return-object v0

    .line 274
    :cond_0
    sget-object v0, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;->FULL_SCREEN:Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    if-ne p3, v0, :cond_1

    :goto_1
    move-object v0, p1

    .line 279
    goto :goto_0

    .line 277
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;->getInfoItemView(Landroid/view/View;ILcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;)Landroid/view/View;

    move-result-object p1

    goto :goto_1
.end method

.method protected getLoadingItemView(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 445
    iget-object v0, p0, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04012e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getLoadingView(Landroid/view/View;ILcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;)Landroid/view/View;
    .locals 1
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "status"    # I
    .param p3, "position"    # Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    .prologue
    .line 329
    sget-object v0, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;->FULL_SCREEN:Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    if-ne p3, v0, :cond_0

    .line 334
    .end local p1    # "convertView":Landroid/view/View;
    :goto_0
    return-object p1

    .line 332
    .restart local p1    # "convertView":Landroid/view/View;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;->getLoadingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    goto :goto_0
.end method

.method public positionForBaseStatus(I)Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 360
    invoke-static {p1}, Lcom/miui/gallery/search/SearchConstants;->isErrorStatus(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    sget-object v0, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;->NONE:Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    .line 363
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;->HEADER:Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    goto :goto_0
.end method

.method public positionForResultStatus(I)Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 368
    invoke-static {p1}, Lcom/miui/gallery/search/SearchConstants;->isErrorStatus(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    sget-object v0, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;->NONE:Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    .line 371
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;->FOOTER:Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    goto :goto_0
.end method

.method protected setIconIfExist(Landroid/view/View;II)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "id"    # I
    .param p3, "iconRes"    # I

    .prologue
    .line 301
    if-lez p3, :cond_0

    .line 302
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 303
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 304
    check-cast v0, Landroid/widget/ImageView;

    .end local v0    # "view":Landroid/view/View;
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 307
    :cond_0
    return-void
.end method

.method protected setTextIfExist(Landroid/view/View;ILjava/lang/String;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "id"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 310
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 311
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 312
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 313
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 314
    .restart local v0    # "view":Landroid/view/View;
    :cond_1
    instance-of v1, v0, Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 315
    check-cast v0, Landroid/widget/Button;

    .end local v0    # "view":Landroid/view/View;
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected setVisibilityIfExist(Landroid/view/View;II)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "id"    # I
    .param p3, "visibility"    # I

    .prologue
    .line 321
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 322
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0, p3}, Landroid/view/View;->setVisibility(I)V

    .line 325
    :cond_0
    return-void
.end method

.method protected shouldShowFixButtonForStatus(ILcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;)Z
    .locals 1
    .param p1, "status"    # I
    .param p2, "position"    # Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    .prologue
    .line 496
    packed-switch p1, :pswitch_data_0

    .line 501
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 499
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 496
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
