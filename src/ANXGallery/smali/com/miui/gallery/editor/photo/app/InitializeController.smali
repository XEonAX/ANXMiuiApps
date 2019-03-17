.class public Lcom/miui/gallery/editor/photo/app/InitializeController;
.super Ljava/lang/Object;
.source "InitializeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/app/InitializeController$Callbacks;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBackgroundTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacks:Lcom/miui/gallery/editor/photo/app/InitializeController$Callbacks;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/gallery/editor/photo/app/InitializeController$Callbacks;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callbacks"    # Lcom/miui/gallery/editor/photo/app/InitializeController$Callbacks;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/miui/gallery/editor/photo/app/InitializeController$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/InitializeController$1;-><init>(Lcom/miui/gallery/editor/photo/app/InitializeController;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/InitializeController;->mBackgroundTask:Landroid/os/AsyncTask;

    .line 17
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/InitializeController;->mActivity:Landroid/app/Activity;

    .line 18
    iput-object p2, p0, Lcom/miui/gallery/editor/photo/app/InitializeController;->mCallbacks:Lcom/miui/gallery/editor/photo/app/InitializeController$Callbacks;

    .line 19
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/editor/photo/app/InitializeController;)Lcom/miui/gallery/editor/photo/app/InitializeController$Callbacks;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/InitializeController;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/InitializeController;->mCallbacks:Lcom/miui/gallery/editor/photo/app/InitializeController$Callbacks;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/app/InitializeController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/InitializeController;
    .param p1, "x1"    # I

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/app/InitializeController;->postResult(I)V

    return-void
.end method

.method private postResult(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x0

    .line 39
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/InitializeController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/InitializeController;->mCallbacks:Lcom/miui/gallery/editor/photo/app/InitializeController$Callbacks;

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/app/InitializeController$Callbacks;->onDone()V

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 44
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/InitializeController;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0c025b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 48
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/InitializeController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 45
    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 46
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/InitializeController;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0c025e

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method


# virtual methods
.method public doInitialize()V
    .locals 3

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/InitializeController;->mBackgroundTask:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 23
    return-void
.end method
