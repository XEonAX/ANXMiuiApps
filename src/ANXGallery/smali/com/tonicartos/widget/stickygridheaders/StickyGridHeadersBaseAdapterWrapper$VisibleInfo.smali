.class public Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$VisibleInfo;
.super Ljava/lang/Object;
.source "StickyGridHeadersBaseAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VisibleInfo"
.end annotation


# instance fields
.field protected final mFirstPosition:I

.field protected final mVisibleCount:I

.field final synthetic this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;


# direct methods
.method public constructor <init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;
    .param p2, "firstPosition"    # I
    .param p3, "visibleCount"    # I

    .prologue
    .line 627
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$VisibleInfo;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 628
    iput p2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$VisibleInfo;->mFirstPosition:I

    .line 629
    iput p3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$VisibleInfo;->mVisibleCount:I

    .line 630
    return-void
.end method
