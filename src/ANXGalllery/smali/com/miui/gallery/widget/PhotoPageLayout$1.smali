.class Lcom/miui/gallery/widget/PhotoPageLayout$1;
.super Ljava/lang/Object;
.source "PhotoPageLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/widget/PhotoPageLayout;->setTheme(Lcom/miui/gallery/widget/IMultiThemeView$Theme;Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;Landroid/view/animation/Interpolator;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/widget/PhotoPageLayout;


# direct methods
.method constructor <init>(Lcom/miui/gallery/widget/PhotoPageLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/widget/PhotoPageLayout;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/miui/gallery/widget/PhotoPageLayout$1;->this$0:Lcom/miui/gallery/widget/PhotoPageLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 116
    .local v0, "alpha":F
    sget-object v1, Lcom/miui/gallery/widget/PhotoPageLayout$2;->$SwitchMap$com$miui$gallery$widget$IMultiThemeView$ThemeTransition:[I

    iget-object v2, p0, Lcom/miui/gallery/widget/PhotoPageLayout$1;->this$0:Lcom/miui/gallery/widget/PhotoPageLayout;

    invoke-static {v2}, Lcom/miui/gallery/widget/PhotoPageLayout;->access$000(Lcom/miui/gallery/widget/PhotoPageLayout;)Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 124
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/widget/PhotoPageLayout$1;->this$0:Lcom/miui/gallery/widget/PhotoPageLayout;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/PhotoPageLayout;->invalidate()V

    .line 125
    return-void

    .line 118
    :pswitch_0
    iget-object v1, p0, Lcom/miui/gallery/widget/PhotoPageLayout$1;->this$0:Lcom/miui/gallery/widget/PhotoPageLayout;

    invoke-static {v1, v0}, Lcom/miui/gallery/widget/PhotoPageLayout;->access$102(Lcom/miui/gallery/widget/PhotoPageLayout;F)F

    goto :goto_0

    .line 121
    :pswitch_1
    iget-object v1, p0, Lcom/miui/gallery/widget/PhotoPageLayout$1;->this$0:Lcom/miui/gallery/widget/PhotoPageLayout;

    invoke-static {v1, v0}, Lcom/miui/gallery/widget/PhotoPageLayout;->access$202(Lcom/miui/gallery/widget/PhotoPageLayout;F)F

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
