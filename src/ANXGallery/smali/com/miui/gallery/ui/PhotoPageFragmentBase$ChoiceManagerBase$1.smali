.class Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$1;
.super Ljava/lang/Object;
.source "PhotoPageFragmentBase.java"

# interfaces
.implements Lcom/miui/gallery/ui/ShareFilePrepareFragment$OnPrepareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->doPrepareFiles(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;

.field final synthetic val$secretIds:Ljava/util/ArrayList;

.field final synthetic val$secretItems:Ljava/util/ArrayList;

.field final synthetic val$secretKeys:Ljava/util/List;

.field final synthetic val$shareUris:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;

    .prologue
    .line 802
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;

    iput-object p2, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$1;->val$shareUris:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$1;->val$secretItems:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$1;->val$secretKeys:Ljava/util/List;

    iput-object p5, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$1;->val$secretIds:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepareComplete(Ljava/util/List;Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 807
    .local p1, "successes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "compressFails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "renderFails":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    .local p4, "renderSuccess":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    .local p5, "downloadFails":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;>;"
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 808
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 809
    .local v11, "path":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$1;->val$shareUris:Ljava/util/ArrayList;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 814
    .end local v11    # "path":Ljava/lang/String;
    :cond_0
    invoke-static/range {p4 .. p4}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 815
    invoke-interface/range {p4 .. p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/Uri;

    .line 816
    .local v11, "path":Landroid/net/Uri;
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$1;->val$shareUris:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 820
    .end local v11    # "path":Landroid/net/Uri;
    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static/range {p5 .. p5}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 821
    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 822
    .local v9, "compressItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 823
    .local v10, "downloadItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 824
    .local v12, "renderItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-static/range {p2 .. p2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 825
    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 828
    :cond_3
    invoke-static/range {p3 .. p3}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 829
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 832
    :cond_4
    invoke-static/range {p5 .. p5}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 833
    move-object/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 834
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    .line 835
    invoke-virtual {v2}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0020

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    .line 836
    invoke-virtual {v3}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c016e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0c016d

    const/high16 v5, 0x1040000

    new-instance v6, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$1$1;

    invoke-direct {v6, p0, v9, v10, v12}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$1$1;-><init>(Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$1;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    new-instance v7, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$1$2;

    invoke-direct {v7, p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$1$2;-><init>(Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$1;)V

    new-instance v8, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$1$3;

    invoke-direct {v8, p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$1$3;-><init>(Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$1;)V

    .line 834
    invoke-static/range {v1 .. v8}, Lcom/miui/gallery/util/DialogUtil;->showInfoDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog;

    .line 862
    .end local v9    # "compressItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "downloadItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;>;"
    .end local v12    # "renderItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_5
    :goto_2
    return-void

    .line 854
    :cond_6
    invoke-static/range {p3 .. p3}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 855
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0023

    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 856
    .local v13, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v13}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 858
    .end local v13    # "text":Ljava/lang/String;
    :cond_7
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$1;->val$shareUris:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$1;->val$secretItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x1

    :goto_3
    invoke-static {v2, v3, v1}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->access$1100(Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;Ljava/util/ArrayList;Z)V

    .line 860
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->onContentChanged()V

    goto :goto_2

    .line 858
    :cond_8
    const/4 v1, 0x0

    goto :goto_3
.end method
