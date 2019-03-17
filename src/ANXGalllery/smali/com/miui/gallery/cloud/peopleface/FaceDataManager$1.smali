.class final Lcom/miui/gallery/cloud/peopleface/FaceDataManager$1;
.super Ljava/lang/Object;
.source "FaceDataManager.java"

# interfaces
.implements Lcom/miui/gallery/util/GalleryUtils$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->fillInPeopleInfo(Ljava/util/LinkedList;I)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/GalleryUtils$QueryHandler",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$brotherPeoples:Ljava/util/LinkedList;

.field final synthetic val$ret:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/LinkedList;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Lcom/miui/gallery/cloud/peopleface/FaceDataManager$1;->val$brotherPeoples:Ljava/util/LinkedList;

    iput-object p2, p0, Lcom/miui/gallery/cloud/peopleface/FaceDataManager$1;->val$ret:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/database/Cursor;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/16 v4, 0x13

    .line 370
    const/4 v2, 0x0

    .line 371
    .local v2, "updated":Z
    if-eqz p1, :cond_3

    .line 372
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 373
    iget-object v3, p0, Lcom/miui/gallery/cloud/peopleface/FaceDataManager$1;->val$brotherPeoples:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 374
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/cloud/peopleface/PeopleFace;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 375
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    .line 376
    .local v0, "face":Lcom/miui/gallery/cloud/peopleface/PeopleFace;
    invoke-static {v0, p1}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->access$000(Lcom/miui/gallery/cloud/peopleface/PeopleFace;Landroid/database/Cursor;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 377
    invoke-static {p1}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->access$100(Landroid/database/Cursor;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 378
    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->localGroupId:Ljava/lang/String;

    .line 379
    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->groupId:Ljava/lang/String;

    .line 380
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->relationType:I

    .line 390
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 383
    :cond_2
    const/16 v3, 0xf

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->peopleName:Ljava/lang/String;

    .line 384
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->localGroupId:Ljava/lang/String;

    .line 385
    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->groupId:Ljava/lang/String;

    .line 386
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->relationType:I

    .line 387
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 388
    iget-object v3, p0, Lcom/miui/gallery/cloud/peopleface/FaceDataManager$1;->val$ret:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 395
    .end local v0    # "face":Lcom/miui/gallery/cloud/peopleface/PeopleFace;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/cloud/peopleface/PeopleFace;>;"
    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 362
    invoke-virtual {p0, p1}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager$1;->handle(Landroid/database/Cursor;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
