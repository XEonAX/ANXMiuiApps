.class abstract Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;
.super Ljava/lang/Object;
.source "PhotoPageFragmentBase.java"

# interfaces
.implements Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;
.implements Lcom/miui/gallery/ui/ChooserFragment$OnIntentSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "ChoiceManagerBase"
.end annotation


# instance fields
.field protected mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

.field protected mShareClassName:Ljava/lang/String;

.field protected mSharePackageName:Ljava/lang/String;

.field protected mSharePendingIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragmentBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    .prologue
    .line 561
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # Ljava/util/ArrayList;
    .param p4, "x4"    # Ljava/util/ArrayList;
    .param p5, "x5"    # Ljava/util/List;
    .param p6, "x6"    # Ljava/util/ArrayList;
    .param p7, "x7"    # Ljava/util/ArrayList;

    .prologue
    .line 554
    invoke-direct/range {p0 .. p7}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->doPrepareFiles(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;Ljava/util/ArrayList;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Z

    .prologue
    .line 554
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->doShare(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 554
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->getShareDisplayLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private doPrepareFiles(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 802
    .local p1, "compressItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "downloadItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;>;"
    .local p3, "needRender":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .local p4, "secretItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .local p5, "secretKeys":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local p6, "shareUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .local p7, "secretIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$1;

    move-object v1, p0

    move-object v2, p6

    move-object v3, p4

    move-object v4, p5

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$1;-><init>(Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 865
    .local v0, "listener":Lcom/miui/gallery/ui/ShareFilePrepareFragment$OnPrepareListener;
    invoke-static/range {p1 .. p7}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->newInstance(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    move-result-object v6

    .line 866
    .local v6, "fragment":Lcom/miui/gallery/ui/ShareFilePrepareFragment;
    invoke-virtual {v6, v0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->setOnDownloadListener(Lcom/miui/gallery/ui/ShareFilePrepareFragment$OnPrepareListener;)V

    .line 867
    new-instance v1, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$2;-><init>(Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;)V

    invoke-virtual {v6, v1}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 873
    new-instance v1, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$3;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$3;-><init>(Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;)V

    invoke-virtual {v6, v1}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->setErrorListener(Lcom/miui/gallery/ui/ShareFilePrepareFragment$OnErrorListener;)V

    .line 879
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/miui/gallery/activity/BaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "DownloadFragment"

    invoke-virtual {v6, v1, v2}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 880
    return-void
.end method

.method private doShare(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 883
    .local p1, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->doShare(Ljava/util/ArrayList;Z)V

    .line 884
    return-void
.end method

.method private doShare(Ljava/util/ArrayList;Z)V
    .locals 8
    .param p2, "hasSecret"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v6, 0x1

    .line 887
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mSharePendingIntent:Landroid/content/Intent;

    if-nez v3, :cond_0

    .line 942
    :goto_0
    return-void

    .line 891
    :cond_0
    if-nez p2, :cond_1

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mSharePendingIntent:Landroid/content/Intent;

    invoke-static {v3, v4}, Lcom/miui/gallery/provider/GalleryOpenProvider;->needReturnContentUri(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 892
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 893
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/provider/GalleryOpenProvider;->translateToContent(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 894
    .local v2, "translatedUri":Landroid/net/Uri;
    invoke-virtual {p1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 895
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mSharePackageName:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 896
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mSharePackageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v6}, Lcom/miui/gallery/activity/BaseActivity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 892
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 901
    .end local v0    # "i":I
    .end local v2    # "translatedUri":Landroid/net/Uri;
    :cond_3
    const-string v3, "PhotoPageFragmentBase"

    const-string v4, "prepare to share: %s"

    invoke-static {v3, v4, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 903
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 904
    .local v1, "size":I
    if-lez v1, :cond_5

    .line 905
    if-le v1, v6, :cond_6

    .line 906
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mSharePendingIntent:Landroid/content/Intent;

    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 911
    :goto_2
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mSharePendingIntent:Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 912
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mSharePendingIntent:Landroid/content/Intent;

    const/high16 v4, 0x8080000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 913
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mSharePendingIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4, v6}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 914
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-static {v3}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->access$1200(Lcom/miui/gallery/ui/PhotoPageFragmentBase;)Ljava/lang/Runnable;

    move-result-object v3

    if-nez v3, :cond_4

    .line 915
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    new-instance v4, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$4;

    invoke-direct {v4, p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$4;-><init>(Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;)V

    invoke-static {v3, v4}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->access$1202(Lcom/miui/gallery/ui/PhotoPageFragmentBase;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 934
    :cond_4
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-static {v4}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->access$1200(Lcom/miui/gallery/ui/PhotoPageFragmentBase;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/CompatHandler;->hasCallbacksCompat(Ljava/lang/Runnable;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 935
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-static {v3, v6}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->access$1302(Lcom/miui/gallery/ui/PhotoPageFragmentBase;Z)Z

    .line 936
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-static {v4}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->access$1200(Lcom/miui/gallery/ui/PhotoPageFragmentBase;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/internal/CompatHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 939
    :cond_5
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mSharePendingIntent:Landroid/content/Intent;

    goto/16 :goto_0

    .line 908
    :cond_6
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mSharePendingIntent:Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 909
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mSharePendingIntent:Landroid/content/Intent;

    const-string v5, "android.intent.extra.STREAM"

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2
.end method

.method private getShareDisplayLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 945
    const/4 v1, 0x0

    .line 947
    .local v1, "label":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v3}, Lcom/miui/gallery/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 948
    .local v2, "res":Landroid/content/res/Resources;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s_%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    .line 949
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "string"

    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v5, v5, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    .line 950
    invoke-virtual {v5}, Lcom/miui/gallery/activity/BaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 948
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 952
    .local v0, "id":I
    if-eqz v0, :cond_0

    .line 953
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 958
    .end local v0    # "id":I
    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return-object v1

    .line 955
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method protected configTargetIntentBySelected(ILandroid/content/Intent;)V
    .locals 8
    .param p1, "size"    # I
    .param p2, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 597
    const/4 v5, 0x1

    if-gt p1, v5, :cond_2

    .line 598
    const-string v5, "android.intent.action.SEND"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    const/4 v3, 0x0

    .line 600
    .local v3, "item":Lcom/miui/gallery/model/BaseDataItem;
    if-lez p1, :cond_0

    .line 601
    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v6, v5, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-virtual {v5}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->getSelectItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataItem(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v3

    .line 603
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/miui/gallery/model/BaseDataItem;->isVideo()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "video/*"

    :goto_0
    invoke-virtual {p2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 618
    .end local v3    # "item":Lcom/miui/gallery/model/BaseDataItem;
    :goto_1
    return-void

    .line 603
    .restart local v3    # "item":Lcom/miui/gallery/model/BaseDataItem;
    :cond_1
    const-string v5, "image/*"

    goto :goto_0

    .line 605
    .end local v3    # "item":Lcom/miui/gallery/model/BaseDataItem;
    :cond_2
    const-string v5, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 606
    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v6, v5, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-virtual {v5}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->getSelectItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataItem(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v1

    .line 607
    .local v1, "firstItem":Lcom/miui/gallery/model/BaseDataItem;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/miui/gallery/model/BaseDataItem;->isVideo()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v0, "video/*"

    .line 608
    .local v0, "defaultMimeType":Ljava/lang/String;
    :goto_2
    const/4 v2, 0x1

    .local v2, "index":I
    :goto_3
    if-ge v2, p1, :cond_3

    .line 609
    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v6, v5, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-virtual {v5}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->getSelectItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataItem(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v3

    .line 610
    .restart local v3    # "item":Lcom/miui/gallery/model/BaseDataItem;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/miui/gallery/model/BaseDataItem;->isVideo()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v4, "video/*"

    .line 611
    .local v4, "mimeType":Ljava/lang/String;
    :goto_4
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 612
    const-string v0, "*/*"

    .line 616
    .end local v3    # "item":Lcom/miui/gallery/model/BaseDataItem;
    .end local v4    # "mimeType":Ljava/lang/String;
    :cond_3
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 607
    .end local v0    # "defaultMimeType":Ljava/lang/String;
    .end local v2    # "index":I
    :cond_4
    const-string v0, "image/*"

    goto :goto_2

    .line 610
    .restart local v0    # "defaultMimeType":Ljava/lang/String;
    .restart local v2    # "index":I
    .restart local v3    # "item":Lcom/miui/gallery/model/BaseDataItem;
    :cond_5
    const-string v4, "image/*"

    goto :goto_4

    .line 608
    .restart local v4    # "mimeType":Ljava/lang/String;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method protected abstract getChoiceTitle()Landroid/widget/TextView;
.end method

.method protected abstract getContainerId()I
.end method

.method public final onAllItemsCheckedStateChanged(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 641
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->updateSelectMode()V

    .line 642
    return-void
.end method

.method public final onIntentSelected(Landroid/content/Intent;)V
    .locals 38
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 646
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    if-nez v6, :cond_1

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 650
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mSharePendingIntent:Landroid/content/Intent;

    if-eqz v6, :cond_2

    .line 651
    const-string v6, "PhotoPageFragmentBase"

    const-string v32, "already preparing for a pending intent, skip this"

    move-object/from16 v0, v32

    invoke-static {v6, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 655
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 656
    const-string v6, "fast_share"

    const-string v32, "app_selected"

    .line 659
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v33

    .line 656
    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v6, v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-virtual {v6}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->getSelectItems()Ljava/util/List;

    move-result-object v29

    .line 663
    .local v29, "selects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_15

    .line 665
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v6

    const/16 v32, 0x1f4

    move/from16 v0, v32

    if-le v6, v0, :cond_4

    .line 666
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v6, v6, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/miui/gallery/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f0c047e

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const/16 v36, 0x1f4

    .line 667
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    aput-object v36, v34, v35

    .line 666
    invoke-virtual/range {v32 .. v34}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-static {v6, v0}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 670
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mSharePendingIntent:Landroid/content/Intent;

    .line 671
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mSharePackageName:Ljava/lang/String;

    .line 672
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mShareClassName:Ljava/lang/String;

    .line 673
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 674
    .local v12, "shareUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 675
    .local v7, "needCompress":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 676
    .local v9, "needRender":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 677
    .local v10, "needDecode":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 678
    .local v11, "secretKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 679
    .local v13, "secretIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v24, 0x0

    .line 681
    .local v24, "processingCount":I
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 682
    .local v20, "needDownloadThumbnails":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/model/BaseDataItem;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 683
    .local v19, "needDownloadOrigins":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/model/BaseDataItem;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-virtual {v6}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->getOriginItems()Ljava/util/List;

    move-result-object v21

    .line 684
    .local v21, "origins":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-virtual {v6}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->getRenderItems()Ljava/util/List;

    move-result-object v25

    .line 686
    .local v25, "renders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v30, 0x0

    .line 687
    .local v30, "statOrigin":Z
    const/16 v31, 0x0

    .line 688
    .local v31, "statRender":Z
    const/4 v14, 0x0

    .line 691
    .local v14, "bestImageCount":I
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_5
    :goto_1
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 692
    .local v23, "pos":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v6, v6, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataItem(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v17

    .line 693
    .local v17, "item":Lcom/miui/gallery/model/BaseDataItem;
    if-eqz v17, :cond_5

    .line 694
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->isProcessingMedia(Lcom/miui/gallery/model/BaseDataItem;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 695
    add-int/lit8 v24, v24, 0x1

    .line 696
    goto :goto_1

    .line 698
    :cond_6
    const/4 v15, 0x0

    .line 700
    .local v15, "contentUri":Landroid/net/Uri;
    invoke-virtual/range {v17 .. v17}, Lcom/miui/gallery/model/BaseDataItem;->getSecretKey()[B

    move-result-object v28

    .line 701
    .local v28, "secretKey":[B
    invoke-virtual/range {v17 .. v17}, Lcom/miui/gallery/model/BaseDataItem;->isSecret()Z

    move-result v16

    .line 702
    .local v16, "isSecret":Z
    invoke-virtual/range {v17 .. v17}, Lcom/miui/gallery/model/BaseDataItem;->getKey()J

    move-result-wide v26

    .line 704
    .local v26, "secretId":J
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 705
    const/16 v30, 0x1

    .line 706
    invoke-virtual/range {v17 .. v17}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 707
    invoke-virtual/range {v17 .. v17}, Lcom/miui/gallery/model/BaseDataItem;->getDownloadUri()Landroid/net/Uri;

    move-result-object v15

    .line 708
    if-eqz v15, :cond_7

    .line 709
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 739
    :cond_7
    :goto_2
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz v15, :cond_8

    .line 740
    const/16 v31, 0x1

    .line 741
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    :cond_8
    if-eqz v16, :cond_9

    .line 744
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    :cond_9
    invoke-virtual/range {v17 .. v17}, Lcom/miui/gallery/model/BaseDataItem;->getSpecialTypeFlags()J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Lcom/miui/extraphoto/sdk/ExtraPhotoSDK;->sendSharePhotoStatic(J)V

    .line 751
    invoke-static {}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getInstance()Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;

    move-result-object v6

    const/16 v33, 0x0

    move-wide/from16 v0, v26

    move/from16 v2, v33

    invoke-virtual {v6, v0, v1, v2}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->isBestImage(JZ)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 752
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 712
    :cond_a
    new-instance v6, Ljava/io/File;

    invoke-virtual/range {v17 .. v17}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v15

    .line 713
    if-nez v16, :cond_7

    .line 714
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 718
    :cond_b
    invoke-virtual/range {v17 .. v17}, Lcom/miui/gallery/model/BaseDataItem;->getContentUriForExternal()Landroid/net/Uri;

    move-result-object v15

    .line 719
    if-nez v15, :cond_c

    .line 720
    invoke-virtual/range {v17 .. v17}, Lcom/miui/gallery/model/BaseDataItem;->getDownloadUri()Landroid/net/Uri;

    move-result-object v15

    .line 721
    if-eqz v15, :cond_7

    .line 722
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 733
    :cond_c
    if-nez v16, :cond_7

    .line 734
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 757
    .end local v15    # "contentUri":Landroid/net/Uri;
    .end local v16    # "isSecret":Z
    .end local v17    # "item":Lcom/miui/gallery/model/BaseDataItem;
    .end local v23    # "pos":I
    .end local v26    # "secretId":J
    .end local v28    # "secretKey":[B
    :cond_d
    if-lez v24, :cond_e

    .line 758
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v6, v6, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f0e003d

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    .line 759
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    aput-object v36, v34, v35

    .line 758
    move-object/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v24

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-static {v6, v0}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 760
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 761
    .local v22, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "count"

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    const-string v6, "fast_share"

    const-string v32, "processing_media_checked"

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-static {v6, v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 769
    .end local v22    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_e
    if-eqz v30, :cond_f

    .line 770
    const-string v6, "fast_share"

    const-string v32, "origin_checked"

    move-object/from16 v0, v32

    invoke-static {v6, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    :cond_f
    if-eqz v31, :cond_10

    .line 774
    const-string v6, "fast_share"

    const-string v32, "render_checked"

    move-object/from16 v0, v32

    invoke-static {v6, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    :cond_10
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 778
    .local v18, "map":Ljava/util/Map;
    const-string v6, "count"

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    const-string v6, "best_image_count"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    const-string v6, "fast_share"

    const-string v32, "send"

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-static {v6, v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 782
    invoke-static {v12}, Lcom/miui/gallery/ui/PhotoPagerSamplingStatHelper;->onImageShared(Ljava/util/ArrayList;)V

    .line 783
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_11

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_11

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_11

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_11

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_14

    .line 784
    :cond_11
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 785
    .local v8, "downloadItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/miui/gallery/model/BaseDataItem;

    .line 786
    .restart local v17    # "item":Lcom/miui/gallery/model/BaseDataItem;
    new-instance v32, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;

    invoke-virtual/range {v17 .. v17}, Lcom/miui/gallery/model/BaseDataItem;->getDownloadUri()Landroid/net/Uri;

    move-result-object v33

    sget-object v34, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-virtual/range {v17 .. v17}, Lcom/miui/gallery/model/BaseDataItem;->getSize()J

    move-result-wide v36

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-wide/from16 v3, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;-><init>(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;J)V

    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 788
    .end local v17    # "item":Lcom/miui/gallery/model/BaseDataItem;
    :cond_12
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/miui/gallery/model/BaseDataItem;

    .line 789
    .restart local v17    # "item":Lcom/miui/gallery/model/BaseDataItem;
    new-instance v32, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;

    invoke-virtual/range {v17 .. v17}, Lcom/miui/gallery/model/BaseDataItem;->getDownloadUri()Landroid/net/Uri;

    move-result-object v33

    sget-object v34, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN_FORCE:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-virtual/range {v17 .. v17}, Lcom/miui/gallery/model/BaseDataItem;->getSize()J

    move-result-wide v36

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-wide/from16 v3, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;-><init>(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;J)V

    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .end local v17    # "item":Lcom/miui/gallery/model/BaseDataItem;
    :cond_13
    move-object/from16 v6, p0

    .line 791
    invoke-direct/range {v6 .. v13}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->doPrepareFiles(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 793
    .end local v8    # "downloadItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;>;"
    :cond_14
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->doShare(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 796
    .end local v7    # "needCompress":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "needRender":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v10    # "needDecode":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v11    # "secretKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v12    # "shareUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v13    # "secretIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v14    # "bestImageCount":I
    .end local v18    # "map":Ljava/util/Map;
    .end local v19    # "needDownloadOrigins":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/model/BaseDataItem;>;"
    .end local v20    # "needDownloadThumbnails":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/model/BaseDataItem;>;"
    .end local v21    # "origins":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v24    # "processingCount":I
    .end local v25    # "renders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v30    # "statOrigin":Z
    .end local v31    # "statRender":Z
    :cond_15
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v6, v6, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    sget v33, Lmiui/R$string;->select_item:I

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-static {v6, v0}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public final onItemCheckedStateChanged(IJZ)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "id"    # J
    .param p4, "checked"    # Z

    .prologue
    .line 636
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->updateSelectMode()V

    .line 637
    return-void
.end method

.method protected onShared()V
    .locals 0

    .prologue
    .line 625
    return-void
.end method

.method protected onVisibilityChanged(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 628
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "ChooserFragment"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 629
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 630
    check-cast v0, Lcom/miui/gallery/ui/ChooserFragment;

    .end local v0    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/ChooserFragment;->onVisibilityChanged(Z)V

    .line 632
    :cond_0
    return-void
.end method

.method protected setUpChooserFragment(IZ)V
    .locals 6
    .param p1, "chooseTheme"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 565
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "ChooserFragment"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 566
    .local v1, "fragment":Landroid/app/Fragment;
    if-nez v1, :cond_0

    .line 567
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 568
    .local v3, "transaction":Landroid/app/FragmentTransaction;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 569
    .local v2, "i":Landroid/content/Intent;
    const-string v4, "image/*"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    invoke-static {v2, p1, p2}, Lcom/miui/gallery/ui/ChooserFragment;->newInstance(Landroid/content/Intent;IZ)Lcom/miui/gallery/ui/ChooserFragment;

    move-result-object v0

    .line 571
    .local v0, "f":Lcom/miui/gallery/ui/ChooserFragment;
    invoke-virtual {v0, p0}, Lcom/miui/gallery/ui/ChooserFragment;->setOnIntentSelectedListener(Lcom/miui/gallery/ui/ChooserFragment$OnIntentSelectedListener;)V

    .line 572
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->getContainerId()I

    move-result v4

    const-string v5, "ChooserFragment"

    invoke-virtual {v3, v4, v0, v5}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 573
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 577
    .end local v0    # "f":Lcom/miui/gallery/ui/ChooserFragment;
    .end local v1    # "fragment":Landroid/app/Fragment;
    .end local v2    # "i":Landroid/content/Intent;
    .end local v3    # "transaction":Landroid/app/FragmentTransaction;
    :goto_0
    return-void

    .line 575
    .restart local v1    # "fragment":Landroid/app/Fragment;
    :cond_0
    check-cast v1, Lcom/miui/gallery/ui/ChooserFragment;

    .end local v1    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v1, p0}, Lcom/miui/gallery/ui/ChooserFragment;->setOnIntentSelectedListener(Lcom/miui/gallery/ui/ChooserFragment$OnIntentSelectedListener;)V

    goto :goto_0
.end method

.method protected updateSelectMode()V
    .locals 9

    .prologue
    .line 580
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-virtual {v3}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->getSelectItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 581
    .local v2, "size":I
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->getChoiceTitle()Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 582
    if-nez v2, :cond_2

    .line 583
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->getChoiceTitle()Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0142

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    :cond_0
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 589
    .local v1, "i":Landroid/content/Intent;
    invoke-virtual {p0, v2, v1}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->configTargetIntentBySelected(ILandroid/content/Intent;)V

    .line 590
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "ChooserFragment"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 591
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    .line 592
    check-cast v0, Lcom/miui/gallery/ui/ChooserFragment;

    .end local v0    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/ChooserFragment;->requery(Landroid/content/Intent;)V

    .line 594
    :cond_1
    return-void

    .line 585
    .end local v1    # "i":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->getChoiceTitle()Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0015

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
