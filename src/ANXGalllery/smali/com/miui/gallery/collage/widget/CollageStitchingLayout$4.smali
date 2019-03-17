.class Lcom/miui/gallery/collage/widget/CollageStitchingLayout$4;
.super Ljava/lang/Object;
.source "CollageStitchingLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->setStitchingModel(Lcom/miui/gallery/collage/core/stitching/StitchingModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;


# direct methods
.method constructor <init>(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    .prologue
    .line 727
    iput-object p1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$4;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$4;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-static {v0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$2200(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)V

    .line 731
    return-void
.end method
