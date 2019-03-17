.class Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$WindowRunnable;
.super Ljava/lang/Object;
.source "StickyGridHeadersGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowRunnable"
.end annotation


# instance fields
.field private mOriginalAttachCount:I

.field final synthetic this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;


# direct methods
.method private constructor <init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)V
    .locals 0

    .prologue
    .line 1572
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$WindowRunnable;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
    .param p2, "x1"    # Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$1;

    .prologue
    .line 1572
    invoke-direct {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$WindowRunnable;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$WindowRunnable;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-static {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->access$700(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)I

    move-result v0

    iput v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$WindowRunnable;->mOriginalAttachCount:I

    .line 1577
    return-void
.end method

.method public sameWindow()Z
    .locals 2

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$WindowRunnable;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$WindowRunnable;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-static {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->access$800(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)I

    move-result v0

    iget v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$WindowRunnable;->mOriginalAttachCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
