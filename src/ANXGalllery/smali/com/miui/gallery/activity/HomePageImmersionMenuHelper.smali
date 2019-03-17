.class public Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;
.super Ljava/lang/Object;
.source "HomePageImmersionMenuHelper.java"

# interfaces
.implements Lcom/miui/gallery/widget/menu/ImmersionMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$FeatureInfo;,
        Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$MenuItemsCheckListener;,
        Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$PrintStatusObserver;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentPage:Ljava/lang/String;

.field private mFeatureItemsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$FeatureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHasRedDotItem:Z

.field private mInstallStateListener:Lcom/miui/gallery/util/PrintInstallHelper$InstallStateListener;

.field private mMenuItemsCheckListener:Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$MenuItemsCheckListener;

.field private mMovieDownloadStateListener:Lcom/miui/gallery/util/MovieLibraryLoaderHelper$DownloadStateListener;

.field private mPhoneImmersionMenu:Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;

.field private mPrintStatusObserver:Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$PrintStatusObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mFeatureItemsMap:Ljava/util/Map;

    .line 47
    iput-object p1, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mContext:Landroid/content/Context;

    .line 48
    new-instance v0, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;

    invoke-direct {v0, p1, p0}, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;-><init>(Landroid/content/Context;Lcom/miui/gallery/widget/menu/ImmersionMenuListener;)V

    iput-object v0, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mPhoneImmersionMenu:Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;

    .line 49
    invoke-direct {p0}, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->registerPrintStatusObserver()V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;
    .param p1, "x1"    # Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->onPrintStatueChanged(Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;)V

    return-void
.end method

.method private isTrashBinEnable()Z
    .locals 1

    .prologue
    .line 207
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->isCloudTrashBinFeatureOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gallery/util/SyncUtil;->existXiaomiAccount(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onPrintStatueChanged(Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;)V
    .locals 3
    .param p1, "newStatus"    # Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;

    .prologue
    .line 326
    invoke-static {}, Lcom/miui/gallery/util/PrintInstallHelper;->getInstance()Lcom/miui/gallery/util/PrintInstallHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/util/PrintInstallHelper;->isPhotoPrintEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    const v0, 0x7f120012

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->setMenuVisibility(IZ)Z

    .line 328
    const-string v0, "photo_print"

    const-string v1, "photo_print_enable"

    const-string/jumbo v2, "true"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_0
    return-void
.end method

.method private registerFeature(ILjava/lang/String;ZZ)V
    .locals 3
    .param p1, "menuId"    # I
    .param p2, "featureName"    # Ljava/lang/String;
    .param p3, "isUpdateFeature"    # Z
    .param p4, "isPushValid"    # Z

    .prologue
    .line 211
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mFeatureItemsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$FeatureInfo;

    invoke-direct {v2, p0, p2, p3, p4}, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$FeatureInfo;-><init>(Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;Ljava/lang/String;ZZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    return-void
.end method

.method private registerPrintStatusObserver()V
    .locals 4

    .prologue
    .line 277
    new-instance v1, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$PrintStatusObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$PrintStatusObserver;-><init>(Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$1;)V

    iput-object v1, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mPrintStatusObserver:Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$PrintStatusObserver;

    .line 278
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->getInstance()Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    move-result-object v1

    const-string v2, "photo-print"

    iget-object v3, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mPrintStatusObserver:Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$PrintStatusObserver;

    .line 279
    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->registerStatusObserver(Ljava/lang/String;Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;)Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;

    move-result-object v0

    .line 280
    .local v0, "status":Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;
    invoke-direct {p0, v0}, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->onPrintStatueChanged(Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;)V

    .line 281
    return-void
.end method

.method private setMenuVisibility(IZ)Z
    .locals 3
    .param p1, "menuId"    # I
    .param p2, "visibility"    # Z

    .prologue
    const/4 v1, 0x0

    .line 291
    iget-object v2, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mPhoneImmersionMenu:Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;

    if-nez v2, :cond_1

    .line 298
    :cond_0
    :goto_0
    return v1

    .line 294
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mPhoneImmersionMenu:Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;->getImmersionMenu()Lcom/miui/gallery/widget/menu/ImmersionMenu;

    move-result-object v0

    .line 295
    .local v0, "menu":Lcom/miui/gallery/widget/menu/ImmersionMenu;
    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0, p1}, Lcom/miui/gallery/widget/menu/ImmersionMenu;->findItem(I)Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->setMenuVisibility(Lcom/miui/gallery/widget/menu/ImmersionMenuItem;Z)Z

    move-result v1

    goto :goto_0
.end method

.method private setMenuVisibility(Lcom/miui/gallery/widget/menu/ImmersionMenuItem;Z)Z
    .locals 2
    .param p1, "item"    # Lcom/miui/gallery/widget/menu/ImmersionMenuItem;
    .param p2, "visibility"    # Z

    .prologue
    const/4 v1, 0x0

    .line 302
    if-nez p1, :cond_1

    .line 312
    :cond_0
    :goto_0
    return v1

    .line 306
    :cond_1
    invoke-virtual {p1}, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->isVisible()Z

    move-result v0

    .line 307
    .local v0, "current":Z
    if-eq v0, p2, :cond_0

    .line 308
    invoke-virtual {p1, p2}, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->setVisible(Z)Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    .line 309
    invoke-virtual {p0}, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->checkRedDotFeature()V

    .line 310
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private unregisterPrintStatusObserver()V
    .locals 3

    .prologue
    .line 284
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mPrintStatusObserver:Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$PrintStatusObserver;

    if-eqz v0, :cond_0

    .line 285
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->getInstance()Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    move-result-object v0

    const-string v1, "photo-print"

    iget-object v2, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mPrintStatusObserver:Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$PrintStatusObserver;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->unregisterStatusObserver(Ljava/lang/String;Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;)V

    .line 288
    :cond_0
    return-void
.end method


# virtual methods
.method public checkRedDotFeature()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 215
    iget-object v7, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mPhoneImmersionMenu:Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;

    if-nez v7, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v7, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mPhoneImmersionMenu:Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;

    invoke-virtual {v7}, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;->getImmersionMenu()Lcom/miui/gallery/widget/menu/ImmersionMenu;

    move-result-object v5

    .line 219
    .local v5, "menu":Lcom/miui/gallery/widget/menu/ImmersionMenu;
    if-eqz v5, :cond_0

    .line 223
    iput-boolean v8, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mHasRedDotItem:Z

    .line 224
    iget-object v7, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mFeatureItemsMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 225
    .local v4, "iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 226
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 227
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$FeatureInfo;

    .line 228
    .local v1, "featureInfo":Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$FeatureInfo;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 229
    .local v3, "itemId":I
    invoke-virtual {v5, v3}, Lcom/miui/gallery/widget/menu/ImmersionMenu;->findItem(I)Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    move-result-object v2

    .line 230
    .local v2, "item":Lcom/miui/gallery/widget/menu/ImmersionMenuItem;
    invoke-virtual {v1}, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$FeatureInfo;->needRedDot()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v2}, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v6, 0x1

    .line 231
    .local v6, "needRedDot":Z
    :goto_2
    iget-boolean v7, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mHasRedDotItem:Z

    or-int/2addr v7, v6

    iput-boolean v7, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mHasRedDotItem:Z

    .line 232
    invoke-virtual {v2, v6}, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->setIsRedDotDisplayed(Z)V

    goto :goto_1

    .end local v6    # "needRedDot":Z
    :cond_2
    move v6, v8

    .line 230
    goto :goto_2

    .line 234
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "featureInfo":Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$FeatureInfo;
    .end local v2    # "item":Lcom/miui/gallery/widget/menu/ImmersionMenuItem;
    .end local v3    # "itemId":I
    :cond_3
    iget-object v7, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mMenuItemsCheckListener:Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$MenuItemsCheckListener;

    if-eqz v7, :cond_4

    .line 235
    iget-object v7, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mMenuItemsCheckListener:Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$MenuItemsCheckListener;

    iget-boolean v8, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mHasRedDotItem:Z

    invoke-interface {v7, v8}, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$MenuItemsCheckListener;->onMenuItemsChecked(Z)V

    .line 237
    :cond_4
    invoke-virtual {p0, v5}, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->updateImmersionMenu(Lcom/miui/gallery/widget/menu/ImmersionMenu;)V

    goto :goto_0
.end method

.method public onActivityDestroy()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mPhoneImmersionMenu:Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mPhoneImmersionMenu:Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mPhoneImmersionMenu:Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;->dismiss()V

    .line 263
    :cond_0
    invoke-static {}, Lcom/miui/gallery/util/PrintInstallHelper;->getInstance()Lcom/miui/gallery/util/PrintInstallHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mInstallStateListener:Lcom/miui/gallery/util/PrintInstallHelper$InstallStateListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/PrintInstallHelper;->removeInstallStateListener(Lcom/miui/gallery/util/PrintInstallHelper$InstallStateListener;)V

    .line 264
    invoke-static {}, Lcom/miui/gallery/util/MovieLibraryLoaderHelper;->getInstance()Lcom/miui/gallery/util/MovieLibraryLoaderHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mMovieDownloadStateListener:Lcom/miui/gallery/util/MovieLibraryLoaderHelper$DownloadStateListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/MovieLibraryLoaderHelper;->removeDownloadStateListener(Lcom/miui/gallery/util/MovieLibraryLoaderHelper$DownloadStateListener;)V

    .line 265
    invoke-direct {p0}, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->unregisterPrintStatusObserver()V

    .line 266
    return-void
.end method

.method public onCreateImmersionMenu(Lcom/miui/gallery/widget/menu/ImmersionMenu;)V
    .locals 10
    .param p1, "menu"    # Lcom/miui/gallery/widget/menu/ImmersionMenu;

    .prologue
    const v9, 0x7f120011

    const v8, 0x7f120010

    const v5, 0x7f12000f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 54
    iget-object v3, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 132
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0247

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v8, v3}, Lcom/miui/gallery/widget/menu/ImmersionMenu;->add(ILjava/lang/CharSequence;)Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    move-result-object v3

    const v4, 0x7f02015a

    .line 59
    invoke-virtual {v3, v4}, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->setIconResource(I)Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    .line 60
    const-string v3, "collage"

    invoke-direct {p0, v8, v3, v7, v6}, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->registerFeature(ILjava/lang/String;ZZ)V

    .line 62
    invoke-static {}, Lcom/miui/gallery/util/PhotoMovieEntranceUtils;->isPhotoMovieAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    iget-object v3, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0248

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v9, v3}, Lcom/miui/gallery/widget/menu/ImmersionMenu;->add(ILjava/lang/CharSequence;)Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    move-result-object v3

    const v4, 0x7f02015b

    .line 64
    invoke-virtual {v3, v4}, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->setIconResource(I)Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    move-result-object v0

    .line 65
    .local v0, "photoMovieItem":Lcom/miui/gallery/widget/menu/ImmersionMenuItem;
    const-string v3, "photo_movie"

    invoke-direct {p0, v9, v3, v7, v6}, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->registerFeature(ILjava/lang/String;ZZ)V

    .line 66
    new-instance v3, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$1;-><init>(Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;Lcom/miui/gallery/widget/menu/ImmersionMenuItem;Lcom/miui/gallery/widget/menu/ImmersionMenu;)V

    iput-object v3, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mMovieDownloadStateListener:Lcom/miui/gallery/util/MovieLibraryLoaderHelper$DownloadStateListener;

    .line 82
    invoke-static {}, Lcom/miui/gallery/util/MovieLibraryLoaderHelper;->getInstance()Lcom/miui/gallery/util/MovieLibraryLoaderHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mMovieDownloadStateListener:Lcom/miui/gallery/util/MovieLibraryLoaderHelper$DownloadStateListener;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/util/MovieLibraryLoaderHelper;->addDownloadStateListener(Lcom/miui/gallery/util/MovieLibraryLoaderHelper$DownloadStateListener;)V

    .line 85
    .end local v0    # "photoMovieItem":Lcom/miui/gallery/widget/menu/ImmersionMenuItem;
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0246

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v5, v3}, Lcom/miui/gallery/widget/menu/ImmersionMenu;->add(ILjava/lang/CharSequence;)Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    move-result-object v3

    const v4, 0x7f020159

    .line 86
    invoke-virtual {v3, v4}, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->setIconResource(I)Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    .line 87
    const-string v3, "photo_cleaner"

    invoke-direct {p0, v5, v3, v7, v6}, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->registerFeature(ILjava/lang/String;ZZ)V

    .line 89
    const v3, 0x7f12002e

    iget-object v4, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mContext:Landroid/content/Context;

    const v5, 0x7f0c04fe

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/miui/gallery/widget/menu/ImmersionMenu;->add(ILjava/lang/CharSequence;)Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    move-result-object v3

    const v4, 0x7f02015e

    .line 90
    invoke-virtual {v3, v4}, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->setIconResource(I)Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    move-result-object v2

    .line 91
    .local v2, "trashBinItem":Lcom/miui/gallery/widget/menu/ImmersionMenuItem;
    const v3, 0x7f12002e

    const-string/jumbo v4, "trash_bin"

    invoke-direct {p0, v3, v4, v6, v6}, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->registerFeature(ILjava/lang/String;ZZ)V

    .line 92
    invoke-direct {p0}, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->isTrashBinEnable()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->setMenuVisibility(Lcom/miui/gallery/widget/menu/ImmersionMenuItem;Z)Z

    .line 94
    const v3, 0x7f120012

    iget-object v4, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0249

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/miui/gallery/widget/menu/ImmersionMenu;->add(ILjava/lang/CharSequence;)Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    move-result-object v3

    const v4, 0x7f02015c

    .line 95
    invoke-virtual {v3, v4}, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->setIconResource(I)Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    move-result-object v1

    .line 96
    .local v1, "photoPrintItem":Lcom/miui/gallery/widget/menu/ImmersionMenuItem;
    const v3, 0x7f120012

    const-string v4, "photo_print"

    invoke-direct {p0, v3, v4, v7, v7}, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->registerFeature(ILjava/lang/String;ZZ)V

    .line 97
    invoke-static {}, Lcom/miui/gallery/util/PrintInstallHelper;->getInstance()Lcom/miui/gallery/util/PrintInstallHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/util/PrintInstallHelper;->isPhotoPrintEnable()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->setVisible(Z)Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    .line 98
    new-instance v3, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$2;

    invoke-direct {v3, p0, v1, p1}, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$2;-><init>(Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;Lcom/miui/gallery/widget/menu/ImmersionMenuItem;Lcom/miui/gallery/widget/menu/ImmersionMenu;)V

    iput-object v3, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mInstallStateListener:Lcom/miui/gallery/util/PrintInstallHelper$InstallStateListener;

    .line 127
    invoke-static {}, Lcom/miui/gallery/util/PrintInstallHelper;->getInstance()Lcom/miui/gallery/util/PrintInstallHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mInstallStateListener:Lcom/miui/gallery/util/PrintInstallHelper$InstallStateListener;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/util/PrintInstallHelper;->addInstallStateListener(Lcom/miui/gallery/util/PrintInstallHelper$InstallStateListener;)V

    .line 129
    const v3, 0x7f120013

    iget-object v4, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0237

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/miui/gallery/widget/menu/ImmersionMenu;->add(ILjava/lang/CharSequence;)Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    move-result-object v3

    const v4, 0x7f02015d

    .line 130
    invoke-virtual {v3, v4}, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->setIconResource(I)Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    .line 131
    const v3, 0x7f120013

    const-string/jumbo v4, "settings"

    invoke-direct {p0, v3, v4, v6, v6}, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->registerFeature(ILjava/lang/String;ZZ)V

    goto/16 :goto_0
.end method

.method public onImmersionMenuSelected(Lcom/miui/gallery/widget/menu/ImmersionMenu;Lcom/miui/gallery/widget/menu/ImmersionMenuItem;)V
    .locals 10
    .param p1, "menu"    # Lcom/miui/gallery/widget/menu/ImmersionMenu;
    .param p2, "item"    # Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 156
    iget-object v3, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 204
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-virtual {p2}, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->getItemId()I

    move-result v1

    .line 161
    .local v1, "itemId":I
    iget-object v3, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mFeatureItemsMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$FeatureInfo;

    .line 162
    .local v0, "featureInfo":Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$FeatureInfo;
    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {v0}, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$FeatureInfo;->setFeatureUsed()V

    .line 164
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 165
    .local v2, "param":Ljava/util/Map;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s_redDotDisplayed"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mCurrentPage:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mHasRedDotItem:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v3, "feature_red_dot"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%s_%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "click_menu"

    aput-object v7, v6, v8

    iget-object v7, v0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$FeatureInfo;->mFeatureName:Ljava/lang/String;

    aput-object v7, v6, v9

    .line 168
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 166
    invoke-static {v3, v4, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 171
    .end local v2    # "param":Ljava/util/Map;
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->checkRedDotFeature()V

    .line 173
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 192
    :sswitch_0
    iget-object v3, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    sget-object v4, Lcom/miui/gallery/provider/GalleryContract$Common;->URI_CLEANER_PAGE:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/miui/gallery/util/ActionURIHandler;->handleUri(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 193
    const-string v3, "home"

    const-string v4, "home_page_menu_cleaner"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :sswitch_1
    iget-object v3, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    sget-object v4, Lcom/miui/gallery/provider/GalleryContract$Common;->URI_COLLAGE_PAGE:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/miui/gallery/util/ActionURIHandler;->handleUri(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 176
    const-string v3, "home"

    const-string v4, "home_page_menu_collage"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :sswitch_2
    invoke-static {}, Lcom/miui/gallery/util/PrintInstallHelper;->getInstance()Lcom/miui/gallery/util/PrintInstallHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/util/PrintInstallHelper;->start(Landroid/content/Context;)V

    .line 181
    const-string v3, "home"

    const-string v4, "home_page_menu_photo_print"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 185
    :sswitch_3
    invoke-static {}, Lcom/miui/gallery/util/MovieLibraryLoaderHelper;->getInstance()Lcom/miui/gallery/util/MovieLibraryLoaderHelper;

    move-result-object v4

    iget-object v3, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v4, v3}, Lcom/miui/gallery/util/MovieLibraryLoaderHelper;->checkAbleOrDownload(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 186
    iget-object v3, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    sget-object v4, Lcom/miui/gallery/provider/GalleryContract$Common;->URI_PHOTO_MOVIE:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/miui/gallery/util/ActionURIHandler;->handleUri(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 188
    :cond_2
    const-string v3, "home"

    const-string v4, "home_page_menu_photo_movie"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 197
    :sswitch_4
    iget-object v3, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/gallery/util/IntentUtil;->enterGallerySetting(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 200
    :sswitch_5
    iget-object v3, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mContext:Landroid/content/Context;

    const-string v4, "HomePageActivity"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/IntentUtil;->gotoTrashBin(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 173
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f12000f -> :sswitch_0
        0x7f120010 -> :sswitch_1
        0x7f120011 -> :sswitch_3
        0x7f120012 -> :sswitch_2
        0x7f120013 -> :sswitch_4
        0x7f12002e -> :sswitch_5
    .end sparse-switch
.end method

.method public onPrepareImmersionMenu(Lcom/miui/gallery/widget/menu/ImmersionMenu;)Z
    .locals 5
    .param p1, "menu"    # Lcom/miui/gallery/widget/menu/ImmersionMenu;

    .prologue
    .line 136
    iget-object v2, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 137
    const/4 v0, 0x0

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 140
    :cond_1
    const v2, 0x7f12002e

    invoke-virtual {p1, v2}, Lcom/miui/gallery/widget/menu/ImmersionMenu;->findItem(I)Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    move-result-object v2

    invoke-direct {p0}, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->isTrashBinEnable()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->setMenuVisibility(Lcom/miui/gallery/widget/menu/ImmersionMenuItem;Z)Z

    move-result v0

    .line 142
    .local v0, "change":Z
    invoke-static {}, Lcom/miui/gallery/util/PrintInstallHelper;->getInstance()Lcom/miui/gallery/util/PrintInstallHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/util/PrintInstallHelper;->isPhotoPrintEnable()Z

    move-result v1

    .line 143
    .local v1, "isPhotoPrintVisible":Z
    const v2, 0x7f120012

    invoke-virtual {p1, v2}, Lcom/miui/gallery/widget/menu/ImmersionMenu;->findItem(I)Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->setMenuVisibility(Lcom/miui/gallery/widget/menu/ImmersionMenuItem;Z)Z

    move-result v2

    or-int/2addr v0, v2

    .line 144
    if-eqz v1, :cond_0

    .line 145
    const-string v2, "photo_print"

    const-string v3, "photo_print_menu_displayed"

    const-string/jumbo v4, "true"

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerMenuItemsCheckListener(Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$MenuItemsCheckListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$MenuItemsCheckListener;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mMenuItemsCheckListener:Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$MenuItemsCheckListener;

    .line 270
    return-void
.end method

.method public showImmersionMenu(Landroid/view/View;Ljava/lang/String;)V
    .locals 6
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "page"    # Ljava/lang/String;

    .prologue
    .line 241
    iget-object v1, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mPhoneImmersionMenu:Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mPhoneImmersionMenu:Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;->show(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 244
    :cond_0
    iput-object p2, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mCurrentPage:Ljava/lang/String;

    .line 245
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 246
    .local v0, "param":Ljava/util/Map;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s_redDotDisplayed"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mCurrentPage:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mHasRedDotItem:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string v1, "feature_red_dot"

    const-string/jumbo v2, "show_immersion_menu"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 251
    return-void
.end method

.method public updateImmersionMenu(Lcom/miui/gallery/widget/menu/ImmersionMenu;)V
    .locals 1
    .param p1, "menu"    # Lcom/miui/gallery/widget/menu/ImmersionMenu;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mPhoneImmersionMenu:Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->mPhoneImmersionMenu:Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;->update(Lcom/miui/gallery/widget/menu/ImmersionMenu;)V

    .line 257
    :cond_0
    return-void
.end method
