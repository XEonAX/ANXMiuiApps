.class public Lcom/miui/gallery/provider/peoplecover/CoverCountStrategy;
.super Lcom/miui/gallery/provider/peoplecover/BaseStrategy;
.source "CoverCountStrategy.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "weight"    # I

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/peoplecover/BaseStrategy;-><init>(I)V

    .line 16
    return-void
.end method


# virtual methods
.method public isValid(Landroid/database/Cursor;)Z
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x0

    .line 20
    if-nez p1, :cond_1

    .line 28
    :cond_0
    :goto_0
    return v2

    .line 23
    :cond_1
    const/16 v3, 0x9

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->getBrothers(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 24
    .local v1, "list":Ljava/util/ArrayList;
    if-nez v1, :cond_2

    move v0, v2

    .line 25
    .local v0, "count":I
    :goto_1
    const/4 v3, 0x3

    if-gt v0, v3, :cond_0

    .line 26
    const/4 v2, 0x1

    goto :goto_0

    .line 24
    .end local v0    # "count":I
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_1
.end method
