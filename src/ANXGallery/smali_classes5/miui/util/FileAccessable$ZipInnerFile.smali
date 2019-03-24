.class public Lmiui/util/FileAccessable$ZipInnerFile;
.super Lmiui/util/FileAccessable$AbstractFileAccessable;
.source "FileAccessable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/FileAccessable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZipInnerFile"
.end annotation


# instance fields
.field mEntryName:Ljava/lang/String;

.field mExists:Z

.field mIsFolder:Z

.field mZipFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Ljava/util/zip/ZipFile;Ljava/lang/String;)V
    .locals 0
    .param p1, "zipFile"    # Ljava/util/zip/ZipFile;
    .param p2, "entryName"    # Ljava/lang/String;

    .line 175
    invoke-direct {p0}, Lmiui/util/FileAccessable$AbstractFileAccessable;-><init>()V

    .line 176
    invoke-direct {p0, p1, p2}, Lmiui/util/FileAccessable$ZipInnerFile;->init(Ljava/util/zip/ZipFile;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method private init(Ljava/util/zip/ZipFile;Ljava/lang/String;)V
    .locals 6
    .param p1, "zipFile"    # Ljava/util/zip/ZipFile;
    .param p2, "entryName"    # Ljava/lang/String;

    .line 180
    iput-object p1, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    .line 181
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    if-nez v0, :cond_1

    .line 184
    return-void

    .line 187
    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 188
    .local v0, "zipEntry":Ljava/util/zip/ZipEntry;
    if-nez v0, :cond_5

    .line 189
    move-object v2, p2

    .line 190
    .local v2, "folder":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 192
    :cond_2
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 193
    .local v3, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 194
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 195
    .local v4, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 196
    iput-boolean v1, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mExists:Z

    .line 197
    iput-boolean v1, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mIsFolder:Z

    .line 198
    goto :goto_2

    .line 200
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    :cond_3
    goto :goto_1

    .line 201
    .end local v2    # "folder":Ljava/lang/String;
    .end local v3    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_4
    :goto_2
    goto :goto_3

    .line 202
    :cond_5
    iput-boolean v1, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mExists:Z

    .line 203
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v1

    iput-boolean v1, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mIsFolder:Z

    .line 205
    :goto_3
    return-void
.end method

.method private static objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "obj1"    # Ljava/lang/Object;
    .param p1, "obj2"    # Ljava/lang/Object;

    .line 282
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 283
    :cond_0
    if-nez p0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 284
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public createByExtension(Ljava/lang/String;)Lmiui/util/FileAccessable;
    .locals 4
    .param p1, "extensionName"    # Ljava/lang/String;

    .line 294
    new-instance v0, Lmiui/util/FileAccessable$ZipInnerFile;

    iget-object v1, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmiui/util/FileAccessable$ZipInnerFile;-><init>(Ljava/util/zip/ZipFile;Ljava/lang/String;)V

    return-object v0
.end method

.method public createBySubpath(Ljava/lang/String;)Lmiui/util/FileAccessable;
    .locals 4
    .param p1, "subpath"    # Ljava/lang/String;

    .line 289
    new-instance v0, Lmiui/util/FileAccessable$ZipInnerFile;

    iget-object v1, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmiui/util/FileAccessable$ZipInnerFile;-><init>(Ljava/util/zip/ZipFile;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 266
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    instance-of v1, p1, Lmiui/util/FileAccessable$ZipInnerFile;

    if-nez v1, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    move-object v1, p1

    check-cast v1, Lmiui/util/FileAccessable$ZipInnerFile;

    .line 269
    .local v1, "target":Lmiui/util/FileAccessable$ZipInnerFile;
    iget-object v2, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    iget-object v3, v1, Lmiui/util/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-static {v2, v3}, Lmiui/util/FileAccessable$ZipInnerFile;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    .line 270
    :cond_1
    iget-object v2, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    iget-object v3, v1, Lmiui/util/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    invoke-static {v2, v3}, Lmiui/util/FileAccessable$ZipInnerFile;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    .line 272
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 266
    .end local v1    # "target":Lmiui/util/FileAccessable$ZipInnerFile;
    :cond_3
    :goto_0
    return v0
.end method

.method public exists()Z
    .locals 1

    .line 209
    iget-boolean v0, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mExists:Z

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3

    .line 248
    iget-boolean v0, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mExists:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mIsFolder:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 249
    :cond_0
    iget-object v0, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    iget-object v2, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 251
    .local v0, "zipEntry":Ljava/util/zip/ZipEntry;
    :try_start_0
    iget-object v2, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v2, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 252
    :catch_0
    move-exception v2

    .line 253
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 254
    return-object v1

    .line 248
    .end local v0    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .line 260
    iget-object v0, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 261
    .local v0, "separatorIndex":I
    if-gez v0, :cond_0

    iget-object v1, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public hashCode()I
    .locals 2

    .line 277
    iget-object v0, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    .line 278
    :cond_0
    iget-object v0, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isFile()Z
    .locals 1

    .line 214
    iget-boolean v0, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mIsFolder:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public list()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/util/FileAccessable;",
            ">;"
        }
    .end annotation

    .line 219
    iget-boolean v0, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mExists:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mIsFolder:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 221
    :cond_0
    iget-object v0, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 222
    .local v0, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v1, "returnList":Ljava/util/List;, "Ljava/util/List<Lmiui/util/FileAccessable;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 225
    .local v2, "setForQuickCheck":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 227
    .local v3, "currEntryFolder":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 228
    .local v5, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-le v6, v7, :cond_2

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 229
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 230
    .local v6, "subpath":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    .line 231
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 232
    .local v4, "index":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_1

    .line 233
    const/4 v8, 0x0

    invoke-virtual {v6, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 234
    .local v8, "folderName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 237
    .end local v8    # "folderName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 238
    new-instance v8, Lmiui/util/FileAccessable$ZipInnerFile;

    iget-object v9, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-direct {v8, v9, v7}, Lmiui/util/FileAccessable$ZipInnerFile;-><init>(Ljava/util/zip/ZipFile;Ljava/lang/String;)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 242
    .end local v3    # "currEntryFolder":Ljava/lang/String;
    .end local v4    # "index":I
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    .end local v6    # "subpath":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 243
    :cond_3
    return-object v1

    .line 219
    .end local v0    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v1    # "returnList":Ljava/util/List;, "Ljava/util/List<Lmiui/util/FileAccessable;>;"
    .end local v2    # "setForQuickCheck":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_4
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method
