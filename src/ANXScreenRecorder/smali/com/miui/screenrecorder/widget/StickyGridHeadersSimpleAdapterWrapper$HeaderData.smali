.class Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper$HeaderData;
.super Ljava/lang/Object;
.source "StickyGridHeadersSimpleAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderData"
.end annotation


# instance fields
.field private mCount:I

.field private mRefPosition:I

.field final synthetic this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;


# direct methods
.method public constructor <init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;I)V
    .locals 1
    .param p2, "refPosition"    # I

    .prologue
    .line 134
    iput-object p1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper$HeaderData;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput p2, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper$HeaderData;->mRefPosition:I

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper$HeaderData;->mCount:I

    .line 137
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper$HeaderData;->mCount:I

    return v0
.end method

.method public getRefPosition()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper$HeaderData;->mRefPosition:I

    return v0
.end method

.method public incrementCount()V
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper$HeaderData;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper$HeaderData;->mCount:I

    .line 149
    return-void
.end method
