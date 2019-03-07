.class Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$ScanRecorderTask;
.super Landroid/os/AsyncTask;
.source "MiuiScreenRecorderScannerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScanRecorderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/screenrecorder/data/GridItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$ScannerListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$ScannerListener;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "listener"    # Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$ScannerListener;
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
    .line 31
    .local p2, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/screenrecorder/data/GridItem;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$ScanRecorderTask;->mDataList:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$ScanRecorderTask;->mListenerRef:Ljava/lang/ref/WeakReference;

    .line 33
    iput-object p2, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$ScanRecorderTask;->mDataList:Ljava/util/ArrayList;

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$ScannerListener;Ljava/util/ArrayList;Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$ScannerListener;
    .param p2, "x1"    # Ljava/util/ArrayList;
    .param p3, "x2"    # Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$1;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$ScanRecorderTask;-><init>(Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$ScannerListener;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 10
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    .line 46
    iget-object v5, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$ScanRecorderTask;->mListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$ScannerListener;

    .line 47
    .local v7, "listener":Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$ScannerListener;
    if-eqz v7, :cond_1

    .line 48
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 49
    .local v1, "videoUri":Landroid/net/Uri;
    const/4 v5, 0x7

    new-array v2, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "_id"

    aput-object v9, v2, v5

    const/4 v5, 0x1

    const-string v9, "date_added"

    aput-object v9, v2, v5

    const/4 v5, 0x2

    const-string v9, "duration"

    aput-object v9, v2, v5

    const/4 v5, 0x3

    const-string v9, "_display_name"

    aput-object v9, v2, v5

    const/4 v5, 0x4

    const-string v9, "_data"

    aput-object v9, v2, v5

    const/4 v5, 0x5

    const-string v9, "_size"

    aput-object v9, v2, v5

    const/4 v5, 0x6

    const-string v9, "mime_type"

    aput-object v9, v2, v5

    .line 58
    .local v2, "videoProject":[Ljava/lang/String;
    const-string v3, "_data LIKE \'%/DCIM/ScreenRecorder/%\' "

    .line 59
    .local v3, "selection":Ljava/lang/String;
    invoke-static {}, Lcom/miui/screenrecorder/ScreenRecorderApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 60
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v5, "date_added DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 62
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-static {v6}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController;->access$100(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v8

    .line 64
    .local v8, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/screenrecorder/data/GridItem;>;"
    invoke-static {v8}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController;->access$200(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$ScanRecorderTask;->mDataList:Ljava/util/ArrayList;

    .line 67
    iget-object v5, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$ScanRecorderTask;->mDataList:Ljava/util/ArrayList;

    invoke-static {v5, v8}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController;->access$300(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 68
    iget-object v5, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$ScanRecorderTask;->mDataList:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    .line 69
    iget-object v5, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$ScanRecorderTask;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 70
    iput-object v4, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$ScanRecorderTask;->mDataList:Ljava/util/ArrayList;

    .line 72
    :cond_0
    invoke-static {v8}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController;->access$200(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$ScanRecorderTask;->mDataList:Ljava/util/ArrayList;

    .line 75
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v1    # "videoUri":Landroid/net/Uri;
    .end local v2    # "videoProject":[Ljava/lang/String;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/screenrecorder/data/GridItem;>;"
    :cond_1
    return-object v4
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$ScanRecorderTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 81
    iget-object v1, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$ScanRecorderTask;->mListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$ScannerListener;

    .line 82
    .local v0, "listener":Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$ScannerListener;
    if-eqz v0, :cond_0

    .line 83
    iget-object v1, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$ScanRecorderTask;->mDataList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$ScannerListener;->scannerComplete(Ljava/util/ArrayList;)V

    .line 85
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$ScanRecorderTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 38
    iget-object v1, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$ScanRecorderTask;->mListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$ScannerListener;

    .line 39
    .local v0, "listener":Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$ScannerListener;
    if-eqz v0, :cond_0

    .line 40
    invoke-interface {v0}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$ScannerListener;->beforeScanner()V

    .line 42
    :cond_0
    return-void
.end method
