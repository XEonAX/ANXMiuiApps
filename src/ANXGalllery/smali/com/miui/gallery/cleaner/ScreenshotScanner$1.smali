.class Lcom/miui/gallery/cleaner/ScreenshotScanner$1;
.super Ljava/lang/Object;
.source "ScreenshotScanner.java"

# interfaces
.implements Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/cleaner/ScreenshotScanner;->scan()Lcom/miui/gallery/cleaner/ScanResult;
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
        "Ljava/util/ArrayList",
        "<",
        "Lcom/miui/gallery/cleaner/ScreenshotScanner$MediaItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cleaner/ScreenshotScanner;


# direct methods
.method constructor <init>(Lcom/miui/gallery/cleaner/ScreenshotScanner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/cleaner/ScreenshotScanner;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/miui/gallery/cleaner/ScreenshotScanner$1;->this$0:Lcom/miui/gallery/cleaner/ScreenshotScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/miui/gallery/cleaner/ScreenshotScanner$1;->handle(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public handle(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cleaner/ScreenshotScanner$MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    const/4 v1, 0x0

    .line 79
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cleaner/ScreenshotScanner$MediaItem;>;"
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 81
    :cond_0
    if-nez v1, :cond_1

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cleaner/ScreenshotScanner$MediaItem;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cleaner/ScreenshotScanner$MediaItem;>;"
    :cond_1
    new-instance v0, Lcom/miui/gallery/cleaner/ScreenshotScanner$MediaItem;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/miui/gallery/cleaner/ScreenshotScanner$MediaItem;-><init>(Lcom/miui/gallery/cleaner/ScreenshotScanner$1;)V

    .line 85
    .local v0, "item":Lcom/miui/gallery/cleaner/ScreenshotScanner$MediaItem;
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/gallery/cleaner/ScreenshotScanner$MediaItem;->mId:J

    .line 86
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/gallery/cleaner/ScreenshotScanner$MediaItem;->mSize:J

    .line 87
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/gallery/cleaner/ScreenshotScanner$MediaItem;->mPath:Ljava/lang/String;

    .line 88
    iget-object v2, v0, Lcom/miui/gallery/cleaner/ScreenshotScanner$MediaItem;->mPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 89
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/gallery/cleaner/ScreenshotScanner$MediaItem;->mPath:Ljava/lang/String;

    .line 91
    :cond_2
    iget-object v2, v0, Lcom/miui/gallery/cleaner/ScreenshotScanner$MediaItem;->mPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/miui/gallery/cleaner/ScreenshotScanner$MediaItem;->mPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 96
    :cond_3
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 98
    .end local v0    # "item":Lcom/miui/gallery/cleaner/ScreenshotScanner$MediaItem;
    :cond_4
    return-object v1

    .line 94
    .restart local v0    # "item":Lcom/miui/gallery/cleaner/ScreenshotScanner$MediaItem;
    :cond_5
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/gallery/cleaner/ScreenshotScanner$MediaItem;->mSha1:Ljava/lang/String;

    .line 95
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
