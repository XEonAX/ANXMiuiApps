.class Lcom/miui/gallery/picker/uri/UriGenerator$2;
.super Ljava/lang/Object;
.source "UriGenerator.java"

# interfaces
.implements Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/picker/uri/UriGenerator;->queryCheckedItems()V
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
.field final synthetic this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

.field final synthetic val$checkedItemMap:Landroid/util/LongSparseArray;


# direct methods
.method constructor <init>(Lcom/miui/gallery/picker/uri/UriGenerator;Landroid/util/LongSparseArray;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/picker/uri/UriGenerator;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/miui/gallery/picker/uri/UriGenerator$2;->this$0:Lcom/miui/gallery/picker/uri/UriGenerator;

    iput-object p2, p0, Lcom/miui/gallery/picker/uri/UriGenerator$2;->val$checkedItemMap:Landroid/util/LongSparseArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/miui/gallery/picker/uri/UriGenerator$2;->handle(Landroid/database/Cursor;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public handle(Landroid/database/Cursor;)Ljava/lang/Void;
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 108
    if-eqz p1, :cond_1

    .line 109
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 112
    .local v2, "itemId":J
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/UriGenerator$2;->val$checkedItemMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;

    .line 113
    .local v0, "item":Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;
    if-eqz v0, :cond_0

    .line 114
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;->setServerType(I)V

    .line 115
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;->setSize(J)V

    .line 116
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;->setWidth(I)V

    .line 117
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;->setHeight(I)V

    goto :goto_0

    .line 121
    .end local v0    # "item":Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;
    .end local v2    # "itemId":J
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method
