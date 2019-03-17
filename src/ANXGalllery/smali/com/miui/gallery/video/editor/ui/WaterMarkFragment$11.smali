.class Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$11;
.super Ljava/lang/Object;
.source "WaterMarkFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    .prologue
    .line 637
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$11;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 640
    const-string v6, "WaterMarkFragment"

    const-string v7, "---onGlobalLayout start---"

    invoke-static {v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    iget-object v6, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$11;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v6}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$2200(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    .line 642
    .local v4, "view":Landroid/view/View;
    iget-object v6, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$11;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-virtual {v6}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/gallery/util/ScreenUtils;->getExactScreenHeight(Landroid/app/Activity;)I

    move-result v3

    .line 643
    .local v3, "screenHeight":I
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 644
    .local v0, "displayHight":I
    const/4 v6, 0x2

    new-array v2, v6, [I

    .line 645
    .local v2, "location":[I
    invoke-virtual {v4, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 646
    sub-int v6, v3, v0

    aget v7, v2, v5

    sub-int v1, v6, v7

    .line 647
    .local v1, "keyboardHeight":I
    iget-object v6, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$11;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v6}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$2300(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Z

    move-result v6

    if-nez v6, :cond_0

    if-lez v1, :cond_0

    .line 648
    const-string v6, "WaterMarkFragment"

    const-string/jumbo v7, "soft keyboard start to show!"

    invoke-static {v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    iget-object v6, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$11;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v6, v5}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$2302(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;Z)Z

    .line 650
    iget-object v6, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$11;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v6}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$2400(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    .line 652
    :cond_0
    if-nez v1, :cond_1

    iget-object v6, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$11;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v6}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$2300(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 653
    const-string v6, "WaterMarkFragment"

    const-string/jumbo v7, "soft keyboard start to dismiss!"

    invoke-static {v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    iget-object v6, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$11;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v6}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$2500(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V

    .line 655
    iget-object v6, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$11;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    iget-object v7, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$11;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v7}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1800(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Z

    move-result v7

    if-nez v7, :cond_2

    :goto_0
    invoke-static {v6, v5}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$2302(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;Z)Z

    .line 657
    :cond_1
    return-void

    .line 655
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method
