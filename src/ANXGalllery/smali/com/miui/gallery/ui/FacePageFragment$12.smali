.class Lcom/miui/gallery/ui/FacePageFragment$12;
.super Lcom/miui/gallery/threadpool/FutureHandler;
.source "FacePageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/FacePageFragment;->refreshFaceNameIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/threadpool/FutureHandler",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/FacePageFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/FacePageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/FacePageFragment;

    .prologue
    .line 529
    iput-object p1, p0, Lcom/miui/gallery/ui/FacePageFragment$12;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-direct {p0}, Lcom/miui/gallery/threadpool/FutureHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostExecute(Lcom/miui/gallery/threadpool/Future;)V
    .locals 4
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
    .line 532
    .local p1, "future":Lcom/miui/gallery/threadpool/Future;, "Lcom/miui/gallery/threadpool/Future<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment$12;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/FacePageFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    if-eqz p1, :cond_0

    .line 540
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 541
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment$12;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/FacePageFragment;->access$300(Lcom/miui/gallery/ui/FacePageFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 542
    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment$12;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-static {v2, v1}, Lcom/miui/gallery/ui/FacePageFragment;->access$302(Lcom/miui/gallery/ui/FacePageFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 544
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment$12;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/FacePageFragment;->access$2300(Lcom/miui/gallery/ui/FacePageFragment;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f120163

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 545
    .local v0, "faceNameEdit":Landroid/widget/TextView;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment$12;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    const v3, 0x7f0c01e9

    invoke-virtual {v2, v3}, Lcom/miui/gallery/ui/FacePageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment$12;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/FacePageFragment;->access$2400(Lcom/miui/gallery/ui/FacePageFragment;)V

    .line 547
    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment$12;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/FacePageFragment;->access$1800(Lcom/miui/gallery/ui/FacePageFragment;)V

    goto :goto_0

    .line 545
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment$12;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    const v3, 0x7f0c01e8

    invoke-virtual {v2, v3}, Lcom/miui/gallery/ui/FacePageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
