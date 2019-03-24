.class Lmiui/content/res/ThemeZipFile$MyZipFile;
.super Ljava/util/zip/ZipFile;
.source "ThemeZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/content/res/ThemeZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyZipFile"
.end annotation


# instance fields
.field mEntryCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lmiui/content/res/ThemeZipFile;


# direct methods
.method public constructor <init>(Lmiui/content/res/ThemeZipFile;Ljava/io/File;)V
    .locals 3
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 350
    iput-object p1, p0, Lmiui/content/res/ThemeZipFile$MyZipFile;->this$0:Lmiui/content/res/ThemeZipFile;

    .line 351
    invoke-direct {p0, p2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 353
    new-instance p1, Ljava/util/HashMap;

    invoke-virtual {p0}, Lmiui/content/res/ThemeZipFile$MyZipFile;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lmiui/content/res/ThemeZipFile$MyZipFile;->mEntryCache:Ljava/util/HashMap;

    .line 354
    invoke-virtual {p0}, Lmiui/content/res/ThemeZipFile$MyZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p1

    .line 355
    .local p1, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 357
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 358
    iget-object v1, p0, Lmiui/content/res/ThemeZipFile$MyZipFile;->mEntryCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    :cond_0
    goto :goto_0

    .line 361
    :cond_1
    return-void
.end method


# virtual methods
.method public getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 1
    .param p1, "entryName"    # Ljava/lang/String;

    .line 364
    iget-object v0, p0, Lmiui/content/res/ThemeZipFile$MyZipFile;->mEntryCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    return-object v0
.end method
