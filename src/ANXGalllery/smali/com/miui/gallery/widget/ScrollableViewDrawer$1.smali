.class Lcom/miui/gallery/widget/ScrollableViewDrawer$1;
.super Ljava/lang/Object;
.source "ScrollableViewDrawer.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/widget/ScrollableViewDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/widget/ScrollableViewDrawer;


# direct methods
.method constructor <init>(Lcom/miui/gallery/widget/ScrollableViewDrawer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/widget/ScrollableViewDrawer;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer$1;->this$0:Lcom/miui/gallery/widget/ScrollableViewDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    const/4 v4, 0x1

    .line 130
    const-string v0, "ScrollableViewDrawer"

    const-string v1, "ContentView layout change, newBottom: %d, oldBottom: %d"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer$1;->this$0:Lcom/miui/gallery/widget/ScrollableViewDrawer;

    invoke-static {v0}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->access$000(Lcom/miui/gallery/widget/ScrollableViewDrawer;)I

    move-result v0

    if-eq p5, v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer$1;->this$0:Lcom/miui/gallery/widget/ScrollableViewDrawer;

    invoke-static {v0}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->access$100(Lcom/miui/gallery/widget/ScrollableViewDrawer;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer$1;->this$0:Lcom/miui/gallery/widget/ScrollableViewDrawer;

    invoke-static {v0}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->access$200(Lcom/miui/gallery/widget/ScrollableViewDrawer;)I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer$1;->this$0:Lcom/miui/gallery/widget/ScrollableViewDrawer;

    invoke-static {v0, v4}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->access$302(Lcom/miui/gallery/widget/ScrollableViewDrawer;Z)Z

    .line 142
    :cond_1
    :goto_0
    return-void

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer$1;->this$0:Lcom/miui/gallery/widget/ScrollableViewDrawer;

    invoke-static {v0, p5}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->access$002(Lcom/miui/gallery/widget/ScrollableViewDrawer;I)I

    .line 136
    iget-object v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer$1;->this$0:Lcom/miui/gallery/widget/ScrollableViewDrawer;

    invoke-static {v0}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->access$200(Lcom/miui/gallery/widget/ScrollableViewDrawer;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 137
    iget-object v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer$1;->this$0:Lcom/miui/gallery/widget/ScrollableViewDrawer;

    invoke-static {v0, p5}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->access$402(Lcom/miui/gallery/widget/ScrollableViewDrawer;I)I

    .line 138
    iget-object v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer$1;->this$0:Lcom/miui/gallery/widget/ScrollableViewDrawer;

    invoke-static {v0}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->access$500(Lcom/miui/gallery/widget/ScrollableViewDrawer;)V

    goto :goto_0
.end method
