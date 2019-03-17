.class Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment$1;
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
    .line 92
    iput-object p1, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment$1;->this$0:Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    invoke-static {}, Lcom/miui/gallery/collage/render/CollageMargin;->values()[Lcom/miui/gallery/collage/render/CollageMargin;

    move-result-object v0

    .line 96
    .local v0, "margins":[Lcom/miui/gallery/collage/render/CollageMargin;
    iget-object v3, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment$1;->this$0:Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;

    invoke-static {v3}, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->access$000(Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;)Lcom/miui/gallery/collage/render/CollageMargin;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/collage/render/CollageMargin;->ordinal()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    array-length v4, v0

    rem-int v2, v3, v4

    .line 97
    .local v2, "nextId":I
    aget-object v1, v0, v2

    .line 98
    .local v1, "next":Lcom/miui/gallery/collage/render/CollageMargin;
    iget-object v3, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment$1;->this$0:Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;

    invoke-static {v3}, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->access$100(Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;)Landroid/widget/ImageView;

    move-result-object v3

    iget v4, v1, Lcom/miui/gallery/collage/render/CollageMargin;->iconRes:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    iget-object v3, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment$1;->this$0:Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;

    invoke-virtual {v3}, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->getRenderFragment()Lcom/miui/gallery/collage/app/common/CollageRenderFragment;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/collage/app/common/AbstractLayoutFragment;

    iget v4, v1, Lcom/miui/gallery/collage/render/CollageMargin;->marginSize:F

    invoke-virtual {v3, v4}, Lcom/miui/gallery/collage/app/common/AbstractLayoutFragment;->onSelectMargin(F)V

    .line 100
    iget-object v3, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment$1;->this$0:Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;

    invoke-static {v3, v1}, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->access$002(Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;Lcom/miui/gallery/collage/render/CollageMargin;)Lcom/miui/gallery/collage/render/CollageMargin;

    .line 101
    return-void
.end method
