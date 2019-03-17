.class Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;
.super Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;
.source "PhotoPreviewSelectFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChoiceManager"
.end annotation


# instance fields
.field private mCancelBtn:Landroid/widget/Button;

.field private mSelectAllBtn:Landroid/widget/Button;

.field private mTitleView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;)V
    .locals 2

    .prologue
    .line 126
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;

    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;-><init>(Lcom/miui/gallery/ui/PhotoPageFragmentBase;)V

    .line 127
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;->initTopBar()V

    .line 128
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;->setUpChooserFragment(IZ)V

    .line 129
    iget-object v0, p1, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->startActionMode(Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;)Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    .line 130
    return-void
.end method

.method private initTopBar()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 156
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040065

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 157
    .local v0, "customView":Landroid/view/View;
    const v2, 0x7f12014b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;->mCancelBtn:Landroid/widget/Button;

    .line 158
    const v2, 0x7f12014c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;->mTitleView:Landroid/widget/TextView;

    .line 159
    const v2, 0x7f12014d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;->mSelectAllBtn:Landroid/widget/Button;

    .line 160
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;->mSelectAllBtn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;->mCancelBtn:Landroid/widget/Button;

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Lmiui/gallery/support/MiuiSdkCompat;->setEditActionModeButton(Landroid/content/Context;Landroid/widget/Button;I)V

    .line 163
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;->mSelectAllBtn:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lmiui/gallery/support/MiuiSdkCompat;->setEditActionModeButton(Landroid/content/Context;Landroid/widget/Button;I)V

    .line 164
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/miui/gallery/activity/BaseActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lmiui/app/ActionBar;->setDisplayOptions(I)V

    .line 165
    new-instance v1, Landroid/app/ActionBar$LayoutParams;

    const/16 v2, 0x13

    invoke-direct {v1, v5, v5, v2}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    .line 168
    .local v1, "lp":Landroid/app/ActionBar$LayoutParams;
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/miui/gallery/activity/BaseActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lmiui/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 169
    return-void
.end method


# virtual methods
.method protected getChoiceTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected getContainerId()I
    .locals 1

    .prologue
    .line 201
    const v0, 0x7f120001

    return v0
.end method

.method public initSelected(Lcom/miui/gallery/model/BaseDataSet;)V
    .locals 9
    .param p1, "set"    # Lcom/miui/gallery/model/BaseDataSet;

    .prologue
    .line 133
    iget-object v7, p0, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;

    invoke-virtual {v7}, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "photo_preview_selected_ids"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    .line 134
    .local v1, "ids":[J
    iget-object v7, p0, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;

    invoke-virtual {v7}, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "photo_preview_selected_positions"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v6

    .line 135
    .local v6, "pos":[I
    if-eqz v1, :cond_3

    if-eqz v6, :cond_3

    if-eqz p1, :cond_3

    .line 136
    array-length v7, v1

    array-length v8, v6

    if-eq v7, v8, :cond_0

    .line 137
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "ids and positions not match"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 140
    :cond_0
    new-instance v5, Lcom/miui/gallery/model/BaseDataItem;

    invoke-direct {v5}, Lcom/miui/gallery/model/BaseDataItem;-><init>()V

    .line 141
    .local v5, "item":Lcom/miui/gallery/model/BaseDataItem;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v7, v1

    if-ge v0, v7, :cond_2

    .line 142
    aget-wide v2, v1, v0

    .line 143
    .local v2, "id":J
    invoke-virtual {v5, v2, v3}, Lcom/miui/gallery/model/BaseDataItem;->setKey(J)Lcom/miui/gallery/model/BaseDataItem;

    .line 144
    aget v7, v6, v0

    invoke-virtual {p1, v5, v7}, Lcom/miui/gallery/model/BaseDataSet;->getIndexOfItem(Lcom/miui/gallery/model/BaseDataItem;I)I

    move-result v4

    .line 145
    .local v4, "index":I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_1

    .line 146
    iget-object v7, p0, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-virtual {v7, v4, v2, v3}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->appendCheck(IJ)V

    .line 141
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    .end local v2    # "id":J
    .end local v4    # "index":I
    :cond_2
    iget-object v7, p0, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-virtual {v7}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->finishInit()V

    .line 151
    .end local v0    # "i":I
    .end local v5    # "item":Lcom/miui/gallery/model/BaseDataItem;
    :cond_3
    iget-object v7, p0, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;

    invoke-virtual {v7}, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "photo_preview_selected_ids"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 152
    iget-object v7, p0, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;

    invoke-virtual {v7}, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "photo_preview_selected_positions"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 186
    :goto_0
    :pswitch_0
    return-void

    .line 175
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;->finish()V

    .line 177
    :pswitch_2
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->getSelectItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-virtual {v1}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->chooseAll()V

    goto :goto_0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->unChooseAll()V

    goto :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x7f12014b
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onShared()V
    .locals 1

    .prologue
    .line 211
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->onShared()V

    .line 212
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;->finish()V

    .line 213
    return-void
.end method

.method protected updateSelectMode()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 189
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-virtual {v4}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->getSelectItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 190
    .local v1, "size":I
    if-lez v1, :cond_0

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-virtual {v4}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->getCount()I

    move-result v4

    if-ne v1, v4, :cond_0

    move v0, v2

    .line 191
    .local v0, "allSelected":Z
    :goto_0
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;->mSelectAllBtn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    :goto_1
    invoke-static {v4, v5, v2}, Lmiui/gallery/support/MiuiSdkCompat;->setEditActionModeButton(Landroid/content/Context;Landroid/widget/Button;I)V

    .line 196
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->updateSelectMode()V

    .line 197
    return-void

    .end local v0    # "allSelected":Z
    :cond_0
    move v0, v3

    .line 190
    goto :goto_0

    .restart local v0    # "allSelected":Z
    :cond_1
    move v2, v3

    .line 191
    goto :goto_1
.end method
