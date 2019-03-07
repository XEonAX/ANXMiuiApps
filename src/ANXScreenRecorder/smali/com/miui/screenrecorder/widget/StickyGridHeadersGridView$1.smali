.class Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$1;
.super Landroid/database/DataSetObserver;
.source "StickyGridHeadersGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;


# direct methods
.method constructor <init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$1;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$1;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    invoke-static {v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->access$000(Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;)V

    .line 119
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$1;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    invoke-static {v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->access$000(Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;)V

    .line 124
    return-void
.end method
