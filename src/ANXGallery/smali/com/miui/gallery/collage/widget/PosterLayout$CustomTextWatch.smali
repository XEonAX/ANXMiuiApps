.class Lcom/miui/gallery/collage/widget/PosterLayout$CustomTextWatch;
.super Ljava/lang/Object;
.source "PosterLayout.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/widget/PosterLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomTextWatch"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/collage/widget/PosterLayout;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/collage/widget/PosterLayout;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/miui/gallery/collage/widget/PosterLayout$CustomTextWatch;->this$0:Lcom/miui/gallery/collage/widget/PosterLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/collage/widget/PosterLayout;Lcom/miui/gallery/collage/widget/PosterLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/collage/widget/PosterLayout;
    .param p2, "x1"    # Lcom/miui/gallery/collage/widget/PosterLayout$1;

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/widget/PosterLayout$CustomTextWatch;-><init>(Lcom/miui/gallery/collage/widget/PosterLayout;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 273
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 260
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 264
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout$CustomTextWatch;->this$0:Lcom/miui/gallery/collage/widget/PosterLayout;

    invoke-static {v0}, Lcom/miui/gallery/collage/widget/PosterLayout;->access$800(Lcom/miui/gallery/collage/widget/PosterLayout;)Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout$CustomTextWatch;->this$0:Lcom/miui/gallery/collage/widget/PosterLayout;

    invoke-static {v0}, Lcom/miui/gallery/collage/widget/PosterLayout;->access$800(Lcom/miui/gallery/collage/widget/PosterLayout;)Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/collage/widget/PosterLayout$CustomTextWatch;->this$0:Lcom/miui/gallery/collage/widget/PosterLayout;

    invoke-static {v2}, Lcom/miui/gallery/collage/widget/PosterLayout;->access$1000(Lcom/miui/gallery/collage/widget/PosterLayout;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->setTextAndCount(Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 266
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout$CustomTextWatch;->this$0:Lcom/miui/gallery/collage/widget/PosterLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/widget/PosterLayout;->invalidate()V

    .line 268
    :cond_0
    return-void
.end method
