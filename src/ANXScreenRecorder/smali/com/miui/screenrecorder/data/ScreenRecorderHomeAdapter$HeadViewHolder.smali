.class Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$HeadViewHolder;
.super Ljava/lang/Object;
.source "ScreenRecorderHomeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadViewHolder"
.end annotation


# instance fields
.field textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;


# direct methods
.method private constructor <init>(Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$HeadViewHolder;->this$0:Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;
    .param p2, "x1"    # Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$1;

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$HeadViewHolder;-><init>(Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;)V

    return-void
.end method
