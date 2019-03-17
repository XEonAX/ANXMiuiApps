.class public Lcom/miui/gallery/movie/net/AudioResourceRequest;
.super Lcom/miui/gallery/movie/net/LocalResourceRequest;
.source "AudioResourceRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/miui/gallery/movie/net/LocalResourceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method protected getParentId()J
    .locals 2

    .prologue
    .line 11
    const-wide v0, 0x24083aabd00040L

    return-wide v0
.end method

.method protected newLocalResource()Lcom/miui/gallery/movie/entity/MovieResource;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/miui/gallery/movie/entity/AudioResource;

    invoke-direct {v0}, Lcom/miui/gallery/movie/entity/AudioResource;-><init>()V

    return-object v0
.end method
