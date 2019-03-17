.class public Lcom/miui/gallery/search/resultpage/DataListSourceResult;
.super Lcom/miui/gallery/search/core/result/BaseSourceResult;
.source "DataListSourceResult.java"

# interfaces
.implements Lcom/miui/gallery/search/core/result/SourceResult;


# instance fields
.field private mIndexHash:J

.field private mIsLastPage:Z

.field private mNextPosition:I


# direct methods
.method public constructor <init>(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/source/Source;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;IZJ)V
    .locals 0
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p2, "source"    # Lcom/miui/gallery/search/core/source/Source;
    .param p3, "suggestions"    # Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    .param p4, "nextPosition"    # I
    .param p5, "isLastPage"    # Z
    .param p6, "indexHash"    # J

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/search/core/result/BaseSourceResult;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/source/Source;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)V

    .line 19
    iput p4, p0, Lcom/miui/gallery/search/resultpage/DataListSourceResult;->mNextPosition:I

    .line 20
    iput-boolean p5, p0, Lcom/miui/gallery/search/resultpage/DataListSourceResult;->mIsLastPage:Z

    .line 21
    iput-wide p6, p0, Lcom/miui/gallery/search/resultpage/DataListSourceResult;->mIndexHash:J

    .line 22
    return-void
.end method


# virtual methods
.method public getIndexHash()J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/miui/gallery/search/resultpage/DataListSourceResult;->mIndexHash:J

    return-wide v0
.end method

.method public getNextPosition()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/miui/gallery/search/resultpage/DataListSourceResult;->mNextPosition:I

    return v0
.end method

.method public isLastPage()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/miui/gallery/search/resultpage/DataListSourceResult;->mIsLastPage:Z

    return v0
.end method
