.class public Lcom/miui/gallery/ui/HomePageTopBarController;
.super Ljava/lang/Object;
.source "HomePageTopBarController.java"

# interfaces
.implements Lcom/miui/gallery/util/AppFocusedCheckHelper$OnAppFocusedListener;
.implements Lcom/miui/gallery/widget/TwoStageDrawer$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/HomePageTopBarController$HomePageBar;,
        Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDelayShowBarRunnable:Ljava/lang/Runnable;

.field private mDiscoveryBar:Lcom/miui/gallery/ui/DiscoveryBar;

.field private mDrawer:Lcom/miui/gallery/widget/TwoStageDrawer;

.field private mItemManager:Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;

.field private mSyncBar:Lcom/miui/gallery/ui/SyncBar;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/gallery/widget/TwoStageDrawer;I)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "drawer"    # Lcom/miui/gallery/widget/TwoStageDrawer;
    .param p3, "panelId"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/miui/gallery/ui/HomePageTopBarController;->mActivity:Landroid/app/Activity;

    .line 35
    iput-object p2, p0, Lcom/miui/gallery/ui/HomePageTopBarController;->mDrawer:Lcom/miui/gallery/widget/TwoStageDrawer;

    .line 36
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageTopBarController;->mDrawer:Lcom/miui/gallery/widget/TwoStageDrawer;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/widget/TwoStageDrawer;->setDrawerListener(Lcom/miui/gallery/widget/TwoStageDrawer$DrawerListener;)V

    .line 37
    new-instance v1, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;

    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageTopBarController;->mDrawer:Lcom/miui/gallery/widget/TwoStageDrawer;

    invoke-virtual {v0, p3}, Lcom/miui/gallery/widget/TwoStageDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/widget/PanelBar;

    invoke-direct {v1, p0, v0}, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;-><init>(Lcom/miui/gallery/ui/HomePageTopBarController;Lcom/miui/gallery/widget/PanelBar;)V

    iput-object v1, p0, Lcom/miui/gallery/ui/HomePageTopBarController;->mItemManager:Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;

    .line 38
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageTopBarController;->mDrawer:Lcom/miui/gallery/widget/TwoStageDrawer;

    new-instance v1, Lcom/miui/gallery/ui/HomePageTopBarController$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/HomePageTopBarController$1;-><init>(Lcom/miui/gallery/ui/HomePageTopBarController;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/TwoStageDrawer;->post(Ljava/lang/Runnable;)Z

    .line 44
    new-instance v0, Lcom/miui/gallery/ui/SyncBar;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/gallery/ui/HomePageTopBarController;->mItemManager:Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;

    invoke-direct {v0, p1, v1, v2}, Lcom/miui/gallery/ui/SyncBar;-><init>(Landroid/content/Context;ILcom/miui/gallery/widget/PanelManager;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/HomePageTopBarController;->mSyncBar:Lcom/miui/gallery/ui/SyncBar;

    .line 45
    new-instance v0, Lcom/miui/gallery/ui/DiscoveryBar;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/gallery/ui/HomePageTopBarController;->mItemManager:Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;

    invoke-direct {v0, p1, v1, v2}, Lcom/miui/gallery/ui/DiscoveryBar;-><init>(Landroid/content/Context;ILcom/miui/gallery/widget/PanelManager;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/HomePageTopBarController;->mDiscoveryBar:Lcom/miui/gallery/ui/DiscoveryBar;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/HomePageTopBarController;)Lcom/miui/gallery/widget/TwoStageDrawer;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/HomePageTopBarController;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageTopBarController;->mDrawer:Lcom/miui/gallery/widget/TwoStageDrawer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/HomePageTopBarController;ZLcom/miui/gallery/widget/TwoStageDrawer$DrawerAnimEndListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/HomePageTopBarController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/miui/gallery/widget/TwoStageDrawer$DrawerAnimEndListener;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/HomePageTopBarController;->showPanelBar(ZLcom/miui/gallery/widget/TwoStageDrawer$DrawerAnimEndListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/HomePageTopBarController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/HomePageTopBarController;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/miui/gallery/ui/HomePageTopBarController;->isPanelBarOpened()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/HomePageTopBarController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/HomePageTopBarController;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/miui/gallery/ui/HomePageTopBarController;->isPanelBarAniming()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/ui/HomePageTopBarController;ZLcom/miui/gallery/widget/TwoStageDrawer$DrawerAnimEndListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/HomePageTopBarController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/miui/gallery/widget/TwoStageDrawer$DrawerAnimEndListener;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/HomePageTopBarController;->closePanelBar(ZLcom/miui/gallery/widget/TwoStageDrawer$DrawerAnimEndListener;)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/gallery/ui/HomePageTopBarController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/HomePageTopBarController;
    .param p1, "x1"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/HomePageTopBarController;->delayShowPanelBar(I)V

    return-void
.end method

.method private closePanelBar(ZLcom/miui/gallery/widget/TwoStageDrawer$DrawerAnimEndListener;)V
    .locals 1
    .param p1, "anim"    # Z
    .param p2, "listener"    # Lcom/miui/gallery/widget/TwoStageDrawer$DrawerAnimEndListener;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/miui/gallery/ui/HomePageTopBarController;->removeShowPanelBarMessage()V

    .line 92
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageTopBarController;->mDrawer:Lcom/miui/gallery/widget/TwoStageDrawer;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/TwoStageDrawer;->isDrawerOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageTopBarController;->mDrawer:Lcom/miui/gallery/widget/TwoStageDrawer;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/widget/TwoStageDrawer;->halfCloseDrawer(ZLcom/miui/gallery/widget/TwoStageDrawer$DrawerAnimEndListener;)V

    .line 95
    :cond_0
    return-void
.end method

.method private delayShowPanelBar(I)V
    .locals 4
    .param p1, "delayInterval"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageTopBarController;->mDelayShowBarRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/miui/gallery/ui/HomePageTopBarController$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/HomePageTopBarController$2;-><init>(Lcom/miui/gallery/ui/HomePageTopBarController;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/HomePageTopBarController;->mDelayShowBarRunnable:Ljava/lang/Runnable;

    .line 114
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/ui/HomePageTopBarController;->removeShowPanelBarMessage()V

    .line 115
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageTopBarController;->mDelayShowBarRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/CompatHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 116
    return-void
.end method

.method private isPanelBarAniming()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageTopBarController;->mDrawer:Lcom/miui/gallery/widget/TwoStageDrawer;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/TwoStageDrawer;->isAnimating()Z

    move-result v0

    return v0
.end method

.method private isPanelBarOpened()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageTopBarController;->mDrawer:Lcom/miui/gallery/widget/TwoStageDrawer;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/TwoStageDrawer;->isDrawerOpen()Z

    move-result v0

    return v0
.end method

.method private removeShowPanelBarMessage()V
    .locals 2

    .prologue
    .line 119
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageTopBarController;->mDelayShowBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 120
    return-void
.end method

.method private showPanelBar(ZLcom/miui/gallery/widget/TwoStageDrawer$DrawerAnimEndListener;)V
    .locals 1
    .param p1, "anim"    # Z
    .param p2, "listener"    # Lcom/miui/gallery/widget/TwoStageDrawer$DrawerAnimEndListener;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/miui/gallery/ui/HomePageTopBarController;->removeShowPanelBarMessage()V

    .line 87
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageTopBarController;->mDrawer:Lcom/miui/gallery/widget/TwoStageDrawer;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/widget/TwoStageDrawer;->openDrawer(ZLcom/miui/gallery/widget/TwoStageDrawer$DrawerAnimEndListener;)V

    .line 88
    return-void
.end method


# virtual methods
.method public onAppFocused()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageTopBarController;->mSyncBar:Lcom/miui/gallery/ui/SyncBar;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SyncBar;->onAppFocused()V

    .line 74
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageTopBarController;->mSyncBar:Lcom/miui/gallery/ui/SyncBar;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SyncBar;->onDestroy()V

    .line 78
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageTopBarController;->mDiscoveryBar:Lcom/miui/gallery/ui/DiscoveryBar;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/DiscoveryBar;->onDestroy()V

    .line 79
    return-void
.end method

.method public onDrawerClose(Lcom/miui/gallery/widget/TwoStageDrawer;)V
    .locals 0
    .param p1, "drawer"    # Lcom/miui/gallery/widget/TwoStageDrawer;

    .prologue
    .line 136
    return-void
.end method

.method public onDrawerHalfOpen(Lcom/miui/gallery/widget/TwoStageDrawer;)V
    .locals 0
    .param p1, "drawer"    # Lcom/miui/gallery/widget/TwoStageDrawer;

    .prologue
    .line 132
    return-void
.end method

.method public onDrawerOpen(Lcom/miui/gallery/widget/TwoStageDrawer;)V
    .locals 0
    .param p1, "drawer"    # Lcom/miui/gallery/widget/TwoStageDrawer;

    .prologue
    .line 128
    return-void
.end method

.method public onDrawerSlide(Lcom/miui/gallery/widget/TwoStageDrawer;F)V
    .locals 0
    .param p1, "drawer"    # Lcom/miui/gallery/widget/TwoStageDrawer;
    .param p2, "slideOffset"    # F

    .prologue
    .line 124
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageTopBarController;->mSyncBar:Lcom/miui/gallery/ui/SyncBar;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SyncBar;->onPause()V

    .line 59
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageTopBarController;->mDiscoveryBar:Lcom/miui/gallery/ui/DiscoveryBar;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/DiscoveryBar;->onPause()V

    .line 60
    invoke-direct {p0}, Lcom/miui/gallery/ui/HomePageTopBarController;->removeShowPanelBarMessage()V

    .line 61
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageTopBarController;->mSyncBar:Lcom/miui/gallery/ui/SyncBar;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SyncBar;->onResume()V

    .line 54
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageTopBarController;->mDiscoveryBar:Lcom/miui/gallery/ui/DiscoveryBar;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/DiscoveryBar;->onResume()V

    .line 55
    return-void
.end method

.method public setDiscoveryMessage(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/model/DiscoveryMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/DiscoveryMessage;>;"
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageTopBarController;->mDiscoveryBar:Lcom/miui/gallery/ui/DiscoveryBar;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/DiscoveryBar;->setMessage(Ljava/util/List;)V

    .line 50
    return-void
.end method

.method public setEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 82
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageTopBarController;->mItemManager:Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->setItemEnable(Z)V

    .line 83
    return-void
.end method

.method public setPermanent(Z)V
    .locals 2
    .param p1, "permanent"    # Z

    .prologue
    .line 64
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageTopBarController;->mSyncBar:Lcom/miui/gallery/ui/SyncBar;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/SyncBar;->setPermanent(Z)V

    .line 65
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageTopBarController;->mDiscoveryBar:Lcom/miui/gallery/ui/DiscoveryBar;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/DiscoveryBar;->setPermanent(Z)V

    .line 66
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageTopBarController;->mItemManager:Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->hasItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/ui/HomePageTopBarController;->showPanelBar(ZLcom/miui/gallery/widget/TwoStageDrawer$DrawerAnimEndListener;)V

    .line 69
    :cond_0
    return-void
.end method
