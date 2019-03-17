.class Lcom/miui/gallery/collage/core/poster/PosterFragment$1;
.super Ljava/lang/Object;
.source "PosterFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/collage/core/poster/PosterFragment;->refreshCollagePosition(Lcom/miui/gallery/collage/core/poster/PosterModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/collage/core/poster/PosterFragment;

.field final synthetic val$collagePositionModel:Lcom/miui/gallery/collage/core/poster/CollagePositionModel;

.field final synthetic val$finalMaskDrawables:[Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/miui/gallery/collage/core/poster/PosterFragment;[Landroid/graphics/drawable/Drawable;Lcom/miui/gallery/collage/core/poster/CollagePositionModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/collage/core/poster/PosterFragment;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment$1;->this$0:Lcom/miui/gallery/collage/core/poster/PosterFragment;

    iput-object p2, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment$1;->val$finalMaskDrawables:[Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment$1;->val$collagePositionModel:Lcom/miui/gallery/collage/core/poster/CollagePositionModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment$1;->this$0:Lcom/miui/gallery/collage/core/poster/PosterFragment;

    invoke-static {v0}, Lcom/miui/gallery/collage/core/poster/PosterFragment;->access$000(Lcom/miui/gallery/collage/core/poster/PosterFragment;)Lcom/miui/gallery/collage/widget/CollageLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment$1;->val$finalMaskDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/widget/CollageLayout;->setMasks([Landroid/graphics/drawable/Drawable;)V

    .line 171
    iget-object v0, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment$1;->this$0:Lcom/miui/gallery/collage/core/poster/PosterFragment;

    invoke-static {v0}, Lcom/miui/gallery/collage/core/poster/PosterFragment;->access$000(Lcom/miui/gallery/collage/core/poster/PosterFragment;)Lcom/miui/gallery/collage/widget/CollageLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment$1;->val$collagePositionModel:Lcom/miui/gallery/collage/core/poster/CollagePositionModel;

    iget-object v1, v1, Lcom/miui/gallery/collage/core/poster/CollagePositionModel;->radius:[F

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/widget/CollageLayout;->setRadius([F)V

    .line 172
    return-void
.end method
