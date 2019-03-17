.class Lcom/miui/gallery/collage/widget/CollageStitchingLayout$1;
.super Ljava/lang/Object;
.source "CollageStitchingLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z
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
    .line 155
    iput-object p1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$1;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$1;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$300(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;F)V

    .line 159
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$1;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-static {v0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$400(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)V

    .line 160
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$1;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-static {v0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$500(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->disableDragMode()V

    .line 161
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$1;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$602(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;Z)Z

    .line 162
    return-void
.end method
