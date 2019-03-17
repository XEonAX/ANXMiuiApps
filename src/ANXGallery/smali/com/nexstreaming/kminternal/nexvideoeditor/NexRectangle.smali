.class public final Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;
.super Ljava/lang/Object;
.source "NexRectangle.java"


# instance fields
.field public mBottom:I

.field public mLeft:I

.field public mRight:I

.field public mTop:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;->mLeft:I

    .line 13
    iput p2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;->mTop:I

    .line 14
    iput p3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;->mRight:I

    .line 15
    iput p4, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;->mBottom:I

    .line 16
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 31
    if-ne p0, p1, :cond_1

    move v1, v0

    .line 39
    :cond_0
    :goto_0
    return v1

    .line 32
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 34
    check-cast p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    .line 36
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;->mLeft:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;->mLeft:I

    if-ne v2, v3, :cond_0

    .line 37
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;->mTop:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;->mTop:I

    if-ne v2, v3, :cond_0

    .line 38
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;->mRight:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;->mRight:I

    if-ne v2, v3, :cond_0

    .line 39
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;->mBottom:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;->mBottom:I

    if-ne v2, v3, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 45
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;->mLeft:I

    .line 46
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;->mTop:I

    add-int/2addr v0, v1

    .line 47
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;->mRight:I

    add-int/2addr v0, v1

    .line 48
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;->mBottom:I

    add-int/2addr v0, v1

    .line 49
    return v0
.end method

.method public setRect(IIII)V
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;->mLeft:I

    .line 20
    iput p2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;->mTop:I

    .line 21
    iput p3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;->mRight:I

    .line 22
    iput p4, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;->mBottom:I

    .line 23
    return-void
.end method
