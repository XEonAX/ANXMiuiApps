.class Lcom/miui/gallery/ui/SaveUriDialogFragment$2;
.super Ljava/lang/Object;
.source "SaveUriDialogFragment.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/SaveUriDialogFragment;->save(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/FutureListener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/SaveUriDialogFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/SaveUriDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/SaveUriDialogFragment;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/miui/gallery/ui/SaveUriDialogFragment$2;->this$0:Lcom/miui/gallery/ui/SaveUriDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/miui/gallery/threadpool/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/threadpool/Future",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "future":Lcom/miui/gallery/threadpool/Future;, "Lcom/miui/gallery/threadpool/Future<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/miui/gallery/ui/SaveUriDialogFragment$2;->this$0:Lcom/miui/gallery/ui/SaveUriDialogFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SaveUriDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/miui/gallery/ui/SaveUriDialogFragment$2;->this$0:Lcom/miui/gallery/ui/SaveUriDialogFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SaveUriDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/ui/SaveUriDialogFragment$2$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/ui/SaveUriDialogFragment$2$1;-><init>(Lcom/miui/gallery/ui/SaveUriDialogFragment$2;Lcom/miui/gallery/threadpool/Future;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 110
    :cond_0
    return-void
.end method
