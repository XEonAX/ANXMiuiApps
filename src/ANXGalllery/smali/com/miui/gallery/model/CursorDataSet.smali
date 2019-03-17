.class public abstract Lcom/miui/gallery/model/CursorDataSet;
.super Lcom/miui/gallery/model/BaseDataSet;
.source "CursorDataSet.java"


# instance fields
.field protected mCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/miui/gallery/model/BaseDataSet;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/miui/gallery/model/CursorDataSet;->mCursor:Landroid/database/Cursor;

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;I)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "initPos"    # I

    .prologue
    .line 14
    invoke-direct {p0, p2}, Lcom/miui/gallery/model/BaseDataSet;-><init>(I)V

    .line 15
    iput-object p1, p0, Lcom/miui/gallery/model/CursorDataSet;->mCursor:Landroid/database/Cursor;

    .line 16
    return-void
.end method


# virtual methods
.method protected createItem(I)Lcom/miui/gallery/model/BaseDataItem;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/miui/gallery/model/CursorDataSet;->isValidate(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    new-instance v0, Lcom/miui/gallery/model/CloudItem;

    invoke-direct {v0}, Lcom/miui/gallery/model/CloudItem;-><init>()V

    .line 32
    .local v0, "item":Lcom/miui/gallery/model/BaseDataItem;
    invoke-virtual {p0, v0, p1}, Lcom/miui/gallery/model/CursorDataSet;->bindItem(Lcom/miui/gallery/model/BaseDataItem;I)V

    .line 35
    .end local v0    # "item":Lcom/miui/gallery/model/BaseDataItem;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/miui/gallery/model/CursorDataSet;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/model/CursorDataSet;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isValidate()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/gallery/model/CursorDataSet;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/model/CursorDataSet;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isValidate(I)Z
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/miui/gallery/model/CursorDataSet;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/model/CursorDataSet;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected moveToPosition(I)Z
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/miui/gallery/model/CursorDataSet;->isValidate(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/model/CursorDataSet;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRelease()V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/model/CursorDataSet;->mCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 26
    return-void
.end method
