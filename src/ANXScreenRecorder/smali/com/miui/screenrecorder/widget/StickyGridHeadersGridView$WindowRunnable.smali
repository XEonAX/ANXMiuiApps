.class Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$WindowRunnable;
.super Ljava/lang/Object;
.source "StickyGridHeadersGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowRunnable"
.end annotation


# instance fields
.field private mOriginalAttachCount:I

.field final synthetic this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;


# direct methods
.method private constructor <init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;)V
    .locals 0

    .prologue
    .line 1287
    iput-object p1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$WindowRunnable;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;
    .param p2, "x1"    # Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$1;

    .prologue
    .line 1287
    invoke-direct {p0, p1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$WindowRunnable;-><init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;)V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$WindowRunnable;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    invoke-static {v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->access$500(Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;)I

    move-result v0

    iput v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$WindowRunnable;->mOriginalAttachCount:I

    .line 1292
    return-void
.end method

.method public sameWindow()Z
    .locals 2

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$WindowRunnable;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    invoke-virtual {v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$WindowRunnable;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    invoke-static {v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->access$600(Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;)I

    move-result v0

    iget v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$WindowRunnable;->mOriginalAttachCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
