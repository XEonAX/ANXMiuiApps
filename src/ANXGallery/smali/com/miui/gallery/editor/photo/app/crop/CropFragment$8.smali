.class Lcom/miui/gallery/editor/photo/app/crop/CropFragment$8;
.super Ljava/lang/Object;
.source "CropFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->doAutoCrop(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

.field final synthetic val$isManual:Z


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$8;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    iput-boolean p2, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$8;->val$isManual:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$8;->val$isManual:Z

    if-nez v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$8;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->access$200(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0c034f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 282
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$8;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->access$200(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$8;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->access$300(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$8;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->access$500(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 285
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$8;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->access$500(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$8;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$8;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->access$2000(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Lcom/miui/gallery/editor/photo/app/crop/AutoCropData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/app/crop/AutoCropData;->getDegree()F

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->access$2100(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;->setCurrentValue(I)V

    .line 286
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$8;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->access$500(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$8;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->access$600(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 287
    return-void
.end method
