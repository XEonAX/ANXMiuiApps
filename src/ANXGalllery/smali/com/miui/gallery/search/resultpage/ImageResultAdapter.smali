.class public Lcom/miui/gallery/search/resultpage/ImageResultAdapter;
.super Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;
.source "ImageResultAdapter.java"

# interfaces
.implements Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/search/resultpage/ImageResultAdapter$OnHeaderItemClickedListener;
    }
.end annotation


# instance fields
.field private mHeaderClickListener:Lcom/miui/gallery/search/resultpage/ImageResultAdapter$OnHeaderItemClickedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/search/resultpage/ImageResultAdapter;)Lcom/miui/gallery/search/resultpage/ImageResultAdapter$OnHeaderItemClickedListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/resultpage/ImageResultAdapter;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultAdapter;->mHeaderClickListener:Lcom/miui/gallery/search/resultpage/ImageResultAdapter$OnHeaderItemClickedListener;

    return-object v0
.end method


# virtual methods
.method public getCountForHeader(I)I
    .locals 1
    .param p1, "groupIndex"    # I

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/ImageResultAdapter;->getResultCursor()Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/ImageResultAdapter;->getResultCursor()Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->getChildrenCount(I)I

    move-result v0

    goto :goto_0
.end method

.method public getDividerView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupCreateDate(I)I
    .locals 1
    .param p1, "groupIndex"    # I

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/ImageResultAdapter;->getResultCursor()Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->getGroupCreateDate(I)I

    move-result v0

    return v0
.end method

.method public getGroupCreateTime(I)J
    .locals 2
    .param p1, "groupIndex"    # I

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/ImageResultAdapter;->getResultCursor()Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->getGroupCreateTime(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGroupRankValue(I)Ljava/lang/String;
    .locals 6
    .param p1, "groupIndex"    # I

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/ImageResultAdapter;->getResultCursor()Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->getGroupRankValue(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "rankValue":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/resultpage/ImageResultAdapter;->getGroupCreateTime(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 86
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/resultpage/ImageResultAdapter;->getGroupCreateTime(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/miui/gallery/util/GalleryDateUtils;->formatRelativeDate(J)Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_0
    return-object v0
.end method

.method public getGroupTitle(I)Ljava/lang/String;
    .locals 1
    .param p1, "groupIndex"    # I

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/ImageResultAdapter;->getResultCursor()Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->getGroupTitle(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "groupIndex"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 40
    if-nez p2, :cond_0

    .line 41
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04012a

    .line 42
    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    .line 45
    check-cast v0, Lcom/miui/gallery/search/resultpage/ImageResultHeaderItem;

    .line 46
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/resultpage/ImageResultAdapter;->getGroupRankValue(I)Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/resultpage/ImageResultAdapter;->getGroupTitle(I)Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/resultpage/ImageResultAdapter;->getGroupCreateTime(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    const v4, 0x7f020038

    new-instance v5, Lcom/miui/gallery/search/resultpage/ImageResultAdapter$1;

    invoke-direct {v5, p0, p1}, Lcom/miui/gallery/search/resultpage/ImageResultAdapter$1;-><init>(Lcom/miui/gallery/search/resultpage/ImageResultAdapter;I)V

    .line 45
    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/search/resultpage/ImageResultHeaderItem;->bindData(Ljava/lang/String;Ljava/lang/String;ZILandroid/view/View$OnClickListener;)V

    .line 59
    return-object p2
.end method

.method public getNumHeaders()I
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/ImageResultAdapter;->getResultCursor()Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/ImageResultAdapter;->getResultCursor()Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->getGroupCount()I

    move-result v0

    goto :goto_0
.end method

.method public setHeaderClickListener(Lcom/miui/gallery/search/resultpage/ImageResultAdapter$OnHeaderItemClickedListener;)V
    .locals 0
    .param p1, "headerClickListener"    # Lcom/miui/gallery/search/resultpage/ImageResultAdapter$OnHeaderItemClickedListener;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/miui/gallery/search/resultpage/ImageResultAdapter;->mHeaderClickListener:Lcom/miui/gallery/search/resultpage/ImageResultAdapter$OnHeaderItemClickedListener;

    .line 64
    return-void
.end method

.method public shouldDrawDivider()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method
