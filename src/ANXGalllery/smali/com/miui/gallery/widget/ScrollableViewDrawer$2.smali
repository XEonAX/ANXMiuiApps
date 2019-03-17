.class Lcom/miui/gallery/widget/ScrollableViewDrawer$2;
.super Ljava/lang/Object;
.source "ScrollableViewDrawer.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/widget/ScrollableViewDrawer;->openDrawer(ZLcom/miui/gallery/widget/ScrollableViewDrawer$DrawerAnimEndListener;)V
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
    .line 495
    iput-object p1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer$2;->this$0:Lcom/miui/gallery/widget/ScrollableViewDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 4
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
    .line 499
    iget-object v2, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer$2;->this$0:Lcom/miui/gallery/widget/ScrollableViewDrawer;

    invoke-static {v2}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->access$600(Lcom/miui/gallery/widget/ScrollableViewDrawer;)Z

    move-result v1

    .line 500
    .local v1, "withAnimation":Z
    iget-object v2, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer$2;->this$0:Lcom/miui/gallery/widget/ScrollableViewDrawer;

    invoke-static {v2}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->access$700(Lcom/miui/gallery/widget/ScrollableViewDrawer;)Lcom/miui/gallery/widget/ScrollableViewDrawer$DrawerAnimEndListener;

    move-result-object v0

    .line 501
    .local v0, "animEndListener":Lcom/miui/gallery/widget/ScrollableViewDrawer$DrawerAnimEndListener;
    iget-object v2, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer$2;->this$0:Lcom/miui/gallery/widget/ScrollableViewDrawer;

    invoke-static {v2}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->access$800(Lcom/miui/gallery/widget/ScrollableViewDrawer;)V

    .line 502
    iget-object v2, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer$2;->this$0:Lcom/miui/gallery/widget/ScrollableViewDrawer;

    new-instance v3, Lcom/miui/gallery/widget/ScrollableViewDrawer$2$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/miui/gallery/widget/ScrollableViewDrawer$2$1;-><init>(Lcom/miui/gallery/widget/ScrollableViewDrawer$2;ZLcom/miui/gallery/widget/ScrollableViewDrawer$DrawerAnimEndListener;)V

    invoke-virtual {v2, v3}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->post(Ljava/lang/Runnable;)Z

    .line 508
    return-void
.end method
