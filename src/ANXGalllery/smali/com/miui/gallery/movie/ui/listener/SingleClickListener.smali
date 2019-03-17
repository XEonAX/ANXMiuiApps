.class public abstract Lcom/miui/gallery/movie/ui/listener/SingleClickListener;
.super Ljava/lang/Object;
.source "SingleClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mId:I

.field private mLastClickTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/gallery/movie/ui/listener/SingleClickListener;->mLastClickTime:J

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/movie/ui/listener/SingleClickListener;->mId:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 16
    .local v0, "currentTime":J
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 17
    .local v2, "mId":I
    iget v3, p0, Lcom/miui/gallery/movie/ui/listener/SingleClickListener;->mId:I

    if-eq v3, v2, :cond_1

    .line 18
    iput v2, p0, Lcom/miui/gallery/movie/ui/listener/SingleClickListener;->mId:I

    .line 19
    iput-wide v0, p0, Lcom/miui/gallery/movie/ui/listener/SingleClickListener;->mLastClickTime:J

    .line 20
    invoke-virtual {p0, p1}, Lcom/miui/gallery/movie/ui/listener/SingleClickListener;->onSingleClick(Landroid/view/View;)V

    .line 27
    :cond_0
    :goto_0
    return-void

    .line 23
    :cond_1
    iget-wide v4, p0, Lcom/miui/gallery/movie/ui/listener/SingleClickListener;->mLastClickTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3e8

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 24
    iput-wide v0, p0, Lcom/miui/gallery/movie/ui/listener/SingleClickListener;->mLastClickTime:J

    .line 25
    invoke-virtual {p0, p1}, Lcom/miui/gallery/movie/ui/listener/SingleClickListener;->onSingleClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected abstract onSingleClick(Landroid/view/View;)V
.end method
