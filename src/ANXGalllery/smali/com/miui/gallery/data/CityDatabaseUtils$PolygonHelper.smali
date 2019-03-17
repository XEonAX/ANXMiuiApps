.class public Lcom/miui/gallery/data/CityDatabaseUtils$PolygonHelper;
.super Ljava/lang/Object;
.source "CityDatabaseUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/data/CityDatabaseUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PolygonHelper"
.end annotation


# direct methods
.method public static parseFromByteArray([B)Ljava/lang/Object;
    .locals 8
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B)TT;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 122
    if-eqz p0, :cond_0

    array-length v6, p0

    if-nez v6, :cond_2

    .line 123
    :cond_0
    invoke-static {}, Lcom/miui/gallery/data/CityDatabaseUtils;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "cannot parse polygon from a byte array, the byte array is null or empty"

    invoke-static {v6, v7}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_1
    :goto_0
    return-object v5

    .line 130
    :cond_2
    const/4 v0, 0x0

    .line 131
    .local v0, "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    const/4 v3, 0x0

    .line 133
    .local v3, "in":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .end local v0    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .local v1, "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    :try_start_1
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 135
    .end local v3    # "in":Ljava/io/ObjectInputStream;
    .local v4, "in":Ljava/io/ObjectInputStream;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v5

    .line 144
    .local v5, "object":Ljava/lang/Object;, "TT;"
    if-eqz v1, :cond_3

    .line 145
    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 147
    :cond_3
    if-eqz v4, :cond_1

    .line 148
    invoke-static {v4}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 141
    .end local v1    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .end local v4    # "in":Ljava/io/ObjectInputStream;
    .end local v5    # "object":Ljava/lang/Object;, "TT;"
    .restart local v0    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "in":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v2

    .line 142
    .local v2, "e":Ljava/lang/Throwable;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 144
    if-eqz v0, :cond_4

    .line 145
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 147
    :cond_4
    if-eqz v3, :cond_1

    .line 148
    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 144
    .end local v2    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v0, :cond_5

    .line 145
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 147
    :cond_5
    if-eqz v3, :cond_6

    .line 148
    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    :cond_6
    throw v6

    .line 144
    .end local v0    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    goto :goto_2

    .end local v0    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .end local v3    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "in":Ljava/io/ObjectInputStream;
    :catchall_2
    move-exception v6

    move-object v3, v4

    .end local v4    # "in":Ljava/io/ObjectInputStream;
    .restart local v3    # "in":Ljava/io/ObjectInputStream;
    move-object v0, v1

    .end local v1    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    goto :goto_2

    .line 141
    .end local v0    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    goto :goto_1

    .end local v0    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .end local v3    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "in":Ljava/io/ObjectInputStream;
    :catch_2
    move-exception v2

    move-object v3, v4

    .end local v4    # "in":Ljava/io/ObjectInputStream;
    .restart local v3    # "in":Ljava/io/ObjectInputStream;
    move-object v0, v1

    .end local v1    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    goto :goto_1
.end method
