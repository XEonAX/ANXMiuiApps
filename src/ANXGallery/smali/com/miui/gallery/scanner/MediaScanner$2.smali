.class final Lcom/miui/gallery/scanner/MediaScanner$2;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/scanner/MediaScanner;->scannerCorrectLogic(Landroid/content/Context;Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$jc:Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

.field final synthetic val$pattern:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;Ljava/util/regex/Pattern;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/miui/gallery/scanner/MediaScanner$2;->val$jc:Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    iput-object p2, p0, Lcom/miui/gallery/scanner/MediaScanner$2;->val$pattern:Ljava/util/regex/Pattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 4
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 339
    iget-object v2, p0, Lcom/miui/gallery/scanner/MediaScanner$2;->val$jc:Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    invoke-interface {v2}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 349
    :cond_0
    :goto_0
    return v1

    .line 342
    :cond_1
    invoke-static {p2}, Lcom/miui/gallery/util/FileMimeUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/FileMimeUtil;->isImageFromMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 344
    const-string v2, "\\."

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "ss":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 346
    array-length v2, v0

    if-le v2, v3, :cond_2

    array-length v2, v0

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/scanner/MediaScanner$2;->val$pattern:Ljava/util/regex/Pattern;

    array-length v3, v0

    add-int/lit8 v3, v3, -0x2

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method
