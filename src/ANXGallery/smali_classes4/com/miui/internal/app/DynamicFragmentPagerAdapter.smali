.class Lcom/miui/internal/app/DynamicFragmentPagerAdapter;
.super Lmiui/view/PagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;
    }
.end annotation


# instance fields
.field private bn:Landroid/app/FragmentManager;

.field private cU:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private cV:Landroid/app/FragmentTransaction;

.field private cW:Landroid/app/Fragment;

.field private cX:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/view/ViewPager;",
            ">;"
        }
    .end annotation
.end field

.field private cY:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/FragmentManager;Lmiui/view/ViewPager;)V
    .locals 1

    .line 334
    invoke-direct {p0}, Lmiui/view/PagerAdapter;-><init>()V

    .line 327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cU:Ljava/util/ArrayList;

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cV:Landroid/app/FragmentTransaction;

    .line 329
    iput-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cW:Landroid/app/Fragment;

    .line 335
    iput-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mContext:Landroid/content/Context;

    .line 336
    iput-object p2, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->bn:Landroid/app/FragmentManager;

    .line 337
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cX:Ljava/lang/ref/WeakReference;

    .line 338
    invoke-virtual {p3, p0}, Lmiui/view/ViewPager;->setAdapter(Lmiui/view/PagerAdapter;)V

    .line 339
    return-void
.end method

.method private c(Landroid/app/Fragment;)V
    .locals 2

    .line 554
    if-eqz p1, :cond_0

    .line 555
    invoke-virtual {p1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 556
    if-eqz v0, :cond_0

    .line 557
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 558
    invoke-virtual {v1, p1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 559
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 560
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 563
    :cond_0
    return-void
.end method

.method private z()V
    .locals 5

    .line 543
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->bn:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 544
    iget-object v1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cU:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 545
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 546
    invoke-virtual {p0, v3, v2}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->b(IZ)Landroid/app/Fragment;

    move-result-object v4

    .line 547
    invoke-virtual {v0, v4}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 545
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 549
    :cond_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 550
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->bn:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 551
    return-void
.end method


# virtual methods
.method A()Z
    .locals 2

    .line 577
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 578
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method a(Ljava/lang/String;ILjava/lang/Class;Landroid/os/Bundle;Landroid/app/ActionBar$Tab;Z)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/app/ActionBar$Tab;",
            "Z)I"
        }
    .end annotation

    .line 470
    new-instance v7, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;-><init>(Lcom/miui/internal/app/DynamicFragmentPagerAdapter;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Landroid/app/ActionBar$Tab;Z)V

    .line 471
    invoke-virtual {p0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->A()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 472
    iget-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cU:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_0

    .line 473
    iget-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cU:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-virtual {p1, p3, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 475
    :cond_0
    iget-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cU:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->d(I)I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p1, p3, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 478
    :cond_1
    iget-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cU:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 480
    :goto_0
    invoke-virtual {p0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->notifyDataSetChanged()V

    .line 481
    return p2
.end method

.method a(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Landroid/app/ActionBar$Tab;Z)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/app/ActionBar$Tab;",
            "Z)I"
        }
    .end annotation

    .line 460
    invoke-virtual {p0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cU:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-instance v9, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;-><init>(Lcom/miui/internal/app/DynamicFragmentPagerAdapter;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Landroid/app/ActionBar$Tab;Z)V

    invoke-virtual {v0, v1, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cU:Ljava/util/ArrayList;

    new-instance v8, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;-><init>(Lcom/miui/internal/app/DynamicFragmentPagerAdapter;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Landroid/app/ActionBar$Tab;Z)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    :goto_0
    invoke-virtual {p0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->notifyDataSetChanged()V

    .line 466
    iget-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cU:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method a(IZZ)Landroid/app/Fragment;
    .locals 2

    .line 443
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 444
    return-object v1

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cU:Ljava/util/ArrayList;

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->d(I)I

    move-result p1

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;

    .line 447
    iget-object p3, p1, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->da:Landroid/app/Fragment;

    if-nez p3, :cond_2

    .line 449
    iget-object p3, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->bn:Landroid/app/FragmentManager;

    iget-object v0, p1, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->tag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p3

    iput-object p3, p1, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->da:Landroid/app/Fragment;

    .line 450
    iget-object p3, p1, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->da:Landroid/app/Fragment;

    if-nez p3, :cond_2

    if-eqz p2, :cond_2

    .line 451
    iget-object p2, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mContext:Landroid/content/Context;

    iget-object p3, p1, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->cZ:Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p1, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->db:Landroid/os/Bundle;

    invoke-static {p2, p3, v0}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object p2

    iput-object p2, p1, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->da:Landroid/app/Fragment;

    .line 452
    iput-object v1, p1, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->cZ:Ljava/lang/Class;

    .line 453
    iput-object v1, p1, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->db:Landroid/os/Bundle;

    .line 456
    :cond_2
    iget-object p1, p1, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->da:Landroid/app/Fragment;

    return-object p1
.end method

.method b(Landroid/app/Fragment;)I
    .locals 4

    .line 516
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 517
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 518
    invoke-virtual {p0, v2, v1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->b(IZ)Landroid/app/Fragment;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 519
    invoke-direct {p0, p1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->c(Landroid/app/Fragment;)V

    .line 520
    iget-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cU:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 521
    invoke-virtual {p0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->notifyDataSetChanged()V

    .line 522
    invoke-virtual {p0, v2}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->d(I)I

    move-result p1

    return p1

    .line 517
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 525
    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method b(IZ)Landroid/app/Fragment;
    .locals 1

    .line 439
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->a(IZZ)Landroid/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method c(Landroid/app/ActionBar$Tab;)I
    .locals 4

    .line 502
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 503
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 504
    iget-object v2, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cU:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;

    .line 505
    iget-object v3, v2, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->dc:Landroid/app/ActionBar$Tab;

    if-ne v3, p1, :cond_0

    .line 506
    iget-object p1, v2, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->da:Landroid/app/Fragment;

    invoke-direct {p0, p1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->c(Landroid/app/Fragment;)V

    .line 507
    iget-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cU:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 508
    invoke-virtual {p0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->notifyDataSetChanged()V

    .line 509
    invoke-virtual {p0, v1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->d(I)I

    move-result p1

    return p1

    .line 503
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 512
    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method c(I)V
    .locals 1

    .line 485
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->b(IZ)Landroid/app/Fragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->c(Landroid/app/Fragment;)V

    .line 486
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cU:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->d(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 487
    invoke-virtual {p0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->notifyDataSetChanged()V

    .line 488
    return-void
.end method

.method d(I)I
    .locals 1

    .line 566
    invoke-virtual {p0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->A()Z

    move-result v0

    if-nez v0, :cond_0

    .line 567
    return p1

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 570
    if-le v0, p1, :cond_1

    .line 571
    sub-int/2addr v0, p1

    return v0

    .line 573
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 347
    iget-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cV:Landroid/app/FragmentTransaction;

    if-nez p1, :cond_0

    .line 348
    iget-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->bn:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cV:Landroid/app/FragmentTransaction;

    .line 350
    :cond_0
    iget-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cV:Landroid/app/FragmentTransaction;

    check-cast p3, Landroid/app/Fragment;

    invoke-virtual {p1, p3}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 351
    return-void
.end method

.method e(Ljava/lang/String;)I
    .locals 3

    .line 491
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 492
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 493
    iget-object v2, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cU:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;

    .line 494
    iget-object v2, v2, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->tag:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 495
    invoke-virtual {p0, v1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->d(I)I

    move-result p1

    return p1

    .line 492
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 498
    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 1

    .line 373
    iget-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cV:Landroid/app/FragmentTransaction;

    if-eqz p1, :cond_0

    .line 374
    iget-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cV:Landroid/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 375
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cV:Landroid/app/FragmentTransaction;

    .line 376
    iget-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->bn:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 378
    :cond_0
    iget-boolean p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cY:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->A()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 379
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cY:Z

    .line 380
    iget-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cX:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/view/ViewPager;

    .line 381
    if-eqz p1, :cond_1

    .line 382
    invoke-virtual {p1}, Lmiui/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lmiui/view/ViewPager;->setCurrentItem(I)V

    .line 385
    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 3

    .line 424
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 425
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 426
    iget-object v2, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cU:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;

    iget-object v2, v2, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->da:Landroid/app/Fragment;

    if-ne p1, v2, :cond_0

    .line 427
    return v1

    .line 425
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 430
    :cond_1
    const/4 p1, -0x2

    return p1
.end method

.method getTabAt(I)Landroid/app/ActionBar$Tab;
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cU:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;

    iget-object p1, p1, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->dc:Landroid/app/ActionBar$Tab;

    return-object p1
.end method

.method public hasActionMenu(I)Z
    .locals 1

    .line 416
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cU:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;

    iget-boolean p1, p1, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->dd:Z

    return p1

    .line 419
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    .line 394
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cV:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->bn:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cV:Landroid/app/FragmentTransaction;

    .line 397
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->a(IZZ)Landroid/app/Fragment;

    move-result-object v0

    .line 398
    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 399
    iget-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cV:Landroid/app/FragmentTransaction;

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 401
    :cond_1
    iget-object v2, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cV:Landroid/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    iget-object v3, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cU:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;

    iget-object p2, p2, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->tag:Ljava/lang/String;

    invoke-virtual {v2, p1, v0, p2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 403
    :goto_0
    iget-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cW:Landroid/app/Fragment;

    if-eq v0, p1, :cond_2

    .line 404
    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 405
    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 407
    :cond_2
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 389
    check-cast p2, Landroid/app/Fragment;

    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method setFragmentActionMenuAt(IZ)V
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cU:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->d(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;

    .line 536
    iget-boolean v0, p1, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->dd:Z

    if-eq v0, p2, :cond_0

    .line 537
    iput-boolean p2, p1, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->dd:Z

    .line 538
    invoke-virtual {p0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->notifyDataSetChanged()V

    .line 540
    :cond_0
    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 355
    check-cast p3, Landroid/app/Fragment;

    .line 356
    iget-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cW:Landroid/app/Fragment;

    if-eq p3, p1, :cond_3

    .line 357
    iget-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cW:Landroid/app/Fragment;

    if-eqz p1, :cond_0

    .line 358
    iget-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cW:Landroid/app/Fragment;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 359
    iget-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cW:Landroid/app/Fragment;

    invoke-virtual {p1, p2}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 361
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->A()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cY:Z

    if-eqz p1, :cond_3

    .line 362
    :cond_1
    if-eqz p3, :cond_2

    .line 363
    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 364
    invoke-virtual {p3, p1}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 366
    :cond_2
    iput-object p3, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cW:Landroid/app/Fragment;

    .line 369
    :cond_3
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 0

    .line 343
    return-void
.end method

.method y()V
    .locals 1

    .line 529
    invoke-direct {p0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->z()V

    .line 530
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->cU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 531
    invoke-virtual {p0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->notifyDataSetChanged()V

    .line 532
    return-void
.end method
