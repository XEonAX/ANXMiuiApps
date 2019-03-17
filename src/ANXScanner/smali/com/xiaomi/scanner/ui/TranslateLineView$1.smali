.class Lcom/xiaomi/scanner/ui/TranslateLineView$1;
.super Ljava/lang/Object;
.source "TranslateLineView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/ui/TranslateLineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/ui/TranslateLineView;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/ui/TranslateLineView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/ui/TranslateLineView;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$1;->this$0:Lcom/xiaomi/scanner/ui/TranslateLineView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$1;->this$0:Lcom/xiaomi/scanner/ui/TranslateLineView;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$1;->this$0:Lcom/xiaomi/scanner/ui/TranslateLineView;

    invoke-static {v1}, Lcom/xiaomi/scanner/ui/TranslateLineView;->access$100(Lcom/xiaomi/scanner/ui/TranslateLineView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/ui/TranslateLineView;->access$002(Lcom/xiaomi/scanner/ui/TranslateLineView;I)I

    .line 49
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$1;->this$0:Lcom/xiaomi/scanner/ui/TranslateLineView;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$1;->this$0:Lcom/xiaomi/scanner/ui/TranslateLineView;

    invoke-static {v1}, Lcom/xiaomi/scanner/ui/TranslateLineView;->access$100(Lcom/xiaomi/scanner/ui/TranslateLineView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/ui/TranslateLineView;->access$202(Lcom/xiaomi/scanner/ui/TranslateLineView;I)I

    .line 50
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$1;->this$0:Lcom/xiaomi/scanner/ui/TranslateLineView;

    invoke-static {v0}, Lcom/xiaomi/scanner/ui/TranslateLineView;->access$300(Lcom/xiaomi/scanner/ui/TranslateLineView;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$1;->this$0:Lcom/xiaomi/scanner/ui/TranslateLineView;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/ui/TranslateLineView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$1;->this$0:Lcom/xiaomi/scanner/ui/TranslateLineView;

    invoke-static {v2}, Lcom/xiaomi/scanner/ui/TranslateLineView;->access$200(Lcom/xiaomi/scanner/ui/TranslateLineView;)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 51
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$1;->this$0:Lcom/xiaomi/scanner/ui/TranslateLineView;

    invoke-static {v0}, Lcom/xiaomi/scanner/ui/TranslateLineView;->access$300(Lcom/xiaomi/scanner/ui/TranslateLineView;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$1;->this$0:Lcom/xiaomi/scanner/ui/TranslateLineView;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/ui/TranslateLineView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$1;->this$0:Lcom/xiaomi/scanner/ui/TranslateLineView;

    invoke-static {v2}, Lcom/xiaomi/scanner/ui/TranslateLineView;->access$000(Lcom/xiaomi/scanner/ui/TranslateLineView;)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3fa66666    # 1.3f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 52
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$1;->this$0:Lcom/xiaomi/scanner/ui/TranslateLineView;

    invoke-static {v0}, Lcom/xiaomi/scanner/ui/TranslateLineView;->access$300(Lcom/xiaomi/scanner/ui/TranslateLineView;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$1;->this$0:Lcom/xiaomi/scanner/ui/TranslateLineView;

    invoke-static {v1}, Lcom/xiaomi/scanner/ui/TranslateLineView;->access$200(Lcom/xiaomi/scanner/ui/TranslateLineView;)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 53
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$1;->this$0:Lcom/xiaomi/scanner/ui/TranslateLineView;

    invoke-static {v0}, Lcom/xiaomi/scanner/ui/TranslateLineView;->access$100(Lcom/xiaomi/scanner/ui/TranslateLineView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$1;->this$0:Lcom/xiaomi/scanner/ui/TranslateLineView;

    invoke-static {v1}, Lcom/xiaomi/scanner/ui/TranslateLineView;->access$300(Lcom/xiaomi/scanner/ui/TranslateLineView;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$1;->this$0:Lcom/xiaomi/scanner/ui/TranslateLineView;

    invoke-static {v0}, Lcom/xiaomi/scanner/ui/TranslateLineView;->access$100(Lcom/xiaomi/scanner/ui/TranslateLineView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$1;->this$0:Lcom/xiaomi/scanner/ui/TranslateLineView;

    invoke-static {v0}, Lcom/xiaomi/scanner/ui/TranslateLineView;->access$100(Lcom/xiaomi/scanner/ui/TranslateLineView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$1;->this$0:Lcom/xiaomi/scanner/ui/TranslateLineView;

    invoke-static {v1}, Lcom/xiaomi/scanner/ui/TranslateLineView;->access$000(Lcom/xiaomi/scanner/ui/TranslateLineView;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotY(F)V

    .line 56
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$1;->this$0:Lcom/xiaomi/scanner/ui/TranslateLineView;

    invoke-static {v0}, Lcom/xiaomi/scanner/ui/TranslateLineView;->access$100(Lcom/xiaomi/scanner/ui/TranslateLineView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$1;->this$0:Lcom/xiaomi/scanner/ui/TranslateLineView;

    invoke-static {v1}, Lcom/xiaomi/scanner/ui/TranslateLineView;->access$200(Lcom/xiaomi/scanner/ui/TranslateLineView;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotX(F)V

    .line 57
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$1;->this$0:Lcom/xiaomi/scanner/ui/TranslateLineView;

    invoke-static {v0}, Lcom/xiaomi/scanner/ui/TranslateLineView;->access$400(Lcom/xiaomi/scanner/ui/TranslateLineView;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$1;->this$0:Lcom/xiaomi/scanner/ui/TranslateLineView;

    invoke-static {v0}, Lcom/xiaomi/scanner/ui/TranslateLineView;->access$500(Lcom/xiaomi/scanner/ui/TranslateLineView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$1;->this$0:Lcom/xiaomi/scanner/ui/TranslateLineView;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$1;->this$0:Lcom/xiaomi/scanner/ui/TranslateLineView;

    invoke-static {v1}, Lcom/xiaomi/scanner/ui/TranslateLineView;->access$500(Lcom/xiaomi/scanner/ui/TranslateLineView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/ui/TranslateLineView;->updateOrientation(I)V

    .line 60
    :cond_0
    return-void
.end method
