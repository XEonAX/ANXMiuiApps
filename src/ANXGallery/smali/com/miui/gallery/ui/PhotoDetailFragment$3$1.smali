.class Lcom/miui/gallery/ui/PhotoDetailFragment$3$1;
.super Ljava/lang/Object;
.source "PhotoDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoDetailFragment$3;->onFutureDone(Lcom/miui/gallery/threadpool/Future;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/PhotoDetailFragment$3;

.field final synthetic val$builder:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoDetailFragment$3;Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/PhotoDetailFragment$3;

    .prologue
    .line 512
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoDetailFragment$3$1;->this$1:Lcom/miui/gallery/ui/PhotoDetailFragment$3;

    iput-object p2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment$3$1;->val$builder:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment$3$1;->this$1:Lcom/miui/gallery/ui/PhotoDetailFragment$3;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoDetailFragment$3;->this$0:Lcom/miui/gallery/ui/PhotoDetailFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoDetailFragment;->access$100(Lcom/miui/gallery/ui/PhotoDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoDetailFragment$3$1;->val$builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    return-void
.end method
