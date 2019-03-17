.class Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager$2;
.super Ljava/lang/Object;
.source "PhotoPageImageItem.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->translateByActionBarVisibility(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;

.field final synthetic val$marginTop:I


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;

    .prologue
    .line 886
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;

    iput p2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager$2;->val$marginTop:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 894
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->access$2400(Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 895
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->access$2500(Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager$2;->val$marginTop:I

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 896
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->access$2400(Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    .line 897
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 902
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 890
    return-void
.end method
