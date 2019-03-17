.class Lcom/miui/gallery/widget/slip/VerticalSlipLayout$1;
.super Ljava/lang/Object;
.source "VerticalSlipLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->onSlipEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;


# direct methods
.method constructor <init>(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$1;->this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 299
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$1;->this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-static {v0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->access$000(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$1;->this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    iget-object v1, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$1;->this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-static {v1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->access$100(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 305
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$1;->this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    iget-object v2, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$1;->this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$1;->this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-static {v0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->access$000(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-static {v1, v2, v0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->access$400(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;Landroid/view/View;F)V

    .line 306
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$1;->this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->requestLayout()V

    .line 307
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$1;->this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-static {v0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->access$500(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;)Lcom/miui/gallery/widget/slip/VerticalSlipLayout$OnSlipListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$1;->this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-static {v0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->access$500(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;)Lcom/miui/gallery/widget/slip/VerticalSlipLayout$OnSlipListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$1;->this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-static {v1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->access$000(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$OnSlipListener;->onSlipEnd(Z)V

    .line 310
    :cond_0
    const-string v0, "VerticalSlipLayout"

    const-string v1, "onSlipEnd %s"

    iget-object v2, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$1;->this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-static {v2}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->access$000(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 311
    return-void

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$1;->this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    iget-object v1, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$1;->this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-static {v1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->access$200(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 303
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$1;->this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->access$300(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;Z)V

    goto :goto_0

    .line 305
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
