.class Lcom/miui/gallery/widget/TwoStageDrawer$MyOnScrollChangeListener;
.super Ljava/lang/Object;
.source "TwoStageDrawer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/TwoStageDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnScrollChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/widget/TwoStageDrawer;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/widget/TwoStageDrawer;)V
    .locals 0

    .prologue
    .line 1097
    iput-object p1, p0, Lcom/miui/gallery/widget/TwoStageDrawer$MyOnScrollChangeListener;->this$0:Lcom/miui/gallery/widget/TwoStageDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/widget/TwoStageDrawer;Lcom/miui/gallery/widget/TwoStageDrawer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/widget/TwoStageDrawer;
    .param p2, "x1"    # Lcom/miui/gallery/widget/TwoStageDrawer$1;

    .prologue
    .line 1097
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/TwoStageDrawer$MyOnScrollChangeListener;-><init>(Lcom/miui/gallery/widget/TwoStageDrawer;)V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 2

    .prologue
    .line 1101
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer$MyOnScrollChangeListener;->this$0:Lcom/miui/gallery/widget/TwoStageDrawer;

    invoke-static {v1}, Lcom/miui/gallery/widget/TwoStageDrawer;->access$1500(Lcom/miui/gallery/widget/TwoStageDrawer;)Lcom/miui/gallery/widget/TwoStageDrawer$ScrollableView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer$MyOnScrollChangeListener;->this$0:Lcom/miui/gallery/widget/TwoStageDrawer;

    invoke-static {v1}, Lcom/miui/gallery/widget/TwoStageDrawer;->access$1500(Lcom/miui/gallery/widget/TwoStageDrawer;)Lcom/miui/gallery/widget/TwoStageDrawer$ScrollableView;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/widget/TwoStageDrawer$ScrollableView;->canScrollDown()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 1102
    .local v0, "canScrollDown":Z
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer$MyOnScrollChangeListener;->this$0:Lcom/miui/gallery/widget/TwoStageDrawer;

    invoke-static {v1}, Lcom/miui/gallery/widget/TwoStageDrawer;->access$1600(Lcom/miui/gallery/widget/TwoStageDrawer;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1103
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer$MyOnScrollChangeListener;->this$0:Lcom/miui/gallery/widget/TwoStageDrawer;

    invoke-static {v1, v0}, Lcom/miui/gallery/widget/TwoStageDrawer;->access$1602(Lcom/miui/gallery/widget/TwoStageDrawer;Z)Z

    .line 1104
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer$MyOnScrollChangeListener;->this$0:Lcom/miui/gallery/widget/TwoStageDrawer;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/TwoStageDrawer;->invalidate()V

    .line 1106
    :cond_0
    return-void

    .line 1101
    .end local v0    # "canScrollDown":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
