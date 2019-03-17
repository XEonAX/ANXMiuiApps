.class public Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableGenericUtils;
.super Ljava/lang/Object;
.source "ParcelableGenericUtils.java"


# direct methods
.method public static readArray(Landroid/os/Parcel;)[Landroid/os/Parcelable;
    .locals 7
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            ")[TT;"
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 77
    .local v5, "size":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 78
    const/4 v1, 0x0

    .line 90
    :cond_0
    :goto_0
    return-object v1

    .line 80
    :cond_1
    const/4 v1, 0x0

    .line 82
    .local v1, "array":[Landroid/os/Parcelable;, "[TT;"
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 83
    .local v2, "cls":Ljava/lang/Class;
    invoke-static {v2, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/os/Parcelable;

    move-object v0, v6

    check-cast v0, [Landroid/os/Parcelable;

    move-object v1, v0

    .line 84
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v5, :cond_0

    .line 85
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    aput-object v6, v1, v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 87
    .end local v2    # "cls":Ljava/lang/Class;
    .end local v4    # "i":I
    :catch_0
    move-exception v3

    .line 88
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static readList(Landroid/os/Parcel;)Ljava/util/List;
    .locals 5
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 27
    .local v3, "size":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 28
    const/4 v2, 0x0

    .line 38
    :cond_0
    return-object v2

    .line 30
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 33
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public static readObject(Landroid/os/Parcel;)Landroid/os/Parcelable;
    .locals 4
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 51
    const/4 v2, 0x0

    .line 53
    .local v2, "t":Landroid/os/Parcelable;, "TT;"
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "className":Ljava/lang/String;
    const-string v3, "NULL"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 55
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 60
    .end local v0    # "className":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 57
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static writeArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;Ljava/lang/Class;)V
    .locals 3
    .param p0, "dest"    # Landroid/os/Parcel;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I[TT;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p2, "array":[Landroid/os/Parcelable;, "[TT;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p2, :cond_1

    .line 65
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    :cond_0
    return-void

    .line 68
    :cond_1
    array-length v1, p2

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p2, v1

    .line 71
    .local v0, "t":Landroid/os/Parcelable;, "TT;"
    invoke-virtual {p0, v0, p1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static writeList(Landroid/os/Parcel;ILjava/util/List;)V
    .locals 3
    .param p0, "dest"    # Landroid/os/Parcel;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p2, :cond_0

    .line 16
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 20
    .local v0, "t":Landroid/os/Parcelable;, "TT;"
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, v0, p1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 23
    .end local v0    # "t":Landroid/os/Parcelable;, "TT;"
    :cond_1
    return-void
.end method

.method public static writeObject(Landroid/os/Parcel;ILandroid/os/Parcelable;)V
    .locals 1
    .param p0, "dest"    # Landroid/os/Parcel;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "ITT;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, "t":Landroid/os/Parcelable;, "TT;"
    if-nez p2, :cond_0

    .line 43
    const-string v0, "NULL"

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0, p2, p1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0
.end method
