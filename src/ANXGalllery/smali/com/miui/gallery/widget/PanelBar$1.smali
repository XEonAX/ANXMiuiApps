.class Lcom/miui/gallery/widget/PanelBar$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PanelBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/widget/PanelBar;->replaceItem(Lcom/miui/gallery/widget/PanelItem;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/widget/PanelBar;

.field final synthetic val$oldItem:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/gallery/widget/PanelBar;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/widget/PanelBar;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/miui/gallery/widget/PanelBar$1;->this$0:Lcom/miui/gallery/widget/PanelBar;

    iput-object p2, p0, Lcom/miui/gallery/widget/PanelBar$1;->val$oldItem:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/gallery/widget/PanelBar$1;->this$0:Lcom/miui/gallery/widget/PanelBar;

    iget-object v1, p0, Lcom/miui/gallery/widget/PanelBar$1;->val$oldItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/PanelBar;->endViewTransition(Landroid/view/View;)V

    .line 52
    return-void
.end method
