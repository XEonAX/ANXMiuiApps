.class public Lcom/xiaomi/scanner/module/AmazonShoppingModule;
.super Lcom/xiaomi/scanner/module/BaseModule;
.source "AmazonShoppingModule.java"


# static fields
.field private static final ERROR_CODE:I = 0x2

.field private static final FOUND_URI:I = 0x1

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private mAppUi:Lcom/xiaomi/scanner/app/AppUI;

.field private mCapturedFile:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mInitTime:J

.field private mIsPause:Z

.field private mUrl:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "AmazonShoppingModule"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/scanner/app/AppController;I)V
    .locals 2
    .param p1, "app"    # Lcom/xiaomi/scanner/app/AppController;
    .param p2, "moduleId"    # I

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/BaseModule;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->mUrl:Landroid/net/Uri;

    .line 45
    new-instance v0, Lcom/xiaomi/scanner/module/AmazonShoppingModule$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/module/AmazonShoppingModule$1;-><init>(Lcom/xiaomi/scanner/module/AmazonShoppingModule;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->mHandler:Landroid/os/Handler;

    .line 61
    sget-object v0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "AmazonShoppingModule"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 62
    invoke-interface {p1}, Lcom/xiaomi/scanner/app/AppController;->getAppUI()Lcom/xiaomi/scanner/app/AppUI;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->mAppUi:Lcom/xiaomi/scanner/app/AppUI;

    .line 63
    iput p2, p0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->mModuleId:I

    .line 64
    return-void
.end method

.method static synthetic access$000()Lcom/xiaomi/scanner/debug/Log$Tag;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/scanner/module/AmazonShoppingModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/AmazonShoppingModule;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->launchAmazonAssistant()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaomi/scanner/module/AmazonShoppingModule;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/AmazonShoppingModule;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->getImageCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/xiaomi/scanner/module/AmazonShoppingModule;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/AmazonShoppingModule;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->mUrl:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$400(Lcom/xiaomi/scanner/module/AmazonShoppingModule;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/AmazonShoppingModule;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/xiaomi/scanner/module/AmazonShoppingModule;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/AmazonShoppingModule;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->insertFilePath(Ljava/lang/String;)V

    return-void
.end method

.method private buildPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 268
    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private callAmazonAssistant(Ljava/lang/String;)V
    .locals 3
    .param p1, "picturePath"    # Ljava/lang/String;

    .prologue
    .line 196
    if-nez p1, :cond_0

    .line 197
    sget-object v1, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "callAmazonAssistant, picturePath is null"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    .local v0, "file":Ljava/io/File;
    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->buildImageContentUri(Ljava/io/File;)V

    goto :goto_0
.end method

.method private deleteCapturedFile()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->mCapturedFile:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 252
    :goto_0
    return-void

    .line 250
    :cond_0
    new-instance v0, Lcom/xiaomi/scanner/util/DeleteFileTask;

    iget-object v1, p0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->mCapturedFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/util/DeleteFileTask;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/scanner/util/ScannerThreadPool;->poolExecute(Ljava/lang/Runnable;)V

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->mCapturedFile:Ljava/lang/String;

    goto :goto_0
.end method

.method private getAmazonAssitantIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 220
    sget-object v1, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AmazonShoppingModule  getAmazonAssitantIntent launchAmazonAssistant mUrl - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 221
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 222
    .local v0, "aaIntent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 223
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string v1, "com.amazon.aa"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    return-object v0
.end method

.method private getImageCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 309
    iget-object v0, p0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "_data =? "

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getSavePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    if-nez v0, :cond_0

    .line 256
    sget-object v0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "null mActivity"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 257
    const/4 v0, 0x0

    .line 260
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->buildPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initAmazonAssistantModule()V
    .locals 2

    .prologue
    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->mInitTime:J

    .line 74
    iget-object v0, p0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->mAppUi:Lcom/xiaomi/scanner/app/AppUI;

    const v1, 0x7f07001b

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/app/AppUI;->setTitle(I)V

    .line 75
    return-void
.end method

.method private insertFilePath(Ljava/lang/String;)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 317
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 318
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->mUrl:Landroid/net/Uri;

    .line 321
    return-void
.end method

.method private launchAmazonAssistant()V
    .locals 3

    .prologue
    .line 205
    iget-object v1, p0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->mUrl:Landroid/net/Uri;

    if-nez v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 217
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->mUrl:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->getAmazonAssitantIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 212
    .local v0, "aaIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 213
    sget-object v1, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "launchAmazonAssistant : No activities available for sharing images."

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1, v0}, Lcom/xiaomi/scanner/app/ScanActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private processCameraImage(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "param"    # Ljava/lang/Object;

    .prologue
    .line 173
    check-cast p1, [B

    .end local p1    # "param":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [B

    .line 174
    .local v0, "data":[B
    if-nez v0, :cond_0

    .line 175
    sget-object v1, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "null data"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 176
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 179
    :goto_0
    return-object v1

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isImageNeedRotate()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/xiaomi/scanner/util/PictureDecoder;->saveJpeg(Ljava/lang/String;[BZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->mCapturedFile:Ljava/lang/String;

    .line 179
    iget-object v1, p0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->mCapturedFile:Ljava/lang/String;

    goto :goto_0
.end method

.method private processGalleryImage([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 164
    const/4 v1, 0x1

    aget-object v1, p1, v1

    check-cast v1, Landroid/net/Uri;

    invoke-static {v1}, Lcom/xiaomi/scanner/module/code/utils/Utils;->getFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "filePath":Ljava/lang/String;
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isImageNeedRotate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    const/4 v1, 0x0

    const/4 v2, 0x2

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xiaomi/scanner/util/PictureDecoder;->rectifyBitmap(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->mCapturedFile:Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->mCapturedFile:Ljava/lang/String;

    .line 169
    .end local v0    # "filePath":Ljava/lang/String;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public buildImageContentUri(Ljava/io/File;)V
    .locals 3
    .param p1, "imageFile"    # Ljava/io/File;

    .prologue
    .line 273
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "filePath":Ljava/lang/String;
    new-instance v0, Lcom/xiaomi/scanner/module/AmazonShoppingModule$2;

    invoke-direct {v0, p0, v1, p1}, Lcom/xiaomi/scanner/module/AmazonShoppingModule$2;-><init>(Lcom/xiaomi/scanner/module/AmazonShoppingModule;Ljava/lang/String;Ljava/io/File;)V

    .line 304
    .local v0, "dbQueryRunnable":Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 305
    .local v2, "queryUriThread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 306
    return-void
.end method

.method protected cancelWorkTask(Z)V
    .locals 0
    .param p1, "resetPreview"    # Z

    .prologue
    .line 231
    invoke-super {p0, p1}, Lcom/xiaomi/scanner/module/BaseModule;->cancelWorkTask(Z)V

    .line 232
    return-void
.end method

.method public varargs executeDoInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 150
    aget-object v0, p1, v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 158
    :pswitch_0
    sget-object v0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 160
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 152
    :pswitch_1
    sget-object v0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "executeDoInBackground: WORK_TYPE_TAKE_PICTURE"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 153
    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->processCameraImage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 155
    :pswitch_2
    sget-object v0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "executeDoInBackground: WORK_TYPE_CHOOSE_PICTURE"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 156
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->processGalleryImage([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public executeOnPostExecute(Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->isTaskCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 186
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drop this search, object="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->clearTask()V

    .line 188
    iget-object v0, p0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getCaptureModule()Lcom/xiaomi/scanner/camera/CaptureModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->startPreview()V

    .line 193
    .end local p1    # "object":Ljava/lang/Object;
    :goto_0
    return-void

    .line 191
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->clearTask()V

    .line 192
    check-cast p1, Ljava/lang/String;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->callAmazonAssistant(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public init(Lcom/xiaomi/scanner/app/ScanActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/xiaomi/scanner/app/ScanActivity;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/xiaomi/scanner/module/BaseModule;->init(Lcom/xiaomi/scanner/app/ScanActivity;)V

    .line 69
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->initAmazonAssistantModule()V

    .line 70
    return-void
.end method

.method public isCaptureNeeded()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public isNetworkRequired()Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public isPause()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->mIsPause:Z

    return v0
.end method

.method public isSdkReady()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 128
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 132
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 143
    sget-object v0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: unexpected request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :pswitch_0
    sget-object v0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: REQUEST_DECODE_IMAGE -- Result Code - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 135
    const/4 v0, 0x3

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0}, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->getSavePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->executeTask(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    sget-object v0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onActivityResult: executeTask(WORK_TYPE_CHOOSE_PICTURE)"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_1
    sget-object v0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onActivityResult: cancelWorkTask"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 139
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->cancelWorkTask(Z)V

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Lcom/xiaomi/scanner/module/BaseModule;->onDestroy()V

    .line 112
    iget-object v0, p0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 113
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->deleteCapturedFile()V

    .line 114
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->mIsPause:Z

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->cancelWorkTask(Z)V

    .line 102
    return-void
.end method

.method public onPictureTaken([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)Z
    .locals 2
    .param p1, "data"    # [B
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    const/4 v0, 0x1

    .line 236
    invoke-super {p0, p1, p2}, Lcom/xiaomi/scanner/module/BaseModule;->onPictureTaken([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 237
    const/4 v0, 0x0

    .line 243
    :cond_0
    :goto_0
    return v0

    .line 240
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->executeTask(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 241
    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->cancelWorkTask(Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Lcom/xiaomi/scanner/module/BaseModule;->onResume()V

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->mIsPause:Z

    .line 96
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 89
    sget-object v0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->t(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 106
    sget-object v0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->t(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 107
    return-void
.end method
