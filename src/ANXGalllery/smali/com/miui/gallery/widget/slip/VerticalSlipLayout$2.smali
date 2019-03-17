.class Lcom/miui/gallery/widget/slip/VerticalSlipLayout$2;
.super Ljava/lang/Object;
.source "VerticalSlipLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->slipTo(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

.field final synthetic val$smooth:Z

.field final synthetic val$velocity:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;ZII)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    .prologue
    .line 521
    iput-object p1, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$2;->this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    iput-boolean p2, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$2;->val$smooth:Z

    iput p3, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$2;->val$y:I

    iput p4, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$2;->val$velocity:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 524
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$2;->this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-static {v0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->access$600(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;)I

    move-result v0

    if-nez v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$2;->this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->access$700(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;I)V

    .line 526
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$2;->this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-static {v0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->access$800(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;)V

    .line 528
    :cond_0
    iget-boolean v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$2;->val$smooth:Z

    if-eqz v0, :cond_2

    .line 529
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$2;->this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-static {v0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->access$900(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;)Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 530
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$2;->this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    new-instance v1, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;

    iget-object v2, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$2;->this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    iget-object v3, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$2;->this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-virtual {v3}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;-><init>(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->access$902(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;)Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;

    .line 532
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$2;->this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-static {v0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->access$900(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;)Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$2;->val$y:I

    iget v2, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$2;->val$velocity:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;->slipTo(II)V

    .line 542
    :goto_0
    return-void

    .line 534
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$2;->this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-static {v0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->access$900(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;)Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 535
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$2;->this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-static {v0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->access$900(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;)Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;->abort()V

    .line 537
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$2;->this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    iget v1, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$2;->val$y:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->access$1000(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;F)V

    .line 538
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$2;->this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    iget v1, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$2;->val$y:I

    invoke-static {v0, v1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->access$1100(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;I)V

    .line 539
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$2;->this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->access$700(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;I)V

    .line 540
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$2;->this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-static {v0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->access$1200(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;)V

    goto :goto_0
.end method
