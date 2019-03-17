.class public abstract Lcom/miui/gallery/video/editor/model/AdjustData;
.super Ljava/lang/Object;
.source "AdjustData.java"


# instance fields
.field public final icon:I

.field public name:Ljava/lang/String;

.field public priority:I

.field public progress:I


# direct methods
.method public constructor <init>(SLjava/lang/String;I)V
    .locals 1
    .param p1, "priority"    # S
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "icon"    # I

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p3, p0, Lcom/miui/gallery/video/editor/model/AdjustData;->icon:I

    .line 11
    iput-object p2, p0, Lcom/miui/gallery/video/editor/model/AdjustData;->name:Ljava/lang/String;

    .line 12
    iput p1, p0, Lcom/miui/gallery/video/editor/model/AdjustData;->priority:I

    .line 13
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/model/AdjustData;->getMin()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/video/editor/model/AdjustData;->progress:I

    .line 14
    return-void
.end method


# virtual methods
.method public abstract getMax()I
.end method

.method public abstract getMin()I
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/miui/gallery/video/editor/model/AdjustData;->progress:I

    return v0
.end method

.method public abstract isMid()Z
.end method

.method public setProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/miui/gallery/video/editor/model/AdjustData;->progress:I

    .line 24
    return-void
.end method
