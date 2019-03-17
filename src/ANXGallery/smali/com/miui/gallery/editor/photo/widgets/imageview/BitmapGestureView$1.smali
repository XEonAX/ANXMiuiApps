.class Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$1;
.super Ljava/lang/Object;
.source "BitmapGestureView.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder$ParamsChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$1;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapMatrixChanged()V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$1;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->onBitmapMatrixChanged()V

    .line 365
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$1;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->invalidate()V

    .line 366
    return-void
.end method

.method public onCanvasMatrixChange()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$1;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->onCanvasMatrixChange()V

    .line 371
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$1;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->invalidate()V

    .line 372
    return-void
.end method
