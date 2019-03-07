.class Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$2;
.super Ljava/lang/Object;
.source "RecorderThumbnailWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->initThumbnailView(Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;


# direct methods
.method constructor <init>(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$2;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$2;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-static {v0, p2}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$000(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;Landroid/view/MotionEvent;)V

    .line 131
    const/4 v0, 0x1

    return v0
.end method
