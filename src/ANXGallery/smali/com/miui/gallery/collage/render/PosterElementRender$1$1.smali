.class Lcom/miui/gallery/collage/render/PosterElementRender$1$1;
.super Ljava/lang/Object;
.source "PosterElementRender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/collage/render/PosterElementRender$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/collage/render/PosterElementRender$1;


# direct methods
.method constructor <init>(Lcom/miui/gallery/collage/render/PosterElementRender$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/collage/render/PosterElementRender$1;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/miui/gallery/collage/render/PosterElementRender$1$1;->this$1:Lcom/miui/gallery/collage/render/PosterElementRender$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender$1$1;->this$1:Lcom/miui/gallery/collage/render/PosterElementRender$1;

    iget-object v0, v0, Lcom/miui/gallery/collage/render/PosterElementRender$1;->this$0:Lcom/miui/gallery/collage/render/PosterElementRender;

    iget-object v1, p0, Lcom/miui/gallery/collage/render/PosterElementRender$1$1;->this$1:Lcom/miui/gallery/collage/render/PosterElementRender$1;

    invoke-static {v1}, Lcom/miui/gallery/collage/render/PosterElementRender$1;->access$400(Lcom/miui/gallery/collage/render/PosterElementRender$1;)[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/collage/render/PosterElementRender;->access$302(Lcom/miui/gallery/collage/render/PosterElementRender;[Landroid/graphics/drawable/Drawable;)[Landroid/graphics/drawable/Drawable;

    .line 123
    iget-object v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender$1$1;->this$1:Lcom/miui/gallery/collage/render/PosterElementRender$1;

    iget-object v0, v0, Lcom/miui/gallery/collage/render/PosterElementRender$1;->this$0:Lcom/miui/gallery/collage/render/PosterElementRender;

    iget-object v1, p0, Lcom/miui/gallery/collage/render/PosterElementRender$1$1;->this$1:Lcom/miui/gallery/collage/render/PosterElementRender$1;

    invoke-static {v1}, Lcom/miui/gallery/collage/render/PosterElementRender$1;->access$600(Lcom/miui/gallery/collage/render/PosterElementRender$1;)[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/collage/render/PosterElementRender;->access$502(Lcom/miui/gallery/collage/render/PosterElementRender;[Landroid/graphics/drawable/Drawable;)[Landroid/graphics/drawable/Drawable;

    .line 124
    iget-object v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender$1$1;->this$1:Lcom/miui/gallery/collage/render/PosterElementRender$1;

    iget-object v0, v0, Lcom/miui/gallery/collage/render/PosterElementRender$1;->this$0:Lcom/miui/gallery/collage/render/PosterElementRender;

    iget-object v1, p0, Lcom/miui/gallery/collage/render/PosterElementRender$1$1;->this$1:Lcom/miui/gallery/collage/render/PosterElementRender$1;

    invoke-static {v1}, Lcom/miui/gallery/collage/render/PosterElementRender$1;->access$800(Lcom/miui/gallery/collage/render/PosterElementRender$1;)[Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/collage/render/PosterElementRender;->access$702(Lcom/miui/gallery/collage/render/PosterElementRender;[Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;)[Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;

    .line 125
    iget-object v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender$1$1;->this$1:Lcom/miui/gallery/collage/render/PosterElementRender$1;

    iget-object v0, v0, Lcom/miui/gallery/collage/render/PosterElementRender$1;->this$0:Lcom/miui/gallery/collage/render/PosterElementRender;

    iget-object v1, p0, Lcom/miui/gallery/collage/render/PosterElementRender$1$1;->this$1:Lcom/miui/gallery/collage/render/PosterElementRender$1;

    invoke-static {v1}, Lcom/miui/gallery/collage/render/PosterElementRender$1;->access$1000(Lcom/miui/gallery/collage/render/PosterElementRender$1;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gallery/collage/render/PosterElementRender;->access$902(Lcom/miui/gallery/collage/render/PosterElementRender;I)I

    .line 126
    iget-object v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender$1$1;->this$1:Lcom/miui/gallery/collage/render/PosterElementRender$1;

    iget-object v0, v0, Lcom/miui/gallery/collage/render/PosterElementRender$1;->val$loadDataListener:Lcom/miui/gallery/collage/render/PosterElementRender$LoadDataListener;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender$1$1;->this$1:Lcom/miui/gallery/collage/render/PosterElementRender$1;

    iget-object v0, v0, Lcom/miui/gallery/collage/render/PosterElementRender$1;->val$loadDataListener:Lcom/miui/gallery/collage/render/PosterElementRender$LoadDataListener;

    invoke-interface {v0}, Lcom/miui/gallery/collage/render/PosterElementRender$LoadDataListener;->onLoadFinish()V

    .line 129
    :cond_0
    return-void
.end method
