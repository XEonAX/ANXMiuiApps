.class Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;
.super Ljava/lang/Object;
.source "PeoplePageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PeoplePageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowEmptyViewHelper"
.end annotation


# instance fields
.field mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

.field final synthetic this$0:Lcom/miui/gallery/ui/PeoplePageFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/PeoplePageFragment;)V
    .locals 1

    .prologue
    .line 104
    iput-object p1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/PeoplePageFragment;Lcom/miui/gallery/ui/PeoplePageFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/PeoplePageFragment;
    .param p2, "x1"    # Lcom/miui/gallery/ui/PeoplePageFragment$1;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;-><init>(Lcom/miui/gallery/ui/PeoplePageFragment;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->setupNetworkConnection()V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;Landroid/view/ViewStub;Z)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;
    .param p1, "x1"    # Landroid/view/ViewStub;
    .param p2, "x2"    # Z

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->initializeEmptyView(Landroid/view/ViewStub;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->updateEmptyView()V

    return-void
.end method

.method private initializeEmptyView(Landroid/view/ViewStub;Z)Landroid/view/View;
    .locals 1
    .param p1, "stub"    # Landroid/view/ViewStub;
    .param p2, "cursorIsNull"    # Z

    .prologue
    .line 107
    if-eqz p2, :cond_1

    .line 108
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    if-nez v0, :cond_0

    .line 109
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/widget/EmptyPage;

    iput-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    .line 110
    invoke-direct {p0}, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->setupEmptyView()V

    .line 112
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->updateEmptyView()V

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    return-object v0
.end method

.method private setupEmptyView()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/EmptyPage;->setActionButtonVisible(Z)V

    .line 195
    return-void
.end method

.method private setupNetworkConnection()V
    .locals 2

    .prologue
    .line 198
    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PeoplePageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 199
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PeoplePageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 202
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private showFaceEmptyTips()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    const v1, 0x7f0c01db

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/EmptyPage;->setTitle(I)V

    .line 142
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/EmptyPage;->setActionButtonVisible(Z)V

    .line 143
    return-void
.end method

.method private showNoWifiTips()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    const v1, 0x7f0c01dd

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/EmptyPage;->setTitle(I)V

    .line 164
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    const v1, 0x7f0c048d

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/EmptyPage;->setActionButtonText(I)V

    .line 165
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/EmptyPage;->setActionButtonVisible(Z)V

    .line 166
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    new-instance v1, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper$2;-><init>(Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/EmptyPage;->setOnActionButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    return-void
.end method

.method private showSwitchClosedTips()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    const v1, 0x7f0c01e3

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/EmptyPage;->setTitle(I)V

    .line 176
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    const v1, 0x7f0c04ad

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/EmptyPage;->setActionButtonText(I)V

    .line 177
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/EmptyPage;->setActionButtonVisible(Z)V

    .line 178
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    new-instance v1, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper$3;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper$3;-><init>(Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/EmptyPage;->setOnActionButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    return-void
.end method

.method private showSyncOffTips()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    const v1, 0x7f0c01e3

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/EmptyPage;->setTitle(I)V

    .line 152
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    const v1, 0x7f0c042a

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/EmptyPage;->setActionButtonText(I)V

    .line 153
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/EmptyPage;->setActionButtonVisible(Z)V

    .line 154
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    new-instance v1, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper$1;-><init>(Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/EmptyPage;->setOnActionButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    return-void
.end method

.method private showSyncingTips()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    const v1, 0x7f0c01dc

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/EmptyPage;->setTitle(I)V

    .line 147
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/EmptyPage;->setActionButtonVisible(Z)V

    .line 148
    return-void
.end method

.method private updateEmptyView()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    if-nez v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsFirstSynced()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    invoke-static {}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->isFaceAlbumEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    invoke-direct {p0}, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->showSwitchClosedTips()V

    goto :goto_0

    .line 125
    :cond_1
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Face;->isFirstSyncCompleted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    invoke-direct {p0}, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->showFaceEmptyTips()V

    goto :goto_0

    .line 131
    :cond_2
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 132
    invoke-direct {p0}, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->showNoWifiTips()V

    goto :goto_0

    .line 133
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v0}, Lcom/miui/gallery/util/SyncUtil;->isGalleryCloudSyncable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 134
    invoke-direct {p0}, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->showSyncOffTips()V

    goto :goto_0

    .line 136
    :cond_4
    invoke-direct {p0}, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->showSyncingTips()V

    goto :goto_0
.end method
