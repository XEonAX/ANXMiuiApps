.class public Lcom/miui/gallery/share/AlbumShareState;
.super Ljava/lang/Object;
.source "AlbumShareState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/share/AlbumShareState$StateValue;
    }
.end annotation


# static fields
.field private static final NEGATIVE_NEXT:[I

.field private static final POSITIVE_NEXT:[I

.field private static final STATE_VALUE_ARR:[Lcom/miui/gallery/share/AlbumShareState$StateValue;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x7

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 22
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/gallery/share/AlbumShareState;->NEGATIVE_NEXT:[I

    .line 32
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/miui/gallery/share/AlbumShareState;->POSITIVE_NEXT:[I

    .line 65
    new-array v0, v1, [Lcom/miui/gallery/share/AlbumShareState$StateValue;

    new-instance v1, Lcom/miui/gallery/share/AlbumShareState$StateValue;

    const-string v2, "invited"

    invoke-direct {v1, v2, v7, v4}, Lcom/miui/gallery/share/AlbumShareState$StateValue;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/miui/gallery/share/AlbumShareState$StateValue;

    const-string v2, "invited"

    const-string v3, "requesting"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/share/AlbumShareState$StateValue;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/miui/gallery/share/AlbumShareState$StateValue;

    const-string v2, "invited"

    invoke-direct {v1, v2, v7, v5}, Lcom/miui/gallery/share/AlbumShareState$StateValue;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-instance v2, Lcom/miui/gallery/share/AlbumShareState$StateValue;

    const-string v3, "invited"

    const-string v4, "accepting"

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/share/AlbumShareState$StateValue;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/miui/gallery/share/AlbumShareState$StateValue;

    const-string v3, "invited"

    const-string v4, "denying"

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/share/AlbumShareState$StateValue;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/miui/gallery/share/AlbumShareState$StateValue;

    const-string v3, "normal"

    invoke-direct {v2, v3, v7, v6}, Lcom/miui/gallery/share/AlbumShareState$StateValue;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/miui/gallery/share/AlbumShareState$StateValue;

    const-string v3, "normal"

    const-string v4, "exiting"

    invoke-direct {v2, v3, v4, v6}, Lcom/miui/gallery/share/AlbumShareState$StateValue;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/share/AlbumShareState;->STATE_VALUE_ARR:[Lcom/miui/gallery/share/AlbumShareState$StateValue;

    return-void

    .line 22
    nop

    :array_0
    .array-data 4
        -0x1
        0x0
        0x4
        0x2
        0x2
        0x6
        0x5
    .end array-data

    .line 32
    :array_1
    .array-data 4
        0x1
        0x2
        0x3
        0x5
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public static accept(I)I
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 112
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 113
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/gallery/share/AlbumShareState;->advance(IZ)I

    move-result v0

    .line 116
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static advance(IZ)I
    .locals 1
    .param p0, "state"    # I
    .param p1, "positive"    # Z

    .prologue
    .line 80
    invoke-static {p0}, Lcom/miui/gallery/share/AlbumShareState;->isValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    const/4 v0, -0x1

    .line 84
    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/miui/gallery/share/AlbumShareState;->POSITIVE_NEXT:[I

    aget v0, v0, p0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/miui/gallery/share/AlbumShareState;->NEGATIVE_NEXT:[I

    aget v0, v0, p0

    goto :goto_0
.end method

.method public static deny(I)I
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 120
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 121
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/gallery/share/AlbumShareState;->advance(IZ)I

    move-result v0

    .line 124
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static exit(I)I
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 128
    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 129
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/gallery/share/AlbumShareState;->advance(IZ)I

    move-result v0

    .line 132
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getState(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 9
    .param p0, "dbState"    # Ljava/lang/String;
    .param p1, "uiState"    # Ljava/lang/String;
    .param p2, "hasShareDetailInfo"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "state":I
    sget-object v6, Lcom/miui/gallery/share/AlbumShareState;->STATE_VALUE_ARR:[Lcom/miui/gallery/share/AlbumShareState$StateValue;

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_3

    aget-object v1, v6, v5

    .line 90
    .local v1, "sv":Lcom/miui/gallery/share/AlbumShareState$StateValue;
    iget-object v2, v1, Lcom/miui/gallery/share/AlbumShareState$StateValue;->mDBState:Ljava/lang/String;

    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/miui/gallery/share/AlbumShareState$StateValue;->mUIState:Ljava/lang/String;

    .line 91
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v1, Lcom/miui/gallery/share/AlbumShareState$StateValue;->mShareDetailInfoRequest:I

    const/4 v8, 0x2

    if-eq v2, v8, :cond_0

    iget v2, v1, Lcom/miui/gallery/share/AlbumShareState$StateValue;->mShareDetailInfoRequest:I

    if-ne v2, v3, :cond_1

    move v2, v3

    :goto_1
    if-ne v2, p2, :cond_2

    .line 100
    .end local v0    # "state":I
    .end local v1    # "sv":Lcom/miui/gallery/share/AlbumShareState$StateValue;
    :cond_0
    :goto_2
    return v0

    .restart local v0    # "state":I
    .restart local v1    # "sv":Lcom/miui/gallery/share/AlbumShareState$StateValue;
    :cond_1
    move v2, v4

    .line 91
    goto :goto_1

    .line 97
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 89
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_0

    .line 100
    .end local v1    # "sv":Lcom/miui/gallery/share/AlbumShareState$StateValue;
    :cond_3
    const/4 v0, -0x1

    goto :goto_2
.end method

.method public static isValid(I)Z
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 76
    if-ltz p0, :cond_0

    const/4 v0, 0x6

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static requestLongUrl(I)I
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 104
    if-nez p0, :cond_0

    .line 105
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/gallery/share/AlbumShareState;->advance(IZ)I

    move-result v0

    .line 108
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
