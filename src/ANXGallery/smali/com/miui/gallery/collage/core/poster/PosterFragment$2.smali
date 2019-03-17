.class Lcom/miui/gallery/collage/core/poster/PosterFragment$2;
.super Ljava/lang/Object;
.source "PosterFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/collage/core/poster/PosterFragment;->setPosterModelToPosterLayout(Lcom/miui/gallery/collage/core/poster/PosterModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/collage/core/poster/PosterFragment;

.field final synthetic val$posterModel:Lcom/miui/gallery/collage/core/poster/PosterModel;


# direct methods
.method constructor <init>(Lcom/miui/gallery/collage/core/poster/PosterFragment;Lcom/miui/gallery/collage/core/poster/PosterModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/collage/core/poster/PosterFragment;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment$2;->this$0:Lcom/miui/gallery/collage/core/poster/PosterFragment;

    iput-object p2, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment$2;->val$posterModel:Lcom/miui/gallery/collage/core/poster/PosterModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 191
    iget-object v1, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment$2;->this$0:Lcom/miui/gallery/collage/core/poster/PosterFragment;

    invoke-static {v1}, Lcom/miui/gallery/collage/core/poster/PosterFragment;->access$100(Lcom/miui/gallery/collage/core/poster/PosterFragment;)Lcom/miui/gallery/collage/widget/PosterLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/collage/widget/PosterLayout;->getWidth()I

    move-result v2

    .line 192
    .local v2, "width":I
    iget-object v1, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment$2;->this$0:Lcom/miui/gallery/collage/core/poster/PosterFragment;

    invoke-static {v1}, Lcom/miui/gallery/collage/core/poster/PosterFragment;->access$100(Lcom/miui/gallery/collage/core/poster/PosterFragment;)Lcom/miui/gallery/collage/widget/PosterLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/collage/widget/PosterLayout;->getHeight()I

    move-result v3

    .line 193
    .local v3, "height":I
    new-instance v0, Lcom/miui/gallery/collage/render/PosterElementRender;

    invoke-direct {v0}, Lcom/miui/gallery/collage/render/PosterElementRender;-><init>()V

    .line 194
    .local v0, "posterElementRender":Lcom/miui/gallery/collage/render/PosterElementRender;
    iget-object v1, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment$2;->val$posterModel:Lcom/miui/gallery/collage/core/poster/PosterModel;

    iget-object v4, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment$2;->this$0:Lcom/miui/gallery/collage/core/poster/PosterFragment;

    invoke-virtual {v4}, Lcom/miui/gallery/collage/core/poster/PosterFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/miui/gallery/collage/core/poster/PosterFragment$2$1;

    invoke-direct {v5, p0, v0}, Lcom/miui/gallery/collage/core/poster/PosterFragment$2$1;-><init>(Lcom/miui/gallery/collage/core/poster/PosterFragment$2;Lcom/miui/gallery/collage/render/PosterElementRender;)V

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/collage/render/PosterElementRender;->initializeAsync(Lcom/miui/gallery/collage/core/poster/PosterModel;IILandroid/content/Context;Lcom/miui/gallery/collage/render/PosterElementRender$LoadDataListener;)V

    .line 200
    return-void
.end method
