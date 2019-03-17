.class Lcom/miui/gallery/util/DebugUtil$DebugTask;
.super Landroid/os/AsyncTask;
.source "DebugUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/DebugUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DebugTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static sDebugging:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mProgress:Lcom/miui/gallery/ui/ProgressDialogFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/miui/gallery/util/DebugUtil$DebugTask;->sDebugging:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 103
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/util/DebugUtil$DebugTask;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 104
    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 107
    iget-object v1, p0, Lcom/miui/gallery/util/DebugUtil$DebugTask;->mActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/miui/gallery/util/DebugUtil$DebugTask;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 109
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 116
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return-object v0

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/util/DebugUtil$DebugTask;->mProgress:Lcom/miui/gallery/ui/ProgressDialogFragment;

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/miui/gallery/util/DebugUtil$DebugTask;->mProgress:Lcom/miui/gallery/ui/ProgressDialogFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/ProgressDialogFragment;->dismissAllowingStateLoss()V

    .line 116
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 96
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/DebugUtil$DebugTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v2, 0x0

    .line 132
    sget-object v0, Lcom/miui/gallery/util/DebugUtil$DebugTask;->sDebugging:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    :goto_0
    return-object v2

    .line 135
    :cond_0
    sget-object v0, Lcom/miui/gallery/util/DebugUtil$DebugTask;->sDebugging:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 136
    invoke-static {}, Lcom/miui/gallery/util/DebugUtil;->access$000()V

    .line 138
    sget-object v0, Lcom/miui/gallery/util/DebugUtil$DebugTask;->sDebugging:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 96
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/DebugUtil$DebugTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 5
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 144
    iget-object v1, p0, Lcom/miui/gallery/util/DebugUtil$DebugTask;->mProgress:Lcom/miui/gallery/ui/ProgressDialogFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/util/DebugUtil$DebugTask;->mProgress:Lcom/miui/gallery/ui/ProgressDialogFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/ProgressDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/miui/gallery/util/DebugUtil$DebugTask;->mProgress:Lcom/miui/gallery/ui/ProgressDialogFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/ProgressDialogFragment;->dismissAllowingStateLoss()V

    .line 146
    invoke-direct {p0}, Lcom/miui/gallery/util/DebugUtil$DebugTask;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 147
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 149
    new-instance v1, Lcom/miui/gallery/util/DebugUtil$DebugTask$1;

    invoke-direct {v1, p0, v0}, Lcom/miui/gallery/util/DebugUtil$DebugTask$1;-><init>(Lcom/miui/gallery/util/DebugUtil$DebugTask;Landroid/app/Activity;)V

    const v2, 0x7f0c04f5

    .line 156
    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c0145

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0c02f9

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 149
    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/gallery/util/DialogUtil;->showConfirmAlert(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/app/AlertDialog;

    .line 159
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/miui/gallery/util/DebugUtil$DebugTask;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 122
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 123
    new-instance v1, Lcom/miui/gallery/ui/ProgressDialogFragment;

    invoke-direct {v1}, Lcom/miui/gallery/ui/ProgressDialogFragment;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/util/DebugUtil$DebugTask;->mProgress:Lcom/miui/gallery/ui/ProgressDialogFragment;

    .line 124
    iget-object v1, p0, Lcom/miui/gallery/util/DebugUtil$DebugTask;->mProgress:Lcom/miui/gallery/ui/ProgressDialogFragment;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0146

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/ProgressDialogFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v1, p0, Lcom/miui/gallery/util/DebugUtil$DebugTask;->mProgress:Lcom/miui/gallery/ui/ProgressDialogFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/ProgressDialogFragment;->setCancelable(Z)V

    .line 126
    iget-object v1, p0, Lcom/miui/gallery/util/DebugUtil$DebugTask;->mProgress:Lcom/miui/gallery/ui/ProgressDialogFragment;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "DebugUtil"

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/ui/ProgressDialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 128
    :cond_0
    return-void
.end method
