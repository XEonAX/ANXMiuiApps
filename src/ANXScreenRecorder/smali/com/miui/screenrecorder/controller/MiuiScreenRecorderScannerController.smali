.class public Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController;
.super Ljava/lang/Object;
.source "MiuiScreenRecorderScannerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$ScannerListener;,
        Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$ScanRecorderTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenRecorderScanner"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    return-void
.end method

.method static synthetic access$100(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/database/Cursor;

    .prologue
    .line 18
    invoke-static {p0}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController;->dealData(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Ljava/util/ArrayList;

    .prologue
    .line 18
    invoke-static {p0}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController;->generateHeaderId(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 1
    .param p0, "x0"    # Ljava/util/ArrayList;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 18
    invoke-static {p0, p1}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController;->compareList(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method private static compareList(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/screenrecorder/data/GridItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/screenrecorder/data/GridItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "sourceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/screenrecorder/data/GridItem;>;"
    .local p1, "destList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/screenrecorder/data/GridItem;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 135
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    move v1, v2

    .line 143
    :goto_0
    return v1

    .line 136
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    move v1, v3

    goto :goto_0

    .line 137
    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v1, v4, :cond_3

    move v1, v3

    goto :goto_0

    .line 138
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 139
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/screenrecorder/data/GridItem;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/miui/screenrecorder/data/GridItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v3

    .line 140
    goto :goto_0

    .line 138
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v1, v2

    .line 143
    goto :goto_0
.end method

.method private static dealData(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 21
    .param p0, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/screenrecorder/data/GridItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v9, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/screenrecorder/data/GridItem;>;"
    if-eqz p0, :cond_0

    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-nez v8, :cond_1

    .line 91
    :cond_0
    const-string v8, "ScreenRecorderScanner"

    const-string v15, "dealData: cursor is empty"

    invoke-static {v8, v15}, Lcom/miui/screenrecorder/tools/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :goto_0
    return-object v9

    .line 94
    :cond_1
    :goto_1
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 96
    const-string v8, "_data"

    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "path":Ljava/lang/String;
    const-string v8, "date_added"

    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 99
    .local v18, "time":J
    invoke-static {}, Lcom/miui/screenrecorder/ScreenRecorderApplication;->getContext()Landroid/content/Context;

    move-result-object v8

    move-wide/from16 v0, v18

    invoke-static {v8, v0, v1}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->parserSecondsToYMD(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, "formatTime":Ljava/lang/String;
    const-string v8, "_size"

    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 104
    .local v16, "size":J
    move-wide/from16 v0, v16

    long-to-float v8, v0

    const/high16 v15, 0x3f800000    # 1.0f

    cmpg-float v8, v8, v15

    if-ltz v8, :cond_1

    .line 107
    invoke-static/range {v16 .. v17}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->turnSizeInt2Str(J)Ljava/lang/String;

    move-result-object v5

    .line 110
    .local v5, "sizeStr":Ljava/lang/String;
    const-string v8, "duration"

    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 111
    .local v10, "duration":J
    invoke-static {v10, v11}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->turnMillSecondsToHour(J)Ljava/lang/String;

    move-result-object v7

    .line 114
    .local v7, "durationStr":Ljava/lang/String;
    const-string v8, "_display_name"

    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 115
    .local v14, "name":Ljava/lang/String;
    move-object v6, v14

    .line 116
    .local v6, "displayName":Ljava/lang/String;
    if-eqz v14, :cond_2

    const-string v8, ".mp4"

    invoke-virtual {v14, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 117
    invoke-static {v14}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 120
    :cond_2
    const-string v8, "_id"

    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 121
    .local v12, "id":J
    const-string v8, "ScreenRecorderScanner"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "dealData id="

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v20, " path="

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v20, "  name="

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v20, "  displayName="

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v20, "  time="

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v20, "  formatTime="

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v20, "  size="

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v20, " duration="

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v20, " durationStr="

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v8, v15}, Lcom/miui/screenrecorder/tools/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v2, Lcom/miui/screenrecorder/data/GridItem;

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/miui/screenrecorder/data/GridItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .local v2, "item":Lcom/miui/screenrecorder/data/GridItem;
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 129
    .end local v2    # "item":Lcom/miui/screenrecorder/data/GridItem;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "formatTime":Ljava/lang/String;
    .end local v5    # "sizeStr":Ljava/lang/String;
    .end local v6    # "displayName":Ljava/lang/String;
    .end local v7    # "durationStr":Ljava/lang/String;
    .end local v10    # "duration":J
    .end local v12    # "id":J
    .end local v14    # "name":Ljava/lang/String;
    .end local v16    # "size":J
    .end local v18    # "time":J
    :cond_3
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private static generateHeaderId(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/screenrecorder/data/GridItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/screenrecorder/data/GridItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/screenrecorder/data/GridItem;>;"
    const/4 v2, 0x1

    .line 148
    .local v2, "headId":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 149
    .local v1, "dateIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 161
    :cond_0
    return-object p0

    .line 150
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 151
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/screenrecorder/data/GridItem;

    .line 152
    .local v4, "item":Lcom/miui/screenrecorder/data/GridItem;
    invoke-virtual {v4}, Lcom/miui/screenrecorder/data/GridItem;->getTime()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "date":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 154
    invoke-virtual {v4, v2}, Lcom/miui/screenrecorder/data/GridItem;->setHeaderId(I)V

    .line 155
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    add-int/lit8 v2, v2, 0x1

    .line 150
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 158
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/miui/screenrecorder/data/GridItem;->setHeaderId(I)V

    goto :goto_1
.end method


# virtual methods
.method public scanRecorders(Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$ScannerListener;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "scannerListener"    # Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$ScannerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$ScannerListener;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/screenrecorder/data/GridItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/screenrecorder/data/GridItem;>;"
    new-instance v0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$ScanRecorderTask;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$ScanRecorderTask;-><init>(Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$ScannerListener;Ljava/util/ArrayList;Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$ScanRecorderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 24
    return-void
.end method
