.class public Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;
.super Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;
.source "PhotoNaviFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$EffectModuleLoadListener;,
        Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$NavigatorHolder;,
        Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$Adapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$Adapter;

.field private mDialog:Landroid/app/Dialog;

.field private mNavigator:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

.field private mOnItemSelectedListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;-><init>()V

    .line 78
    new-instance v0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$1;-><init>(Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;->mOnItemSelectedListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

    .line 202
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;->getNaviData()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;
    .param p1, "x1"    # Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;->loadEffectModule(Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;ZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;Ljava/lang/String;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Landroid/content/DialogInterface$OnClickListener;
    .param p6, "x6"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 29
    invoke-direct/range {p0 .. p6}, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;->showDialog(Ljava/lang/String;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;Lcom/miui/gallery/editor/photo/core/Effect;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;
    .param p1, "x1"    # Lcom/miui/gallery/editor/photo/core/Effect;

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;->notifyNavigate(Lcom/miui/gallery/editor/photo/core/Effect;)V

    return-void
.end method

.method private checkAndLoadEffectModule()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 177
    invoke-static {}, Lcom/miui/gallery/module/GalleryModuleManager;->getInstance()Lcom/miui/gallery/module/GalleryModuleManager;

    move-result-object v0

    .line 178
    .local v0, "moduleManager":Lcom/miui/gallery/module/GalleryModuleManager;
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;->getNaviData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

    .line 179
    .local v2, "navigatorData":Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;
    iget-boolean v3, v2, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;->isPlugin:Z

    if-eqz v3, :cond_0

    .line 182
    iget-object v1, v2, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;->pluginModuleName:Ljava/lang/String;

    .line 183
    .local v1, "moduleName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/miui/gallery/module/GalleryModuleManager;->isModuleLoaded(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/module/GalleryModuleManager;->isModuleLoading(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 184
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isActiveNetworkMetered()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    :goto_1
    invoke-direct {p0, v2, v3, v4}, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;->loadEffectModule(Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;ZZ)V

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    .line 187
    .end local v1    # "moduleName":Ljava/lang/String;
    .end local v2    # "navigatorData":Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;
    :cond_3
    return-void
.end method

.method private loadEffectModule(Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;ZZ)V
    .locals 2
    .param p1, "navigatorData"    # Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;
    .param p2, "localOnly"    # Z
    .param p3, "notifyResult"    # Z

    .prologue
    .line 190
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$2;-><init>(Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;ZZ)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    .line 200
    return-void
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "positiveButtonTextId"    # I
    .param p4, "negativeButtonTextId"    # I
    .param p5, "positiveButtonListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p6, "negativeButtonListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 167
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 168
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 169
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 170
    invoke-virtual {v0, p3, p5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 171
    invoke-virtual {v0, p4, p6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;->mDialog:Landroid/app/Dialog;

    .line 173
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 174
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;->checkAndLoadEffectModule()V

    .line 40
    return-void
.end method

.method protected onCreateNavigator(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    const v0, 0x7f0400f4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->onDestroy()V

    .line 72
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;->mDialog:Landroid/app/Dialog;

    .line 76
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-super {p0}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->onDestroyView()V

    .line 65
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1201eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f12013a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method

.method protected onNavigatorCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 49
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->onNavigatorCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f120235

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;->mNavigator:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    .line 51
    new-instance v0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$Adapter;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;->getNaviData()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$Adapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;->mAdapter:Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$Adapter;

    .line 52
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;->mNavigator:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;->mAdapter:Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$Adapter;

    invoke-virtual {v0, v3}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 53
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;->mAdapter:Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$Adapter;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;->mOnItemSelectedListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

    invoke-virtual {v0, v3}, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$Adapter;->setOnItemClickListener(Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;)V

    .line 55
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0041

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v1, v0

    .line 56
    .local v1, "start":I
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0040

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v2, v0

    .line 57
    .local v2, "hInterval":I
    iget-object v7, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;->mNavigator:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$BlankDivider;

    move v3, v2

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$BlankDivider;-><init>(IIIIII)V

    invoke-virtual {v7, v0}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 59
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;->mNavigator:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/widgets/overscroll/HorizontalOverScrollBounceEffectDecorator;->setOverScrollEffect(Landroid/support/v7/widget/RecyclerView;)V

    .line 60
    return-void
.end method
