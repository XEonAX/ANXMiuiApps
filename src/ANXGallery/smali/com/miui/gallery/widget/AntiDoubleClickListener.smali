.class public abstract Lcom/miui/gallery/widget/AntiDoubleClickListener;
.super Ljava/lang/Object;
.source "AntiDoubleClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mLastClickTimeMillis:J

.field private mMinClickInterval:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    const/16 v0, 0x258

    invoke-direct {p0, v0}, Lcom/miui/gallery/widget/AntiDoubleClickListener;-><init>(I)V

    .line 13
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "minClickInterval"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/miui/gallery/widget/AntiDoubleClickListener;->mMinClickInterval:I

    .line 17
    return-void
.end method


# virtual methods
.method public abstract onAntiDoubleClick(Landroid/view/View;)V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/gallery/widget/AntiDoubleClickListener;->mLastClickTimeMillis:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/miui/gallery/widget/AntiDoubleClickListener;->mMinClickInterval:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 26
    :goto_0
    return-void

    .line 24
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/widget/AntiDoubleClickListener;->mLastClickTimeMillis:J

    .line 25
    invoke-virtual {p0, p1}, Lcom/miui/gallery/widget/AntiDoubleClickListener;->onAntiDoubleClick(Landroid/view/View;)V

    goto :goto_0
.end method
