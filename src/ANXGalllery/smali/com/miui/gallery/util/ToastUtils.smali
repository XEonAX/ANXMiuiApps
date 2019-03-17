.class public Lcom/miui/gallery/util/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# static fields
.field private static sIsLastCancelable:Z

.field private static sLastToast:Landroid/widget/Toast;

.field private static sSyncObj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/gallery/util/ToastUtils;->sLastToast:Landroid/widget/Toast;

    .line 12
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/gallery/util/ToastUtils;->sSyncObj:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/miui/gallery/util/ToastUtils;->sSyncObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/miui/gallery/util/ToastUtils;->sLastToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$102(Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0, "x0"    # Landroid/widget/Toast;

    .prologue
    .line 9
    sput-object p0, Lcom/miui/gallery/util/ToastUtils;->sLastToast:Landroid/widget/Toast;

    return-object p0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 9
    sget-boolean v0, Lcom/miui/gallery/util/ToastUtils;->sIsLastCancelable:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 9
    sput-boolean p0, Lcom/miui/gallery/util/ToastUtils;->sIsLastCancelable:Z

    return p0
.end method

.method public static makeText(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # I

    .prologue
    .line 31
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;IIZ)V

    .line 32
    return-void
.end method

.method public static makeText(Landroid/content/Context;II)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # I
    .param p2, "len"    # I

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, p2, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;IZ)V

    .line 48
    return-void
.end method

.method public static makeText(Landroid/content/Context;IIZ)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # I
    .param p2, "len"    # I
    .param p3, "isCancelable"    # Z

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;IZ)V

    .line 52
    return-void
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .prologue
    .line 15
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    .line 16
    return-void
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "len"    # I

    .prologue
    .line 56
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;IZ)V

    .line 58
    return-void
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;IZ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "len"    # I
    .param p3, "isCancelable"    # Z

    .prologue
    .line 62
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/util/ToastUtils$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/miui/gallery/util/ToastUtils$1;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;IZ)V

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 77
    return-void
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "isCancelable"    # Z

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;IZ)V

    .line 20
    return-void
.end method

.method public static makeTextLong(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # I

    .prologue
    const/4 v0, 0x1

    .line 39
    invoke-static {p0, p1, v0, v0}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;IIZ)V

    .line 40
    return-void
.end method

.method public static makeTextLong(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .prologue
    .line 23
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    .line 24
    return-void
.end method
