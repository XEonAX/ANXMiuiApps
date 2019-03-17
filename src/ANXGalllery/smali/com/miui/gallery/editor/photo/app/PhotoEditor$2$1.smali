.class Lcom/miui/gallery/editor/photo/app/PhotoEditor$2$1;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/app/DraftManager$OnPreviewRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/app/PhotoEditor$2;->onDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/editor/photo/app/PhotoEditor$2;

.field final synthetic val$preview:Lcom/miui/gallery/editor/photo/app/PreviewFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/PhotoEditor$2;Lcom/miui/gallery/editor/photo/app/PreviewFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor$2;

    .prologue
    .line 524
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$2$1;->this$1:Lcom/miui/gallery/editor/photo/app/PhotoEditor$2;

    iput-object p2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$2$1;->val$preview:Lcom/miui/gallery/editor/photo/app/PreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 527
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$2$1;->val$preview:Lcom/miui/gallery/editor/photo/app/PreviewFragment;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->refreshPreview(Landroid/graphics/Bitmap;)V

    .line 528
    return-void
.end method
