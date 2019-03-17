.class public Lcom/miui/gallery/ui/ProduceCreationDialog;
.super Lcom/miui/gallery/widget/GalleryDialogFragment;
.source "ProduceCreationDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/ProduceCreationDialog$OnOperationSelectedListener;,
        Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter;,
        Lcom/miui/gallery/ui/ProduceCreationDialog$CreationModel;
    }
.end annotation


# instance fields
.field private mCreationModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/ui/ProduceCreationDialog$CreationModel;",
            ">;"
        }
    .end annotation
.end field

.field private mDialog:Lmiui/app/AlertDialog;

.field private mDownloadStateListener:Lcom/miui/gallery/util/MovieLibraryLoaderHelper$DownloadStateListener;

.field private mInstallStateListener:Lcom/miui/gallery/util/PrintInstallHelper$InstallStateListener;

.field private mOnOperationSelectedListener:Lcom/miui/gallery/ui/ProduceCreationDialog$OnOperationSelectedListener;

.field private mProduceCreationAdapter:Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;-><init>()V

    .line 72
    new-instance v1, Lcom/miui/gallery/ui/ProduceCreationDialog$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/ProduceCreationDialog$1;-><init>(Lcom/miui/gallery/ui/ProduceCreationDialog;)V

    iput-object v1, p0, Lcom/miui/gallery/ui/ProduceCreationDialog;->mInstallStateListener:Lcom/miui/gallery/util/PrintInstallHelper$InstallStateListener;

    .line 92
    new-instance v1, Lcom/miui/gallery/ui/ProduceCreationDialog$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/ProduceCreationDialog$2;-><init>(Lcom/miui/gallery/ui/ProduceCreationDialog;)V

    iput-object v1, p0, Lcom/miui/gallery/ui/ProduceCreationDialog;->mDownloadStateListener:Lcom/miui/gallery/util/MovieLibraryLoaderHelper$DownloadStateListener;

    .line 110
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/ui/ProduceCreationDialog;->mCreationModels:Ljava/util/List;

    .line 111
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getCreationStrategy()Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;

    move-result-object v0

    .line 112
    .local v0, "strategy":Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;
    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;->isCollageEntryEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/miui/gallery/ui/ProduceCreationDialog;->mCreationModels:Ljava/util/List;

    new-instance v2, Lcom/miui/gallery/ui/ProduceCreationDialog$CreationModel;

    const/4 v3, 0x0

    const v4, 0x7f02015a

    const v5, 0x7f0c0247

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/ui/ProduceCreationDialog$CreationModel;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_0
    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;->isPhotoMovieEntryEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/miui/gallery/util/PhotoMovieEntranceUtils;->isPhotoMovieAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/miui/gallery/ui/ProduceCreationDialog;->mCreationModels:Ljava/util/List;

    new-instance v2, Lcom/miui/gallery/ui/ProduceCreationDialog$CreationModel;

    const/4 v3, 0x1

    const v4, 0x7f02015b

    const v5, 0x7f0c0248

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/ui/ProduceCreationDialog$CreationModel;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_1
    invoke-static {}, Lcom/miui/gallery/util/PrintInstallHelper;->getInstance()Lcom/miui/gallery/util/PrintInstallHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/util/PrintInstallHelper;->isPhotoPrintEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;->isPrintEntryEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    iget-object v1, p0, Lcom/miui/gallery/ui/ProduceCreationDialog;->mCreationModels:Ljava/util/List;

    new-instance v2, Lcom/miui/gallery/ui/ProduceCreationDialog$CreationModel;

    const/4 v3, 0x2

    const v4, 0x7f02015c

    const v5, 0x7f0c0249

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/ui/ProduceCreationDialog$CreationModel;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/ProduceCreationDialog;)Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/ProduceCreationDialog;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/gallery/ui/ProduceCreationDialog;->mProduceCreationAdapter:Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/ProduceCreationDialog;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/ProduceCreationDialog;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/gallery/ui/ProduceCreationDialog;->mCreationModels:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/ProduceCreationDialog;)Lcom/miui/gallery/ui/ProduceCreationDialog$OnOperationSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/ProduceCreationDialog;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/gallery/ui/ProduceCreationDialog;->mOnOperationSelectedListener:Lcom/miui/gallery/ui/ProduceCreationDialog$OnOperationSelectedListener;

    return-object v0
.end method

.method public static checkCreationCondition(Landroid/content/Context;ILjava/util/List;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ops"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "checkedItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;>;"
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 263
    invoke-static {p2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 264
    const-string v2, "ProduceCreationDialog"

    const-string v3, "Checked Items is null"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .end local p0    # "context":Landroid/content/Context;
    :goto_0
    return v1

    .line 268
    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    invoke-static {p2}, Lcom/miui/gallery/ui/ProduceCreationDialog;->containVideo(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 269
    const v2, 0x7f0c050a

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/miui/gallery/ui/ProduceCreationDialog;->getCreationName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 274
    :cond_1
    if-nez p1, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x6

    if-le v2, v3, :cond_2

    .line 275
    const v2, 0x7f0c011d

    invoke-static {p0, v2}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    goto :goto_0

    .line 277
    :cond_2
    if-ne p1, v4, :cond_4

    .line 278
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x14

    if-gt v2, v3, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_4

    .line 279
    :cond_3
    const v2, 0x7f0c0393

    invoke-static {p0, v2}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    goto :goto_0

    .line 281
    :cond_4
    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    .line 282
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getCreationStrategy()Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;->getPrintMaxImageCount()I

    move-result v0

    .line 283
    .local v0, "printMaxImageCount":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v0, :cond_5

    .line 284
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0014

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 289
    .end local v0    # "printMaxImageCount":I
    :cond_5
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-static {p0, p1}, Lcom/miui/gallery/util/IntentUtil;->checkCreationCondition(Landroid/app/Activity;I)Z

    move-result v1

    goto :goto_0
.end method

.method private static containVideo(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 293
    .local p0, "checkedItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;

    .line 294
    .local v0, "checkedItem":Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;
    invoke-virtual {v0}, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/FileMimeUtil;->isVideoFromMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    const/4 v1, 0x1

    .line 298
    .end local v0    # "checkedItem":Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getCreationName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ops"    # I

    .prologue
    .line 302
    packed-switch p1, :pswitch_data_0

    .line 309
    const v0, 0x7f0c0249

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 304
    :pswitch_0
    const v0, 0x7f0c0247

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 306
    :pswitch_1
    const v0, 0x7f0c0248

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 125
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 126
    new-instance v0, Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter;

    iget-object v1, p0, Lcom/miui/gallery/ui/ProduceCreationDialog;->mCreationModels:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter;-><init>(Lcom/miui/gallery/ui/ProduceCreationDialog;Ljava/util/List;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/ProduceCreationDialog;->mProduceCreationAdapter:Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter;

    .line 127
    invoke-static {}, Lcom/miui/gallery/util/PrintInstallHelper;->getInstance()Lcom/miui/gallery/util/PrintInstallHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/util/PrintInstallHelper;->isPrintInstalling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/miui/gallery/ui/ProduceCreationDialog;->mProduceCreationAdapter:Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter;

    invoke-virtual {v0, v4, v3}, Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter;->setRemainWhenClick(IZ)V

    .line 129
    iget-object v0, p0, Lcom/miui/gallery/ui/ProduceCreationDialog;->mProduceCreationAdapter:Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter;

    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0396

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter;->setInformation(ILjava/lang/String;)V

    .line 131
    :cond_0
    invoke-static {}, Lcom/miui/gallery/util/MovieLibraryLoaderHelper;->getInstance()Lcom/miui/gallery/util/MovieLibraryLoaderHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/util/MovieLibraryLoaderHelper;->getLoaderState()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 132
    iget-object v0, p0, Lcom/miui/gallery/ui/ProduceCreationDialog;->mProduceCreationAdapter:Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter;

    invoke-virtual {v0, v3, v3}, Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter;->setRemainWhenClick(IZ)V

    .line 133
    iget-object v0, p0, Lcom/miui/gallery/ui/ProduceCreationDialog;->mProduceCreationAdapter:Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter;

    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c05a1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter;->setInformation(ILjava/lang/String;)V

    .line 135
    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 158
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/ProduceCreationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 159
    .local v0, "builder":Lmiui/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/miui/gallery/ui/ProduceCreationDialog;->mProduceCreationAdapter:Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 160
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/ProduceCreationDialog;->mDialog:Lmiui/app/AlertDialog;

    .line 161
    iget-object v1, p0, Lcom/miui/gallery/ui/ProduceCreationDialog;->mDialog:Lmiui/app/AlertDialog;

    return-object v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 140
    invoke-static {}, Lcom/miui/gallery/util/PrintInstallHelper;->getInstance()Lcom/miui/gallery/util/PrintInstallHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/ProduceCreationDialog;->mInstallStateListener:Lcom/miui/gallery/util/PrintInstallHelper$InstallStateListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/PrintInstallHelper;->addInstallStateListener(Lcom/miui/gallery/util/PrintInstallHelper$InstallStateListener;)V

    .line 141
    invoke-static {}, Lcom/miui/gallery/util/MovieLibraryLoaderHelper;->getInstance()Lcom/miui/gallery/util/MovieLibraryLoaderHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/ProduceCreationDialog;->mDownloadStateListener:Lcom/miui/gallery/util/MovieLibraryLoaderHelper$DownloadStateListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/MovieLibraryLoaderHelper;->addDownloadStateListener(Lcom/miui/gallery/util/MovieLibraryLoaderHelper$DownloadStateListener;)V

    .line 142
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onDestroyView()V

    .line 148
    invoke-static {}, Lcom/miui/gallery/util/PrintInstallHelper;->getInstance()Lcom/miui/gallery/util/PrintInstallHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/ProduceCreationDialog;->mInstallStateListener:Lcom/miui/gallery/util/PrintInstallHelper$InstallStateListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/PrintInstallHelper;->removeInstallStateListener(Lcom/miui/gallery/util/PrintInstallHelper$InstallStateListener;)V

    .line 149
    invoke-static {}, Lcom/miui/gallery/util/MovieLibraryLoaderHelper;->getInstance()Lcom/miui/gallery/util/MovieLibraryLoaderHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/ProduceCreationDialog;->mDownloadStateListener:Lcom/miui/gallery/util/MovieLibraryLoaderHelper$DownloadStateListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/MovieLibraryLoaderHelper;->removeDownloadStateListener(Lcom/miui/gallery/util/MovieLibraryLoaderHelper$DownloadStateListener;)V

    .line 150
    return-void
.end method

.method public setOnOperationSelectedListener(Lcom/miui/gallery/ui/ProduceCreationDialog$OnOperationSelectedListener;)V
    .locals 0
    .param p1, "onOperationSelectedListener"    # Lcom/miui/gallery/ui/ProduceCreationDialog$OnOperationSelectedListener;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/miui/gallery/ui/ProduceCreationDialog;->mOnOperationSelectedListener:Lcom/miui/gallery/ui/ProduceCreationDialog$OnOperationSelectedListener;

    .line 154
    return-void
.end method
