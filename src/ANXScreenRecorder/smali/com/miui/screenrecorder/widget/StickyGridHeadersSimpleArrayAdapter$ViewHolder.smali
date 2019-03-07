.class public Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "StickyGridHeadersSimpleArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ViewHolder"
.end annotation


# instance fields
.field public textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter;


# direct methods
.method protected constructor <init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter;

    .prologue
    .line 149
    .local p0, "this":Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter$ViewHolder;, "Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter<TT;>.ViewHolder;"
    iput-object p1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter$ViewHolder;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
