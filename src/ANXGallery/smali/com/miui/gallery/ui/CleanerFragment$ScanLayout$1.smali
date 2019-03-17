.class Lcom/miui/gallery/ui/CleanerFragment$ScanLayout$1;
.super Ljava/lang/Object;
.source "CleanerFragment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->initFlexAnimator(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;

    .prologue
    .line 448
    iput-object p1, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout$1;->this$1:Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 451
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 452
    .local v0, "value":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 453
    iget-object v1, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout$1;->this$1:Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->access$200(Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;I)V

    .line 455
    :cond_0
    return-void
.end method
