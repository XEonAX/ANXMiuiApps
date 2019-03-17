.class Lcom/xiaomi/scanner/ui/BottomModuleContainer$2;
.super Ljava/lang/Object;
.source "BottomModuleContainer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/ui/BottomModuleContainer;->animatorChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/ui/BottomModuleContainer;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/ui/BottomModuleContainer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/ui/BottomModuleContainer;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer$2;->this$0:Lcom/xiaomi/scanner/ui/BottomModuleContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 227
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 228
    .local v0, "value":I
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer$2;->this$0:Lcom/xiaomi/scanner/ui/BottomModuleContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->scrollTo(II)V

    .line 229
    return-void
.end method
