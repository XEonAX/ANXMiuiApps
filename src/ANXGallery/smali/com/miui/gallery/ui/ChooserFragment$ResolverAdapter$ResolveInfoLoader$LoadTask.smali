.class Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadTask;
.super Landroid/os/AsyncTask;
.source "ChooserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadingInfo;",
        "Ljava/lang/Void;",
        "Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadResult;",
        ">;"
    }
.end annotation


# instance fields
.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 671
    iput-object p1, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadTask;->this$0:Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 672
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadTask;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 673
    return-void
.end method

.method private loadIcon(Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadingInfo;)Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$IconResult;
    .locals 10
    .param p1, "info"    # Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadingInfo;

    .prologue
    .line 693
    const/4 v2, 0x0

    .line 694
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x1

    .line 696
    .local v4, "isCustomIcon":Z
    :try_start_0
    iget-object v7, p1, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadingInfo;->mResolve:Landroid/content/pm/ResolveInfo;

    .line 697
    .local v7, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v8, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadTask;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 698
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_1

    .line 699
    iget-boolean v8, p1, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadingInfo;->mUseCustomIcon:Z

    if-eqz v8, :cond_0

    .line 700
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 701
    .local v0, "className":Ljava/lang/String;
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 702
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 703
    .local v6, "resources":Landroid/content/res/Resources;
    const-string v8, "com.tencent.mm.ui.tools.ShareImgUI"

    invoke-static {v0, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 704
    const v8, 0x7f02017f

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 715
    .end local v0    # "className":Ljava/lang/String;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "resources":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 716
    const/4 v4, 0x0

    .line 717
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 723
    .end local v1    # "context":Landroid/content/Context;
    .end local v7    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_1
    :goto_1
    new-instance v8, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$IconResult;

    iget-object v9, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadTask;->this$0:Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader;

    invoke-direct {v8, v9, v2, v4}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$IconResult;-><init>(Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader;Landroid/graphics/drawable/Drawable;Z)V

    return-object v8

    .line 705
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v6    # "resources":Landroid/content/res/Resources;
    .restart local v7    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_2
    :try_start_1
    const-string v8, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    invoke-static {v0, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 706
    const v8, 0x7f020180

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 707
    :cond_3
    const-string v8, "com.tencent.mobileqq.activity.JumpActivity"

    invoke-static {v0, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "com.tencent.mobileqq"

    invoke-static {v5, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 708
    const v8, 0x7f02017d

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 709
    :cond_4
    const-string v8, "com.sina.weibo.composerinde.ComposerDispatchActivity"

    invoke-static {v0, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 710
    const v8, 0x7f020181

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 711
    :cond_5
    const-string v8, "com.qzone"

    invoke-static {v5, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 712
    const v8, 0x7f02017e

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0

    .line 720
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "context":Landroid/content/Context;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "resources":Landroid/content/res/Resources;
    .end local v7    # "ri":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v3

    .line 721
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "ChooserFragment"

    invoke-static {v8, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private loadLabel(Landroid/content/pm/ResolveInfo;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 727
    iget-object v3, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadTask;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 728
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 730
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 731
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "string"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 732
    .local v1, "id":I
    if-eqz v1, :cond_0

    .line 733
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 740
    .end local v1    # "id":I
    .end local v2    # "res":Landroid/content/res/Resources;
    :goto_0
    return-object v3

    .line 735
    :catch_0
    move-exception v3

    .line 738
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0

    .line 740
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadingInfo;)Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadResult;
    .locals 7
    .param p1, "params"    # [Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadingInfo;

    .prologue
    .line 677
    const/4 v4, 0x0

    aget-object v2, p1, v4

    .line 678
    .local v2, "loadingInfo":Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadingInfo;
    const/4 v3, 0x0

    .line 679
    .local v3, "result":Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadResult;
    if-eqz v2, :cond_0

    .line 680
    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadTask;->loadIcon(Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadingInfo;)Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$IconResult;

    move-result-object v0

    .line 681
    .local v0, "icon":Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$IconResult;
    iget-object v4, v2, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadingInfo;->mResolve:Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v4}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadTask;->loadLabel(Landroid/content/pm/ResolveInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 682
    .local v1, "label":Ljava/lang/CharSequence;
    new-instance v4, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadResult;

    iget-object v5, v0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$IconResult;->drawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v6, v0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$IconResult;->isCustomIcon:Z

    invoke-direct {v4, v5, v1, v6}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadResult;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Z)V

    invoke-virtual {v4, v2}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadResult;->setLoadingInfo(Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadingInfo;)Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadResult;

    move-result-object v3

    .line 684
    .end local v0    # "icon":Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$IconResult;
    .end local v1    # "label":Ljava/lang/CharSequence;
    :cond_0
    return-object v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 668
    check-cast p1, [Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadingInfo;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadTask;->doInBackground([Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadingInfo;)Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadResult;)V
    .locals 1
    .param p1, "loadResult"    # Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadResult;

    .prologue
    .line 689
    iget-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadTask;->this$0:Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader;

    invoke-static {v0, p1}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader;->access$500(Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader;Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadResult;)V

    .line 690
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 668
    check-cast p1, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadResult;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadTask;->onPostExecute(Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadResult;)V

    return-void
.end method
