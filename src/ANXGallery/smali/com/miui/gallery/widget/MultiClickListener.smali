.class public Lcom/miui/gallery/widget/MultiClickListener;
.super Ljava/lang/Object;
.source "MultiClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mClickCount:I

.field private mDuration:J

.field private mLastClickTime:J

.field private mMaxClickCount:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(ILandroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "clickCount"    # I
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 13
    const-wide/16 v0, 0x1f4

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/miui/gallery/widget/MultiClickListener;-><init>(JILandroid/view/View$OnClickListener;)V

    .line 14
    return-void
.end method

.method public constructor <init>(JILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "duration"    # J
    .param p3, "clickCount"    # I
    .param p4, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide p1, p0, Lcom/miui/gallery/widget/MultiClickListener;->mDuration:J

    .line 18
    iput p3, p0, Lcom/miui/gallery/widget/MultiClickListener;->mMaxClickCount:I

    .line 19
    iput-object p4, p0, Lcom/miui/gallery/widget/MultiClickListener;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 20
    return-void
.end method

.method private callClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/gallery/widget/MultiClickListener;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/miui/gallery/widget/MultiClickListener;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 24
    iget v2, p0, Lcom/miui/gallery/widget/MultiClickListener;->mMaxClickCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 25
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/MultiClickListener;->callClick(Landroid/view/View;)V

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 29
    .local v0, "now":J
    iget-wide v2, p0, Lcom/miui/gallery/widget/MultiClickListener;->mLastClickTime:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/miui/gallery/widget/MultiClickListener;->mDuration:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 30
    iput v6, p0, Lcom/miui/gallery/widget/MultiClickListener;->mClickCount:I

    .line 32
    :cond_2
    iput-wide v0, p0, Lcom/miui/gallery/widget/MultiClickListener;->mLastClickTime:J

    .line 33
    iget v2, p0, Lcom/miui/gallery/widget/MultiClickListener;->mClickCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/miui/gallery/widget/MultiClickListener;->mClickCount:I

    .line 34
    iget v2, p0, Lcom/miui/gallery/widget/MultiClickListener;->mClickCount:I

    iget v3, p0, Lcom/miui/gallery/widget/MultiClickListener;->mMaxClickCount:I

    if-lt v2, v3, :cond_0

    .line 35
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/miui/gallery/widget/MultiClickListener;->mLastClickTime:J

    .line 36
    iput v6, p0, Lcom/miui/gallery/widget/MultiClickListener;->mClickCount:I

    .line 37
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/MultiClickListener;->callClick(Landroid/view/View;)V

    goto :goto_0
.end method
