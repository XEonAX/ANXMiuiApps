.class public Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter$HeaderViewHolder;
.super Ljava/lang/Object;
.source "StickyGridHeadersSimpleArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field public textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter;


# direct methods
.method protected constructor <init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter;

    .prologue
    .line 145
    .local p0, "this":Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter$HeaderViewHolder;, "Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter<TT;>.HeaderViewHolder;"
    iput-object p1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter$HeaderViewHolder;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
