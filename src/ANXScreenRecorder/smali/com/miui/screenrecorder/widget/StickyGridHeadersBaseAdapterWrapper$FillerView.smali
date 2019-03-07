.class public Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$FillerView;
.super Landroid/view/View;
.source "StickyGridHeadersBaseAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FillerView"
.end annotation


# instance fields
.field private mMeasureTarget:Landroid/view/View;

.field final synthetic this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;


# direct methods
.method public constructor <init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$FillerView;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    .line 419
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 420
    return-void
.end method

.method public constructor <init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 422
    iput-object p1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$FillerView;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    .line 423
    invoke-direct {p0, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 424
    return-void
.end method

.method public constructor <init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyle"    # I

    .prologue
    .line 426
    iput-object p1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$FillerView;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    .line 427
    invoke-direct {p0, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 428
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 436
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$FillerView;->mMeasureTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 438
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 439
    return-void
.end method

.method public setMeasureTarget(Landroid/view/View;)V
    .locals 0
    .param p1, "lastViewSeen"    # Landroid/view/View;

    .prologue
    .line 431
    iput-object p1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$FillerView;->mMeasureTarget:Landroid/view/View;

    .line 432
    return-void
.end method
