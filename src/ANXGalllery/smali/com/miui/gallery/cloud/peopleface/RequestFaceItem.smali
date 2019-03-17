.class public Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;
.super Lcom/miui/gallery/cloud/RequestItemBase;
.source "RequestFaceItem.java"


# instance fields
.field public face:Lcom/miui/gallery/cloud/peopleface/PeopleFace;


# direct methods
.method public constructor <init>(ILcom/miui/gallery/cloud/peopleface/PeopleFace;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "dbCloud"    # Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    .prologue
    .line 22
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/cloud/RequestItemBase;-><init>(IJ)V

    .line 23
    iput-object p2, p0, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;->face:Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    .line 24
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;->init()V

    .line 25
    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestItemBase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/RequestItemBase;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    return-object v0
.end method

.method public getRequestLimitAGroup()I
    .locals 1

    .prologue
    .line 63
    const/16 v0, 0x32

    return v0
.end method

.method public isInSameAlbum(Lcom/miui/gallery/cloud/RequestItemBase;)Z
    .locals 3
    .param p1, "another"    # Lcom/miui/gallery/cloud/RequestItemBase;

    .prologue
    .line 42
    move-object v0, p1

    check-cast v0, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;

    .line 43
    .local v0, "anotherRequestFaceItem":Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;
    iget-object v1, v0, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;->face:Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    iget v1, v1, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->localFlag:I

    iget-object v2, p0, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;->face:Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    iget v2, v2, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->localFlag:I

    if-ne v1, v2, :cond_1

    .line 44
    iget-object v1, v0, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;->face:Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    iget v1, v1, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->localFlag:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 45
    iget-object v1, v0, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;->face:Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    iget-object v1, v1, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->localGroupId:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;->face:Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    iget-object v2, v2, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->localGroupId:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 53
    :goto_0
    return v1

    .line 48
    :cond_0
    iget-object v1, v0, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;->face:Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    iget v1, v1, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->localFlag:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 49
    iget-object v1, v0, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;->face:Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    iget-object v1, v1, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->groupId:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;->face:Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    iget-object v2, v2, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->groupId:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0

    .line 53
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public supportMultiRequest()Z
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;->face:Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    iget v0, v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->localFlag:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
