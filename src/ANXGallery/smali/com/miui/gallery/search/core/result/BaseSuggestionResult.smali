.class public Lcom/miui/gallery/search/core/result/BaseSuggestionResult;
.super Ljava/lang/Object;
.source "BaseSuggestionResult.java"

# interfaces
.implements Lcom/miui/gallery/search/core/result/SuggestionResult;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/search/core/result/SuggestionResult",
        "<TS;>;"
    }
.end annotation


# instance fields
.field private mClosed:Z

.field private final mData:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private mErrorInfo:Lcom/miui/gallery/search/core/result/ErrorInfo;

.field private mExtras:Landroid/os/Bundle;

.field private final mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

.field private mRefCount:I


# direct methods
.method public constructor <init>(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)V
    .locals 1
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/search/core/QueryInfo;",
            "TS;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/miui/gallery/search/core/result/BaseSuggestionResult;, "Lcom/miui/gallery/search/core/result/BaseSuggestionResult<TS;>;"
    .local p2, "suggestions":Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;, "TS;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;Lcom/miui/gallery/search/core/result/ErrorInfo;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;Lcom/miui/gallery/search/core/result/ErrorInfo;)V
    .locals 1
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p3, "errorInfo"    # Lcom/miui/gallery/search/core/result/ErrorInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/search/core/QueryInfo;",
            "TS;",
            "Lcom/miui/gallery/search/core/result/ErrorInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/miui/gallery/search/core/result/BaseSuggestionResult;, "Lcom/miui/gallery/search/core/result/BaseSuggestionResult<TS;>;"
    .local p2, "suggestions":Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;, "TS;"
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v0, p0, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;->mClosed:Z

    .line 17
    iput v0, p0, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;->mRefCount:I

    .line 19
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;->mExtras:Landroid/os/Bundle;

    .line 29
    iput-object p1, p0, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;->mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    .line 30
    iput-object p2, p0, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;->mData:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    .line 31
    iput-object p3, p0, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;->mErrorInfo:Lcom/miui/gallery/search/core/result/ErrorInfo;

    .line 32
    return-void
.end method

.method private close()V
    .locals 4

    .prologue
    .line 76
    .local p0, "this":Lcom/miui/gallery/search/core/result/BaseSuggestionResult;, "Lcom/miui/gallery/search/core/result/BaseSuggestionResult<TS;>;"
    const-string v1, "BaseSuggestionResult"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SuggestionResult close() ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-boolean v1, p0, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;->mClosed:Z

    if-eqz v1, :cond_1

    .line 78
    const-string v1, "BaseSuggestionResult"

    const-string v2, "Double close()"

    invoke-static {v1, v2}, Lcom/miui/gallery/search/utils/SearchLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;->mClosed:Z

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;->mData:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;->mData:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    invoke-interface {v1}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 84
    iget-object v1, p0, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;->mData:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    invoke-interface {v1}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BaseSuggestionResult"

    invoke-static {v1, v0}, Lcom/miui/gallery/search/utils/SearchLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 85
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;->mData:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    if-eqz v1, :cond_0

    .line 86
    const-string v1, "BaseSuggestionResult"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]\'s data is already closed before result is closed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/search/utils/SearchLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public acquire()V
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lcom/miui/gallery/search/core/result/BaseSuggestionResult;, "Lcom/miui/gallery/search/core/result/BaseSuggestionResult<TS;>;"
    iget v0, p0, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;->mRefCount:I

    .line 59
    return-void
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 100
    .local p0, "this":Lcom/miui/gallery/search/core/result/BaseSuggestionResult;, "Lcom/miui/gallery/search/core/result/BaseSuggestionResult<TS;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    const-string v0, "BaseSuggestionResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LEAK! Finalized without being closed: BaseSuggestionResult["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;->getQueryInfo()Lcom/miui/gallery/search/core/QueryInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/search/utils/SearchLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0}, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;->close()V

    .line 104
    :cond_0
    return-void
.end method

.method public getData()Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/miui/gallery/search/core/result/BaseSuggestionResult;, "Lcom/miui/gallery/search/core/result/BaseSuggestionResult<TS;>;"
    const/4 v0, 0x0

    .line 36
    iget-object v1, p0, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;->mData:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    if-nez v1, :cond_1

    .line 41
    :cond_0
    :goto_0
    return-object v0

    .line 38
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;->mData:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    invoke-interface {v1}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;->mData:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    goto :goto_0
.end method

.method public getErrorInfo()Lcom/miui/gallery/search/core/result/ErrorInfo;
    .locals 2

    .prologue
    .line 46
    .local p0, "this":Lcom/miui/gallery/search/core/result/BaseSuggestionResult;, "Lcom/miui/gallery/search/core/result/BaseSuggestionResult<TS;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getErrorMessage() when closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;->mErrorInfo:Lcom/miui/gallery/search/core/result/ErrorInfo;

    return-object v0
.end method

.method public getQueryInfo()Lcom/miui/gallery/search/core/QueryInfo;
    .locals 1

    .prologue
    .line 118
    .local p0, "this":Lcom/miui/gallery/search/core/result/BaseSuggestionResult;, "Lcom/miui/gallery/search/core/result/BaseSuggestionResult<TS;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;->mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    return-object v0
.end method

.method public getResultExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 108
    .local p0, "this":Lcom/miui/gallery/search/core/result/BaseSuggestionResult;, "Lcom/miui/gallery/search/core/result/BaseSuggestionResult<TS;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 71
    .local p0, "this":Lcom/miui/gallery/search/core/result/BaseSuggestionResult;, "Lcom/miui/gallery/search/core/result/BaseSuggestionResult<TS;>;"
    iget-boolean v0, p0, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;->mClosed:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 95
    .local p0, "this":Lcom/miui/gallery/search/core/result/BaseSuggestionResult;, "Lcom/miui/gallery/search/core/result/BaseSuggestionResult<TS;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;->mData:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;->mData:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 123
    .local p0, "this":Lcom/miui/gallery/search/core/result/BaseSuggestionResult;, "Lcom/miui/gallery/search/core/result/BaseSuggestionResult<TS;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;->getData()Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;->mData:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    invoke-interface {v0, p1}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 126
    :cond_0
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 138
    .local p0, "this":Lcom/miui/gallery/search/core/result/BaseSuggestionResult;, "Lcom/miui/gallery/search/core/result/BaseSuggestionResult<TS;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;->getData()Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;->mData:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    invoke-interface {v0, p1}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 142
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 63
    .local p0, "this":Lcom/miui/gallery/search/core/result/BaseSuggestionResult;, "Lcom/miui/gallery/search/core/result/BaseSuggestionResult<TS;>;"
    iget v0, p0, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;->mRefCount:I

    .line 64
    iget v0, p0, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;->mRefCount:I

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;->close()V

    .line 67
    :cond_0
    return-void
.end method

.method public setErrorInfo(Lcom/miui/gallery/search/core/result/ErrorInfo;)V
    .locals 0
    .param p1, "errorInfo"    # Lcom/miui/gallery/search/core/result/ErrorInfo;

    .prologue
    .line 53
    .local p0, "this":Lcom/miui/gallery/search/core/result/BaseSuggestionResult;, "Lcom/miui/gallery/search/core/result/BaseSuggestionResult<TS;>;"
    iput-object p1, p0, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;->mErrorInfo:Lcom/miui/gallery/search/core/result/ErrorInfo;

    .line 54
    return-void
.end method

.method public setResultExtras(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 113
    .local p0, "this":Lcom/miui/gallery/search/core/result/BaseSuggestionResult;, "Lcom/miui/gallery/search/core/result/BaseSuggestionResult<TS;>;"
    if-nez p1, :cond_0

    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .end local p1    # "extras":Landroid/os/Bundle;
    :cond_0
    iput-object p1, p0, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;->mExtras:Landroid/os/Bundle;

    .line 114
    return-void
.end method
