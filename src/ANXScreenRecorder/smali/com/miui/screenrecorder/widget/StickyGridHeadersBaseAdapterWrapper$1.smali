.class Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$1;
.super Landroid/database/DataSetObserver;
.source "StickyGridHeadersBaseAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;


# direct methods
.method constructor <init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$1;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$1;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    invoke-static {v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->access$000(Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;)V

    .line 73
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$1;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->notifyDataSetChanged()V

    .line 74
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$1;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->notifyDataSetInvalidated()V

    .line 79
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$1;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    invoke-static {v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->access$100(Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 80
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$1;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    invoke-static {v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->access$200(Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 81
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$1;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    invoke-static {v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->access$300(Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 82
    return-void
.end method
