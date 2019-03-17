.class Lcom/miui/gallery/editor/photo/app/crop/CropFragment$2;
.super Ljava/lang/Object;
.source "CropFragment.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment$OnCropStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/crop/CropFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$2;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeRotationState(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 162
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$2;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->access$500(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;->setEnabled(Z)V

    .line 163
    return-void
.end method

.method public onCropped()V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$2;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->access$200(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0c034f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 147
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$2;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->access$200(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$2;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$2;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->access$200(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$2;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->access$300(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    return-void
.end method

.method public onRestored()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$2;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->access$400(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)V

    .line 154
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$2;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->access$500(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 155
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$2;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->access$500(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;->setCurrentValue(I)V

    .line 156
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$2;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->access$500(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$2;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->access$600(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 157
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$2;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->access$700(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Lcom/miui/gallery/editor/photo/app/crop/CropAdapter;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/app/crop/CropAdapter;->setSelection(I)V

    .line 158
    return-void
.end method
