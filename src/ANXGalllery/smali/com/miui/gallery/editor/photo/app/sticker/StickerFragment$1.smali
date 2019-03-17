.class Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$1;
.super Ljava/lang/Object;
.source "StickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 83
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->access$000(Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->access$000(Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->access$100(Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;)Lcom/miui/gallery/editor/photo/app/sticker/HeaderAdapter;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/app/sticker/HeaderAdapter;->setSelection(I)V

    .line 87
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->access$200(Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 88
    return-void
.end method
