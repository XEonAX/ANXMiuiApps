.class public Lcom/xiaomi/analytics/internal/util/ApkTools;
.super Ljava/lang/Object;
.source "ApkTools.java"


# static fields
.field private static final ARMEABI:Ljava/lang/String; = "armeabi"

.field private static final TAG:Ljava/lang/String; = "ApkTools"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractSo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "soPath"    # Ljava/lang/String;

    .prologue
    .line 25
    const/16 v16, 0x0

    .line 26
    .local v16, "zfile":Ljava/util/zip/ZipFile;
    const/4 v6, 0x0

    .line 27
    .local v6, "fos":Ljava/io/FileOutputStream;
    const/4 v15, 0x0

    .line 29
    .local v15, "ze":Ljava/util/zip/ZipEntry;
    if-eqz p1, :cond_0

    :try_start_0
    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 30
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 32
    :cond_0
    if-eqz p2, :cond_1

    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 33
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 35
    :cond_1
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 36
    .local v13, "soAbi":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/analytics/internal/util/ApkTools;->getAbiList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 37
    .local v2, "abilist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v17, Ljava/util/zip/ZipFile;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    .end local v16    # "zfile":Ljava/util/zip/ZipFile;
    .local v17, "zfile":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v14

    .line 39
    .local v14, "zList":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    const/16 v20, 0x400

    move/from16 v0, v20

    new-array v3, v0, [B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .local v3, "buf":[B
    move-object v7, v6

    .line 41
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v7, "fos":Ljava/lang/Object;
    :cond_2
    :goto_0
    :try_start_2
    invoke-interface {v14}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 42
    invoke-interface {v14}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Ljava/util/zip/ZipEntry;

    move-object v15, v0

    .line 43
    const-string v20, "ApkTools"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ze.getName() = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "lib/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 47
    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v20

    if-nez v20, :cond_2

    .line 48
    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/xiaomi/analytics/internal/util/ApkTools;->getZipName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 49
    .local v19, "zipname":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/xiaomi/analytics/internal/util/ApkTools;->getZipAbi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 50
    .local v18, "zipabi":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 51
    .local v12, "savedAbi":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 52
    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lcom/xiaomi/analytics/internal/util/ApkTools;->indexOf(Ljava/util/List;Ljava/lang/String;)I

    move-result v8

    .line 53
    .local v8, "index":I
    if-ltz v8, :cond_2

    invoke-static {v2, v12}, Lcom/xiaomi/analytics/internal/util/ApkTools;->indexOf(Ljava/util/List;Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_2

    .line 57
    .end local v8    # "index":I
    :cond_3
    const-string v20, "ApkTools"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "use abi "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-instance v5, Ljava/io/File;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 61
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 63
    :cond_4
    const/4 v9, 0x0

    .line 65
    .local v9, "is":Ljava/io/InputStream;
    :try_start_3
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 66
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :try_start_4
    new-instance v10, Ljava/io/BufferedInputStream;

    .line 67
    .end local v7    # "fos":Ljava/lang/Object;
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 68
    .end local v9    # "is":Ljava/io/InputStream;
    .local v10, "is":Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 69
    .local v11, "readLen":I
    :goto_1
    const/16 v20, 0x0

    const/16 v21, 0x400

    :try_start_5
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v3, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v11, v0, :cond_5

    .line 70
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v6, v3, v0, v11}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_1

    .line 72
    :catch_0
    move-exception v4

    move-object v9, v10

    .line 73
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v11    # "readLen":I
    .local v4, "e":Ljava/lang/Exception;
    .restart local v9    # "is":Ljava/io/InputStream;
    :goto_2
    :try_start_6
    const-string v20, "ApkTools"

    invoke-static/range {v20 .. v20}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "extractSo while e"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 76
    :try_start_7
    invoke-static {v9}, Lcom/xiaomi/analytics/internal/util/IOUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 77
    invoke-static {v6}, Lcom/xiaomi/analytics/internal/util/IOUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 78
    const/4 v6, 0x0

    .line 79
    const/4 v9, 0x0

    .end local v4    # "e":Ljava/lang/Exception;
    :goto_3
    move-object v7, v6

    .line 81
    .restart local v7    # "fos":Ljava/lang/Object;
    goto/16 :goto_0

    .line 76
    .end local v7    # "fos":Ljava/lang/Object;
    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "readLen":I
    :cond_5
    invoke-static {v10}, Lcom/xiaomi/analytics/internal/util/IOUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 77
    invoke-static {v6}, Lcom/xiaomi/analytics/internal/util/IOUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 78
    const/4 v6, 0x0

    .line 79
    const/4 v9, 0x0

    .line 80
    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    goto :goto_3

    .line 76
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "readLen":I
    .restart local v7    # "fos":Ljava/lang/Object;
    :catchall_0
    move-exception v20

    move-object v6, v7

    .end local v7    # "fos":Ljava/lang/Object;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :goto_4
    invoke-static {v9}, Lcom/xiaomi/analytics/internal/util/IOUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 77
    invoke-static {v6}, Lcom/xiaomi/analytics/internal/util/IOUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 78
    const/4 v6, 0x0

    .line 79
    const/4 v9, 0x0

    throw v20
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 83
    .end local v3    # "buf":[B
    .end local v5    # "file":Ljava/io/File;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v12    # "savedAbi":Ljava/lang/String;
    .end local v14    # "zList":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v18    # "zipabi":Ljava/lang/String;
    .end local v19    # "zipname":Ljava/lang/String;
    :catch_1
    move-exception v4

    move-object/from16 v16, v17

    .line 84
    .end local v2    # "abilist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "soAbi":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v17    # "zfile":Ljava/util/zip/ZipFile;
    .restart local v4    # "e":Ljava/lang/Exception;
    .restart local v16    # "zfile":Ljava/util/zip/ZipFile;
    :goto_5
    :try_start_8
    const-string v20, "ApkTools"

    invoke-static/range {v20 .. v20}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "extractSo e"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 86
    if-eqz v16, :cond_6

    .line 88
    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 94
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_6
    return-void

    .line 86
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v16    # "zfile":Ljava/util/zip/ZipFile;
    .restart local v2    # "abilist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "buf":[B
    .restart local v7    # "fos":Ljava/lang/Object;
    .restart local v13    # "soAbi":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v14    # "zList":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v17    # "zfile":Ljava/util/zip/ZipFile;
    :cond_7
    if-eqz v17, :cond_9

    .line 88
    :try_start_a
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    move-object v6, v7

    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    move-object/from16 v16, v17

    .line 91
    .end local v17    # "zfile":Ljava/util/zip/ZipFile;
    .restart local v16    # "zfile":Ljava/util/zip/ZipFile;
    goto :goto_6

    .line 89
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v16    # "zfile":Ljava/util/zip/ZipFile;
    .restart local v17    # "zfile":Ljava/util/zip/ZipFile;
    :catch_2
    move-exception v4

    .line 90
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v20, "ApkTools"

    invoke-static/range {v20 .. v20}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "extractSo finally close file e"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v6, v7

    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    move-object/from16 v16, v17

    .line 91
    .end local v17    # "zfile":Ljava/util/zip/ZipFile;
    .restart local v16    # "zfile":Ljava/util/zip/ZipFile;
    goto :goto_6

    .line 89
    .end local v2    # "abilist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "buf":[B
    .end local v7    # "fos":Ljava/lang/Object;
    .end local v13    # "soAbi":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "zList":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :catch_3
    move-exception v4

    .line 90
    const-string v20, "ApkTools"

    invoke-static/range {v20 .. v20}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "extractSo finally close file e"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 86
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v20

    :goto_7
    if-eqz v16, :cond_8

    .line 88
    :try_start_b
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 91
    :cond_8
    :goto_8
    throw v20

    .line 89
    :catch_4
    move-exception v4

    .line 90
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v21, "ApkTools"

    invoke-static/range {v21 .. v21}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v22, "extractSo finally close file e"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 86
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v16    # "zfile":Ljava/util/zip/ZipFile;
    .restart local v2    # "abilist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "soAbi":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v17    # "zfile":Ljava/util/zip/ZipFile;
    :catchall_2
    move-exception v20

    move-object/from16 v16, v17

    .end local v17    # "zfile":Ljava/util/zip/ZipFile;
    .restart local v16    # "zfile":Ljava/util/zip/ZipFile;
    goto :goto_7

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v16    # "zfile":Ljava/util/zip/ZipFile;
    .restart local v3    # "buf":[B
    .restart local v7    # "fos":Ljava/lang/Object;
    .restart local v14    # "zList":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v17    # "zfile":Ljava/util/zip/ZipFile;
    :catchall_3
    move-exception v20

    move-object v6, v7

    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    move-object/from16 v16, v17

    .end local v17    # "zfile":Ljava/util/zip/ZipFile;
    .restart local v16    # "zfile":Ljava/util/zip/ZipFile;
    goto :goto_7

    .line 83
    .end local v2    # "abilist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "buf":[B
    .end local v7    # "fos":Ljava/lang/Object;
    .end local v13    # "soAbi":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "zList":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :catch_5
    move-exception v4

    goto :goto_5

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v16    # "zfile":Ljava/util/zip/ZipFile;
    .restart local v2    # "abilist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "buf":[B
    .restart local v7    # "fos":Ljava/lang/Object;
    .restart local v13    # "soAbi":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v14    # "zList":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v17    # "zfile":Ljava/util/zip/ZipFile;
    :catch_6
    move-exception v4

    move-object v6, v7

    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    move-object/from16 v16, v17

    .end local v17    # "zfile":Ljava/util/zip/ZipFile;
    .restart local v16    # "zfile":Ljava/util/zip/ZipFile;
    goto :goto_5

    .line 76
    .end local v7    # "fos":Ljava/lang/Object;
    .end local v16    # "zfile":Ljava/util/zip/ZipFile;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v12    # "savedAbi":Ljava/lang/String;
    .restart local v17    # "zfile":Ljava/util/zip/ZipFile;
    .restart local v18    # "zipabi":Ljava/lang/String;
    .restart local v19    # "zipname":Ljava/lang/String;
    :catchall_4
    move-exception v20

    goto :goto_4

    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "readLen":I
    :catchall_5
    move-exception v20

    move-object v9, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    goto :goto_4

    .line 72
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "readLen":I
    .restart local v7    # "fos":Ljava/lang/Object;
    :catch_7
    move-exception v4

    move-object v6, v7

    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .end local v7    # "fos":Ljava/lang/Object;
    :catch_8
    move-exception v4

    goto/16 :goto_2

    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v12    # "savedAbi":Ljava/lang/String;
    .end local v18    # "zipabi":Ljava/lang/String;
    .end local v19    # "zipname":Ljava/lang/String;
    .restart local v7    # "fos":Ljava/lang/Object;
    :cond_9
    move-object v6, v7

    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    move-object/from16 v16, v17

    .end local v17    # "zfile":Ljava/util/zip/ZipFile;
    .restart local v16    # "zfile":Ljava/util/zip/ZipFile;
    goto :goto_6
.end method

.method private static getAbiList(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v0, "abilist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/xiaomi/analytics/internal/util/ApkTools;->getAppPrimaryAbi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "appPrimary":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 100
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_0
    const-string v7, "ro.product.cpu.abi"

    const-string v8, ""

    invoke-static {v7, v8}, Lcom/xiaomi/analytics/internal/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 103
    .local v4, "primary":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 104
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_1
    const-string v7, "ro.product.cpu.abi2"

    const-string v8, ""

    invoke-static {v7, v8}, Lcom/xiaomi/analytics/internal/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, "secondary":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 108
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_2
    const-string v7, "ro.product.cpu.abilist"

    const-string v8, ""

    invoke-static {v7, v8}, Lcom/xiaomi/analytics/internal/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "abilistProp":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 112
    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 113
    .local v6, "split":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-eqz v6, :cond_4

    array-length v7, v6

    if-ge v3, v7, :cond_4

    .line 114
    aget-object v7, v6, v3

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 115
    aget-object v7, v6, v3

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 119
    .end local v3    # "i":I
    .end local v6    # "split":[Ljava/lang/String;
    :cond_4
    const-string v7, "armeabi"

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    return-object v0
.end method

.method private static getAppPrimaryAbi(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 126
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const-string v2, "android.content.pm.ApplicationInfo"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "primaryCpuAbi"

    .line 127
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 128
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 129
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-object v2

    .line 130
    :catch_0
    move-exception v2

    .line 132
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getZipAbi(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "zipEntry"    # Ljava/lang/String;

    .prologue
    .line 155
    if-eqz p0, :cond_0

    .line 156
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "split":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 158
    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    aget-object v1, v0, v1

    .line 161
    .end local v0    # "split":[Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "armeabi"

    goto :goto_0
.end method

.method private static getZipName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "zipEntry"    # Ljava/lang/String;

    .prologue
    .line 145
    if-eqz p0, :cond_0

    .line 146
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "split":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 148
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object p0, v0, v1

    .line 151
    .end local v0    # "split":[Ljava/lang/String;
    .end local p0    # "zipEntry":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private static indexOf(Ljava/util/List;Ljava/lang/String;)I
    .locals 2
    .param p1, "abi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "abilist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 136
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
