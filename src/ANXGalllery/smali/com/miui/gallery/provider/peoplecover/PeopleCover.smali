.class public Lcom/miui/gallery/provider/peoplecover/PeopleCover;
.super Lcom/miui/gallery/dao/base/Entity;
.source "PeopleCover.java"


# instance fields
.field private mCoverScore:I

.field private mCoverServerId:Ljava/lang/String;

.field private mPeopleServerId:Ljava/lang/String;

.field private mPeopleServerTag:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/miui/gallery/dao/base/Entity;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "peopleId"    # Ljava/lang/String;
    .param p2, "coverId"    # Ljava/lang/String;
    .param p3, "serverTag"    # Ljava/lang/String;
    .param p4, "coverScore"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/miui/gallery/dao/base/Entity;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCover;->mPeopleServerId:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCover;->mCoverServerId:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCover;->mPeopleServerTag:Ljava/lang/String;

    .line 34
    iput p4, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCover;->mCoverScore:I

    .line 35
    return-void
.end method


# virtual methods
.method public getCoverId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCover;->mCoverServerId:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverScore()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCover;->mCoverScore:I

    return v0
.end method

.method public getServerTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCover;->mPeopleServerTag:Ljava/lang/String;

    return-object v0
.end method

.method protected getTableColumns()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/dao/base/TableColumn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v0, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/dao/base/TableColumn;>;"
    const-string v1, "peopleServerId"

    const-string v2, "TEXT"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/provider/peoplecover/PeopleCover;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v1, "coverServerId"

    const-string v2, "TEXT"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/provider/peoplecover/PeopleCover;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v1, "peopleServerTag"

    const-string v2, "TEXT"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/provider/peoplecover/PeopleCover;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v1, "coverScore"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/provider/peoplecover/PeopleCover;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-object v0
.end method

.method protected getUniqueConstraints()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 93
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "peopleServerId"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected onConvertToContents(Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 85
    const-string v0, "peopleServerId"

    iget-object v1, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCover;->mPeopleServerId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v0, "coverServerId"

    iget-object v1, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCover;->mCoverServerId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v0, "peopleServerTag"

    iget-object v1, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCover;->mPeopleServerTag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v0, "coverScore"

    iget v1, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCover;->mCoverScore:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 89
    return-void
.end method

.method protected onInitFromCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 77
    const-string v0, "peopleServerId"

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/peoplecover/PeopleCover;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCover;->mPeopleServerId:Ljava/lang/String;

    .line 78
    const-string v0, "coverServerId"

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/peoplecover/PeopleCover;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCover;->mCoverServerId:Ljava/lang/String;

    .line 79
    const-string v0, "peopleServerTag"

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/peoplecover/PeopleCover;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCover;->mPeopleServerTag:Ljava/lang/String;

    .line 80
    const-string v0, "coverScore"

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/peoplecover/PeopleCover;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCover;->mCoverScore:I

    .line 81
    return-void
.end method

.method public setCoverId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCover;->mCoverServerId:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setCoverScore(I)V
    .locals 0
    .param p1, "score"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCover;->mCoverScore:I

    .line 63
    return-void
.end method

.method public setServerTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/miui/gallery/provider/peoplecover/PeopleCover;->mPeopleServerTag:Ljava/lang/String;

    .line 55
    return-void
.end method
