.class public Lcom/nexstreaming/nexeditorsdk/nexAnimate$AnimateImages;
.super Lcom/nexstreaming/nexeditorsdk/nexAnimate;
.source "nexAnimate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexAnimate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AnimateImages"
.end annotation


# instance fields
.field private final resourceIds:[I


# direct methods
.method protected varargs constructor <init>(II[I)V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0, p1, p2}, Lcom/nexstreaming/nexeditorsdk/nexAnimate;-><init>(II)V

    .line 293
    iput-object p3, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$AnimateImages;->resourceIds:[I

    .line 294
    return-void
.end method


# virtual methods
.method protected getImageResourceId(I)I
    .locals 2

    .prologue
    .line 298
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$AnimateImages;->mStartTime:I

    sub-int v0, p1, v0

    div-int/lit8 v0, v0, 0x21

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$AnimateImages;->resourceIds:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 299
    if-gez v0, :cond_0

    .line 300
    const/4 v0, 0x0

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$AnimateImages;->resourceIds:[I

    aget v0, v1, v0

    return v0
.end method
