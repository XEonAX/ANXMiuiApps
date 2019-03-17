.class Lcom/miui/gallery/editor/photo/app/crop/CropFragment$6;
.super Ljava/lang/Object;
.source "CropFragment.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/crop/CropFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$Callback",
        "<",
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$6;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic updateProgress(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 204
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$6;->updateProgress(Landroid/widget/TextView;I)V

    return-void
.end method

.method public updateProgress(Landroid/widget/TextView;I)V
    .locals 5
    .param p1, "contentView"    # Landroid/widget/TextView;
    .param p2, "progress"    # I

    .prologue
    .line 207
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0350

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$6;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-static {v4, p2}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->access$1400(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    return-void
.end method
