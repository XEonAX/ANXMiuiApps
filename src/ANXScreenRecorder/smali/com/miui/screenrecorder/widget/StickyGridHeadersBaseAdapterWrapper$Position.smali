.class public Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;
.super Ljava/lang/Object;
.source "StickyGridHeadersBaseAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Position"
.end annotation


# instance fields
.field protected mHeader:I

.field protected mPosition:I

.field final synthetic this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;


# direct methods
.method protected constructor <init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;
    .param p2, "position"    # I
    .param p3, "header"    # I

    .prologue
    .line 511
    iput-object p1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    iput p2, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    .line 513
    iput p3, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;->mHeader:I

    .line 514
    return-void
.end method
