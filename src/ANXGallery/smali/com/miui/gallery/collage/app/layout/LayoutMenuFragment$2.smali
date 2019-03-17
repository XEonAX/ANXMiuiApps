.class Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment$2;
.super Ljava/lang/Object;
.source "LayoutMenuFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment$2;->this$0:Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 107
    invoke-static {}, Lcom/miui/gallery/collage/render/CollageRatio;->values()[Lcom/miui/gallery/collage/render/CollageRatio;

    move-result-object v2

    .line 108
    .local v2, "ratios":[Lcom/miui/gallery/collage/render/CollageRatio;
    iget-object v3, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment$2;->this$0:Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;

    invoke-static {v3}, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->access$200(Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;)Lcom/miui/gallery/collage/render/CollageRatio;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/collage/render/CollageRatio;->ordinal()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    array-length v4, v2

    rem-int v1, v3, v4

    .line 109
    .local v1, "nextId":I
    aget-object v0, v2, v1

    .line 110
    .local v0, "next":Lcom/miui/gallery/collage/render/CollageRatio;
    iget-object v3, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment$2;->this$0:Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;

    invoke-static {v3}, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->access$300(Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;)Landroid/widget/ImageView;

    move-result-object v3

    iget v4, v0, Lcom/miui/gallery/collage/render/CollageRatio;->iconRes:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    iget-object v3, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment$2;->this$0:Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;

    invoke-virtual {v3}, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->getRenderFragment()Lcom/miui/gallery/collage/app/common/CollageRenderFragment;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/collage/app/common/AbstractLayoutFragment;

    iget v4, v0, Lcom/miui/gallery/collage/render/CollageRatio;->ratio:F

    invoke-virtual {v3, v4}, Lcom/miui/gallery/collage/app/common/AbstractLayoutFragment;->onSelectRatio(F)V

    .line 112
    iget-object v3, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment$2;->this$0:Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;

    invoke-static {v3, v0}, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->access$202(Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;Lcom/miui/gallery/collage/render/CollageRatio;)Lcom/miui/gallery/collage/render/CollageRatio;

    .line 113
    return-void
.end method
