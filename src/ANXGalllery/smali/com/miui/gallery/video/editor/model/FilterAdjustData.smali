.class public Lcom/miui/gallery/video/editor/model/FilterAdjustData;
.super Lcom/miui/gallery/video/editor/model/AdjustData;
.source "FilterAdjustData.java"


# instance fields
.field MAX:I

.field MIN:I

.field private mId:I

.field private mIsMid:Z

.field private mLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(ISLjava/lang/String;IZLjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "priority"    # S
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "icon"    # I
    .param p5, "isMid"    # Z
    .param p6, "label"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0, p2, p3, p4}, Lcom/miui/gallery/video/editor/model/AdjustData;-><init>(SLjava/lang/String;I)V

    .line 11
    const/16 v0, 0x64

    iput v0, p0, Lcom/miui/gallery/video/editor/model/FilterAdjustData;->MAX:I

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/video/editor/model/FilterAdjustData;->MIN:I

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/gallery/video/editor/model/FilterAdjustData;->mLabel:Ljava/lang/String;

    .line 17
    iput p1, p0, Lcom/miui/gallery/video/editor/model/FilterAdjustData;->mId:I

    .line 18
    iput-boolean p5, p0, Lcom/miui/gallery/video/editor/model/FilterAdjustData;->mIsMid:Z

    .line 19
    iput-object p6, p0, Lcom/miui/gallery/video/editor/model/FilterAdjustData;->mLabel:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/miui/gallery/video/editor/model/FilterAdjustData;->mId:I

    return v0
.end method

.method public getLable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/gallery/video/editor/model/FilterAdjustData;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/miui/gallery/video/editor/model/FilterAdjustData;->MAX:I

    return v0
.end method

.method public getMin()I
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/miui/gallery/video/editor/model/FilterAdjustData;->mIsMid:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/video/editor/model/FilterAdjustData;->MAX:I

    neg-int v0, v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/miui/gallery/video/editor/model/FilterAdjustData;->MIN:I

    goto :goto_0
.end method

.method public isMid()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/miui/gallery/video/editor/model/FilterAdjustData;->mIsMid:Z

    return v0
.end method
