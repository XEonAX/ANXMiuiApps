.class Lcom/miui/gallery/ui/DeletionTask$2;
.super Ljava/lang/Object;
.source "DeletionTask.java"

# interfaces
.implements Lcom/miui/gallery/ui/ProcessTask$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/DeletionTask;->setOnDeletionCompleteListener(Lcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/ui/ProcessTask$OnCompleteListener",
        "<[J>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/DeletionTask;

.field final synthetic val$onDeletionCompleteListener:Lcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/DeletionTask;Lcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/DeletionTask;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/miui/gallery/ui/DeletionTask$2;->this$0:Lcom/miui/gallery/ui/DeletionTask;

    iput-object p2, p0, Lcom/miui/gallery/ui/DeletionTask$2;->val$onDeletionCompleteListener:Lcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCompleteProcess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 53
    check-cast p1, [J

    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/DeletionTask$2;->onCompleteProcess([J)V

    return-void
.end method

.method public onCompleteProcess([J)V
    .locals 6
    .param p1, "result"    # [J

    .prologue
    const/4 v3, 0x0

    .line 56
    if-nez p1, :cond_1

    move v1, v3

    .line 57
    .local v1, "count":I
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/ui/DeletionTask$2;->this$0:Lcom/miui/gallery/ui/DeletionTask;

    invoke-static {v2}, Lcom/miui/gallery/ui/DeletionTask;->access$000(Lcom/miui/gallery/ui/DeletionTask;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/gallery/ui/DeletionTask$2;->this$0:Lcom/miui/gallery/ui/DeletionTask;

    invoke-static {v2}, Lcom/miui/gallery/ui/DeletionTask;->access$000(Lcom/miui/gallery/ui/DeletionTask;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    move-object v0, v2

    .line 58
    .local v0, "activity":Landroid/app/Activity;
    :goto_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    aget-wide v2, p1, v3

    const-wide/16 v4, -0x70

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    .line 59
    invoke-static {v0}, Lcom/miui/gallery/util/DocumentProviderUtils;->startExtSDCardPermissionActivityForResult(Landroid/app/Activity;)V

    .line 63
    :cond_0
    :goto_2
    return-void

    .line 56
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "count":I
    :cond_1
    array-length v1, p1

    goto :goto_0

    .line 57
    .restart local v1    # "count":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 60
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/ui/DeletionTask$2;->val$onDeletionCompleteListener:Lcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;

    if-eqz v2, :cond_0

    .line 61
    iget-object v2, p0, Lcom/miui/gallery/ui/DeletionTask$2;->val$onDeletionCompleteListener:Lcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;

    invoke-interface {v2, v1, p1}, Lcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;->onDeleted(I[J)V

    goto :goto_2
.end method
