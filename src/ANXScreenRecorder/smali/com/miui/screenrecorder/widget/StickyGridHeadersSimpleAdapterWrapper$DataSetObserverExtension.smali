.class final Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper$DataSetObserverExtension;
.super Landroid/database/DataSetObserver;
.source "StickyGridHeadersSimpleAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DataSetObserverExtension"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;


# direct methods
.method private constructor <init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper$DataSetObserverExtension;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;
    .param p2, "x1"    # Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper$1;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper$DataSetObserverExtension;-><init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper$DataSetObserverExtension;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;

    iget-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper$DataSetObserverExtension;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;

    iget-object v2, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper$DataSetObserverExtension;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;

    invoke-static {v2}, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;->access$200(Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;)Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;->generateHeaderList(Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;->access$102(Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;Ljava/util/List;)Ljava/util/List;

    .line 119
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper$DataSetObserverExtension;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;

    invoke-virtual {v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;->notifyDataSetChanged()V

    .line 120
    return-void
.end method

.method public onInvalidated()V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper$DataSetObserverExtension;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;

    iget-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper$DataSetObserverExtension;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;

    iget-object v2, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper$DataSetObserverExtension;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;

    invoke-static {v2}, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;->access$200(Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;)Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;->generateHeaderList(Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;->access$102(Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;Ljava/util/List;)Ljava/util/List;

    .line 125
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper$DataSetObserverExtension;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;

    invoke-virtual {v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;->notifyDataSetInvalidated()V

    .line 126
    return-void
.end method
