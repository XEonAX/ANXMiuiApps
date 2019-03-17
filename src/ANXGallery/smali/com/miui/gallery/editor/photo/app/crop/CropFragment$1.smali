.class Lcom/miui/gallery/editor/photo/app/crop/CropFragment$1;
.super Ljava/lang/Object;
.source "CropFragment.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/widgets/TouchTransLinearLayout$OnTouchEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
    .line 79
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->access$100(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;->doTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
