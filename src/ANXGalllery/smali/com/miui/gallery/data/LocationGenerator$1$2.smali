.class Lcom/miui/gallery/data/LocationGenerator$1$2;
.super Ljava/lang/Object;
.source "LocationGenerator.java"

# interfaces
.implements Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/data/LocationGenerator$1;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/data/LocationGenerator$1;


# direct methods
.method constructor <init>(Lcom/miui/gallery/data/LocationGenerator$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/data/LocationGenerator$1;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/miui/gallery/data/LocationGenerator$1$2;->this$1:Lcom/miui/gallery/data/LocationGenerator$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/miui/gallery/data/LocationGenerator$1$2;->handle(Landroid/database/Cursor;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public handle(Landroid/database/Cursor;)Ljava/lang/Void;
    .locals 16
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 101
    if-eqz p1, :cond_3

    .line 102
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 103
    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 104
    .local v3, "id":I
    const/4 v10, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, "latitude":Ljava/lang/String;
    const/4 v10, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, "latitudeRef":Ljava/lang/String;
    const/4 v10, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 107
    .local v7, "longitude":Ljava/lang/String;
    const/4 v10, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 108
    .local v8, "longitudeRef":Ljava/lang/String;
    const/4 v10, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "fileName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 111
    .local v6, "location":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/gallery/data/LocationGenerator$1$2;->this$1:Lcom/miui/gallery/data/LocationGenerator$1;

    iget-object v10, v10, Lcom/miui/gallery/data/LocationGenerator$1;->val$context:Landroid/content/Context;

    invoke-static {v10, v2}, Lcom/miui/gallery/util/FileUtils;->getPackageNameFromScreenshotFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "appName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 113
    move-object v6, v1

    .line 125
    :cond_0
    :goto_1
    const-string v9, "_id=?"

    .line 126
    .local v9, "where":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/gallery/data/LocationGenerator$1$2;->this$1:Lcom/miui/gallery/data/LocationGenerator$1;

    iget-object v10, v10, Lcom/miui/gallery/data/LocationGenerator$1;->val$context:Landroid/content/Context;

    sget-object v11, Lcom/miui/gallery/provider/GalleryContract$ShareImage;->SHARE_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/gallery/data/LocationGenerator$1$2;->this$1:Lcom/miui/gallery/data/LocationGenerator$1;

    iget-object v12, v12, Lcom/miui/gallery/data/LocationGenerator$1;->this$0:Lcom/miui/gallery/data/LocationGenerator;

    .line 127
    invoke-static {v12, v6}, Lcom/miui/gallery/data/LocationGenerator;->access$100(Lcom/miui/gallery/data/LocationGenerator;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    .line 128
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 126
    invoke-static {v10, v11, v12, v9, v13}, Lcom/miui/gallery/util/SafeDBUtil;->safeUpdate(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 114
    .end local v9    # "where":Ljava/lang/String;
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 115
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 116
    invoke-static {}, Lcom/miui/gallery/data/CitySearcher;->getInstance()Lcom/miui/gallery/data/CitySearcher;

    move-result-object v10

    new-instance v11, Lcom/miui/gallery/data/Coordinate;

    invoke-direct {v11, v4, v5, v7, v8}, Lcom/miui/gallery/data/Coordinate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Lcom/miui/gallery/data/CitySearcher;->decode(Lcom/miui/gallery/data/Coordinate;)Ljava/lang/String;

    move-result-object v6

    .line 118
    invoke-static {v6}, Lcom/miui/gallery/data/LocationUtil;->isLocationValidate(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 119
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/gallery/data/LocationGenerator$1$2;->this$1:Lcom/miui/gallery/data/LocationGenerator$1;

    iget-object v10, v10, Lcom/miui/gallery/data/LocationGenerator$1;->val$context:Landroid/content/Context;

    invoke-static {v10, v6}, Lcom/miui/gallery/data/LocationUtil;->getCityNameFromRes(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 121
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 131
    .end local v1    # "appName":Ljava/lang/String;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "id":I
    .end local v4    # "latitude":Ljava/lang/String;
    .end local v5    # "latitudeRef":Ljava/lang/String;
    .end local v6    # "location":Ljava/lang/String;
    .end local v7    # "longitude":Ljava/lang/String;
    .end local v8    # "longitudeRef":Ljava/lang/String;
    :cond_3
    const/4 v10, 0x0

    return-object v10
.end method
