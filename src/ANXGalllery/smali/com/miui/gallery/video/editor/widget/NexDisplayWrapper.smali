.class public Lcom/miui/gallery/video/editor/widget/NexDisplayWrapper;
.super Lcom/miui/gallery/video/editor/widget/DisplayWrapper;
.source "NexDisplayWrapper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method


# virtual methods
.method protected createDisplayView()Landroid/view/View;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexEngineView;

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/NexDisplayWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexEngineView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
