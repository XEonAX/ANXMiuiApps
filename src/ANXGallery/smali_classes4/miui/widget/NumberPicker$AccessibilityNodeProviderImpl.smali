.class Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessibilityNodeProviderImpl"
.end annotation


# static fields
.field private static final UNDEFINED:I = -0x80000000

.field private static final Xh:I = 0x1

.field private static final Xi:I = 0x2

.field private static final Xj:I = 0x3


# instance fields
.field private final Mz:Landroid/graphics/Rect;

.field final synthetic Xg:Lmiui/widget/NumberPicker;

.field private final Xk:[I

.field private Xl:I


# direct methods
.method constructor <init>(Lmiui/widget/NumberPicker;)V
    .locals 0

    .line 2226
    iput-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 2235
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Mz:Landroid/graphics/Rect;

    .line 2237
    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xk:[I

    .line 2239
    const/high16 p1, -0x80000000

    iput p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xl:I

    return-void
.end method

.method private a(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    .line 2539
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2540
    const-class v1, Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2541
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2542
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 2543
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 2544
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 2545
    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 2546
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 2547
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 2548
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Mz:Landroid/graphics/Rect;

    .line 2549
    invoke-virtual {v1, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2550
    iget-object p3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {p3}, Lmiui/widget/NumberPicker;->getVisibility()I

    move-result p3

    const/4 p4, 0x0

    if-nez p3, :cond_0

    move p3, p2

    goto :goto_0

    :cond_0
    move p3, p4

    :goto_0
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 2551
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2552
    nop

    .line 2553
    iget-object p3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xk:[I

    .line 2554
    iget-object p5, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {p5, p3}, Lmiui/widget/NumberPicker;->getLocationOnScreen([I)V

    .line 2555
    aget p4, p3, p4

    aget p2, p3, p2

    invoke-virtual {v1, p4, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 2556
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2558
    iget p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xl:I

    if-eq p2, p1, :cond_1

    .line 2559
    const/16 p2, 0x40

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2561
    :cond_1
    iget p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xl:I

    if-ne p2, p1, :cond_2

    .line 2562
    const/16 p1, 0x80

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2564
    :cond_2
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2565
    const/16 p1, 0x10

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2568
    :cond_3
    return-object v0
.end method

.method private a(IILjava/lang/String;)V
    .locals 2

    .line 2469
    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 2470
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2471
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    .line 2472
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2473
    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2474
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2475
    iget-object p3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {p3}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 2476
    iget-object p3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {p2, p3, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2477
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    iget-object p3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {p1, p3, p2}, Lmiui/widget/NumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2479
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .line 2483
    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 2485
    :pswitch_0
    invoke-direct {p0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->fv()Ljava/lang/String;

    move-result-object p2

    .line 2486
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2487
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2488
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2490
    :cond_0
    return-void

    .line 2492
    :pswitch_1
    iget-object p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {p2}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    .line 2493
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 2494
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2495
    invoke-virtual {p0, v1}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2496
    return-void

    .line 2498
    :cond_1
    iget-object p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {p2}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    .line 2499
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2500
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2501
    invoke-virtual {p0, v1}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2502
    return-void

    .line 2504
    :cond_2
    goto :goto_0

    .line 2506
    :pswitch_2
    invoke-direct {p0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->fw()Ljava/lang/String;

    move-result-object p2

    .line 2507
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2508
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2509
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2511
    :cond_3
    return-void

    .line 2513
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private az(I)V
    .locals 2

    .line 2458
    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 2459
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2460
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 2461
    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2462
    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2463
    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2464
    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1, p1}, Lmiui/widget/NumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2466
    :cond_0
    return-void
.end method

.method private e(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    .line 2517
    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2518
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 2519
    iget v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xl:I

    if-eq v1, v2, :cond_0

    .line 2520
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2522
    :cond_0
    iget v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xl:I

    if-ne v1, v2, :cond_1

    .line 2523
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2525
    :cond_1
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Mz:Landroid/graphics/Rect;

    .line 2526
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2527
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getVisibility()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-nez p1, :cond_2

    move p1, p3

    goto :goto_0

    :cond_2
    move p1, p2

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 2528
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2529
    nop

    .line 2530
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xk:[I

    .line 2531
    iget-object p4, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {p4, p1}, Lmiui/widget/NumberPicker;->getLocationOnScreen([I)V

    .line 2532
    aget p2, p1, p2

    aget p1, p1, p3

    invoke-virtual {v1, p2, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 2533
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2534
    return-object v0
.end method

.method private f(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    .line 2573
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2574
    const-class v1, Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2575
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2576
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    .line 2578
    invoke-direct {p0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->ft()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2579
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2581
    :cond_0
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2582
    invoke-direct {p0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->fu()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2583
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2586
    :cond_1
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 2587
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 2588
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2590
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Mz:Landroid/graphics/Rect;

    .line 2592
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2593
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2595
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getVisibility()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_2

    move p1, v2

    goto :goto_0

    :cond_2
    move p1, p2

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 2597
    nop

    .line 2598
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xk:[I

    .line 2599
    iget-object p3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {p3, p1}, Lmiui/widget/NumberPicker;->getLocationOnScreen([I)V

    .line 2600
    aget p2, p1, p2

    aget p1, p1, v2

    invoke-virtual {v1, p2, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 2601
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2603
    iget p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xl:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_3

    .line 2604
    const/16 p1, 0x40

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2606
    :cond_3
    iget p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xl:I

    if-ne p1, p2, :cond_4

    .line 2607
    const/16 p1, 0x80

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2609
    :cond_4
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 2610
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getValue()I

    move-result p1

    iget-object p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {p2}, Lmiui/widget/NumberPicker;->getMaxValue()I

    move-result p2

    if-ge p1, p2, :cond_6

    .line 2611
    :cond_5
    const/16 p1, 0x1000

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2613
    :cond_6
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getValue()I

    move-result p1

    iget-object p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {p2}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result p2

    if-le p1, p2, :cond_8

    .line 2614
    :cond_7
    const/16 p1, 0x2000

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2618
    :cond_8
    return-object v0
.end method

.method private ft()Z
    .locals 2

    .line 2622
    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private fu()Z
    .locals 2

    .line 2626
    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getMaxValue()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private fv()Ljava/lang/String;
    .locals 3

    .line 2630
    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->j(Lmiui/widget/NumberPicker;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2631
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->k(Lmiui/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2632
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {v1, v0}, Lmiui/widget/NumberPicker;->c(Lmiui/widget/NumberPicker;I)I

    move-result v0

    .line 2634
    :cond_0
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->l(Lmiui/widget/NumberPicker;)I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 2635
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->b(Lmiui/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {v1, v0}, Lmiui/widget/NumberPicker;->d(Lmiui/widget/NumberPicker;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2636
    :cond_1
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->b(Lmiui/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {v2}, Lmiui/widget/NumberPicker;->l(Lmiui/widget/NumberPicker;)I

    move-result v2

    sub-int/2addr v0, v2

    aget-object v0, v1, v0

    .line 2635
    :goto_0
    return-object v0

    .line 2638
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private fw()Ljava/lang/String;
    .locals 3

    .line 2642
    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->j(Lmiui/widget/NumberPicker;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 2643
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->k(Lmiui/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2644
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {v1, v0}, Lmiui/widget/NumberPicker;->c(Lmiui/widget/NumberPicker;I)I

    move-result v0

    .line 2646
    :cond_0
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->c(Lmiui/widget/NumberPicker;)I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 2647
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->b(Lmiui/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {v1, v0}, Lmiui/widget/NumberPicker;->d(Lmiui/widget/NumberPicker;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2648
    :cond_1
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->b(Lmiui/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {v2}, Lmiui/widget/NumberPicker;->l(Lmiui/widget/NumberPicker;)I

    move-result v2

    sub-int/2addr v0, v2

    aget-object v0, v1, v0

    .line 2647
    :goto_0
    return-object v0

    .line 2650
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7

    .line 2243
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 2263
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    .line 2248
    :pswitch_0
    const/4 v1, 0x3

    .line 2249
    invoke-direct {p0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->fv()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getScrollX()I

    move-result v3

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getScrollY()I

    move-result v4

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    .line 2250
    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v0

    iget-object v5, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {v5}, Lmiui/widget/NumberPicker;->getLeft()I

    move-result v5

    sub-int/2addr v0, v5

    add-int v5, p1, v0

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    .line 2251
    invoke-static {p1}, Lmiui/widget/NumberPicker;->g(Lmiui/widget/NumberPicker;)I

    move-result p1

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->i(Lmiui/widget/NumberPicker;)I

    move-result v0

    add-int v6, p1, v0

    .line 2248
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->a(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    .line 2253
    :pswitch_1
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    .line 2254
    invoke-static {v0}, Lmiui/widget/NumberPicker;->g(Lmiui/widget/NumberPicker;)I

    move-result v0

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->i(Lmiui/widget/NumberPicker;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    .line 2255
    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {v3}, Lmiui/widget/NumberPicker;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iget-object v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    .line 2256
    invoke-static {v2}, Lmiui/widget/NumberPicker;->e(Lmiui/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {v3}, Lmiui/widget/NumberPicker;->i(Lmiui/widget/NumberPicker;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 2253
    invoke-direct {p0, p1, v0, v1, v2}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->e(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    .line 2258
    :pswitch_2
    const/4 v1, 0x1

    .line 2259
    invoke-direct {p0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->fw()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getScrollX()I

    move-result v3

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    .line 2260
    invoke-static {p1}, Lmiui/widget/NumberPicker;->e(Lmiui/widget/NumberPicker;)I

    move-result p1

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->i(Lmiui/widget/NumberPicker;)I

    move-result v0

    sub-int v4, p1, v0

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    .line 2261
    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v0

    iget-object v5, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {v5}, Lmiui/widget/NumberPicker;->getLeft()I

    move-result v5

    sub-int/2addr v0, v5

    add-int v5, p1, v0

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getScrollY()I

    move-result p1

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getBottom()I

    move-result v0

    iget-object v6, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {v6}, Lmiui/widget/NumberPicker;->getTop()I

    move-result v6

    sub-int/2addr v0, v6

    add-int v6, p1, v0

    .line 2258
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->a(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    .line 2245
    :cond_0
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getScrollY()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    .line 2246
    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {v3}, Lmiui/widget/NumberPicker;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iget-object v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Lmiui/widget/NumberPicker;->getScrollY()I

    move-result v2

    iget-object v3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {v3}, Lmiui/widget/NumberPicker;->getBottom()I

    move-result v3

    iget-object v4, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {v4}, Lmiui/widget/NumberPicker;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 2245
    invoke-direct {p0, p1, v0, v1, v2}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->f(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 2269
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2270
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 2272
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2273
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2274
    const/4 v2, -0x1

    if-eq p2, v2, :cond_1

    packed-switch p2, :pswitch_data_0

    .line 2292
    invoke-super {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 2287
    :pswitch_0
    invoke-direct {p0, v0, p2, v1}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->a(Ljava/lang/String;ILjava/util/List;)V

    .line 2289
    return-object v1

    .line 2276
    :cond_1
    const/4 p1, 0x3

    invoke-direct {p0, v0, p1, v1}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->a(Ljava/lang/String;ILjava/util/List;)V

    .line 2278
    const/4 p1, 0x2

    invoke-direct {p0, v0, p1, v1}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->a(Ljava/lang/String;ILjava/util/List;)V

    .line 2280
    const/4 p1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->a(Ljava/lang/String;ILjava/util/List;)V

    .line 2282
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public o(II)V
    .locals 1

    .line 2438
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2440
    :pswitch_0
    invoke-direct {p0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->ft()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2441
    nop

    .line 2442
    invoke-direct {p0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->fv()Ljava/lang/String;

    move-result-object v0

    .line 2441
    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->a(IILjava/lang/String;)V

    goto :goto_0

    .line 2446
    :pswitch_1
    invoke-direct {p0, p2}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->az(I)V

    .line 2447
    goto :goto_0

    .line 2449
    :pswitch_2
    invoke-direct {p0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->fu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2450
    nop

    .line 2451
    invoke-direct {p0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->fw()Ljava/lang/String;

    move-result-object v0

    .line 2450
    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->a(IILjava/lang/String;)V

    .line 2455
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 8

    .line 2297
    const/4 v0, -0x1

    const/high16 v1, -0x80000000

    const/16 v2, 0x80

    const/16 v3, 0x40

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p1, v0, :cond_15

    const v0, 0x8000

    const/high16 v6, 0x10000

    const/16 v7, 0x10

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 2403
    :pswitch_0
    if-eq p2, v7, :cond_4

    if-eq p2, v3, :cond_2

    if-eq p2, v2, :cond_0

    .line 2432
    return v5

    .line 2423
    :cond_0
    iget p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xl:I

    if-ne p2, p1, :cond_1

    .line 2424
    iput v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xl:I

    .line 2425
    invoke-virtual {p0, p1, v6}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->o(II)V

    .line 2427
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    iget-object p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {p2}, Lmiui/widget/NumberPicker;->getRight()I

    move-result p2

    iget-object p3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {p3}, Lmiui/widget/NumberPicker;->g(Lmiui/widget/NumberPicker;)I

    move-result p3

    invoke-virtual {p1, v5, v5, p2, p3}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    .line 2428
    return v4

    .line 2430
    :cond_1
    return v5

    .line 2414
    :cond_2
    iget p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xl:I

    if-eq p2, p1, :cond_3

    .line 2415
    iput p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xl:I

    .line 2416
    invoke-virtual {p0, p1, v0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->o(II)V

    .line 2418
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    iget-object p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {p2}, Lmiui/widget/NumberPicker;->getRight()I

    move-result p2

    iget-object p3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {p3}, Lmiui/widget/NumberPicker;->g(Lmiui/widget/NumberPicker;)I

    move-result p3

    invoke-virtual {p1, v5, v5, p2, p3}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    .line 2419
    return v4

    .line 2421
    :cond_3
    return v5

    .line 2405
    :cond_4
    iget-object p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {p2}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 2406
    if-ne p1, v4, :cond_5

    .line 2407
    move v5, v4

    goto :goto_0

    .line 2406
    :cond_5
    nop

    .line 2407
    :goto_0
    iget-object p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {p2, v5}, Lmiui/widget/NumberPicker;->c(Lmiui/widget/NumberPicker;Z)V

    .line 2408
    invoke-virtual {p0, p1, v4}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->o(II)V

    .line 2410
    return v4

    .line 2412
    :cond_6
    return v5

    .line 2330
    :pswitch_1
    if-eq p2, v7, :cond_d

    if-eq p2, v3, :cond_b

    if-eq p2, v2, :cond_9

    packed-switch p2, :pswitch_data_1

    .line 2368
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {p1}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/widget/EditText;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 2337
    :pswitch_2
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {p1}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 2338
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {p1}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 2339
    return v4

    .line 2341
    :cond_7
    return v5

    .line 2332
    :pswitch_3
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {p1}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-nez p1, :cond_8

    .line 2333
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {p1}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    move-result p1

    return p1

    .line 2371
    :cond_8
    return v5

    .line 2359
    :cond_9
    iget p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xl:I

    if-ne p2, p1, :cond_a

    .line 2360
    iput v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xl:I

    .line 2361
    invoke-virtual {p0, p1, v6}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->o(II)V

    .line 2363
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {p1}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->invalidate()V

    .line 2364
    return v4

    .line 2366
    :cond_a
    return v5

    .line 2350
    :cond_b
    iget p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xl:I

    if-eq p2, p1, :cond_c

    .line 2351
    iput p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xl:I

    .line 2352
    invoke-virtual {p0, p1, v0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->o(II)V

    .line 2354
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {p1}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->invalidate()V

    .line 2355
    return v4

    .line 2357
    :cond_c
    return v5

    .line 2344
    :cond_d
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 2345
    return v4

    .line 2347
    :cond_e
    return v5

    .line 2373
    :pswitch_4
    if-eq p2, v7, :cond_13

    if-eq p2, v3, :cond_11

    if-eq p2, v2, :cond_f

    .line 2401
    return v5

    .line 2392
    :cond_f
    iget p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xl:I

    if-ne p2, p1, :cond_10

    .line 2393
    iput v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xl:I

    .line 2394
    invoke-virtual {p0, p1, v6}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->o(II)V

    .line 2396
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    iget-object p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {p2}, Lmiui/widget/NumberPicker;->e(Lmiui/widget/NumberPicker;)I

    move-result p2

    iget-object p3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {p3}, Lmiui/widget/NumberPicker;->getRight()I

    move-result p3

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getBottom()I

    move-result v0

    invoke-virtual {p1, v5, p2, p3, v0}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    .line 2397
    return v4

    .line 2399
    :cond_10
    return v5

    .line 2383
    :cond_11
    iget p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xl:I

    if-eq p2, p1, :cond_12

    .line 2384
    iput p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xl:I

    .line 2385
    invoke-virtual {p0, p1, v0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->o(II)V

    .line 2387
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    iget-object p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {p2}, Lmiui/widget/NumberPicker;->e(Lmiui/widget/NumberPicker;)I

    move-result p2

    iget-object p3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {p3}, Lmiui/widget/NumberPicker;->getRight()I

    move-result p3

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getBottom()I

    move-result v0

    invoke-virtual {p1, v5, p2, p3, v0}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    .line 2388
    return v4

    .line 2390
    :cond_12
    return v5

    .line 2375
    :cond_13
    iget-object p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {p2}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_14

    .line 2376
    iget-object p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {p2, v4}, Lmiui/widget/NumberPicker;->c(Lmiui/widget/NumberPicker;Z)V

    .line 2377
    invoke-virtual {p0, p1, v4}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->o(II)V

    .line 2379
    return v4

    .line 2381
    :cond_14
    return v5

    .line 2299
    :cond_15
    if-eq p2, v3, :cond_1e

    if-eq p2, v2, :cond_1c

    const/16 v0, 0x1000

    if-eq p2, v0, :cond_19

    const/16 v0, 0x2000

    if-eq p2, v0, :cond_16

    .line 2328
    nop

    .line 2434
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 2321
    :cond_16
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    .line 2322
    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_17

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getValue()I

    move-result p1

    iget-object p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {p2}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result p2

    if-le p1, p2, :cond_18

    .line 2323
    :cond_17
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {p1, v5}, Lmiui/widget/NumberPicker;->c(Lmiui/widget/NumberPicker;Z)V

    .line 2324
    return v4

    .line 2326
    :cond_18
    return v5

    .line 2314
    :cond_19
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    .line 2315
    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_1a

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getValue()I

    move-result p1

    iget-object p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-virtual {p2}, Lmiui/widget/NumberPicker;->getMaxValue()I

    move-result p2

    if-ge p1, p2, :cond_1b

    .line 2316
    :cond_1a
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xg:Lmiui/widget/NumberPicker;

    invoke-static {p1, v4}, Lmiui/widget/NumberPicker;->c(Lmiui/widget/NumberPicker;Z)V

    .line 2317
    return v4

    .line 2319
    :cond_1b
    return v5

    .line 2307
    :cond_1c
    iget p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xl:I

    if-ne p2, p1, :cond_1d

    .line 2308
    iput v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xl:I

    .line 2309
    return v4

    .line 2311
    :cond_1d
    return v5

    .line 2301
    :cond_1e
    iget p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xl:I

    if-eq p2, p1, :cond_1f

    .line 2302
    iput p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->Xl:I

    .line 2303
    return v4

    .line 2305
    :cond_1f
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
