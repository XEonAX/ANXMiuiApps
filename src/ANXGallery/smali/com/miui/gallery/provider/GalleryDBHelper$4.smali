.class Lcom/miui/gallery/provider/GalleryDBHelper$4;
.super Ljava/lang/Object;
.source "GalleryDBHelper.java"

# interfaces
.implements Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/provider/GalleryDBHelper;->refillRelationTypeOfPeople(Landroid/database/sqlite/SQLiteDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/SafeDBUtil$QueryHandler",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/provider/GalleryDBHelper;

.field final synthetic val$db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/miui/gallery/provider/GalleryDBHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/provider/GalleryDBHelper;

    .prologue
    .line 2708
    iput-object p1, p0, Lcom/miui/gallery/provider/GalleryDBHelper$4;->this$0:Lcom/miui/gallery/provider/GalleryDBHelper;

    iput-object p2, p0, Lcom/miui/gallery/provider/GalleryDBHelper$4;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2708
    invoke-virtual {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper$4;->handle(Landroid/database/Cursor;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public handle(Landroid/database/Cursor;)Ljava/lang/Void;
    .locals 11
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2711
    if-eqz p1, :cond_1

    .line 2712
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2713
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 2715
    .local v0, "id":I
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/model/PeopleContactInfo;->fromJson(Ljava/lang/String;)Lcom/miui/gallery/model/PeopleContactInfo;

    move-result-object v1

    .line 2716
    .local v1, "info":Lcom/miui/gallery/model/PeopleContactInfo;
    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/miui/gallery/model/PeopleContactInfo;->relationWithMe:Ljava/lang/String;

    .line 2718
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2719
    invoke-virtual {v1}, Lcom/miui/gallery/model/PeopleContactInfo;->getRelationType()I

    move-result v2

    .line 2720
    .local v2, "relationType":I
    iget-object v3, p0, Lcom/miui/gallery/provider/GalleryDBHelper$4;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "update %s set %s = %d where %s = %d"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "peopleFace"

    aput-object v7, v6, v9

    const-string v7, "relationType"

    aput-object v7, v6, v10

    const/4 v7, 0x2

    .line 2725
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "_id"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    .line 2726
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 2720
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/provider/GalleryDBHelper;->access$100(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    goto :goto_0

    .line 2730
    .end local v0    # "id":I
    .end local v1    # "info":Lcom/miui/gallery/model/PeopleContactInfo;
    .end local v2    # "relationType":I
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method
