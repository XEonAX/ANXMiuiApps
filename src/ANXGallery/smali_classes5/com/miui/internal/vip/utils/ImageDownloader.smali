.class public Lcom/miui/internal/vip/utils/ImageDownloader;
.super Ljava/lang/Object;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/vip/utils/ImageDownloader$NetworkChangeReceiver;,
        Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;,
        Lcom/miui/internal/vip/utils/ImageDownloader$OnFileDownload;,
        Lcom/miui/internal/vip/utils/ImageDownloader$ToViewDownloadListener;
    }
.end annotation


# static fields
.field public static final SCALE:I

.field static sReceiver:Lcom/miui/internal/vip/utils/ImageDownloader$NetworkChangeReceiver;

.field static final sRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/internal/vip/utils/ImageDownloadTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/miui/internal/vip/utils/ImageDownloader;->sRecords:Ljava/util/Map;

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/internal/vip/utils/ImageDownloader;->sReceiver:Lcom/miui/internal/vip/utils/ImageDownloader$NetworkChangeReceiver;

    .line 42
    invoke-static {}, Lcom/miui/internal/vip/utils/ImageDownloader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 43
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sput v1, Lcom/miui/internal/vip/utils/ImageDownloader;->SCALE:I

    .line 44
    .end local v0    # "metrics":Landroid/util/DisplayMetrics;
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/ImageView;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ImageView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .line 34
    invoke-static {p0, p1, p2}, Lcom/miui/internal/vip/utils/ImageDownloader;->onLoad(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    return-void
.end method

.method static deleteUnusedFiles(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "curFileName"    # Ljava/lang/String;

    .line 218
    new-instance v0, Lcom/miui/internal/vip/utils/ImageDownloader$4;

    invoke-direct {v0, p0, p1}, Lcom/miui/internal/vip/utils/ImageDownloader$4;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/internal/vip/utils/RunnableHelper;->runInBackground(Ljava/lang/Runnable;)V

    .line 231
    return-void
.end method

.method static downloadImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;)V
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "dirName"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;

    .line 174
    sget-object v0, Lcom/miui/internal/vip/utils/ImageDownloader;->sRecords:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/vip/utils/ImageDownloadTask;

    .line 175
    .local v0, "task":Lcom/miui/internal/vip/utils/ImageDownloadTask;
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 176
    new-instance v4, Lcom/miui/internal/vip/utils/ImageDownloadTask;

    invoke-direct {v4, p0, p2}, Lcom/miui/internal/vip/utils/ImageDownloadTask;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    .line 177
    invoke-virtual {v0, p3}, Lcom/miui/internal/vip/utils/ImageDownloadTask;->addListener(Lmiui/util/async/Task$Listener;)Lmiui/util/async/Task;

    .line 178
    invoke-static {v0}, Lcom/miui/internal/vip/utils/ImageDownloader;->startDownload(Lcom/miui/internal/vip/utils/ImageDownloadTask;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 179
    sget-object v4, Lcom/miui/internal/vip/utils/ImageDownloader;->sRecords:Ljava/util/Map;

    invoke-interface {v4, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v4, "download bitmap %s for %s, filePath = %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v3

    aput-object p1, v5, v2

    aput-object p2, v5, v1

    invoke-static {v4, v5}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 183
    :cond_0
    const-string v4, "downloading task for %s: %s existed, add listener"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v2

    invoke-static {v4, v1}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    invoke-virtual {v0, p3}, Lcom/miui/internal/vip/utils/ImageDownloadTask;->addListener(Lmiui/util/async/Task$Listener;)Lmiui/util/async/Task;

    .line 186
    :cond_1
    :goto_0
    return-void
.end method

.method static getContext()Landroid/content/Context;
    .locals 1

    .line 305
    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getImageFilePathAndClearUnusedFiles(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "dirName"    # Ljava/lang/String;
    .param p3, "createDir"    # Z

    .line 189
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    const-string v0, ""

    return-object v0

    .line 192
    :cond_0
    invoke-static {p0, p2}, Lcom/miui/internal/vip/utils/Utils;->getPictureFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "subDirPath":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 194
    const-string v1, ""

    return-object v1

    .line 196
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    .local v1, "subDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 199
    goto :goto_0

    .line 201
    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p3, :cond_4

    .line 202
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 203
    nop

    .line 212
    :goto_0
    invoke-static {p1}, Lcom/miui/internal/vip/utils/Utils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, "curFileName":Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/miui/internal/vip/utils/ImageDownloader;->deleteUnusedFiles(Ljava/io/File;Ljava/lang/String;)V

    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 205
    .end local v2    # "curFileName":Ljava/lang/String;
    :cond_3
    const-string v4, "fail to create directory %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v4, v3}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 208
    :cond_4
    const-string v4, "fail to load image for directory %s doesn\'t exist"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v4, v3}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    :goto_1
    const-string v2, ""

    return-object v2
.end method

.method public static loadImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "dirName"    # Ljava/lang/String;
    .param p3, "targetView"    # Landroid/widget/ImageView;

    .line 121
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/miui/internal/vip/utils/ImageDownloader;->loadImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Z)V

    .line 122
    return-void
.end method

.method public static loadImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Z)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "dirName"    # Ljava/lang/String;
    .param p3, "targetView"    # Landroid/widget/ImageView;
    .param p4, "isPhoto"    # Z

    .line 125
    new-instance v0, Lcom/miui/internal/vip/utils/ImageDownloader$ToViewDownloadListener;

    invoke-direct {v0, p3, p4}, Lcom/miui/internal/vip/utils/ImageDownloader$ToViewDownloadListener;-><init>(Landroid/widget/ImageView;Z)V

    .line 126
    .local v0, "listener":Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;
    invoke-static {p0, p1, p2, v0}, Lcom/miui/internal/vip/utils/ImageDownloader;->loadImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;)V

    .line 127
    return-void
.end method

.method public static loadImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "dirName"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;

    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    new-instance v0, Lcom/miui/internal/vip/utils/ImageDownloader$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/miui/internal/vip/utils/ImageDownloader$3;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;)V

    invoke-static {v0}, Lcom/miui/internal/vip/utils/RunnableHelper;->runInBackground(Ljava/lang/Runnable;)V

    .line 149
    return-void

    .line 132
    :cond_1
    :goto_0
    return-void
.end method

.method public static loadImageFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "dirName"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;

    .line 152
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/miui/internal/vip/utils/ImageDownloader;->getImageFilePathAndClearUnusedFiles(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "filePath":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 154
    return-object v3

    .line 157
    :cond_0
    const/4 v2, 0x1

    :try_start_0
    invoke-static {v1, v2}, Lmiui/graphics/BitmapFactory;->decodeBitmap(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 158
    .local v4, "bmp":Landroid/graphics/Bitmap;
    if-nez v4, :cond_1

    .line 159
    invoke-static {p1, p2, v1, p3}, Lcom/miui/internal/vip/utils/ImageDownloader;->downloadImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :cond_1
    return-object v4

    .line 162
    .end local v4    # "bmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v4

    .line 163
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "fail to loadImageFile, %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v0

    invoke-static {v5, v2}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    return-object v3
.end method

.method private static onLoad(Landroid/widget/ImageView;Ljava/lang/String;Z)V
    .locals 10
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "isPhoto"    # Z

    .line 71
    if-eqz p0, :cond_a

    .line 72
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 73
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    .line 74
    .local v1, "height":I
    const/4 v2, 0x1

    .line 75
    .local v2, "scale":I
    const/4 v3, 0x1

    .line 76
    .local v3, "waitLayout":Z
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 77
    .local v4, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_7

    if-nez v1, :cond_7

    if-eqz v4, :cond_7

    .line 78
    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, -0x2

    if-ne v5, v8, :cond_0

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v5, v8, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    .line 80
    .local v5, "allWrapContent":Z
    :goto_0
    iget v8, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    iget v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v8, v9, :cond_1

    move v6, v7

    nop

    .line 82
    .local v6, "allMatch":Z
    :cond_1
    if-nez v6, :cond_2

    if-nez v5, :cond_2

    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eqz v7, :cond_2

    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-nez v7, :cond_3

    .line 83
    :cond_2
    const/4 v3, 0x0

    .line 85
    :cond_3
    if-eqz v5, :cond_4

    .line 86
    sget v2, Lcom/miui/internal/vip/utils/ImageDownloader;->SCALE:I

    .line 88
    :cond_4
    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v7, :cond_5

    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    :cond_5
    move v7, v0

    :goto_1
    move v0, v7

    .line 89
    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v7, :cond_6

    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    :cond_6
    move v7, v1

    :goto_2
    move v1, v7

    .line 91
    .end local v5    # "allWrapContent":Z
    .end local v6    # "allMatch":Z
    :cond_7
    if-eqz v3, :cond_8

    if-nez v0, :cond_8

    if-nez v1, :cond_8

    .line 92
    invoke-virtual {p0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    new-instance v6, Lcom/miui/internal/vip/utils/ImageDownloader$1;

    invoke-direct {v6, p0, p1, p2}, Lcom/miui/internal/vip/utils/ImageDownloader$1;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 102
    return-void

    .line 104
    :cond_8
    invoke-static {p1, v0, v1, v2}, Lcom/miui/internal/vip/utils/Utils;->decodeFile(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 105
    .local v5, "bmp":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_a

    .line 106
    if-eqz p2, :cond_9

    .line 107
    invoke-static {v5}, Lcom/miui/internal/vip/utils/Utils;->createPhoto(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 109
    :cond_9
    move-object v6, v5

    .line 110
    .local v6, "refBmp":Landroid/graphics/Bitmap;
    new-instance v7, Lcom/miui/internal/vip/utils/ImageDownloader$2;

    invoke-direct {v7, p0, v6}, Lcom/miui/internal/vip/utils/ImageDownloader$2;-><init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-static {v7}, Lcom/miui/internal/vip/utils/RunnableHelper;->runInUIThread(Ljava/lang/Runnable;)V

    .line 118
    .end local v0    # "width":I
    .end local v1    # "height":I
    .end local v2    # "scale":I
    .end local v3    # "waitLayout":Z
    .end local v4    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "bmp":Landroid/graphics/Bitmap;
    .end local v6    # "refBmp":Landroid/graphics/Bitmap;
    :cond_a
    return-void
.end method

.method static startDownload(Lcom/miui/internal/vip/utils/ImageDownloadTask;)Z
    .locals 4
    .param p0, "task"    # Lcom/miui/internal/vip/utils/ImageDownloadTask;

    .line 235
    :try_start_0
    invoke-static {}, Lmiui/util/async/TaskManager;->getDefault()Lmiui/util/async/TaskManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/util/async/TaskManager;->add(Lmiui/util/async/Task;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    const/4 v0, 0x1

    return v0

    .line 237
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "vip_sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImageDownloader.startDownload fail, savePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/internal/vip/utils/ImageDownloadTask;->mSavePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v1, 0x0

    return v1
.end method

.method static declared-synchronized startReceiver()V
    .locals 2

    const-class v0, Lcom/miui/internal/vip/utils/ImageDownloader;

    monitor-enter v0

    .line 291
    :try_start_0
    sget-object v1, Lcom/miui/internal/vip/utils/ImageDownloader;->sReceiver:Lcom/miui/internal/vip/utils/ImageDownloader$NetworkChangeReceiver;

    if-nez v1, :cond_0

    .line 292
    new-instance v1, Lcom/miui/internal/vip/utils/ImageDownloader$NetworkChangeReceiver;

    invoke-direct {v1}, Lcom/miui/internal/vip/utils/ImageDownloader$NetworkChangeReceiver;-><init>()V

    sput-object v1, Lcom/miui/internal/vip/utils/ImageDownloader;->sReceiver:Lcom/miui/internal/vip/utils/ImageDownloader$NetworkChangeReceiver;

    .line 293
    sget-object v1, Lcom/miui/internal/vip/utils/ImageDownloader;->sReceiver:Lcom/miui/internal/vip/utils/ImageDownloader$NetworkChangeReceiver;

    invoke-virtual {v1}, Lcom/miui/internal/vip/utils/ImageDownloader$NetworkChangeReceiver;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    :cond_0
    monitor-exit v0

    return-void

    .line 290
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static stop()V
    .locals 1

    .line 169
    sget-object v0, Lcom/miui/internal/vip/utils/ImageDownloader;->sRecords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 170
    invoke-static {}, Lcom/miui/internal/vip/utils/ImageDownloader;->stopReceiver()V

    .line 171
    return-void
.end method

.method static declared-synchronized stopReceiver()V
    .locals 3

    const-class v0, Lcom/miui/internal/vip/utils/ImageDownloader;

    monitor-enter v0

    .line 298
    :try_start_0
    sget-object v1, Lcom/miui/internal/vip/utils/ImageDownloader;->sReceiver:Lcom/miui/internal/vip/utils/ImageDownloader$NetworkChangeReceiver;

    if-eqz v1, :cond_0

    .line 299
    invoke-static {}, Lcom/miui/internal/vip/utils/ImageDownloader;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/miui/internal/vip/utils/ImageDownloader;->sReceiver:Lcom/miui/internal/vip/utils/ImageDownloader$NetworkChangeReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 300
    const/4 v1, 0x0

    sput-object v1, Lcom/miui/internal/vip/utils/ImageDownloader;->sReceiver:Lcom/miui/internal/vip/utils/ImageDownloader$NetworkChangeReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    :cond_0
    monitor-exit v0

    return-void

    .line 297
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
