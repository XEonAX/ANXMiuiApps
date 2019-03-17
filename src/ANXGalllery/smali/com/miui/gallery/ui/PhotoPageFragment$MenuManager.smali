.class Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuManager"
.end annotation


# instance fields
.field private final ORDER_IMAGE:I

.field private final ORDER_UNKNOWN:I

.field private final ORDER_VIDEO:I

.field private mMenu:Landroid/view/Menu;

.field private mOperationMask:I

.field private mOrder:I

.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment;Landroid/view/Menu;I)V
    .locals 2
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "operationMask"    # I

    .prologue
    const/4 v1, -0x1

    .line 1478
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1470
    iput v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->ORDER_UNKNOWN:I

    .line 1471
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->ORDER_IMAGE:I

    .line 1472
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->ORDER_VIDEO:I

    .line 1476
    iput v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->mOrder:I

    .line 1479
    iput-object p2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->mMenu:Landroid/view/Menu;

    .line 1480
    iput p3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->mOperationMask:I

    .line 1481
    return-void
.end method

.method static synthetic access$2300(Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;Ljava/lang/String;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 1469
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->refreshDownloadItem(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$3000(Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 1469
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->setMenuItemVisibility(IZ)V

    return-void
.end method

.method static synthetic access$3400(Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1469
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->setWallpaper(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 1469
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->setWallpaper(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 1469
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->setSlideWallpaper(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method private configMenu(Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 5
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1756
    if-nez p1, :cond_0

    .line 1798
    :goto_0
    return-void

    .line 1759
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1500(Lcom/miui/gallery/ui/PhotoPageFragment;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1760
    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1761
    iget v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->mOrder:I

    if-eq v1, v2, :cond_1

    .line 1762
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->makeVideoOrder()V

    .line 1763
    iput v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->mOrder:I

    .line 1770
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getSupportOperations()I

    move-result v1

    iget v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->mOperationMask:I

    and-int v0, v1, v4

    .line 1771
    .local v0, "supportOptions":I
    const v1, 0x7f120303

    .line 1772
    invoke-static {v0, v2}, Lcom/miui/gallery/util/PhotoOperationsUtil;->isSupportedOptions(II)Z

    move-result v4

    .line 1771
    invoke-direct {p0, v1, v4}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->setMenuItemVisibility(IZ)V

    .line 1773
    const v1, 0x7f12030c

    const/high16 v4, 0x80000

    .line 1774
    invoke-static {v0, v4}, Lcom/miui/gallery/util/PhotoOperationsUtil;->isSupportedOptions(II)Z

    move-result v4

    .line 1773
    invoke-direct {p0, v1, v4}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->setMenuItemVisibility(IZ)V

    .line 1775
    const v4, 0x7f12030a

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    .line 1776
    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$4000(Lcom/miui/gallery/ui/PhotoPageFragment;)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x200

    invoke-static {v0, v1}, Lcom/miui/gallery/util/PhotoOperationsUtil;->isSupportedOptions(II)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    .line 1775
    :goto_2
    invoke-direct {p0, v4, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->setMenuItemVisibility(IZ)V

    .line 1777
    const v4, 0x7f120302

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$4000(Lcom/miui/gallery/ui/PhotoPageFragment;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x4

    .line 1778
    invoke-static {v0, v1}, Lcom/miui/gallery/util/PhotoOperationsUtil;->isSupportedOptions(II)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    .line 1777
    :goto_3
    invoke-direct {p0, v4, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->setMenuItemVisibility(IZ)V

    .line 1779
    const v4, 0x7f120310

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$4000(Lcom/miui/gallery/ui/PhotoPageFragment;)Z

    move-result v1

    if-nez v1, :cond_5

    const/16 v1, 0x20

    .line 1780
    invoke-static {v0, v1}, Lcom/miui/gallery/util/PhotoOperationsUtil;->isSupportedOptions(II)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    .line 1779
    :goto_4
    invoke-direct {p0, v4, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->setMenuItemVisibility(IZ)V

    .line 1781
    const v4, 0x7f120311

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$4000(Lcom/miui/gallery/ui/PhotoPageFragment;)Z

    move-result v1

    if-nez v1, :cond_6

    const/16 v1, 0x800

    .line 1782
    invoke-static {v0, v1}, Lcom/miui/gallery/util/PhotoOperationsUtil;->isSupportedOptions(II)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    .line 1781
    :goto_5
    invoke-direct {p0, v4, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->setMenuItemVisibility(IZ)V

    .line 1783
    const v4, 0x7f12030d

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$4000(Lcom/miui/gallery/ui/PhotoPageFragment;)Z

    move-result v1

    if-nez v1, :cond_7

    const/high16 v1, 0x100000

    .line 1784
    invoke-static {v0, v1}, Lcom/miui/gallery/util/PhotoOperationsUtil;->isSupportedOptions(II)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v2

    .line 1783
    :goto_6
    invoke-direct {p0, v4, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->setMenuItemVisibility(IZ)V

    .line 1785
    const v4, 0x7f120312

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$4000(Lcom/miui/gallery/ui/PhotoPageFragment;)Z

    move-result v1

    if-nez v1, :cond_8

    const/high16 v1, 0x40000

    .line 1786
    invoke-static {v0, v1}, Lcom/miui/gallery/util/PhotoOperationsUtil;->isSupportedOptions(II)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    .line 1785
    :goto_7
    invoke-direct {p0, v4, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->setMenuItemVisibility(IZ)V

    .line 1787
    const v4, 0x7f12030e

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$4000(Lcom/miui/gallery/ui/PhotoPageFragment;)Z

    move-result v1

    if-nez v1, :cond_9

    const/high16 v1, 0x1000000

    .line 1788
    invoke-static {v0, v1}, Lcom/miui/gallery/util/PhotoOperationsUtil;->isSupportedOptions(II)Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v2

    .line 1787
    :goto_8
    invoke-direct {p0, v4, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->setMenuItemVisibility(IZ)V

    .line 1789
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->getDownloadOriginTitle(Lcom/miui/gallery/model/BaseDataItem;)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x100

    .line 1790
    invoke-static {v0, v4}, Lcom/miui/gallery/util/PhotoOperationsUtil;->isSupportedOptions(II)Z

    move-result v4

    .line 1789
    invoke-direct {p0, v1, v4, v2}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->refreshDownloadItem(Ljava/lang/String;ZZ)V

    .line 1791
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$4000(Lcom/miui/gallery/ui/PhotoPageFragment;)Z

    move-result v4

    if-nez v4, :cond_a

    const/high16 v4, 0x800000

    .line 1792
    invoke-static {v0, v4}, Lcom/miui/gallery/util/PhotoOperationsUtil;->isSupportedOptions(II)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1791
    :goto_9
    invoke-static {v1, v2}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$3702(Lcom/miui/gallery/ui/PhotoPageFragment;Z)Z

    .line 1793
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1800(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;

    move-result-object v1

    if-nez v1, :cond_b

    .line 1794
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3, v3}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->refreshCastItem(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1765
    .end local v0    # "supportOptions":I
    :cond_2
    iget v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->mOrder:I

    if-eqz v1, :cond_1

    .line 1766
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->makeImageOrder()V

    .line 1767
    iput v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->mOrder:I

    goto/16 :goto_1

    .restart local v0    # "supportOptions":I
    :cond_3
    move v1, v3

    .line 1776
    goto/16 :goto_2

    :cond_4
    move v1, v3

    .line 1778
    goto/16 :goto_3

    :cond_5
    move v1, v3

    .line 1780
    goto/16 :goto_4

    :cond_6
    move v1, v3

    .line 1782
    goto/16 :goto_5

    :cond_7
    move v1, v3

    .line 1784
    goto :goto_6

    :cond_8
    move v1, v3

    .line 1786
    goto :goto_7

    :cond_9
    move v1, v3

    .line 1788
    goto :goto_8

    :cond_a
    move v2, v3

    .line 1792
    goto :goto_9

    .line 1796
    :cond_b
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1800(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->refreshProjectState()V

    goto/16 :goto_0
.end method

.method private doDelete(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 1730
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    invoke-virtual {v2}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataSet()Lcom/miui/gallery/model/BaseDataSet;

    move-result-object v1

    .line 1731
    .local v1, "dataSet":Lcom/miui/gallery/model/BaseDataSet;
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v3}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataItem(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v0

    .line 1732
    .local v0, "current":Lcom/miui/gallery/model/BaseDataItem;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1733
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    new-instance v3, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$8;

    invoke-direct {v3, p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$8;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;Lcom/miui/gallery/model/BaseDataItem;)V

    invoke-virtual {v1, v2, p1, v3}, Lcom/miui/gallery/model/BaseDataSet;->delete(Landroid/app/Activity;ILcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;)V

    .line 1749
    :cond_0
    return-void
.end method

.method private getDownloadOriginTitle(Lcom/miui/gallery/model/BaseDataItem;)Ljava/lang/String;
    .locals 8
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 1879
    if-nez p1, :cond_0

    .line 1880
    const/4 v0, 0x0

    .line 1882
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c025c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    .line 1883
    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getSize()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/miui/gallery/util/FormatUtil;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1882
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isOperationWithoutKeyGuard(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1725
    const v0, 0x7f120302

    if-eq p1, v0, :cond_0

    const v0, 0x7f12030a

    if-eq p1, v0, :cond_0

    const v0, 0x7f120310

    if-eq p1, v0, :cond_0

    const v0, 0x7f12030d

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeImageOrder()V
    .locals 7

    .prologue
    const v6, 0x7f12030d

    const/4 v5, 0x0

    const v3, 0x7f12030a

    const/4 v4, 0x2

    .line 1843
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->mMenu:Landroid/view/Menu;

    invoke-interface {v1, v3}, Landroid/view/Menu;->removeItem(I)V

    .line 1844
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->mMenu:Landroid/view/Menu;

    const v2, 0x7f0c030d

    invoke-interface {v1, v5, v3, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020059

    .line 1845
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1846
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->mMenu:Landroid/view/Menu;

    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1847
    .local v0, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1849
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->mMenu:Landroid/view/Menu;

    invoke-interface {v1, v6}, Landroid/view/Menu;->removeItem(I)V

    .line 1850
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->mMenu:Landroid/view/Menu;

    const/4 v2, 0x5

    const v3, 0x7f0c0303

    invoke-interface {v1, v5, v6, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020079

    .line 1851
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1852
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1853
    return-void
.end method

.method private makeVideoOrder()V
    .locals 7

    .prologue
    const v6, 0x7f12030d

    const/4 v5, 0x0

    const v3, 0x7f12030a

    const/4 v4, 0x2

    .line 1856
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->mMenu:Landroid/view/Menu;

    invoke-interface {v1, v3}, Landroid/view/Menu;->removeItem(I)V

    .line 1857
    const/4 v0, 0x0

    .line 1858
    .local v0, "menuItem":Landroid/view/MenuItem;
    invoke-static {}, Lcom/miui/gallery/video/editor/sdk/Build;->supportVideoEditor()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1859
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->mMenu:Landroid/view/Menu;

    const v2, 0x7f0c030e

    invoke-interface {v1, v5, v3, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020059

    .line 1860
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1861
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->mMenu:Landroid/view/Menu;

    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1862
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1864
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->mMenu:Landroid/view/Menu;

    invoke-interface {v1, v6}, Landroid/view/Menu;->removeItem(I)V

    .line 1865
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->mMenu:Landroid/view/Menu;

    const/4 v2, 0x4

    const v3, 0x7f0c0303

    invoke-interface {v1, v5, v6, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020079

    .line 1866
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1867
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1868
    return-void
.end method

.method private onGetWallpaperFileFailed()V
    .locals 2

    .prologue
    .line 1721
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v1, 0x7f0c048c

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 1722
    return-void
.end method

.method private refreshDownloadItem(Ljava/lang/String;ZZ)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "visible"    # Z
    .param p3, "enable"    # Z

    .prologue
    .line 1801
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->mMenu:Landroid/view/Menu;

    const v2, 0x7f120313

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1802
    .local v0, "item":Landroid/view/MenuItem;
    if-nez v0, :cond_1

    .line 1814
    :cond_0
    :goto_0
    return-void

    .line 1805
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1806
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1808
    :cond_2
    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v1

    if-eq v1, p2, :cond_3

    .line 1809
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1811
    :cond_3
    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v1

    if-eq v1, p3, :cond_0

    .line 1812
    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private setMenuItemVisibility(IZ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 1833
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->mMenu:Landroid/view/Menu;

    invoke-interface {v1, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1834
    .local v0, "item":Landroid/view/MenuItem;
    if-nez v0, :cond_1

    .line 1840
    :cond_0
    :goto_0
    return-void

    .line 1837
    :cond_1
    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v1

    if-eq v1, p2, :cond_0

    .line 1838
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private setSlideWallpaper(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .param p1, "originUri"    # Landroid/net/Uri;
    .param p2, "sha1"    # Ljava/lang/String;

    .prologue
    .line 1711
    if-nez p1, :cond_0

    .line 1712
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->onGetWallpaperFileFailed()V

    .line 1718
    :goto_0
    return-void

    .line 1715
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v0, p1, p2}, Lcom/miui/gallery/util/SlideWallpaperUtils;->setSlideWallpaper(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1716
    const-string v0, "photo"

    const-string/jumbo v1, "set_as_slidewallpaper"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setWallpaper(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .param p1, "originUri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 1701
    if-nez p1, :cond_0

    .line 1702
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->onGetWallpaperFileFailed()V

    .line 1708
    :goto_0
    return-void

    .line 1705
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v0, p1, p2}, Lcom/miui/gallery/util/WallpaperUtils;->setWallPapers(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1706
    const-string v0, "photo"

    const-string/jumbo v1, "set_as_wallpaper"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setWallpaper(Ljava/lang/String;)V
    .locals 2
    .param p1, "originPath"    # Ljava/lang/String;

    .prologue
    .line 1692
    invoke-static {p1}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1693
    invoke-static {p1}, Lcom/miui/gallery/util/FileMimeUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1694
    .local v0, "mimeType":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->setWallpaper(Landroid/net/Uri;Ljava/lang/String;)V

    .line 1698
    .end local v0    # "mimeType":Ljava/lang/String;
    :goto_0
    return-void

    .line 1696
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->onGetWallpaperFileFailed()V

    goto :goto_0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)V
    .locals 20
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1484
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v18

    .line 1485
    .local v18, "id":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v5, v5, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v5}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataItem(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v14

    .line 1486
    .local v14, "current":Lcom/miui/gallery/model/BaseDataItem;
    if-nez v14, :cond_1

    .line 1689
    .end local v14    # "current":Lcom/miui/gallery/model/BaseDataItem;
    :cond_0
    :goto_0
    return-void

    .line 1487
    .restart local v14    # "current":Lcom/miui/gallery/model/BaseDataItem;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$2600(Lcom/miui/gallery/ui/PhotoPageFragment;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->isOperationWithoutKeyGuard(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1488
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$2700(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    .line 1490
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v4, v14}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$2800(Lcom/miui/gallery/ui/PhotoPageFragment;Lcom/miui/gallery/model/BaseDataItem;)Ljava/lang/String;

    move-result-object v17

    .line 1491
    .local v17, "eventCategory":Ljava/lang/String;
    packed-switch v18, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1520
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v4, v14}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$3100(Lcom/miui/gallery/ui/PhotoPageFragment;Lcom/miui/gallery/model/BaseDataItem;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1521
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1700(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1522
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1700(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->setSlipped(Z)V

    .line 1524
    :cond_3
    const-string v4, "send"

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1493
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$2900(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1494
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$2900(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->toggle()V

    goto :goto_0

    .line 1499
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    new-instance v5, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$1;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;)V

    invoke-virtual {v14, v4, v5}, Lcom/miui/gallery/model/BaseDataItem;->save(Landroid/app/Activity;Lcom/miui/gallery/ui/SaveUriDialogFragment$OnCompleteListener;)V

    .line 1511
    const-string v4, "save_photo"

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1515
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v4}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->doDelete(I)V

    .line 1516
    const-string v4, "delete_photo"

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1528
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v4, v14}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$3100(Lcom/miui/gallery/ui/PhotoPageFragment;Lcom/miui/gallery/model/BaseDataItem;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1529
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v14, v4, v5}, Lcom/miui/gallery/util/IntentUtil;->startEditAction(Lcom/miui/gallery/model/BaseDataItem;Landroid/app/Activity;Lcom/miui/gallery/ui/PhotoPageFragment;)Z

    move-result v19

    .line 1530
    .local v19, "result":Z
    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$3200(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1531
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$3200(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->onStartEditor()V

    .line 1533
    :cond_4
    invoke-virtual {v14}, Lcom/miui/gallery/model/BaseDataItem;->isVideo()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "edit_video"

    :goto_1
    move-object/from16 v0, v17

    invoke-static {v0, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v4, "edit_photo"

    goto :goto_1

    .line 1538
    .end local v19    # "result":Z
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v5, v5, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v7, v7, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v7}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataItem(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v7}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$3300(Lcom/miui/gallery/ui/PhotoPageFragment;)Z

    move-result v7

    invoke-static {v4, v5, v7}, Lcom/miui/gallery/util/IntentUtil;->gotoPhotoDetailPage(Landroid/app/Activity;Lcom/miui/gallery/model/BaseDataItem;Z)V

    .line 1540
    const-string/jumbo v4, "view_detail"

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1544
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v4, v14}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$3100(Lcom/miui/gallery/ui/PhotoPageFragment;Lcom/miui/gallery/model/BaseDataItem;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1545
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->mMenu:Landroid/view/Menu;

    const v5, 0x7f120313

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v16

    .line 1546
    .local v16, "downloadItem":Landroid/view/MenuItem;
    if-eqz v16, :cond_6

    invoke-interface/range {v16 .. v16}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1547
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v2, v4, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v3, 0x7f0c0483

    const v4, 0x7f0c0484

    const v5, 0x7f0c0584

    const v6, 0x7f0c02f1

    new-instance v7, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v14}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$2;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;Lcom/miui/gallery/model/BaseDataItem;)V

    new-instance v8, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$3;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v14}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$3;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;Lcom/miui/gallery/model/BaseDataItem;)V

    invoke-static/range {v2 .. v8}, Lcom/miui/gallery/util/DialogUtil;->showInfoDialog(Landroid/content/Context;IIIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    .line 1574
    :goto_2
    const-string/jumbo v4, "set_wallpaper_click"

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1572
    :cond_6
    invoke-virtual {v14}, Lcom/miui/gallery/model/BaseDataItem;->getContentUriForExternal()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v14}, Lcom/miui/gallery/model/BaseDataItem;->getMimeType()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->setWallpaper(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_2

    .line 1578
    .end local v16    # "downloadItem":Landroid/view/MenuItem;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v4, v14}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$3100(Lcom/miui/gallery/ui/PhotoPageFragment;Lcom/miui/gallery/model/BaseDataItem;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1579
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->mMenu:Landroid/view/Menu;

    const v5, 0x7f120313

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v16

    .line 1580
    .restart local v16    # "downloadItem":Landroid/view/MenuItem;
    if-eqz v16, :cond_7

    invoke-interface/range {v16 .. v16}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1581
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v2, v4, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v3, 0x7f0c047f

    const v4, 0x7f0c0480

    const v5, 0x7f0c0584

    const v6, 0x7f0c02f1

    new-instance v7, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$4;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v14}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$4;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;Lcom/miui/gallery/model/BaseDataItem;)V

    new-instance v8, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$5;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v14}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$5;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;Lcom/miui/gallery/model/BaseDataItem;)V

    invoke-static/range {v2 .. v8}, Lcom/miui/gallery/util/DialogUtil;->showInfoDialog(Landroid/content/Context;IIIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    .line 1608
    .end local v14    # "current":Lcom/miui/gallery/model/BaseDataItem;
    :goto_3
    const-string/jumbo v4, "set_slide_wallpaper_click"

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1606
    .restart local v14    # "current":Lcom/miui/gallery/model/BaseDataItem;
    :cond_7
    invoke-virtual {v14}, Lcom/miui/gallery/model/BaseDataItem;->getContentUriForExternal()Landroid/net/Uri;

    move-result-object v5

    instance-of v4, v14, Lcom/miui/gallery/model/CloudItem;

    if-eqz v4, :cond_8

    check-cast v14, Lcom/miui/gallery/model/CloudItem;

    .end local v14    # "current":Lcom/miui/gallery/model/BaseDataItem;
    invoke-virtual {v14}, Lcom/miui/gallery/model/CloudItem;->getSha1()Ljava/lang/String;

    move-result-object v4

    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->setSlideWallpaper(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_3

    .restart local v14    # "current":Lcom/miui/gallery/model/BaseDataItem;
    :cond_8
    const/4 v4, 0x0

    goto :goto_4

    .line 1612
    .end local v16    # "downloadItem":Landroid/view/MenuItem;
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v4, v14}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$3100(Lcom/miui/gallery/ui/PhotoPageFragment;Lcom/miui/gallery/model/BaseDataItem;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1613
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    invoke-virtual {v4}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataSet()Lcom/miui/gallery/model/BaseDataSet;

    move-result-object v2

    .line 1614
    .local v2, "dataSet":Lcom/miui/gallery/model/BaseDataSet;
    if-eqz v2, :cond_9

    .line 1626
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v3, v4, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v4}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v7}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$3700(Lcom/miui/gallery/ui/PhotoPageFragment;)Z

    move-result v6

    new-instance v7, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$6;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$6;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;)V

    invoke-virtual/range {v2 .. v7}, Lcom/miui/gallery/model/BaseDataSet;->addToAlbum(Landroid/app/Activity;IZZLcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;)Z

    .line 1635
    :cond_9
    const-string v4, "add_to_album"

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1639
    .end local v2    # "dataSet":Lcom/miui/gallery/model/BaseDataSet;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1800(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;

    move-result-object v4

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1800(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1640
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1800(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v5, v5, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v5}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->enterSlideShow(I)V

    .line 1657
    :goto_5
    const-string v4, "play_slide_show"

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1642
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/PhotoPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "photo_init_position"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v7, v7, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v7}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v7

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1643
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v5, v5, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v5}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataItem(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v15

    .line 1644
    .local v15, "dataItem":Lcom/miui/gallery/model/BaseDataItem;
    if-eqz v15, :cond_b

    .line 1645
    invoke-virtual {v15}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1646
    invoke-virtual {v15}, Lcom/miui/gallery/model/BaseDataItem;->getThumnailPath()Ljava/lang/String;

    move-result-object v6

    .line 1648
    .local v6, "path":Ljava/lang/String;
    :goto_6
    new-instance v3, Lcom/miui/gallery/model/ImageLoadParams;

    .line 1649
    invoke-virtual {v15}, Lcom/miui/gallery/model/BaseDataItem;->getKey()J

    move-result-wide v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v9, v9, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    .line 1650
    invoke-virtual {v9}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v9

    invoke-virtual {v15}, Lcom/miui/gallery/model/BaseDataItem;->getMimeType()Ljava/lang/String;

    move-result-object v10

    .line 1651
    invoke-virtual {v15}, Lcom/miui/gallery/model/BaseDataItem;->getSecretKey()[B

    move-result-object v11

    invoke-virtual {v15}, Lcom/miui/gallery/model/BaseDataItem;->getSize()J

    move-result-wide v12

    invoke-direct/range {v3 .. v13}, Lcom/miui/gallery/model/ImageLoadParams;-><init>(JLjava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;ILjava/lang/String;[BJ)V

    .line 1653
    .local v3, "params":Lcom/miui/gallery/model/ImageLoadParams;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/PhotoPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "photo_transition_data"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1655
    .end local v3    # "params":Lcom/miui/gallery/model/ImageLoadParams;
    .end local v6    # "path":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v5}, Lcom/miui/gallery/ui/PhotoPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/ui/SlideShowFragment;->showSlideShowFragment(Lcom/miui/gallery/activity/BaseActivity;Landroid/os/Bundle;)V

    goto/16 :goto_5

    .line 1647
    :cond_c
    invoke-virtual {v15}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .line 1661
    .end local v15    # "dataItem":Lcom/miui/gallery/model/BaseDataItem;
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    invoke-virtual {v4}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataSet()Lcom/miui/gallery/model/BaseDataSet;

    move-result-object v2

    .line 1662
    .restart local v2    # "dataSet":Lcom/miui/gallery/model/BaseDataSet;
    if-eqz v2, :cond_d

    .line 1663
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v5, v5, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v5}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v5

    new-instance v7, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$7;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$7;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;)V

    invoke-virtual {v2, v4, v5, v7}, Lcom/miui/gallery/model/BaseDataSet;->removeFromSecret(Landroid/app/Activity;ILcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;)Z

    .line 1672
    :cond_d
    const-string v4, "remove_from_secret"

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1676
    .end local v2    # "dataSet":Lcom/miui/gallery/model/BaseDataSet;
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$3800(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    .line 1677
    const-string v4, "download_origin"

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1681
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1800(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1682
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1800(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->access$3900(Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;)V

    .line 1684
    const-string v4, "project_photo"

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1491
    :pswitch_data_0
    .packed-switch 0x7f120302
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_9
        :pswitch_b
        :pswitch_d
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method

.method refreshCastItem(Ljava/lang/String;ZZ)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "visible"    # Z
    .param p3, "enable"    # Z

    .prologue
    .line 1817
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->mMenu:Landroid/view/Menu;

    const v2, 0x7f12030f

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1818
    .local v0, "item":Landroid/view/MenuItem;
    if-nez v0, :cond_1

    .line 1830
    :cond_0
    :goto_0
    return-void

    .line 1821
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1822
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1824
    :cond_2
    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v1

    if-eq v1, p2, :cond_3

    .line 1825
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1827
    :cond_3
    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v1

    if-eq v1, p3, :cond_0

    .line 1828
    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public refreshDownloadItem(ZZ)V
    .locals 3
    .param p1, "visible"    # Z
    .param p2, "enable"    # Z

    .prologue
    .line 1871
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataItem(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v0

    .line 1872
    .local v0, "item":Lcom/miui/gallery/model/BaseDataItem;
    if-nez v0, :cond_0

    .line 1876
    :goto_0
    return-void

    .line 1875
    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->getDownloadOriginTitle(Lcom/miui/gallery/model/BaseDataItem;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->refreshDownloadItem(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method public settleItem(Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 0
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 1752
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->configMenu(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 1753
    return-void
.end method
