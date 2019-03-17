.class public Lcom/miui/gallery/search/StatusHandleHelper;
.super Ljava/lang/Object;
.source "StatusHandleHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;,
        Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;,
        Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;
    }
.end annotation


# instance fields
.field private mBaseStatus:I

.field private mErrorViewAdapter:Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;

.field private mFullScreenViews:[Landroid/view/View;

.field private mInfoFooterView:Landroid/view/View;

.field private mInfoHeaderView:Landroid/view/View;

.field private mInitiated:Z

.field private mResultStatus:I

.field private mTopVisibleView:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput v0, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mBaseStatus:I

    .line 87
    iput v0, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mResultStatus:I

    .line 95
    iput v0, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mTopVisibleView:I

    .line 261
    return-void
.end method

.method private setOnlyVisibleView(I)V
    .locals 2
    .param p1, "viewId"    # I

    .prologue
    .line 250
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mFullScreenViews:[Landroid/view/View;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 251
    if-ne v0, p1, :cond_0

    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/search/StatusHandleHelper;->setVisibility(II)V

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    :cond_0
    const/16 v1, 0x8

    goto :goto_1

    .line 253
    :cond_1
    iget v1, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mTopVisibleView:I

    if-eq v1, p1, :cond_2

    .line 254
    iput p1, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mTopVisibleView:I

    .line 256
    :cond_2
    return-void
.end method

.method private setVisibility(II)V
    .locals 3
    .param p1, "viewId"    # I
    .param p2, "visibility"    # I

    .prologue
    .line 236
    iget-object v2, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mFullScreenViews:[Landroid/view/View;

    aget-object v1, v2, p1

    .line 237
    .local v1, "view":Landroid/view/View;
    instance-of v0, v1, Landroid/view/ViewStub;

    .line 238
    .local v0, "isViewStub":Z
    const/16 v2, 0x8

    if-eq p2, v2, :cond_2

    .line 239
    if-eqz v0, :cond_0

    .line 240
    check-cast v1, Landroid/view/ViewStub;

    .end local v1    # "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 241
    .restart local v1    # "view":Landroid/view/View;
    iget-object v2, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mFullScreenViews:[Landroid/view/View;

    aput-object v1, v2, p1

    .line 243
    :cond_0
    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 247
    :cond_1
    :goto_0
    return-void

    .line 244
    :cond_2
    if-nez v0, :cond_1

    .line 245
    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getResultStatus()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mResultStatus:I

    return v0
.end method

.method public init(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;)V
    .locals 3
    .param p1, "dataView"    # Landroid/view/View;
    .param p2, "fullScreenInfoView"    # Landroid/view/View;
    .param p3, "fullScreenLoadingView"    # Landroid/view/View;
    .param p4, "fullScreenEmptyView"    # Landroid/view/View;
    .param p5, "errorViewAdapter"    # Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;

    .prologue
    const/4 v2, 0x1

    .line 106
    if-nez p5, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The ErrorViewAdapter cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    iput-object p5, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mErrorViewAdapter:Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;

    .line 110
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p3, v0, v2

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    iput-object v0, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mFullScreenViews:[Landroid/view/View;

    .line 111
    iput-boolean v2, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mInitiated:Z

    .line 112
    return-void
.end method

.method public refreshInfoViews()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    const/4 v4, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x3

    .line 164
    iget-boolean v5, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mInitiated:Z

    if-nez v5, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v5, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mErrorViewAdapter:Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;

    invoke-interface {v5}, Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;->isEmptyDataView()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 168
    iget-object v4, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mErrorViewAdapter:Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;

    invoke-interface {v4}, Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;->isLoading()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 169
    iget-object v4, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mFullScreenViews:[Landroid/view/View;

    iget-object v5, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mErrorViewAdapter:Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;

    iget-object v6, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mFullScreenViews:[Landroid/view/View;

    aget-object v6, v6, v10

    iget v7, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mResultStatus:I

    sget-object v8, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;->FULL_SCREEN:Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    .line 170
    invoke-interface {v5, v6, v7, v8}, Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;->getLoadingView(Landroid/view/View;ILcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;)Landroid/view/View;

    move-result-object v5

    aput-object v5, v4, v10

    .line 172
    invoke-direct {p0, v10}, Lcom/miui/gallery/search/StatusHandleHelper;->setOnlyVisibleView(I)V

    .line 173
    iget-object v4, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mErrorViewAdapter:Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;

    iget-object v5, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mFullScreenViews:[Landroid/view/View;

    aget-object v5, v5, v10

    iget v6, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mResultStatus:I

    sget-object v7, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;->FULL_SCREEN:Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    invoke-interface {v4, v5, v6, v7}, Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;->bindLoadingView(Landroid/view/View;ILcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;)Landroid/view/View;

    goto :goto_0

    .line 174
    :cond_2
    iget v4, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mResultStatus:I

    invoke-static {v4}, Lcom/miui/gallery/search/SearchConstants;->isErrorStatus(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 175
    iget-object v4, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mFullScreenViews:[Landroid/view/View;

    iget-object v5, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mErrorViewAdapter:Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;

    iget-object v6, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mFullScreenViews:[Landroid/view/View;

    aget-object v6, v6, v9

    iget v7, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mResultStatus:I

    sget-object v8, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;->FULL_SCREEN:Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    .line 176
    invoke-interface {v5, v6, v7, v8}, Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;->getInfoView(Landroid/view/View;ILcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;)Landroid/view/View;

    move-result-object v5

    aput-object v5, v4, v9

    .line 177
    invoke-direct {p0, v9}, Lcom/miui/gallery/search/StatusHandleHelper;->setOnlyVisibleView(I)V

    .line 178
    iget-object v4, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mErrorViewAdapter:Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;

    iget-object v5, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mFullScreenViews:[Landroid/view/View;

    aget-object v5, v5, v9

    iget v6, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mResultStatus:I

    sget-object v7, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;->FULL_SCREEN:Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    invoke-interface {v4, v5, v6, v7}, Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;->bindInfoView(Landroid/view/View;ILcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;)V

    goto :goto_0

    .line 179
    :cond_3
    iget v4, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mBaseStatus:I

    invoke-static {v4}, Lcom/miui/gallery/search/SearchConstants;->isErrorStatus(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 180
    iget-object v4, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mFullScreenViews:[Landroid/view/View;

    iget-object v5, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mErrorViewAdapter:Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;

    iget-object v6, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mFullScreenViews:[Landroid/view/View;

    aget-object v6, v6, v9

    iget v7, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mBaseStatus:I

    sget-object v8, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;->FULL_SCREEN:Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    .line 181
    invoke-interface {v5, v6, v7, v8}, Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;->getInfoView(Landroid/view/View;ILcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;)Landroid/view/View;

    move-result-object v5

    aput-object v5, v4, v9

    .line 182
    invoke-direct {p0, v9}, Lcom/miui/gallery/search/StatusHandleHelper;->setOnlyVisibleView(I)V

    .line 183
    iget-object v4, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mErrorViewAdapter:Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;

    iget-object v5, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mFullScreenViews:[Landroid/view/View;

    aget-object v5, v5, v9

    iget v6, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mBaseStatus:I

    sget-object v7, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;->FULL_SCREEN:Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    invoke-interface {v4, v5, v6, v7}, Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;->bindInfoView(Landroid/view/View;ILcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;)V

    goto/16 :goto_0

    .line 186
    :cond_4
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/miui/gallery/search/StatusHandleHelper;->setOnlyVisibleView(I)V

    goto/16 :goto_0

    .line 189
    :cond_5
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/miui/gallery/search/StatusHandleHelper;->setOnlyVisibleView(I)V

    .line 190
    iget-object v3, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mInfoHeaderView:Landroid/view/View;

    .line 191
    .local v3, "oldHeader":Landroid/view/View;
    iget-object v2, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mInfoFooterView:Landroid/view/View;

    .line 193
    .local v2, "oldFooter":Landroid/view/View;
    iget-object v5, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mInfoHeaderView:Landroid/view/View;

    if-eqz v5, :cond_6

    .line 194
    iget-object v5, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mErrorViewAdapter:Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;

    iget-object v6, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mInfoHeaderView:Landroid/view/View;

    invoke-interface {v5, v6}, Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;->removeHeaderView(Landroid/view/View;)V

    .line 195
    iput-object v7, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mInfoHeaderView:Landroid/view/View;

    .line 197
    :cond_6
    iget-object v5, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mInfoFooterView:Landroid/view/View;

    if-eqz v5, :cond_7

    .line 198
    iget-object v5, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mErrorViewAdapter:Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;

    iget-object v6, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mInfoFooterView:Landroid/view/View;

    invoke-interface {v5, v6}, Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;->removeFooterView(Landroid/view/View;)V

    .line 199
    iput-object v7, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mInfoFooterView:Landroid/view/View;

    .line 203
    :cond_7
    iget-object v5, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mErrorViewAdapter:Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;

    iget v6, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mResultStatus:I

    invoke-interface {v5, v6}, Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;->positionForResultStatus(I)Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    move-result-object v5

    sget-object v6, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;->HEADER:Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    if-ne v5, v6, :cond_9

    iget v1, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mResultStatus:I

    .line 206
    .local v1, "headerStatus":I
    :goto_1
    iget-object v5, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mErrorViewAdapter:Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;

    sget-object v6, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;->HEADER:Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    invoke-interface {v5, v3, v1, v6}, Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;->getInfoView(Landroid/view/View;ILcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mInfoHeaderView:Landroid/view/View;

    .line 207
    iget-object v5, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mInfoHeaderView:Landroid/view/View;

    if-eqz v5, :cond_8

    .line 208
    iget-object v5, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mErrorViewAdapter:Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;

    iget-object v6, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mInfoHeaderView:Landroid/view/View;

    sget-object v7, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;->HEADER:Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    invoke-interface {v5, v6, v1, v7}, Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;->bindInfoView(Landroid/view/View;ILcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;)V

    .line 209
    iget-object v5, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mErrorViewAdapter:Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;

    iget-object v6, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mInfoHeaderView:Landroid/view/View;

    invoke-interface {v5, v6}, Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;->addHeaderView(Landroid/view/View;)V

    .line 212
    :cond_8
    iget-object v5, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mErrorViewAdapter:Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;

    invoke-interface {v5}, Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;->isLoading()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 213
    iget-object v4, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mErrorViewAdapter:Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;

    iget v5, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mResultStatus:I

    sget-object v6, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;->FOOTER:Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    invoke-interface {v4, v2, v5, v6}, Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;->getLoadingView(Landroid/view/View;ILcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mInfoFooterView:Landroid/view/View;

    .line 214
    iget-object v4, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mInfoFooterView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 215
    iget-object v4, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mErrorViewAdapter:Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;

    iget-object v5, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mInfoFooterView:Landroid/view/View;

    invoke-interface {v4, v5}, Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;->addFooterView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 203
    .end local v1    # "headerStatus":I
    :cond_9
    iget-object v5, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mErrorViewAdapter:Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;

    iget v6, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mBaseStatus:I

    .line 204
    invoke-interface {v5, v6}, Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;->positionForBaseStatus(I)Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    move-result-object v5

    sget-object v6, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;->HEADER:Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    if-ne v5, v6, :cond_a

    iget v1, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mBaseStatus:I

    goto :goto_1

    :cond_a
    move v1, v4

    goto :goto_1

    .line 218
    .restart local v1    # "headerStatus":I
    :cond_b
    iget-object v5, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mErrorViewAdapter:Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;

    iget v6, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mResultStatus:I

    invoke-interface {v5, v6}, Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;->positionForResultStatus(I)Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    move-result-object v5

    sget-object v6, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;->FOOTER:Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    if-ne v5, v6, :cond_c

    iget v0, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mResultStatus:I

    .line 221
    .local v0, "footerStatus":I
    :goto_2
    iget-object v4, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mErrorViewAdapter:Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;

    sget-object v5, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;->FOOTER:Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    invoke-interface {v4, v2, v0, v5}, Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;->getInfoView(Landroid/view/View;ILcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mInfoFooterView:Landroid/view/View;

    .line 222
    iget-object v4, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mInfoFooterView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 223
    iget-object v4, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mErrorViewAdapter:Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;

    iget-object v5, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mInfoFooterView:Landroid/view/View;

    sget-object v6, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;->FOOTER:Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    invoke-interface {v4, v5, v0, v6}, Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;->bindInfoView(Landroid/view/View;ILcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;)V

    .line 224
    iget-object v4, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mErrorViewAdapter:Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;

    iget-object v5, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mInfoFooterView:Landroid/view/View;

    invoke-interface {v4, v5}, Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;->addFooterView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 218
    .end local v0    # "footerStatus":I
    :cond_c
    iget-object v5, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mErrorViewAdapter:Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;

    iget v6, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mBaseStatus:I

    .line 219
    invoke-interface {v5, v6}, Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;->positionForBaseStatus(I)Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    move-result-object v5

    sget-object v6, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;->FOOTER:Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    if-ne v5, v6, :cond_d

    iget v0, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mBaseStatus:I

    goto :goto_2

    :cond_d
    move v0, v4

    goto :goto_2
.end method

.method public updateBaseStatus(I)V
    .locals 2
    .param p1, "newStatus"    # I

    .prologue
    .line 119
    iget-boolean v1, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mInitiated:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mBaseStatus:I

    if-ne v1, p1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget v0, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mBaseStatus:I

    .line 122
    .local v0, "oldStatus":I
    iput p1, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mBaseStatus:I

    .line 125
    invoke-static {v0}, Lcom/miui/gallery/search/SearchConstants;->isErrorStatus(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mBaseStatus:I

    .line 126
    invoke-static {v1}, Lcom/miui/gallery/search/SearchConstants;->isErrorStatus(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 127
    iget-object v1, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mErrorViewAdapter:Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;

    invoke-interface {v1}, Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;->requestRetry()V

    .line 130
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/search/StatusHandleHelper;->refreshInfoViews()V

    goto :goto_0
.end method

.method public updateResultStatus(I)V
    .locals 0
    .param p1, "newStatus"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/miui/gallery/search/StatusHandleHelper;->mResultStatus:I

    .line 139
    invoke-virtual {p0}, Lcom/miui/gallery/search/StatusHandleHelper;->refreshInfoViews()V

    .line 140
    return-void
.end method
