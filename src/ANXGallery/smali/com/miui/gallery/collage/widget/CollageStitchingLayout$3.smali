.class Lcom/miui/gallery/collage/widget/CollageStitchingLayout$3;
.super Ljava/lang/Object;
.source "CollageStitchingLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->notifyBitmapReplace(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
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
    .line 693
    iput-object p1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$3;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$3;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-static {v0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$2200(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)V

    .line 697
    return-void
.end method
