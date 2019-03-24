.class public abstract Lmiui/os/AsyncTaskWithProgress;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;,
        Lmiui/os/AsyncTaskWithProgress$Listeners;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask<",
        "TParams;",
        "Ljava/lang/Integer;",
        "TResult;>;"
    }
.end annotation


# static fields
.field private static final DF:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmiui/os/AsyncTaskWithProgress<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field private DG:I

.field private DH:I

.field private DI:I

.field private volatile DL:Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

.field private final DN:Lmiui/os/AsyncTaskWithProgress$Listeners;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/os/AsyncTaskWithProgress<",
            "TParams;TResult;>.",
            "Listeners;"
        }
    .end annotation
.end field

.field private final bn:Landroid/app/FragmentManager;

.field private fr:I

.field private mCancelable:Z

.field private mMessage:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;

.field private wT:I

.field private xi:I

.field private xs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/os/AsyncTaskWithProgress;->DF:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/app/FragmentManager;)V
    .locals 2

    .line 71
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lmiui/os/AsyncTaskWithProgress;->wT:I

    .line 53
    iput v0, p0, Lmiui/os/AsyncTaskWithProgress;->DG:I

    .line 54
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/os/AsyncTaskWithProgress;->mTitle:Ljava/lang/CharSequence;

    .line 55
    iput v0, p0, Lmiui/os/AsyncTaskWithProgress;->DH:I

    .line 56
    iput-object v1, p0, Lmiui/os/AsyncTaskWithProgress;->mMessage:Ljava/lang/CharSequence;

    .line 57
    iput-boolean v0, p0, Lmiui/os/AsyncTaskWithProgress;->mCancelable:Z

    .line 58
    iput-boolean v0, p0, Lmiui/os/AsyncTaskWithProgress;->xs:Z

    .line 59
    iput v0, p0, Lmiui/os/AsyncTaskWithProgress;->DI:I

    .line 60
    iput v0, p0, Lmiui/os/AsyncTaskWithProgress;->xi:I

    .line 61
    iput v0, p0, Lmiui/os/AsyncTaskWithProgress;->fr:I

    .line 62
    iput-object v1, p0, Lmiui/os/AsyncTaskWithProgress;->DL:Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    .line 63
    new-instance v0, Lmiui/os/AsyncTaskWithProgress$Listeners;

    invoke-direct {v0, p0, v1}, Lmiui/os/AsyncTaskWithProgress$Listeners;-><init>(Lmiui/os/AsyncTaskWithProgress;Lmiui/os/AsyncTaskWithProgress$1;)V

    iput-object v0, p0, Lmiui/os/AsyncTaskWithProgress;->DN:Lmiui/os/AsyncTaskWithProgress$Listeners;

    .line 72
    iput-object p1, p0, Lmiui/os/AsyncTaskWithProgress;->bn:Landroid/app/FragmentManager;

    .line 73
    return-void
.end method

.method static synthetic a(Lmiui/os/AsyncTaskWithProgress;)Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;
    .locals 0

    .line 48
    iget-object p0, p0, Lmiui/os/AsyncTaskWithProgress;->DL:Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    return-object p0
.end method

.method static synthetic a(Lmiui/os/AsyncTaskWithProgress;Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;)Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;
    .locals 0

    .line 48
    iput-object p1, p0, Lmiui/os/AsyncTaskWithProgress;->DL:Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    return-object p1
.end method

.method static synthetic b(Lmiui/os/AsyncTaskWithProgress;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lmiui/os/AsyncTaskWithProgress;->mCancelable:Z

    return p0
.end method

.method private ba()V
    .locals 3

    .line 246
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress;->bn:Landroid/app/FragmentManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncTaskWithProgress@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    .line 248
    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0}, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->dismissAllowingStateLoss()V

    .line 251
    :cond_0
    return-void
.end method

.method static synthetic c(Lmiui/os/AsyncTaskWithProgress;)Lmiui/os/AsyncTaskWithProgress$Listeners;
    .locals 0

    .line 48
    iget-object p0, p0, Lmiui/os/AsyncTaskWithProgress;->DN:Lmiui/os/AsyncTaskWithProgress$Listeners;

    return-object p0
.end method

.method static synthetic cI()Ljava/util/HashMap;
    .locals 1

    .line 48
    sget-object v0, Lmiui/os/AsyncTaskWithProgress;->DF:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic d(Lmiui/os/AsyncTaskWithProgress;)I
    .locals 0

    .line 48
    iget p0, p0, Lmiui/os/AsyncTaskWithProgress;->wT:I

    return p0
.end method

.method static synthetic e(Lmiui/os/AsyncTaskWithProgress;)I
    .locals 0

    .line 48
    iget p0, p0, Lmiui/os/AsyncTaskWithProgress;->DG:I

    return p0
.end method

.method static synthetic f(Lmiui/os/AsyncTaskWithProgress;)Ljava/lang/CharSequence;
    .locals 0

    .line 48
    iget-object p0, p0, Lmiui/os/AsyncTaskWithProgress;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic g(Lmiui/os/AsyncTaskWithProgress;)I
    .locals 0

    .line 48
    iget p0, p0, Lmiui/os/AsyncTaskWithProgress;->DH:I

    return p0
.end method

.method static synthetic h(Lmiui/os/AsyncTaskWithProgress;)Ljava/lang/CharSequence;
    .locals 0

    .line 48
    iget-object p0, p0, Lmiui/os/AsyncTaskWithProgress;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic i(Lmiui/os/AsyncTaskWithProgress;)I
    .locals 0

    .line 48
    iget p0, p0, Lmiui/os/AsyncTaskWithProgress;->xi:I

    return p0
.end method

.method static synthetic j(Lmiui/os/AsyncTaskWithProgress;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lmiui/os/AsyncTaskWithProgress;->xs:Z

    return p0
.end method

.method static synthetic k(Lmiui/os/AsyncTaskWithProgress;)I
    .locals 0

    .line 48
    iget p0, p0, Lmiui/os/AsyncTaskWithProgress;->DI:I

    return p0
.end method

.method static synthetic l(Lmiui/os/AsyncTaskWithProgress;)I
    .locals 0

    .line 48
    iget p0, p0, Lmiui/os/AsyncTaskWithProgress;->fr:I

    return p0
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 239
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress;->DL:Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress;->DL:Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    invoke-virtual {v0}, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0

    .line 242
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCancelled()V
    .locals 3

    .line 228
    sget-object v0, Lmiui/os/AsyncTaskWithProgress;->DF:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncTaskWithProgress@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-direct {p0}, Lmiui/os/AsyncTaskWithProgress;->ba()V

    .line 230
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 219
    sget-object p1, Lmiui/os/AsyncTaskWithProgress;->DF:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTaskWithProgress@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-direct {p0}, Lmiui/os/AsyncTaskWithProgress;->ba()V

    .line 221
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTaskWithProgress@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    sget-object v1, Lmiui/os/AsyncTaskWithProgress;->DF:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v1, p0, Lmiui/os/AsyncTaskWithProgress;->bn:Landroid/app/FragmentManager;

    if-eqz v1, :cond_0

    .line 196
    invoke-static {v0}, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->G(Ljava/lang/String;)Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    move-result-object v1

    iput-object v1, p0, Lmiui/os/AsyncTaskWithProgress;->DL:Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    .line 197
    iget-object v1, p0, Lmiui/os/AsyncTaskWithProgress;->DL:Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    iget-boolean v2, p0, Lmiui/os/AsyncTaskWithProgress;->mCancelable:Z

    invoke-virtual {v1, v2}, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->setCancelable(Z)V

    .line 198
    iget-object v1, p0, Lmiui/os/AsyncTaskWithProgress;->DL:Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    iget-object v2, p0, Lmiui/os/AsyncTaskWithProgress;->bn:Landroid/app/FragmentManager;

    invoke-virtual {v1, v2, v0}, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 200
    :cond_0
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 1

    .line 207
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 208
    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lmiui/os/AsyncTaskWithProgress;->fr:I

    .line 209
    iget-object p1, p0, Lmiui/os/AsyncTaskWithProgress;->DL:Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    if-eqz p1, :cond_0

    .line 210
    iget-object p1, p0, Lmiui/os/AsyncTaskWithProgress;->DL:Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;

    iget v0, p0, Lmiui/os/AsyncTaskWithProgress;->fr:I

    invoke-virtual {p1, v0}, Lmiui/os/AsyncTaskWithProgress$ProgressDialogFragment;->setProgress(I)V

    .line 212
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 48
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lmiui/os/AsyncTaskWithProgress;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public setCancelable(Z)Lmiui/os/AsyncTaskWithProgress;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lmiui/os/AsyncTaskWithProgress<",
            "TParams;TResult;>;"
        }
    .end annotation

    .line 149
    iput-boolean p1, p0, Lmiui/os/AsyncTaskWithProgress;->mCancelable:Z

    .line 150
    return-object p0
.end method

.method public setIndeterminate(Z)Lmiui/os/AsyncTaskWithProgress;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lmiui/os/AsyncTaskWithProgress<",
            "TParams;TResult;>;"
        }
    .end annotation

    .line 173
    iput-boolean p1, p0, Lmiui/os/AsyncTaskWithProgress;->xs:Z

    .line 174
    return-object p0
.end method

.method public setMaxProgress(I)Lmiui/os/AsyncTaskWithProgress;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmiui/os/AsyncTaskWithProgress<",
            "TParams;TResult;>;"
        }
    .end annotation

    .line 184
    iput p1, p0, Lmiui/os/AsyncTaskWithProgress;->DI:I

    .line 185
    return-object p0
.end method

.method public setMessage(I)Lmiui/os/AsyncTaskWithProgress;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmiui/os/AsyncTaskWithProgress<",
            "TParams;TResult;>;"
        }
    .end annotation

    .line 120
    iput p1, p0, Lmiui/os/AsyncTaskWithProgress;->DH:I

    .line 121
    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/os/AsyncTaskWithProgress;->mMessage:Ljava/lang/CharSequence;

    .line 122
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lmiui/os/AsyncTaskWithProgress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lmiui/os/AsyncTaskWithProgress<",
            "TParams;TResult;>;"
        }
    .end annotation

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lmiui/os/AsyncTaskWithProgress;->DH:I

    .line 133
    iput-object p1, p0, Lmiui/os/AsyncTaskWithProgress;->mMessage:Ljava/lang/CharSequence;

    .line 134
    return-object p0
.end method

.method public setProgressStyle(I)Lmiui/os/AsyncTaskWithProgress;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmiui/os/AsyncTaskWithProgress<",
            "TParams;TResult;>;"
        }
    .end annotation

    .line 160
    iput p1, p0, Lmiui/os/AsyncTaskWithProgress;->xi:I

    .line 161
    return-object p0
.end method

.method public setTheme(I)Lmiui/os/AsyncTaskWithProgress;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmiui/os/AsyncTaskWithProgress<",
            "TParams;TResult;>;"
        }
    .end annotation

    .line 85
    iput p1, p0, Lmiui/os/AsyncTaskWithProgress;->wT:I

    .line 86
    return-object p0
.end method

.method public setTitle(I)Lmiui/os/AsyncTaskWithProgress;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmiui/os/AsyncTaskWithProgress<",
            "TParams;TResult;>;"
        }
    .end annotation

    .line 96
    iput p1, p0, Lmiui/os/AsyncTaskWithProgress;->DG:I

    .line 97
    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/os/AsyncTaskWithProgress;->mTitle:Ljava/lang/CharSequence;

    .line 98
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lmiui/os/AsyncTaskWithProgress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lmiui/os/AsyncTaskWithProgress<",
            "TParams;TResult;>;"
        }
    .end annotation

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lmiui/os/AsyncTaskWithProgress;->DG:I

    .line 109
    iput-object p1, p0, Lmiui/os/AsyncTaskWithProgress;->mTitle:Ljava/lang/CharSequence;

    .line 110
    return-object p0
.end method
