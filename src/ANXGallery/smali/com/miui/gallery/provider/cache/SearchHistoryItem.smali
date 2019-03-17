.class Lcom/miui/gallery/provider/cache/SearchHistoryItem;
.super Ljava/lang/Object;
.source "SearchHistoryItem.java"

# interfaces
.implements Lcom/miui/gallery/provider/cache/CacheItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/provider/cache/SearchHistoryItem$QueryFactory;,
        Lcom/miui/gallery/provider/cache/SearchHistoryItem$Generator;
    }
.end annotation


# static fields
.field private static final COLUMN_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final COLUMN_MAPPER:Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;

.field protected static final PROJECTION:[Ljava/lang/String;


# instance fields
.field public icon:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "icon"
    .end annotation
.end field

.field public intentActionURI:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field

.field public subTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subtitle"
    .end annotation
.end field

.field public timestamp:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timestamp"
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "title"

    aput-object v1, v0, v2

    const-string/jumbo v1, "subTitle"

    aput-object v1, v0, v3

    const-string v1, "actionUri"

    aput-object v1, v0, v4

    const-string v1, "icon"

    aput-object v1, v0, v5

    const-string/jumbo v1, "timestamp"

    aput-object v1, v0, v6

    sput-object v0, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->PROJECTION:[Ljava/lang/String;

    .line 112
    new-instance v0, Landroid/util/ArrayMap;

    sget-object v1, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->PROJECTION:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    sput-object v0, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->COLUMN_MAP:Ljava/util/Map;

    .line 113
    sget-object v0, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->COLUMN_MAP:Ljava/util/Map;

    const-string/jumbo v1, "title"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->COLUMN_MAP:Ljava/util/Map;

    const-string/jumbo v1, "subTitle"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->COLUMN_MAP:Ljava/util/Map;

    const-string v1, "actionUri"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->COLUMN_MAP:Ljava/util/Map;

    const-string v1, "icon"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->COLUMN_MAP:Ljava/util/Map;

    const-string/jumbo v1, "timestamp"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v0, Lcom/miui/gallery/provider/cache/SearchHistoryItem$1;

    invoke-direct {v0}, Lcom/miui/gallery/provider/cache/SearchHistoryItem$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->COLUMN_MAPPER:Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->COLUMN_MAP:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100()Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->COLUMN_MAPPER:Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;

    return-object v0
.end method


# virtual methods
.method public fillWindow(Landroid/database/CursorWindow;III)Z
    .locals 2
    .param p1, "window"    # Landroid/database/CursorWindow;
    .param p2, "row"    # I
    .param p3, "column"    # I
    .param p4, "index"    # I

    .prologue
    .line 74
    if-nez p4, :cond_0

    .line 75
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->title:Ljava/lang/String;

    invoke-static {p1, v0, p2, p3}, Lcom/miui/gallery/provider/cache/ParseUtils;->putString(Landroid/database/CursorWindow;Ljava/lang/String;II)Z

    move-result v0

    .line 87
    :goto_0
    return v0

    .line 77
    :cond_0
    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->subTitle:Ljava/lang/String;

    invoke-static {p1, v0, p2, p3}, Lcom/miui/gallery/provider/cache/ParseUtils;->putString(Landroid/database/CursorWindow;Ljava/lang/String;II)Z

    move-result v0

    goto :goto_0

    .line 80
    :cond_1
    const/4 v0, 0x2

    if-ne p4, v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->intentActionURI:Ljava/lang/String;

    invoke-static {p1, v0, p2, p3}, Lcom/miui/gallery/provider/cache/ParseUtils;->putString(Landroid/database/CursorWindow;Ljava/lang/String;II)Z

    move-result v0

    goto :goto_0

    .line 83
    :cond_2
    const/4 v0, 0x3

    if-ne p4, v0, :cond_3

    .line 84
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->icon:Ljava/lang/String;

    invoke-static {p1, v0, p2, p3}, Lcom/miui/gallery/provider/cache/ParseUtils;->putString(Landroid/database/CursorWindow;Ljava/lang/String;II)Z

    move-result v0

    goto :goto_0

    .line 86
    :cond_3
    const/4 v0, 0x4

    if-ne p4, v0, :cond_4

    .line 87
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->timestamp:Ljava/lang/Long;

    invoke-static {p1, v0, p2, p3}, Lcom/miui/gallery/provider/cache/ParseUtils;->putLong(Landroid/database/CursorWindow;Ljava/lang/Number;II)Z

    move-result v0

    goto :goto_0

    .line 89
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " not recognized column."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(IZ)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .param p2, "useDefault"    # Z

    .prologue
    .line 34
    if-nez p1, :cond_0

    .line 35
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->title:Ljava/lang/String;

    .line 47
    :goto_0
    return-object v0

    .line 37
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->subTitle:Ljava/lang/String;

    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 41
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->intentActionURI:Ljava/lang/String;

    goto :goto_0

    .line 43
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 44
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->icon:Ljava/lang/String;

    goto :goto_0

    .line 46
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 47
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->timestamp:Ljava/lang/Long;

    goto :goto_0

    .line 49
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " not recognized column."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x3

    .line 54
    if-nez p1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v0

    .line 57
    :cond_1
    if-eq p1, v1, :cond_0

    .line 60
    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    .line 63
    if-eq p1, v0, :cond_0

    .line 66
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    move v0, v1

    .line 67
    goto :goto_0

    .line 69
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " not recognized column."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
