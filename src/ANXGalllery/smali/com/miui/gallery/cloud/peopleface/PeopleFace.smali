.class public Lcom/miui/gallery/cloud/peopleface/PeopleFace;
.super Ljava/lang/Object;
.source "PeopleFace.java"

# interfaces
.implements Lcom/miui/gallery/data/DBItem;


# instance fields
.field public _id:Ljava/lang/String;

.field public faceHScale:D

.field public faceWScale:D

.field public faceXScale:D

.field public faceYScale:D

.field public groupId:Ljava/lang/String;

.field public leftEyeXScale:D

.field public leftEyeYScale:D

.field public localFlag:I

.field public localGroupId:Ljava/lang/String;

.field public peopleContactJson:Ljava/lang/String;

.field public peopleName:Ljava/lang/String;

.field public relationType:I

.field public rightEyeXScale:D

.field public rightEyeYScale:D

.field public serverId:Ljava/lang/String;

.field public serverStatus:Ljava/lang/String;

.field public serverTag:J

.field public type:Ljava/lang/String;

.field public visibilityType:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->reloadData(Landroid/database/Cursor;I)Z

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "faceId"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "groupId"    # Ljava/lang/String;
    .param p4, "serverTag"    # J

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->serverId:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->type:Ljava/lang/String;

    .line 92
    iput-object p3, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->groupId:Ljava/lang/String;

    .line 93
    iput-wide p4, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->serverTag:J

    .line 94
    return-void
.end method

.method private equalString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 109
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 110
    const/4 v0, 0x1

    .line 116
    :cond_0
    :goto_0
    return v0

    .line 111
    :cond_1
    if-nez p1, :cond_2

    if-nez p2, :cond_0

    .line 113
    :cond_2
    if-eqz p1, :cond_3

    if-eqz p2, :cond_0

    .line 116
    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public equalMainInfoWith(Lcom/miui/gallery/cloud/peopleface/PeopleFace;)Z
    .locals 2
    .param p1, "face"    # Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->_id:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->_id:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->equalString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->serverId:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->serverId:Ljava/lang/String;

    .line 103
    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->equalString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->localGroupId:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->localGroupId:Ljava/lang/String;

    .line 104
    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->equalString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->peopleName:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->peopleName:Ljava/lang/String;

    .line 105
    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->equalString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public reloadData(Landroid/database/Cursor;I)Z
    .locals 6
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "startIndex"    # I

    .prologue
    .line 42
    new-instance v0, Lcom/miui/gallery/util/UpdateHelper;

    invoke-direct {v0}, Lcom/miui/gallery/util/UpdateHelper;-><init>()V

    .line 43
    .local v0, "uh":Lcom/miui/gallery/util/UpdateHelper;
    iget-object v1, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->_id:Ljava/lang/String;

    add-int/lit8 v2, p2, 0x0

    invoke-static {p1, v2}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->_id:Ljava/lang/String;

    .line 45
    iget-object v1, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->serverId:Ljava/lang/String;

    add-int/lit8 v2, p2, 0x1

    invoke-static {p1, v2}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->serverId:Ljava/lang/String;

    .line 47
    iget-object v1, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->type:Ljava/lang/String;

    add-int/lit8 v2, p2, 0x2

    invoke-static {p1, v2}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->type:Ljava/lang/String;

    .line 49
    iget-object v1, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->groupId:Ljava/lang/String;

    add-int/lit8 v2, p2, 0x3

    invoke-static {p1, v2}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->groupId:Ljava/lang/String;

    .line 51
    iget-object v1, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->localGroupId:Ljava/lang/String;

    add-int/lit8 v2, p2, 0x4

    invoke-static {p1, v2}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->localGroupId:Ljava/lang/String;

    .line 53
    iget v1, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->localFlag:I

    add-int/lit8 v2, p2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->localFlag:I

    .line 55
    iget-wide v2, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->faceXScale:D

    add-int/lit8 v1, p2, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/miui/gallery/util/UpdateHelper;->update(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->faceXScale:D

    .line 57
    iget-wide v2, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->faceYScale:D

    add-int/lit8 v1, p2, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/miui/gallery/util/UpdateHelper;->update(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->faceYScale:D

    .line 59
    iget-wide v2, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->faceWScale:D

    add-int/lit8 v1, p2, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/miui/gallery/util/UpdateHelper;->update(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->faceWScale:D

    .line 61
    iget-wide v2, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->faceHScale:D

    add-int/lit8 v1, p2, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/miui/gallery/util/UpdateHelper;->update(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->faceHScale:D

    .line 63
    iget-wide v2, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->leftEyeXScale:D

    add-int/lit8 v1, p2, 0xa

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/miui/gallery/util/UpdateHelper;->update(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->leftEyeXScale:D

    .line 65
    iget-wide v2, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->leftEyeYScale:D

    add-int/lit8 v1, p2, 0xb

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/miui/gallery/util/UpdateHelper;->update(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->leftEyeYScale:D

    .line 67
    iget-wide v2, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->rightEyeXScale:D

    add-int/lit8 v1, p2, 0xc

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/miui/gallery/util/UpdateHelper;->update(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->rightEyeXScale:D

    .line 69
    iget-wide v2, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->rightEyeYScale:D

    add-int/lit8 v1, p2, 0xd

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/miui/gallery/util/UpdateHelper;->update(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->rightEyeYScale:D

    .line 72
    iget-object v1, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->serverStatus:Ljava/lang/String;

    add-int/lit8 v2, p2, 0xe

    invoke-static {p1, v2}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->serverStatus:Ljava/lang/String;

    .line 74
    iget-object v1, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->peopleName:Ljava/lang/String;

    add-int/lit8 v2, p2, 0xf

    invoke-static {p1, v2}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->peopleName:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->peopleContactJson:Ljava/lang/String;

    add-int/lit8 v2, p2, 0x12

    invoke-static {p1, v2}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->peopleContactJson:Ljava/lang/String;

    .line 78
    iget-wide v2, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->serverTag:J

    add-int/lit8 v1, p2, 0x14

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/miui/gallery/util/UpdateHelper;->update(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->serverTag:J

    .line 79
    iget v1, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->relationType:I

    add-int/lit8 v2, p2, 0x13

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->relationType:I

    .line 81
    iget v1, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->visibilityType:I

    add-int/lit8 v2, p2, 0x10

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->visibilityType:I

    .line 84
    const-string v1, "peopleface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reloadData for the face with server id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->serverId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Lcom/miui/gallery/util/UpdateHelper;->isUpdated()Z

    move-result v1

    return v1
.end method
