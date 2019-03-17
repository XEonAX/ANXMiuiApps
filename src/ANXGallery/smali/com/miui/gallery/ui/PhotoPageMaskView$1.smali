.class Lcom/miui/gallery/ui/PhotoPageMaskView$1;
.super Ljava/lang/Object;
.source "PhotoPageMaskView.java"

# interfaces
.implements Landroid/support/v4/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageMaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageMaskView;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageMaskView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/PhotoPageMaskView;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageMaskView$1;->this$0:Lcom/miui/gallery/ui/PhotoPageMaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;

    .prologue
    .line 63
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageMaskView$1;->this$0:Lcom/miui/gallery/ui/PhotoPageMaskView;

    invoke-static {v2}, Lcom/miui/gallery/compat/view/ViewCompat;->getSystemWindowInsetBottom(Landroid/view/View;)I

    move-result v0

    .line 64
    .local v0, "systemWindowInsetBottom":I
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageMaskView$1;->this$0:Lcom/miui/gallery/ui/PhotoPageMaskView;

    invoke-static {v2}, Lcom/miui/gallery/compat/view/ViewCompat;->getSystemWindowInsetTop(Landroid/view/View;)I

    move-result v1

    .line 65
    .local v1, "systemWindowInsetTop":I
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageMaskView$1;->this$0:Lcom/miui/gallery/ui/PhotoPageMaskView;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageMaskView;->access$000(Lcom/miui/gallery/ui/PhotoPageMaskView;)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageMaskView$1;->this$0:Lcom/miui/gallery/ui/PhotoPageMaskView;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageMaskView;->access$100(Lcom/miui/gallery/ui/PhotoPageMaskView;)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 66
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageMaskView$1;->this$0:Lcom/miui/gallery/ui/PhotoPageMaskView;

    invoke-static {v2, v0}, Lcom/miui/gallery/ui/PhotoPageMaskView;->access$002(Lcom/miui/gallery/ui/PhotoPageMaskView;I)I

    .line 67
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageMaskView$1;->this$0:Lcom/miui/gallery/ui/PhotoPageMaskView;

    invoke-static {v2, v1}, Lcom/miui/gallery/ui/PhotoPageMaskView;->access$102(Lcom/miui/gallery/ui/PhotoPageMaskView;I)I

    .line 68
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageMaskView$1;->this$0:Lcom/miui/gallery/ui/PhotoPageMaskView;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageMaskView;->access$200(Lcom/miui/gallery/ui/PhotoPageMaskView;)Z

    .line 69
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageMaskView$1;->this$0:Lcom/miui/gallery/ui/PhotoPageMaskView;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageMaskView;->access$300(Lcom/miui/gallery/ui/PhotoPageMaskView;)V

    .line 70
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageMaskView$1;->this$0:Lcom/miui/gallery/ui/PhotoPageMaskView;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageMaskView;->access$400(Lcom/miui/gallery/ui/PhotoPageMaskView;)V

    .line 72
    :cond_1
    return-object p2
.end method
