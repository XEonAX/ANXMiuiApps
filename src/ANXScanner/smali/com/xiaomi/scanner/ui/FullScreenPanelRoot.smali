.class public Lcom/xiaomi/scanner/ui/FullScreenPanelRoot;
.super Landroid/widget/FrameLayout;
.source "FullScreenPanelRoot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/ui/FullScreenPanelRoot$VisibleChangeListener;
    }
.end annotation


# instance fields
.field private visibleChangeListener:Lcom/xiaomi/scanner/ui/FullScreenPanelRoot$VisibleChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method


# virtual methods
.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/FullScreenPanelRoot;->getVisibility()I

    move-result v0

    .line 36
    .local v0, "currentVisibility":I
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 37
    if-eq v0, p1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/FullScreenPanelRoot;->visibleChangeListener:Lcom/xiaomi/scanner/ui/FullScreenPanelRoot$VisibleChangeListener;

    if-eqz v1, :cond_0

    .line 38
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/FullScreenPanelRoot;->visibleChangeListener:Lcom/xiaomi/scanner/ui/FullScreenPanelRoot$VisibleChangeListener;

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v2, v1}, Lcom/xiaomi/scanner/ui/FullScreenPanelRoot$VisibleChangeListener;->visibleChange(Z)V

    .line 40
    :cond_0
    return-void

    .line 38
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setVisibleChangeListener(Lcom/xiaomi/scanner/ui/FullScreenPanelRoot$VisibleChangeListener;)V
    .locals 0
    .param p1, "visibleChangeListener"    # Lcom/xiaomi/scanner/ui/FullScreenPanelRoot$VisibleChangeListener;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/FullScreenPanelRoot;->visibleChangeListener:Lcom/xiaomi/scanner/ui/FullScreenPanelRoot$VisibleChangeListener;

    .line 19
    return-void
.end method
