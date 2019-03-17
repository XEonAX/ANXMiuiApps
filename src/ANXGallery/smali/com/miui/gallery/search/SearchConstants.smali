.class public Lcom/miui/gallery/search/SearchConstants;
.super Ljava/lang/Object;
.source "SearchConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/search/SearchConstants$SectionType;,
        Lcom/miui/gallery/search/SearchConstants$SearchType;
    }
.end annotation


# direct methods
.method public static compareErrorStatus(II)I
    .locals 2
    .param p0, "status1"    # I
    .param p1, "status2"    # I

    .prologue
    .line 177
    invoke-static {p0}, Lcom/miui/gallery/search/SearchConstants;->getErrorStatusPriority(I)I

    move-result v0

    invoke-static {p1}, Lcom/miui/gallery/search/SearchConstants;->getErrorStatusPriority(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gallery/search/SearchConstants;->comparePriority(II)I

    move-result v0

    return v0
.end method

.method public static final comparePriority(II)I
    .locals 1
    .param p0, "lPriority"    # I
    .param p1, "rPriority"    # I

    .prologue
    .line 83
    sub-int v0, p1, p0

    return v0
.end method

.method public static getConvertedStyle(Lcom/miui/gallery/search/core/suggestion/RankInfo;)I
    .locals 2
    .param p0, "rankInfo"    # Lcom/miui/gallery/search/core/suggestion/RankInfo;

    .prologue
    .line 215
    if-eqz p0, :cond_0

    const-string v0, "HD"

    invoke-virtual {p0}, Lcom/miui/gallery/search/core/suggestion/RankInfo;->getStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDefaultOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    const-string v0, "ASC"

    return-object v0
.end method

.method public static getDefaultOrder(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "rankName"    # Ljava/lang/String;

    .prologue
    .line 226
    const-string v0, "date"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const-string v0, "DESC"

    .line 229
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/gallery/search/SearchConstants;->getDefaultOrder()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getErrorStatusPriority(I)I
    .locals 1
    .param p0, "status"    # I

    .prologue
    const/4 v0, 0x4

    .line 181
    packed-switch p0, :pswitch_data_0

    .line 206
    :goto_0
    :pswitch_0
    return v0

    .line 184
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 190
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 203
    :pswitch_3
    const/4 v0, 0x5

    goto :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static isErrorStatus(I)Z
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 172
    if-eqz p0, :cond_0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHorizontalDocumentStyle(Lcom/miui/gallery/search/core/suggestion/RankInfo;)Z
    .locals 2
    .param p0, "rankInfo"    # Lcom/miui/gallery/search/core/suggestion/RankInfo;

    .prologue
    const/4 v0, 0x1

    .line 220
    invoke-static {p0}, Lcom/miui/gallery/search/SearchConstants;->getConvertedStyle(Lcom/miui/gallery/search/core/suggestion/RankInfo;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
