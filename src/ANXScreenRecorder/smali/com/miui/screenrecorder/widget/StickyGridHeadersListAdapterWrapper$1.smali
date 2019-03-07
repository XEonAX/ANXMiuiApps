.class Lcom/miui/screenrecorder/widget/StickyGridHeadersListAdapterWrapper$1;
.super Landroid/database/DataSetObserver;
.source "StickyGridHeadersListAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/screenrecorder/widget/StickyGridHeadersListAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersListAdapterWrapper;


# direct methods
.method constructor <init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersListAdapterWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/screenrecorder/widget/StickyGridHeadersListAdapterWrapper;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersListAdapterWrapper$1;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersListAdapterWrapper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersListAdapterWrapper$1;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersListAdapterWrapper;

    invoke-virtual {v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersListAdapterWrapper;->notifyDataSetChanged()V

    .line 16
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersListAdapterWrapper$1;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersListAdapterWrapper;

    invoke-virtual {v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersListAdapterWrapper;->notifyDataSetInvalidated()V

    .line 21
    return-void
.end method
