.class Lcom/miui/gallery/ui/PhotoPageGifItem$3;
.super Lcom/miui/gallery/view/animation/AnimationListenerAdapter;
.source "PhotoPageGifItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageGifItem;->setIndicatorVisible(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageGifItem;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageGifItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/PhotoPageGifItem;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$3;->this$0:Lcom/miui/gallery/ui/PhotoPageGifItem;

    invoke-direct {p0}, Lcom/miui/gallery/view/animation/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$3;->this$0:Lcom/miui/gallery/ui/PhotoPageGifItem;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageGifItem;->access$200(Lcom/miui/gallery/ui/PhotoPageGifItem;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$3;->this$0:Lcom/miui/gallery/ui/PhotoPageGifItem;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageGifItem;->access$200(Lcom/miui/gallery/ui/PhotoPageGifItem;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 194
    :cond_0
    return-void
.end method
