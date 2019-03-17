.class final Lcom/miui/gallery/provider/FaceManager$2;
.super Ljava/lang/Object;
.source "FaceManager.java"

# interfaces
.implements Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/provider/FaceManager;->queryPeopleIdOfRelation(Landroid/content/Context;I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/SafeDBUtil$QueryHandler",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$relationType:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 558
    iput p1, p0, Lcom/miui/gallery/provider/FaceManager$2;->val$relationType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 558
    invoke-virtual {p0, p1}, Lcom/miui/gallery/provider/FaceManager$2;->handle(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public handle(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 561
    if-eqz p1, :cond_1

    .line 562
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 563
    .local v1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 564
    .local v0, "idIndex":I
    const-string v3, "relationType"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 565
    .local v2, "relationTypeIndex":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 566
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iget v4, p0, Lcom/miui/gallery/provider/FaceManager$2;->val$relationType:I

    if-ne v3, v4, :cond_0

    .line 567
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 572
    .end local v0    # "idIndex":I
    .end local v1    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v2    # "relationTypeIndex":I
    :cond_1
    const/4 v1, 0x0

    :cond_2
    return-object v1
.end method
