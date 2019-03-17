.class public abstract Lcom/miui/gallery/widget/AntiDoubleItemClickListener;
.super Ljava/lang/Object;
.source "AntiDoubleItemClickListener.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mLastClickTimeMillis:J

.field private mMinClickInterval:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    const/16 v0, 0x258

    invoke-direct {p0, v0}, Lcom/miui/gallery/widget/AntiDoubleItemClickListener;-><init>(I)V

    .line 16
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "minClickInterval"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/miui/gallery/widget/AntiDoubleItemClickListener;->mMinClickInterval:I

    .line 20
    return-void
.end method


# virtual methods
.method public abstract onAntiDoubleItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/gallery/widget/AntiDoubleItemClickListener;->mLastClickTimeMillis:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/miui/gallery/widget/AntiDoubleItemClickListener;->mMinClickInterval:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 25
    const-string v0, "DoubleClick"

    const-string v1, "On filtered click event"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/widget/AntiDoubleItemClickListener;->mLastClickTimeMillis:J

    .line 29
    invoke-virtual/range {p0 .. p5}, Lcom/miui/gallery/widget/AntiDoubleItemClickListener;->onAntiDoubleItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method
