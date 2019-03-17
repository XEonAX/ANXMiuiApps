.class public Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;
.super Ljava/lang/Object;
.source "MarkMyselfViewHelper.java"

# interfaces
.implements Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$View;


# instance fields
.field private mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mFragment:Landroid/app/Fragment;

.field private mLoadMoreClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMarkDialogFragment:Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;

.field private mMarkMyselfModel:Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel;

.field private mMarkMyselfOptions:Landroid/os/Bundle;

.field private mMarkMyselfPresenter:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;

.field private mPeopleSelectListener:Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$OnPeopleSelectListener;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mMarkMyselfPresenter:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;

    .line 22
    iput-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mMarkMyselfModel:Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel;

    .line 23
    iput-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mMarkDialogFragment:Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;

    .line 25
    iput-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mMarkMyselfOptions:Landroid/os/Bundle;

    .line 27
    new-instance v0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper$1;-><init>(Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;)V

    iput-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mLoadMoreClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 33
    new-instance v0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper$2;-><init>(Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;)V

    iput-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 39
    new-instance v0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper$3;-><init>(Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;)V

    iput-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mPeopleSelectListener:Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$OnPeopleSelectListener;

    .line 48
    iput-object p1, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mFragment:Landroid/app/Fragment;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;)Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mMarkMyselfPresenter:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;

    return-object v0
.end method


# virtual methods
.method public dismissSuggestionDialog()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mMarkDialogFragment:Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mMarkDialogFragment:Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->dismissAllowingStateLoss()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mMarkDialogFragment:Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;

    .line 106
    :cond_0
    return-void
.end method

.method public goToActivity(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/gallery/util/ActionURIHandler;->handleUri(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 118
    :cond_0
    return-void
.end method

.method public isSuggestionDialogVisible()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mMarkDialogFragment:Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mMarkDialogFragment:Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStart()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 52
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    .line 74
    :goto_0
    return v0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "MarkMyself"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;

    iput-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mMarkDialogFragment:Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;

    .line 58
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mMarkMyselfOptions:Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract;->buildMarkInfoForMarkMyself(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mMarkMyselfOptions:Landroid/os/Bundle;

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mMarkMyselfModel:Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel;

    if-nez v0, :cond_2

    .line 62
    new-instance v0, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel;

    invoke-direct {v0}, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mMarkMyselfModel:Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel;

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mMarkMyselfModel:Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel;

    iget-object v2, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mMarkMyselfOptions:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel;->needMark(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    new-instance v0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;

    iget-object v1, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mFragment:Landroid/app/Fragment;

    .line 66
    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mMarkMyselfModel:Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel;

    iget-object v3, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mMarkMyselfOptions:Landroid/os/Bundle;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;-><init>(Landroid/content/Context;Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$View;Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$Model;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mMarkMyselfPresenter:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;

    .line 67
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mMarkMyselfPresenter:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;

    invoke-virtual {v0}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->start()V

    .line 68
    const/4 v0, 0x1

    goto :goto_0

    .line 69
    :cond_3
    invoke-virtual {p0}, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->isSuggestionDialogVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 70
    new-instance v0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;

    iget-object v2, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mFragment:Landroid/app/Fragment;

    .line 71
    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mMarkMyselfModel:Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel;

    iget-object v4, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mMarkMyselfOptions:Landroid/os/Bundle;

    invoke-direct {v0, v2, p0, v3, v4}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;-><init>(Landroid/content/Context;Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$View;Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$Model;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mMarkMyselfPresenter:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;

    .line 72
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mMarkMyselfPresenter:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;

    invoke-virtual {v0}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->start()V

    :cond_4
    move v0, v1

    .line 74
    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mMarkMyselfPresenter:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mMarkMyselfPresenter:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;

    invoke-virtual {v0}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->stop()V

    .line 81
    :cond_0
    return-void
.end method

.method public setLoadMoreMarkResult(Z)V
    .locals 1
    .param p1, "succeeded"    # Z

    .prologue
    .line 135
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mMarkMyselfPresenter:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->setLoadMoreMarkResult(Z)V

    .line 136
    return-void
.end method

.method public showInfoDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lcom/miui/gallery/util/DialogUtil;->showInfoDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    .line 132
    :cond_0
    return-void
.end method

.method public showMarkResult(ZLjava/lang/String;)V
    .locals 1
    .param p1, "succeeded"    # Z
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 125
    :cond_0
    return-void
.end method

.method public showSuggestionDialog(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "loadMoreTitle"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/people/model/People;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p3, "peopleSuggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/people/model/People;>;"
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mMarkDialogFragment:Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;

    if-nez v0, :cond_2

    .line 89
    new-instance v0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;

    invoke-direct {v0}, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mMarkDialogFragment:Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mMarkDialogFragment:Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->setTitle(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mMarkDialogFragment:Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;

    iget-object v1, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mLoadMoreClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, p2, v1}, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->setLoadMoreButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mMarkDialogFragment:Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->setCancelButton(ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 94
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mMarkDialogFragment:Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;

    iget-object v1, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mPeopleSelectListener:Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$OnPeopleSelectListener;

    invoke-virtual {v0, p3, v1}, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->setPeopleList(Ljava/util/ArrayList;Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$OnPeopleSelectListener;)V

    .line 95
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mMarkDialogFragment:Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mMarkDialogFragment:Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;

    iget-object v1, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "MarkMyself"

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
