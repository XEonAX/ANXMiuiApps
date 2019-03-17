.class public Lcom/nexstreaming/nexeditorsdk/nexEngineView;
.super Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;
.source "nexEngineView.java"

# interfaces
.implements Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/nexeditorsdk/nexEngineView$NexViewListener;
    }
.end annotation


# instance fields
.field private nexThemeViewListener:Lcom/nexstreaming/nexeditorsdk/nexEngineView$NexViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectRatioInScreenMode()F

    move-result v0

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->setAspectRatio(F)V

    .line 71
    invoke-super {p0, p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->setNotify(Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$b;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectRatioInScreenMode()F

    move-result v0

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->setAspectRatio(F)V

    .line 83
    invoke-super {p0, p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->setNotify(Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$b;)V

    .line 84
    return-void
.end method


# virtual methods
.method public onEventNotify(ILjava/lang/Object;III)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngineView;->nexThemeViewListener:Lcom/nexstreaming/nexeditorsdk/nexEngineView$NexViewListener;

    if-eqz v0, :cond_0

    .line 43
    packed-switch p1, :pswitch_data_0

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 45
    :pswitch_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngineView;->nexThemeViewListener:Lcom/nexstreaming/nexeditorsdk/nexEngineView$NexViewListener;

    invoke-interface {v0, p3, p4}, Lcom/nexstreaming/nexeditorsdk/nexEngineView$NexViewListener;->onEngineViewAvailable(II)V

    goto :goto_0

    .line 49
    :pswitch_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngineView;->nexThemeViewListener:Lcom/nexstreaming/nexeditorsdk/nexEngineView$NexViewListener;

    invoke-interface {v0, p3, p4}, Lcom/nexstreaming/nexeditorsdk/nexEngineView$NexViewListener;->onEngineViewSizeChanged(II)V

    goto :goto_0

    .line 52
    :pswitch_2
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngineView;->nexThemeViewListener:Lcom/nexstreaming/nexeditorsdk/nexEngineView$NexViewListener;

    invoke-interface {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngineView$NexViewListener;->onEngineViewDestroyed()V

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setBlackOut(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->setBlackOut(Z)V

    .line 100
    return-void
.end method

.method public setListener(Lcom/nexstreaming/nexeditorsdk/nexEngineView$NexViewListener;)V
    .locals 3

    .prologue
    .line 108
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngineView;->nexThemeViewListener:Lcom/nexstreaming/nexeditorsdk/nexEngineView$NexViewListener;

    .line 109
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexEngineView;->isSurfaceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngineView;->nexThemeViewListener:Lcom/nexstreaming/nexeditorsdk/nexEngineView$NexViewListener;

    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexEngineView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexEngineView;->getHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexEngineView$NexViewListener;->onEngineViewAvailable(II)V

    .line 112
    :cond_0
    return-void
.end method
