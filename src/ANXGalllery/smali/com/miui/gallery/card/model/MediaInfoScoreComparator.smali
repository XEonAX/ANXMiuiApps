.class public Lcom/miui/gallery/card/model/MediaInfoScoreComparator;
.super Ljava/lang/Object;
.source "MediaInfoScoreComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/miui/gallery/card/model/MediaInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/gallery/card/model/MediaInfo;Lcom/miui/gallery/card/model/MediaInfo;)I
    .locals 4
    .param p1, "o1"    # Lcom/miui/gallery/card/model/MediaInfo;
    .param p2, "o2"    # Lcom/miui/gallery/card/model/MediaInfo;

    .prologue
    .line 8
    invoke-virtual {p1}, Lcom/miui/gallery/card/model/MediaInfo;->getScore()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/miui/gallery/card/model/MediaInfo;->getScore()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 5
    check-cast p1, Lcom/miui/gallery/card/model/MediaInfo;

    check-cast p2, Lcom/miui/gallery/card/model/MediaInfo;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/card/model/MediaInfoScoreComparator;->compare(Lcom/miui/gallery/card/model/MediaInfo;Lcom/miui/gallery/card/model/MediaInfo;)I

    move-result v0

    return v0
.end method
