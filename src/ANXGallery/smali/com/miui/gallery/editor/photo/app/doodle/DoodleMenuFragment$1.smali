.class Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment$1;
.super Ljava/lang/Object;
.source "DoodleMenuFragment.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;
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
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateProgress(Landroid/view/View;I)V
    .locals 2
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "progress"    # I

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->access$100(Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;)Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 104
    return-void
.end method
