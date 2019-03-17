.class public Lcom/miui/gallery/ui/SearchFeedbackTaskController;
.super Ljava/lang/Object;
.source "SearchFeedbackTaskController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/SearchFeedbackTaskController$FeedbackInfoQueryTask;
    }
.end annotation


# instance fields
.field private mFragment:Lmiui/app/Fragment;

.field private mIndicator:Landroid/view/View;

.field private mProgress:Landroid/widget/TextView;

.field private mResumed:Z

.field private mTaskStatus:I


# direct methods
.method public constructor <init>(Lmiui/app/Fragment;Landroid/view/View;)V
    .locals 2
    .param p1, "fragment"    # Lmiui/app/Fragment;
    .param p2, "indicator"    # Landroid/view/View;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/ui/SearchFeedbackTaskController;->mTaskStatus:I

    .line 36
    iput-object p1, p0, Lcom/miui/gallery/ui/SearchFeedbackTaskController;->mFragment:Lmiui/app/Fragment;

    .line 37
    iput-object p2, p0, Lcom/miui/gallery/ui/SearchFeedbackTaskController;->mIndicator:Landroid/view/View;

    .line 38
    iget-object v0, p0, Lcom/miui/gallery/ui/SearchFeedbackTaskController;->mIndicator:Landroid/view/View;

    const v1, 0x7f12026f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/ui/SearchFeedbackTaskController;->mProgress:Landroid/widget/TextView;

    .line 39
    iget-object v0, p0, Lcom/miui/gallery/ui/SearchFeedbackTaskController;->mIndicator:Landroid/view/View;

    new-instance v1, Lcom/miui/gallery/ui/SearchFeedbackTaskController$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/SearchFeedbackTaskController$1;-><init>(Lcom/miui/gallery/ui/SearchFeedbackTaskController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    invoke-direct {p0}, Lcom/miui/gallery/ui/SearchFeedbackTaskController;->hideIndicator()V

    .line 46
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/SearchFeedbackTaskController;II)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/SearchFeedbackTaskController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/SearchFeedbackTaskController;->getFeedbackTaskStatus(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/SearchFeedbackTaskController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/SearchFeedbackTaskController;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/miui/gallery/ui/SearchFeedbackTaskController;->mResumed:Z

    return v0
.end method

.method static synthetic access$302(Lcom/miui/gallery/ui/SearchFeedbackTaskController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/SearchFeedbackTaskController;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/miui/gallery/ui/SearchFeedbackTaskController;->mTaskStatus:I

    return p1
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/SearchFeedbackTaskController;II)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/SearchFeedbackTaskController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/SearchFeedbackTaskController;->updateIndicatorUI(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/gallery/ui/SearchFeedbackTaskController;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/SearchFeedbackTaskController;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/miui/gallery/ui/SearchFeedbackTaskController;->hideIndicator()V

    return-void
.end method

.method private getFeedbackTaskStatus(II)I
    .locals 2
    .param p1, "taskNum"    # I
    .param p2, "finishNum"    # I

    .prologue
    .line 86
    if-gtz p1, :cond_0

    .line 87
    const-string v0, "SearchFeedbackTaskController"

    const-string v1, "Something wrong may happened, invalid feedback task num"

    invoke-static {v0, v1}, Lcom/miui/gallery/search/utils/SearchLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const/4 v0, -0x1

    .line 90
    :goto_0
    return v0

    :cond_0
    if-lt p2, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideIndicator()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/gallery/ui/SearchFeedbackTaskController;->mIndicator:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    return-void
.end method

.method private updateIndicatorUI(II)V
    .locals 5
    .param p1, "taskNum"    # I
    .param p2, "finishNum"    # I

    .prologue
    const/4 v4, 0x0

    .line 67
    iget v0, p0, Lcom/miui/gallery/ui/SearchFeedbackTaskController;->mTaskStatus:I

    if-gez v0, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/miui/gallery/ui/SearchFeedbackTaskController;->hideIndicator()V

    .line 83
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/SearchFeedbackTaskController;->mIndicator:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget v0, p0, Lcom/miui/gallery/ui/SearchFeedbackTaskController;->mTaskStatus:I

    packed-switch v0, :pswitch_data_0

    .line 81
    invoke-direct {p0}, Lcom/miui/gallery/ui/SearchFeedbackTaskController;->hideIndicator()V

    goto :goto_0

    .line 75
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/ui/SearchFeedbackTaskController;->mProgress:Landroid/widget/TextView;

    const v1, 0x7f0c043c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 78
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/ui/SearchFeedbackTaskController;->mProgress:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/gallery/ui/SearchFeedbackTaskController;->mFragment:Lmiui/app/Fragment;

    const v2, 0x7f0c043d

    invoke-virtual {v1, v2}, Lmiui/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onPause()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/SearchFeedbackTaskController;->mResumed:Z

    .line 60
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/SearchFeedbackTaskController;->mResumed:Z

    .line 55
    new-instance v0, Lcom/miui/gallery/ui/SearchFeedbackTaskController$FeedbackInfoQueryTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/SearchFeedbackTaskController$FeedbackInfoQueryTask;-><init>(Lcom/miui/gallery/ui/SearchFeedbackTaskController;Lcom/miui/gallery/ui/SearchFeedbackTaskController$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/SearchFeedbackTaskController$FeedbackInfoQueryTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 56
    return-void
.end method
