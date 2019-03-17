.class public Lcom/miui/gallery/cloud/RegularPagingProvider;
.super Ljava/lang/Object;
.source "RegularPagingProvider.java"


# instance fields
.field private mCurrentQueryCount:I

.field protected mPage:I

.field private mShouldContinue:Z

.field private mTotalLimit:I

.field private mTotalQueriedCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/RegularPagingProvider;-><init>(I)V

    .line 16
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "totalLimit"    # I

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/cloud/RegularPagingProvider;->mShouldContinue:Z

    .line 7
    iput v1, p0, Lcom/miui/gallery/cloud/RegularPagingProvider;->mPage:I

    .line 10
    iput v1, p0, Lcom/miui/gallery/cloud/RegularPagingProvider;->mTotalQueriedCount:I

    .line 11
    iput v1, p0, Lcom/miui/gallery/cloud/RegularPagingProvider;->mCurrentQueryCount:I

    .line 19
    iput p1, p0, Lcom/miui/gallery/cloud/RegularPagingProvider;->mTotalLimit:I

    .line 20
    return-void
.end method


# virtual methods
.method public getLimitGrownSize()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/miui/gallery/cloud/RegularPagingProvider;->mTotalQueriedCount:I

    return v0
.end method

.method public getQueryLimit()I
    .locals 3

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/RegularPagingProvider;->getLimitGrownSize()I

    move-result v1

    mul-int/lit16 v0, v1, 0x3e8

    .line 24
    .local v0, "currentQueryCount":I
    iget v1, p0, Lcom/miui/gallery/cloud/RegularPagingProvider;->mTotalLimit:I

    iget v2, p0, Lcom/miui/gallery/cloud/RegularPagingProvider;->mTotalQueriedCount:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 25
    iput v0, p0, Lcom/miui/gallery/cloud/RegularPagingProvider;->mCurrentQueryCount:I

    .line 26
    iget v1, p0, Lcom/miui/gallery/cloud/RegularPagingProvider;->mCurrentQueryCount:I

    return v1
.end method

.method public updateShouldContinue(J)Z
    .locals 5
    .param p1, "queriedCount"    # J

    .prologue
    const/4 v0, 0x0

    .line 46
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    .line 47
    iput-boolean v0, p0, Lcom/miui/gallery/cloud/RegularPagingProvider;->mShouldContinue:Z

    .line 49
    :cond_0
    iget v1, p0, Lcom/miui/gallery/cloud/RegularPagingProvider;->mTotalQueriedCount:I

    iget v2, p0, Lcom/miui/gallery/cloud/RegularPagingProvider;->mCurrentQueryCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/miui/gallery/cloud/RegularPagingProvider;->mTotalQueriedCount:I

    .line 50
    iget v1, p0, Lcom/miui/gallery/cloud/RegularPagingProvider;->mCurrentQueryCount:I

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/miui/gallery/cloud/RegularPagingProvider;->mTotalQueriedCount:I

    iget v2, p0, Lcom/miui/gallery/cloud/RegularPagingProvider;->mTotalLimit:I

    if-ge v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/miui/gallery/cloud/RegularPagingProvider;->mShouldContinue:Z

    .line 51
    iget v0, p0, Lcom/miui/gallery/cloud/RegularPagingProvider;->mPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/gallery/cloud/RegularPagingProvider;->mPage:I

    .line 52
    iget-boolean v0, p0, Lcom/miui/gallery/cloud/RegularPagingProvider;->mShouldContinue:Z

    return v0
.end method

.method public updateShouldContinue(Landroid/database/Cursor;)Z
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 38
    if-nez p1, :cond_0

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/cloud/RegularPagingProvider;->mShouldContinue:Z

    .line 40
    iget-boolean v0, p0, Lcom/miui/gallery/cloud/RegularPagingProvider;->mShouldContinue:Z

    .line 42
    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/cloud/RegularPagingProvider;->updateShouldContinue(J)Z

    move-result v0

    goto :goto_0
.end method
