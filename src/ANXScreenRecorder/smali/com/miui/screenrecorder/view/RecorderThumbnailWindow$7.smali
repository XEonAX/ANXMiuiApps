.class Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$7;
.super Ljava/lang/Object;
.source "RecorderThumbnailWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->onThumbnailViewClick()Z
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
    .line 279
    iput-object p1, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$7;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$7;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$500(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;Z)V

    .line 282
    return-void
.end method
