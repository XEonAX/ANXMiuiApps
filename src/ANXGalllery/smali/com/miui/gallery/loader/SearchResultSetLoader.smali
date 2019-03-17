.class public Lcom/miui/gallery/loader/SearchResultSetLoader;
.super Lcom/miui/gallery/loader/CloudSetLoader;
.source "SearchResultSetLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/loader/SearchResultSetLoader$SearchResultDataSet;
    }
.end annotation


# instance fields
.field private mIds:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "data"    # Landroid/os/Bundle;

    .prologue
    .line 24
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Media;->URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v0, p3}, Lcom/miui/gallery/loader/CloudSetLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 25
    if-eqz p3, :cond_0

    .line 26
    const-string v0, "photo_selection_args"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/loader/SearchResultSetLoader;->mIds:[Ljava/lang/String;

    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method protected getOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSelection()Ljava/lang/String;
    .locals 6

    .prologue
    .line 32
    const-string v1, "%s in (%s) AND %s != %s"

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/miui/gallery/loader/SearchResultSetLoader;->mIds:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/loader/SearchResultSetLoader;->mIds:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    const-string v0, ","

    iget-object v4, p0, Lcom/miui/gallery/loader/SearchResultSetLoader;->mIds:[Ljava/lang/String;

    .line 33
    invoke-static {v0, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v3, "localGroupId"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-wide/16 v4, -0x3e8

    .line 34
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    .line 32
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 33
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method protected getSelectionArgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method protected wrapDataSet(Landroid/database/Cursor;)Lcom/miui/gallery/model/CursorDataSet;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 49
    new-instance v0, Lcom/miui/gallery/loader/SearchResultSetLoader$SearchResultDataSet;

    iget-object v1, p0, Lcom/miui/gallery/loader/SearchResultSetLoader;->mIds:[Ljava/lang/String;

    iget v2, p0, Lcom/miui/gallery/loader/SearchResultSetLoader;->mInitPos:I

    invoke-direct {v0, v1, p1, v2}, Lcom/miui/gallery/loader/SearchResultSetLoader$SearchResultDataSet;-><init>([Ljava/lang/String;Landroid/database/Cursor;I)V

    return-object v0
.end method
