.class Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment$1;
.super Ljava/lang/Object;
.source "StitchingMenuFragment.java"

# interfaces
.implements Lcom/miui/gallery/collage/core/CollagePresenter$DataLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment$1;->this$0:Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataLoad()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment$1;->this$0:Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->access$002(Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;Z)Z

    .line 65
    iget-object v0, p0, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment$1;->this$0:Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->access$100(Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;)V

    .line 66
    iget-object v0, p0, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment$1;->this$0:Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->access$200(Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;)V

    .line 67
    return-void
.end method
