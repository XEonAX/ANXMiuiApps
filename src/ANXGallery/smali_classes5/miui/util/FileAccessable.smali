.class public interface abstract Lmiui/util/FileAccessable;
.super Ljava/lang/Object;
.source "FileAccessable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/FileAccessable$ZipInnerFile;,
        Lmiui/util/FileAccessable$DeskFile;,
        Lmiui/util/FileAccessable$AbstractFileAccessable;,
        Lmiui/util/FileAccessable$Factory;,
        Lmiui/util/FileAccessable$FileAccessableFilter;
    }
.end annotation


# virtual methods
.method public abstract createByExtension(Ljava/lang/String;)Lmiui/util/FileAccessable;
.end method

.method public abstract createBySubpath(Ljava/lang/String;)Lmiui/util/FileAccessable;
.end method

.method public abstract exists()Z
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract isDirectory()Z
.end method

.method public abstract isFile()Z
.end method

.method public abstract list()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/util/FileAccessable;",
            ">;"
        }
    .end annotation
.end method

.method public abstract list(Lmiui/util/FileAccessable$FileAccessableFilter;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/FileAccessable$FileAccessableFilter;",
            ")",
            "Ljava/util/List<",
            "Lmiui/util/FileAccessable;",
            ">;"
        }
    .end annotation
.end method
