.class public abstract Lmiui/util/FileAccessable$AbstractFileAccessable;
.super Ljava/lang/Object;
.source "FileAccessable.java"

# interfaces
.implements Lmiui/util/FileAccessable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/FileAccessable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractFileAccessable"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDirectory()Z
    .locals 2

    .line 65
    invoke-virtual {p0}, Lmiui/util/FileAccessable$AbstractFileAccessable;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 66
    :cond_0
    invoke-virtual {p0}, Lmiui/util/FileAccessable$AbstractFileAccessable;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 67
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public list(Lmiui/util/FileAccessable$FileAccessableFilter;)Ljava/util/List;
    .locals 5
    .param p1, "filter"    # Lmiui/util/FileAccessable$FileAccessableFilter;
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

    .line 72
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lmiui/util/FileAccessable$AbstractFileAccessable;->list()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 74
    :cond_0
    invoke-virtual {p0}, Lmiui/util/FileAccessable$AbstractFileAccessable;->list()Ljava/util/List;

    move-result-object v0

    .line 75
    .local v0, "allFiles":Ljava/util/List;, "Ljava/util/List<Lmiui/util/FileAccessable;>;"
    if-nez v0, :cond_1

    const/4 v1, 0x0

    return-object v1

    .line 77
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v1, "returnFiles":Ljava/util/List;, "Ljava/util/List<Lmiui/util/FileAccessable;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/util/FileAccessable;

    .line 79
    .local v3, "fileAccessable":Lmiui/util/FileAccessable;
    invoke-interface {p1, v3}, Lmiui/util/FileAccessable$FileAccessableFilter;->accept(Lmiui/util/FileAccessable;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 80
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .end local v3    # "fileAccessable":Lmiui/util/FileAccessable;
    :cond_2
    goto :goto_0

    .line 83
    :cond_3
    return-object v1
.end method
