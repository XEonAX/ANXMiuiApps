.class Lcom/miui/gallery/ui/PhotoPageFragment$VoiceAssistantReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhotoPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceAssistantReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V
    .locals 0

    .prologue
    .line 2827
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$VoiceAssistantReceiver;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment;Lcom/miui/gallery/ui/PhotoPageFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;
    .param p2, "x1"    # Lcom/miui/gallery/ui/PhotoPageFragment$1;

    .prologue
    .line 2827
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$VoiceAssistantReceiver;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2831
    iget-object v6, p0, Lcom/miui/gallery/ui/PhotoPageFragment$VoiceAssistantReceiver;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v6}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1700(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/miui/gallery/ui/PhotoPageFragment$VoiceAssistantReceiver;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v6}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1700(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->isSlipped()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2856
    :cond_0
    :goto_0
    return-void

    .line 2834
    :cond_1
    iget-object v6, p0, Lcom/miui/gallery/ui/PhotoPageFragment$VoiceAssistantReceiver;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v6, v6, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    iget-object v7, p0, Lcom/miui/gallery/ui/PhotoPageFragment$VoiceAssistantReceiver;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v7, v7, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v7}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataItem(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v2

    .line 2836
    .local v2, "dataItem":Lcom/miui/gallery/model/BaseDataItem;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2837
    .local v5, "target":Landroid/content/Intent;
    invoke-virtual {v2}, Lcom/miui/gallery/model/BaseDataItem;->isVideo()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2838
    const-string/jumbo v6, "video/*"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2842
    :goto_1
    const-string v6, "assistant_target_package"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2843
    .local v3, "packageName":Ljava/lang/String;
    const-string v6, "assistant_target_class"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2844
    .local v1, "className":Ljava/lang/String;
    const-string v6, "assistant_need_beauty"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 2845
    .local v0, "beauty":Z
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2848
    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2849
    iget-object v6, p0, Lcom/miui/gallery/ui/PhotoPageFragment$VoiceAssistantReceiver;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v6, v6, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v6}, Lcom/miui/gallery/activity/BaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/high16 v7, 0x10000

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 2850
    .local v4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {v4}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2851
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 2852
    const-string v6, "assistant_need_beauty"

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2853
    iget-object v6, p0, Lcom/miui/gallery/ui/PhotoPageFragment$VoiceAssistantReceiver;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v6}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1700(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->sendCurrentToShare(Landroid/content/Intent;)V

    goto :goto_0

    .line 2840
    .end local v0    # "beauty":Z
    .end local v1    # "className":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    const-string v6, "image/*"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method
