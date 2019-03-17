.class Lcom/miui/gallery/collage/core/CollagePresenter$2;
.super Ljava/lang/Object;
.source "CollagePresenter.java"

# interfaces
.implements Lcom/miui/gallery/collage/CollageActivity$ReplaceImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/core/CollagePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/collage/core/CollagePresenter;


# direct methods
.method constructor <init>(Lcom/miui/gallery/collage/core/CollagePresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/collage/core/CollagePresenter;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/miui/gallery/collage/core/CollagePresenter$2;->this$0:Lcom/miui/gallery/collage/core/CollagePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReplace(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/miui/gallery/collage/core/CollagePresenter$2;->this$0:Lcom/miui/gallery/collage/core/CollagePresenter;

    iget-object v0, v0, Lcom/miui/gallery/collage/core/CollagePresenter;->mViewInterface:Lcom/miui/gallery/collage/core/ViewInterface;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/miui/gallery/collage/core/CollagePresenter$2;->this$0:Lcom/miui/gallery/collage/core/CollagePresenter;

    iget-object v0, v0, Lcom/miui/gallery/collage/core/CollagePresenter;->mViewInterface:Lcom/miui/gallery/collage/core/ViewInterface;

    invoke-interface {v0, p1}, Lcom/miui/gallery/collage/core/ViewInterface;->onReplaceBitmap(Landroid/graphics/Bitmap;)V

    .line 187
    :cond_0
    return-void
.end method
