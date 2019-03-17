.class Lcom/miui/gallery/ui/PhotoPageFragment$PhotoRefreshReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhotoPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoRefreshReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V
    .locals 0

    .prologue
    .line 2783
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoRefreshReceiver;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment;Lcom/miui/gallery/ui/PhotoPageFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;
    .param p2, "x1"    # Lcom/miui/gallery/ui/PhotoPageFragment$1;

    .prologue
    .line 2783
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoRefreshReceiver;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2787
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2788
    .local v0, "action":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2789
    .local v6, "targetItem":Lcom/miui/gallery/ui/PhotoPageItem;
    const-string v7, "com.miui.gallery.SAVE_TO_CLOUD"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2790
    const-string v7, "extra_file_path"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2791
    .local v3, "filePath":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoRefreshReceiver;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v7, v7, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    if-nez v7, :cond_1

    .line 2824
    .end local v3    # "filePath":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2794
    .restart local v3    # "filePath":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoRefreshReceiver;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v7, v7, Lcom/miui/gallery/ui/PhotoPageFragment;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    invoke-virtual {v7}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getActiveItemCount()I

    move-result v1

    .line 2795
    .local v1, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_4

    .line 2796
    iget-object v7, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoRefreshReceiver;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v7, v7, Lcom/miui/gallery/ui/PhotoPageFragment;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    invoke-virtual {v7, v4}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getItemByNativeIndex(I)Lcom/miui/gallery/ui/PhotoPageItem;

    move-result-object v5

    .line 2797
    .local v5, "item":Lcom/miui/gallery/ui/PhotoPageItem;
    if-nez v5, :cond_3

    .line 2795
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2801
    :cond_3
    invoke-virtual {v5}, Lcom/miui/gallery/ui/PhotoPageItem;->getDataItem()Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v2

    .line 2802
    .local v2, "dataItem":Lcom/miui/gallery/model/BaseDataItem;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2803
    move-object v6, v5

    .line 2809
    .end local v1    # "count":I
    .end local v2    # "dataItem":Lcom/miui/gallery/model/BaseDataItem;
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "item":Lcom/miui/gallery/ui/PhotoPageItem;
    :cond_4
    if-eqz v6, :cond_0

    .line 2811
    invoke-virtual {v6}, Lcom/miui/gallery/ui/PhotoPageItem;->getDataItem()Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v2

    .line 2812
    .restart local v2    # "dataItem":Lcom/miui/gallery/model/BaseDataItem;
    if-eqz v2, :cond_5

    .line 2813
    invoke-virtual {v2}, Lcom/miui/gallery/model/BaseDataItem;->resetSpecialTypeFlags()V

    .line 2814
    iget-object v7, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoRefreshReceiver;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v7}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$2200(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 2815
    iget-object v7, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoRefreshReceiver;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v7}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$2200(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->updateItem(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 2820
    :cond_5
    const-string v7, "extra_is_temp_file"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2821
    invoke-virtual {v6}, Lcom/miui/gallery/ui/PhotoPageItem;->refreshItem()V

    goto :goto_0
.end method
