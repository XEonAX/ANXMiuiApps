.class Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;
.super Ljava/lang/Object;
.source "StoryAlbumFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionBarHelper"
.end annotation


# instance fields
.field private final ATTRS:[I

.field private final TITLE_ANIM_DURATION:J

.field private mBackView:Landroid/widget/ImageView;

.field private mDefaultActionBarBg:Landroid/graphics/drawable/Drawable;

.field private final mImmersionMenuListener:Lcom/miui/gallery/widget/menu/ImmersionMenuListener;

.field private mMenuView:Landroid/widget/Button;

.field private mPhoneImmersionMenu:Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;

.field private mTitleAlphaAnim:Landroid/animation/ObjectAnimator;

.field private mTitleView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V
    .locals 3

    .prologue
    .line 727
    iput-object p1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 728
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lmiui/R$attr;->actionBarBackground:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->ATTRS:[I

    .line 729
    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->TITLE_ANIM_DURATION:J

    .line 772
    new-instance v0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper$3;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;)V

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->mImmersionMenuListener:Lcom/miui/gallery/widget/menu/ImmersionMenuListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;
    .param p2, "x1"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$1;

    .prologue
    .line 727
    invoke-direct {p0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;

    .prologue
    .line 727
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->inflateTitle()V

    return-void
.end method

.method static synthetic access$3300(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;

    .prologue
    .line 727
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->refreshActionBar()V

    return-void
.end method

.method static synthetic access$4400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;)Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;

    .prologue
    .line 727
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->mPhoneImmersionMenu:Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;

    .prologue
    .line 727
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->renameCard()V

    return-void
.end method

.method static synthetic access$5300(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;

    .prologue
    .line 727
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->showDeleteCardConfirmDialog()V

    return-void
.end method

.method static synthetic access$6200(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;

    .prologue
    .line 727
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->deleteCard()V

    return-void
.end method

.method private deleteCard()V
    .locals 3

    .prologue
    .line 851
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper$6;

    invoke-direct {v2, p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper$6;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    .line 861
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 862
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "scenarioId"

    iget-object v2, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v2}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$3700(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/Card;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/card/Card;->getScenarioId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    const-string v1, "assistant"

    const-string v2, "assistant_card_deleted"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 865
    return-void
.end method

.method private inflateTitle()V
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/4 v6, -0x1

    .line 738
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v3}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$4000(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->ATTRS:[I

    invoke-virtual {v3, v4}, Lcom/miui/gallery/activity/BaseActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 739
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->mDefaultActionBarBg:Landroid/graphics/drawable/Drawable;

    .line 740
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 742
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v3}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$4100(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/activity/BaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04014e

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 744
    .local v1, "content":Landroid/view/View;
    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 746
    .local v2, "layoutParams":Landroid/app/ActionBar$LayoutParams;
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 747
    const v3, 0x7f12020e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->mBackView:Landroid/widget/ImageView;

    .line 748
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->mBackView:Landroid/widget/ImageView;

    new-instance v4, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper$1;

    invoke-direct {v4, p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper$1;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 754
    const v3, 0x7f12002d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->mTitleView:Landroid/widget/TextView;

    .line 755
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->mTitleView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 756
    const v3, 0x7f120015

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->mMenuView:Landroid/widget/Button;

    .line 757
    new-instance v3, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;

    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v4}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$4300(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->mImmersionMenuListener:Lcom/miui/gallery/widget/menu/ImmersionMenuListener;

    invoke-direct {v3, v4, v5}, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;-><init>(Landroid/content/Context;Lcom/miui/gallery/widget/menu/ImmersionMenuListener;)V

    iput-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->mPhoneImmersionMenu:Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;

    .line 758
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->mMenuView:Landroid/widget/Button;

    new-instance v4, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper$2;

    invoke-direct {v4, p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper$2;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 765
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v3}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$4500(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/activity/BaseActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v7, v7}, Lmiui/app/ActionBar;->setDisplayOptions(II)V

    .line 767
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v3}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$4600(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/activity/BaseActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Lmiui/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 768
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$4702(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Z)Z

    .line 769
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->refreshActionBar()V

    .line 770
    return-void
.end method

.method private refreshActionBar()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 868
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$6400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 891
    :goto_0
    return-void

    .line 871
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$4700(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$6500(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 872
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/app/Activity;

    iget-object v2, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .line 873
    invoke-static {v2}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$2800(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v2}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$6500(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 872
    :goto_1
    invoke-virtual {v0, v1}, Lmiui/app/Activity;->setTranslucentStatus(I)V

    .line 877
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->mBackView:Landroid/widget/ImageView;

    sget v1, Lmiui/R$drawable;->action_bar_back_dark:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 878
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$6600(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100110

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 880
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->mMenuView:Landroid/widget/Button;

    sget v1, Lmiui/R$drawable;->action_mode_immersion_more_dark:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 881
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$6700(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$4700(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1, v0}, Lmiui/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 873
    :cond_2
    const/4 v1, 0x2

    goto :goto_1

    .line 881
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->mDefaultActionBarBg:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 883
    :cond_4
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/app/Activity;

    invoke-virtual {v0, v1}, Lmiui/app/Activity;->setTranslucentStatus(I)V

    .line 885
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->mBackView:Landroid/widget/ImageView;

    sget v1, Lmiui/R$drawable;->action_bar_back_light:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 886
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$6800(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100111

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 888
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->mMenuView:Landroid/widget/Button;

    sget v1, Lmiui/R$drawable;->action_mode_immersion_more_light:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 889
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$6900(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->mDefaultActionBarBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method private renameCard()V
    .locals 4

    .prologue
    .line 808
    new-instance v1, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;

    invoke-direct {v1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;-><init>()V

    .line 809
    .local v1, "creator":Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 810
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "card_name"

    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v3}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$3700(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/Card;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/card/Card;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    invoke-virtual {v1, v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;->setArguments(Landroid/os/Bundle;)V

    .line 812
    new-instance v2, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper$4;

    invoke-direct {v2, p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper$4;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;->setOnRenameDoneListener(Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog$OnRenameDoneListener;)V

    .line 827
    iget-object v2, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-virtual {v2}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "StoryAlbumRenameDialog"

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 828
    return-void
.end method

.method private showDeleteCardConfirmDialog()V
    .locals 6

    .prologue
    .line 831
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$5700(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .line 832
    invoke-static {v1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$5800(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v1

    const v2, 0x7f0c058b

    invoke-virtual {v1, v2}, Lcom/miui/gallery/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .line 833
    invoke-static {v2}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$5900(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v2

    const v3, 0x7f0c0588

    invoke-virtual {v2, v3}, Lcom/miui/gallery/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .line 834
    invoke-static {v3}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$6000(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v3

    const v4, 0x7f0c0589

    invoke-virtual {v3, v4}, Lcom/miui/gallery/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .line 835
    invoke-static {v4}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$6100(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v4

    const v5, 0x7f0c058a

    invoke-virtual {v4, v5}, Lcom/miui/gallery/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper$5;

    invoke-direct {v5, p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper$5;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;)V

    .line 831
    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/ui/ConfirmDialog;->showConfirmDialog(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;)V

    .line 848
    return-void
.end method


# virtual methods
.method public getActionBarHeight()I
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$7000(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public setActionBarTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 894
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 895
    return-void
.end method

.method public startActionBarTitleAnim(Z)V
    .locals 6
    .param p1, "isAppear"    # Z

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 898
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->mTitleAlphaAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->mTitleAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->mTitleAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 901
    :cond_0
    if-eqz p1, :cond_1

    .line 902
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->mTitleView:Landroid/widget/TextView;

    const-string v1, "alpha"

    new-array v2, v2, [F

    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getAlpha()F

    move-result v3

    aput v3, v2, v4

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->mTitleAlphaAnim:Landroid/animation/ObjectAnimator;

    .line 906
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->mTitleAlphaAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 907
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->mTitleAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 908
    return-void

    .line 904
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->mTitleView:Landroid/widget/TextView;

    const-string v1, "alpha"

    new-array v2, v2, [F

    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getAlpha()F

    move-result v3

    aput v3, v2, v4

    const/4 v3, 0x0

    aput v3, v2, v5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->mTitleAlphaAnim:Landroid/animation/ObjectAnimator;

    goto :goto_0
.end method
