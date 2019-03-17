.class Lcom/miui/gallery/collage/core/poster/PosterFragment$2$1;
.super Ljava/lang/Object;
.source "PosterFragment.java"

# interfaces
.implements Lcom/miui/gallery/collage/render/PosterElementRender$LoadDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/collage/core/poster/PosterFragment$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/collage/core/poster/PosterFragment$2;

.field final synthetic val$posterElementRender:Lcom/miui/gallery/collage/render/PosterElementRender;


# direct methods
.method constructor <init>(Lcom/miui/gallery/collage/core/poster/PosterFragment$2;Lcom/miui/gallery/collage/render/PosterElementRender;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/collage/core/poster/PosterFragment$2;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment$2$1;->this$1:Lcom/miui/gallery/collage/core/poster/PosterFragment$2;

    iput-object p2, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment$2$1;->val$posterElementRender:Lcom/miui/gallery/collage/render/PosterElementRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFinish()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment$2$1;->this$1:Lcom/miui/gallery/collage/core/poster/PosterFragment$2;

    iget-object v0, v0, Lcom/miui/gallery/collage/core/poster/PosterFragment$2;->this$0:Lcom/miui/gallery/collage/core/poster/PosterFragment;

    invoke-static {v0}, Lcom/miui/gallery/collage/core/poster/PosterFragment;->access$100(Lcom/miui/gallery/collage/core/poster/PosterFragment;)Lcom/miui/gallery/collage/widget/PosterLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment$2$1;->val$posterElementRender:Lcom/miui/gallery/collage/render/PosterElementRender;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/widget/PosterLayout;->setRenderData(Lcom/miui/gallery/collage/render/PosterElementRender;)V

    .line 198
    return-void
.end method
