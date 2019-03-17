.class Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$1;
.super Lcom/miui/gallery/editor/photo/core/imports/obsoletes/OneShotAnimateListener;
.source "Crop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mirror()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/OneShotAnimateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 222
    invoke-super {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/OneShotAnimateListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 223
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$400(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)V

    .line 224
    return-void
.end method
