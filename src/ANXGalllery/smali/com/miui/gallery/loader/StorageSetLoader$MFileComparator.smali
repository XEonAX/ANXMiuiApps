.class Lcom/miui/gallery/loader/StorageSetLoader$MFileComparator;
.super Ljava/lang/Object;
.source "StorageSetLoader.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/loader/StorageSetLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MFileComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/loader/StorageSetLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/loader/StorageSetLoader$1;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/miui/gallery/loader/StorageSetLoader$MFileComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 5
    .param p1, "lhs"    # Ljava/io/File;
    .param p2, "rhs"    # Ljava/io/File;

    .prologue
    .line 134
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 135
    .local v2, "r":J
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 136
    .local v0, "l":J
    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    .line 137
    const/4 v4, 0x1

    .line 141
    :goto_0
    return v4

    .line 138
    :cond_0
    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    .line 139
    const/4 v4, -0x1

    goto :goto_0

    .line 141
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 130
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/loader/StorageSetLoader$MFileComparator;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
