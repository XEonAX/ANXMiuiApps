.class Lcom/miui/gallery/video/editor/ui/TrimFragment$1;
.super Ljava/lang/Object;
.source "TrimFragment.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable$BitmapProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/ui/TrimFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/ui/TrimFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/ui/TrimFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/ui/TrimFragment;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment$1;->this$0:Lcom/miui/gallery/video/editor/ui/TrimFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmap(II)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "location"    # I
    .param p2, "total"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment$1;->this$0:Lcom/miui/gallery/video/editor/ui/TrimFragment;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/video/editor/VideoEditor;->pickThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
