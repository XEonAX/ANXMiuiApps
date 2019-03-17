.class Lcom/miui/gallery/editor/photo/app/PreviewFragment$2;
.super Ljava/lang/Object;
.source "PreviewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/app/PreviewFragment;->refreshPreview(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/PreviewFragment;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/PreviewFragment;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/PreviewFragment;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/PreviewFragment$2;->this$0:Lcom/miui/gallery/editor/photo/app/PreviewFragment;

    iput-object p2, p0, Lcom/miui/gallery/editor/photo/app/PreviewFragment$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PreviewFragment$2;->this$0:Lcom/miui/gallery/editor/photo/app/PreviewFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PreviewFragment$2;->this$0:Lcom/miui/gallery/editor/photo/app/PreviewFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->access$300(Lcom/miui/gallery/editor/photo/app/PreviewFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PreviewFragment$2;->this$0:Lcom/miui/gallery/editor/photo/app/PreviewFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->access$100(Lcom/miui/gallery/editor/photo/app/PreviewFragment;)Lcom/miui/gallery/editor/photo/widgets/StrokeImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PreviewFragment$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/StrokeImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 112
    :cond_0
    return-void
.end method
