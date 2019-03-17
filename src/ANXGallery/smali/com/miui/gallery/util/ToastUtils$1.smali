.class final Lcom/miui/gallery/util/ToastUtils$1;
.super Ljava/lang/Object;
.source "ToastUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isCancelable:Z

.field final synthetic val$len:I

.field final synthetic val$msg:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;IZ)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/miui/gallery/util/ToastUtils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/gallery/util/ToastUtils$1;->val$msg:Ljava/lang/CharSequence;

    iput p3, p0, Lcom/miui/gallery/util/ToastUtils$1;->val$len:I

    iput-boolean p4, p0, Lcom/miui/gallery/util/ToastUtils$1;->val$isCancelable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 66
    invoke-static {}, Lcom/miui/gallery/util/ToastUtils;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 67
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/util/ToastUtils;->access$100()Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/gallery/util/ToastUtils;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Lcom/miui/gallery/util/ToastUtils;->access$100()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/util/ToastUtils$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/gallery/util/ToastUtils$1;->val$msg:Ljava/lang/CharSequence;

    iget v3, p0, Lcom/miui/gallery/util/ToastUtils$1;->val$len:I

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/ToastUtils;->access$102(Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 71
    iget-boolean v0, p0, Lcom/miui/gallery/util/ToastUtils$1;->val$isCancelable:Z

    invoke-static {v0}, Lcom/miui/gallery/util/ToastUtils;->access$202(Z)Z

    .line 72
    invoke-static {}, Lcom/miui/gallery/util/ToastUtils;->access$100()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 73
    monitor-exit v1

    .line 74
    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
