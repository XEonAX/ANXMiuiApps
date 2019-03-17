.class Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;
.super Ljava/lang/Object;
.source "PeoplePageFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PeoplePageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PeoplePagePhotoLoaderCallback"
.end annotation


# instance fields
.field private mChangeToVisibleFuture:Lcom/miui/gallery/threadpool/Future;

.field private mLastLoadVisibilityUndefinedIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/gallery/ui/PeoplePageFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/PeoplePageFragment;)V
    .locals 1

    .prologue
    .line 318
    iput-object p1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->mLastLoadVisibilityUndefinedIds:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/PeoplePageFragment;Lcom/miui/gallery/ui/PeoplePageFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/PeoplePageFragment;
    .param p2, "x1"    # Lcom/miui/gallery/ui/PeoplePageFragment$1;

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;-><init>(Lcom/miui/gallery/ui/PeoplePageFragment;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->mLastLoadVisibilityUndefinedIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method private changeUndefinedToVisible(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 510
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->mChangeToVisibleFuture:Lcom/miui/gallery/threadpool/Future;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->mChangeToVisibleFuture:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    .line 512
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->mChangeToVisibleFuture:Lcom/miui/gallery/threadpool/Future;

    .line 514
    :cond_0
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback$2;-><init>(Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->mChangeToVisibleFuture:Lcom/miui/gallery/threadpool/Future;

    .line 529
    return-void
.end method

.method private doResetFooterAfterReload(Z)V
    .locals 3
    .param p1, "emptyResult"    # Z

    .prologue
    .line 414
    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$400(Lcom/miui/gallery/ui/PeoplePageFragment;)Lcom/miui/gallery/ui/PeoplePageFragment$DisplayPeopleMode;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/ui/PeoplePageFragment$DisplayPeopleMode;->NOT_DISTINGUISH:Lcom/miui/gallery/ui/PeoplePageFragment$DisplayPeopleMode;

    if-ne v1, v2, :cond_1

    .line 415
    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$1600(Lcom/miui/gallery/ui/PeoplePageFragment;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$1700(Lcom/miui/gallery/ui/PeoplePageFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->removeFooterView(Landroid/view/View;)Z

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    if-nez p1, :cond_0

    .line 421
    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$1600(Lcom/miui/gallery/ui/PeoplePageFragment;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$1700(Lcom/miui/gallery/ui/PeoplePageFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->addFooterView(Landroid/view/View;)V

    .line 423
    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$400(Lcom/miui/gallery/ui/PeoplePageFragment;)Lcom/miui/gallery/ui/PeoplePageFragment$DisplayPeopleMode;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/ui/PeoplePageFragment$DisplayPeopleMode;->DISPLAY_PARTIAL_PEOPLE:Lcom/miui/gallery/ui/PeoplePageFragment$DisplayPeopleMode;

    if-ne v1, v2, :cond_2

    .line 424
    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v2, 0x7f0c01ce

    invoke-virtual {v1, v2}, Lcom/miui/gallery/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "text":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$1700(Lcom/miui/gallery/ui/PeoplePageFragment;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f120285

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 426
    .end local v0    # "text":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v2, 0x7f0c0121

    invoke-virtual {v1, v2}, Lcom/miui/gallery/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_1
.end method

.method private getVisibilityTypeUndefinedIds(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 497
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 498
    .local v0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 499
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 500
    invoke-static {p1}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getVisibilityType(Landroid/database/Cursor;)I

    move-result v1

    if-nez v1, :cond_0

    .line 502
    invoke-static {p1}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getPeopleLocalId(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 506
    :cond_1
    return-object v0
.end method

.method private initMarkMyselfHelper()Z
    .locals 3

    .prologue
    .line 532
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$700(Lcom/miui/gallery/ui/PeoplePageFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 537
    :goto_0
    return v0

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$1800(Lcom/miui/gallery/ui/PeoplePageFragment;)Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;

    move-result-object v0

    if-nez v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    new-instance v1, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;

    iget-object v2, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-direct {v1, v2}, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;-><init>(Landroid/app/Fragment;)V

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$1802(Lcom/miui/gallery/ui/PeoplePageFragment;Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;)Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;

    .line 537
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$1800(Lcom/miui/gallery/ui/PeoplePageFragment;)Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->onStart()Z

    move-result v0

    goto :goto_0
.end method

.method private initialSetGroupToastDialog(Landroid/database/Cursor;)V
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v6, 0x1

    .line 444
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->seeIfHasNamedPeople(Landroid/database/Cursor;)Z

    move-result v1

    .line 449
    .local v1, "isOldUser":Z
    if-eqz v1, :cond_2

    .line 450
    iget-object v4, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/PeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v5, 0x7f0c0488

    .line 451
    invoke-virtual {v4, v5}, Lcom/miui/gallery/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 452
    .local v3, "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/PeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v5, 0x7f0c0486

    .line 453
    invoke-virtual {v4, v5}, Lcom/miui/gallery/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 461
    .local v2, "msg":Ljava/lang/String;
    :goto_1
    new-instance v0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback$1;-><init>(Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;)V

    .line 471
    .local v0, "confirmListener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v4, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    iget-boolean v4, v4, Lcom/miui/gallery/ui/PeoplePageFragment;->mHaveShownSetGroupToastDialog:Z

    if-nez v4, :cond_0

    .line 472
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    iget-object v5, v5, Lcom/miui/gallery/ui/PeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 473
    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 474
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 475
    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c0244

    .line 476
    invoke-virtual {v4, v5, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 477
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 478
    iget-object v4, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    iput-boolean v6, v4, Lcom/miui/gallery/ui/PeoplePageFragment;->mHaveShownSetGroupToastDialog:Z

    goto :goto_0

    .line 455
    .end local v0    # "confirmListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/PeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v5, 0x7f0c0487

    .line 456
    invoke-virtual {v4, v5}, Lcom/miui/gallery/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 457
    .restart local v3    # "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/PeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v5, 0x7f0c0485

    .line 458
    invoke-virtual {v4, v5}, Lcom/miui/gallery/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "msg":Ljava/lang/String;
    goto :goto_1
.end method

.method private seeIfHasNamedPeople(Landroid/database/Cursor;)Z
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x0

    .line 483
    if-eqz p1, :cond_1

    .line 484
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 488
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 489
    invoke-static {p1}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getPeopleName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 490
    const/4 v0, 0x1

    .line 493
    :cond_1
    return v0
.end method

.method private shouldShowSetGroupToastDialog()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 437
    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$700(Lcom/miui/gallery/ui/PeoplePageFragment;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    .line 438
    invoke-static {v1}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$1800(Lcom/miui/gallery/ui/PeoplePageFragment;)Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$1800(Lcom/miui/gallery/ui/PeoplePageFragment;)Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->isSuggestionDialogVisible()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    iget-boolean v1, v1, Lcom/miui/gallery/ui/PeoplePageFragment;->mHaveShownSetGroupToastDialog:Z

    if-nez v1, :cond_1

    const-string v1, "has_toast_how_to_set_group"

    .line 439
    invoke-static {v1, v0}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private wrapCursorByDisplayMode(Landroid/database/Cursor;Ljava/util/ArrayList;Ljava/util/HashMap;)Landroid/database/Cursor;
    .locals 10
    .param p1, "all"    # Landroid/database/Cursor;
    .param p3, "userDefineRelationMap"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .local p2, "userDefineRelationText":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v9, 0x12

    .line 360
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-nez v8, :cond_1

    .line 408
    .end local p1    # "all":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object p1

    .line 363
    .restart local p1    # "all":Landroid/database/Cursor;
    :cond_1
    const/4 v7, 0x0

    .line 364
    .local v7, "unnamedUnknownRelationPeopleCount":I
    const/4 v6, 0x0

    .line 365
    .local v6, "unknownRelationPeopleCount":I
    const/4 v3, 0x0

    .line 366
    .local v3, "passedPeopleCount":I
    const/16 v0, 0x12

    .line 369
    .local v0, "MAX_UNNAMED_UNKNOWN_RELATION_PEOPLE_SHOW":I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_3

    if-gt v7, v9, :cond_3

    .line 372
    invoke-static {p1}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getRelationType(Landroid/database/Cursor;)I

    move-result v5

    .line 373
    .local v5, "relationType":I
    invoke-static {v5}, Lcom/miui/gallery/model/PeopleContactInfo;->isUserDefineRelation(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 374
    invoke-static {p1}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getRelationText(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    .line 375
    .local v4, "relation":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {p3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 376
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p3, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    .end local v4    # "relation":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 386
    if-lt v3, v9, :cond_5

    if-lez v7, :cond_5

    rem-int/lit8 v8, v6, 0x3

    if-nez v8, :cond_5

    .line 394
    .end local v5    # "relationType":I
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-ne v3, v8, :cond_6

    .line 395
    iget-object v8, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    sget-object v9, Lcom/miui/gallery/ui/PeoplePageFragment$DisplayPeopleMode;->NOT_DISTINGUISH:Lcom/miui/gallery/ui/PeoplePageFragment$DisplayPeopleMode;

    invoke-static {v8, v9}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$402(Lcom/miui/gallery/ui/PeoplePageFragment;Lcom/miui/gallery/ui/PeoplePageFragment$DisplayPeopleMode;)Lcom/miui/gallery/ui/PeoplePageFragment$DisplayPeopleMode;

    goto :goto_0

    .line 379
    .restart local v5    # "relationType":I
    :cond_4
    invoke-static {v5}, Lcom/miui/gallery/model/PeopleContactInfo;->isUnKnownRelation(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 380
    add-int/lit8 v6, v6, 0x1

    .line 381
    invoke-static {p1}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getPeopleName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 382
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 371
    :cond_5
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 398
    .end local v5    # "relationType":I
    :cond_6
    iget-object v8, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-static {v8}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$400(Lcom/miui/gallery/ui/PeoplePageFragment;)Lcom/miui/gallery/ui/PeoplePageFragment$DisplayPeopleMode;

    move-result-object v8

    sget-object v9, Lcom/miui/gallery/ui/PeoplePageFragment$DisplayPeopleMode;->DISPLAY_PARTIAL_PEOPLE:Lcom/miui/gallery/ui/PeoplePageFragment$DisplayPeopleMode;

    if-ne v8, v9, :cond_0

    .line 399
    const/4 v1, 0x0

    .line 400
    .local v1, "count":I
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v8, Lcom/miui/gallery/util/face/PeopleCursorHelper;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v2, v8}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 401
    .local v2, "cursor":Landroid/database/MatrixCursor;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_7

    if-ge v1, v3, :cond_7

    .line 403
    invoke-static {v2, p1}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->add2MatrixCursor(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    .line 404
    add-int/lit8 v1, v1, 0x1

    .line 402
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_3

    :cond_7
    move-object p1, v2

    .line 406
    goto/16 :goto_0
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .param p1, "i"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 325
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v0, v1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 326
    .local v0, "loader":Landroid/content/CursorLoader;
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->PERSONS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 327
    sget-object v1, Lcom/miui/gallery/util/face/PeopleCursorHelper;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 328
    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 11
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 333
    move-object v7, p2

    check-cast v7, Landroid/database/Cursor;

    invoke-direct {p0, v7}, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->getVisibilityTypeUndefinedIds(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v3

    .line 334
    .local v3, "undefinedVisibilityIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->initMarkMyselfHelper()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    iget-boolean v7, v7, Lcom/miui/gallery/ui/PeoplePageFragment;->mFirstLoadFinish:Z

    if-eqz v7, :cond_0

    invoke-direct {p0}, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->shouldShowSetGroupToastDialog()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, p2

    .line 335
    check-cast v7, Landroid/database/Cursor;

    invoke-direct {p0, v7}, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->initialSetGroupToastDialog(Landroid/database/Cursor;)V

    .line 337
    :cond_0
    iget-object v7, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    iput-boolean v8, v7, Lcom/miui/gallery/ui/PeoplePageFragment;->mFirstLoadFinish:Z

    .line 338
    if-eqz p2, :cond_1

    move-object v7, p2

    check-cast v7, Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-nez v7, :cond_4

    :cond_1
    move v0, v9

    .line 339
    .local v0, "emptyResult":Z
    :goto_0
    iget-object v7, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-static {v7}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$1400(Lcom/miui/gallery/ui/PeoplePageFragment;)Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;

    move-result-object v7

    iget-object v10, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-static {v10}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$1300(Lcom/miui/gallery/ui/PeoplePageFragment;)Landroid/view/ViewStub;

    move-result-object v10

    invoke-static {v7, v10, v0}, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->access$1500(Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;Landroid/view/ViewStub;Z)Landroid/view/View;

    move-result-object v1

    .line 340
    .local v1, "emptyView":Landroid/view/View;
    iget-object v7, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-static {v7}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$1600(Lcom/miui/gallery/ui/PeoplePageFragment;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setEmptyView(Landroid/view/View;)V

    .line 341
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 342
    .local v5, "userDefineRelationText":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 343
    .local v4, "userDefineRelationMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "o":Ljava/lang/Object;
    invoke-direct {p0, p2, v5, v4}, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->wrapCursorByDisplayMode(Landroid/database/Cursor;Ljava/util/ArrayList;Ljava/util/HashMap;)Landroid/database/Cursor;

    move-result-object v6

    .line 344
    .local v6, "wrappedCursor":Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->doResetFooterAfterReload(Z)V

    .line 345
    invoke-static {v5}, Lcom/miui/gallery/model/PeopleContactInfo$UserDefineRelation;->setUserDefineRelations(Ljava/util/ArrayList;)V

    .line 346
    iget-object v7, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-static {v7}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$600(Lcom/miui/gallery/ui/PeoplePageFragment;)Lcom/miui/gallery/adapter/PeoplePageAdapter;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/miui/gallery/adapter/PeoplePageAdapter;->setUserDefineRelationMap(Ljava/util/HashMap;)V

    .line 347
    iget-object v7, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-static {v7}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$600(Lcom/miui/gallery/ui/PeoplePageFragment;)Lcom/miui/gallery/adapter/PeoplePageAdapter;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/miui/gallery/adapter/PeoplePageAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 350
    iget-object v10, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->mLastLoadVisibilityUndefinedIds:Ljava/util/ArrayList;

    monitor-enter v10

    .line 351
    :try_start_0
    iget-object v7, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->mLastLoadVisibilityUndefinedIds:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->mLastLoadVisibilityUndefinedIds:Ljava/util/ArrayList;

    .line 352
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_5

    :cond_2
    move v2, v9

    .line 353
    .local v2, "needChangeToVisible":Z
    :goto_1
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    if-eqz v2, :cond_3

    .line 355
    invoke-direct {p0, v3}, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->changeUndefinedToVisible(Ljava/util/ArrayList;)V

    .line 357
    :cond_3
    return-void

    .end local v0    # "emptyResult":Z
    .end local v1    # "emptyView":Landroid/view/View;
    .end local v2    # "needChangeToVisible":Z
    .end local v4    # "userDefineRelationMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v5    # "userDefineRelationText":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "wrappedCursor":Landroid/database/Cursor;
    .restart local p2    # "o":Ljava/lang/Object;
    :cond_4
    move v0, v8

    .line 338
    goto :goto_0

    .end local p2    # "o":Ljava/lang/Object;
    .restart local v0    # "emptyResult":Z
    .restart local v1    # "emptyView":Landroid/view/View;
    .restart local v4    # "userDefineRelationMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v5    # "userDefineRelationText":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "wrappedCursor":Landroid/database/Cursor;
    :cond_5
    move v2, v8

    .line 352
    goto :goto_1

    .line 353
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;

    .prologue
    .line 434
    return-void
.end method
