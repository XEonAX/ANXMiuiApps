.class public Lcom/baidu/vis/ClassIfication/Predictor;
.super Ljava/lang/Object;
.source "Predictor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClassIfication"

.field private static isInited:Z = false

.field public static loadLicenseLibraryError:Lcom/baidu/vis/ClassIfication/SDKExceptions$loadLicenseLibraryError; = null

.field public static loadNativeLibraryError:Lcom/baidu/vis/ClassIfication/SDKExceptions$loadNativeLibraryError; = null

.field private static mAuthorityStatus:I = 0x0

.field private static mInstance:Lcom/baidu/vis/ClassIfication/Predictor; = null

.field private static final sCheckAuthority:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    sput-boolean v0, Lcom/baidu/vis/ClassIfication/Predictor;->isInited:Z

    .line 24
    sput v0, Lcom/baidu/vis/ClassIfication/Predictor;->mAuthorityStatus:I

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/vis/ClassIfication/Predictor;->mInstance:Lcom/baidu/vis/ClassIfication/Predictor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/baidu/vis/ClassIfication/Predictor;
    .locals 2

    .prologue
    .line 36
    const-class v1, Lcom/baidu/vis/ClassIfication/Predictor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/vis/ClassIfication/Predictor;->mInstance:Lcom/baidu/vis/ClassIfication/Predictor;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/baidu/vis/ClassIfication/Predictor;

    invoke-direct {v0}, Lcom/baidu/vis/ClassIfication/Predictor;-><init>()V

    sput-object v0, Lcom/baidu/vis/ClassIfication/Predictor;->mInstance:Lcom/baidu/vis/ClassIfication/Predictor;

    .line 39
    :cond_0
    sget-object v0, Lcom/baidu/vis/ClassIfication/Predictor;->mInstance:Lcom/baidu/vis/ClassIfication/Predictor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apikey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/vis/ClassIfication/SDKExceptions$loadNativeLibraryError;,
            Lcom/baidu/vis/ClassIfication/SDKExceptions$loadLicenseLibraryError;
        }
    .end annotation

    .prologue
    .line 47
    const-class v1, Lcom/baidu/vis/ClassIfication/Predictor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/vis/ClassIfication/Predictor;->loadNativeLibraryError:Lcom/baidu/vis/ClassIfication/SDKExceptions$loadNativeLibraryError;

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcom/baidu/vis/ClassIfication/Predictor;->loadNativeLibraryError:Lcom/baidu/vis/ClassIfication/SDKExceptions$loadNativeLibraryError;

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 52
    :cond_0
    :try_start_1
    sget-object v0, Lcom/baidu/vis/ClassIfication/Predictor;->loadLicenseLibraryError:Lcom/baidu/vis/ClassIfication/SDKExceptions$loadLicenseLibraryError;

    if-eqz v0, :cond_1

    .line 54
    sget-object v0, Lcom/baidu/vis/ClassIfication/Predictor;->loadLicenseLibraryError:Lcom/baidu/vis/ClassIfication/SDKExceptions$loadLicenseLibraryError;

    throw v0

    .line 64
    :cond_1
    sget v0, Lcom/baidu/vis/ClassIfication/Predictor;->mAuthorityStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return v0
.end method

.method public static declared-synchronized initModel(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "nnFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/vis/ClassIfication/SDKExceptions$NoSDCardPermission;,
            Lcom/baidu/vis/ClassIfication/SDKExceptions$MissingModleFileInAssetFolder;,
            Lcom/baidu/vis/ClassIfication/SDKExceptions$IlleagleCpuArch;,
            Lcom/baidu/vis/ClassIfication/SDKExceptions$IlleagleLicense;
        }
    .end annotation

    .prologue
    .line 106
    const-class v3, Lcom/baidu/vis/ClassIfication/Predictor;

    monitor-enter v3

    :try_start_0
    sget v2, Lcom/baidu/vis/ClassIfication/Predictor;->mAuthorityStatus:I

    if-eqz v2, :cond_0

    .line 108
    const-string v2, "ClassIfication"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "license error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/baidu/vis/ClassIfication/Predictor;->mAuthorityStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v2, Lcom/baidu/vis/ClassIfication/SDKExceptions$IlleagleLicense;

    invoke-direct {v2}, Lcom/baidu/vis/ClassIfication/SDKExceptions$IlleagleLicense;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 112
    :cond_0
    :try_start_1
    invoke-static {p0, p1}, Lcom/baidu/vis/ClassIfication/Util;->copyAssets(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    new-instance v2, Ljava/io/File;

    const/4 v4, 0x0

    .line 114
    invoke-virtual {p0, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "modelPathOnSDCard":Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/baidu/vis/ClassIfication/Predictor;->nativeModelInit(Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    .line 118
    .local v1, "ret":I
    if-nez v1, :cond_1

    .line 119
    const/4 v2, 0x1

    sput-boolean v2, Lcom/baidu/vis/ClassIfication/Predictor;->isInited:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :cond_1
    monitor-exit v3

    return v1
.end method

.method public static declared-synchronized initModelWithPath(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "modelPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/vis/ClassIfication/SDKExceptions$IlleagleLicense;,
            Lcom/baidu/vis/ClassIfication/SDKExceptions$NV21BytesLengthNotMatch;
        }
    .end annotation

    .prologue
    .line 78
    const-class v2, Lcom/baidu/vis/ClassIfication/Predictor;

    monitor-enter v2

    :try_start_0
    sget v1, Lcom/baidu/vis/ClassIfication/Predictor;->mAuthorityStatus:I

    if-eqz v1, :cond_0

    .line 80
    const-string v1, "ClassIfication"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "license error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/baidu/vis/ClassIfication/Predictor;->mAuthorityStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v1, Lcom/baidu/vis/ClassIfication/SDKExceptions$IlleagleLicense;

    invoke-direct {v1}, Lcom/baidu/vis/ClassIfication/SDKExceptions$IlleagleLicense;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 84
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/baidu/vis/ClassIfication/Util;->checkFile(Ljava/lang/String;)V

    .line 85
    invoke-static {p1, p0}, Lcom/baidu/vis/ClassIfication/Predictor;->nativeModelInit(Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 87
    .local v0, "ret":I
    if-nez v0, :cond_1

    .line 88
    const/4 v1, 0x1

    sput-boolean v1, Lcom/baidu/vis/ClassIfication/Predictor;->isInited:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    :cond_1
    monitor-exit v2

    return v0
.end method

.method public static declared-synchronized modelRelease()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/vis/ClassIfication/SDKExceptions$IlleagleLicense;,
            Lcom/baidu/vis/ClassIfication/SDKExceptions$NotInit;
        }
    .end annotation

    .prologue
    .line 132
    const-class v1, Lcom/baidu/vis/ClassIfication/Predictor;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/baidu/vis/ClassIfication/Predictor;->mAuthorityStatus:I

    if-eqz v0, :cond_0

    .line 134
    const-string v0, "ClassIfication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "license error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/baidu/vis/ClassIfication/Predictor;->mAuthorityStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    new-instance v0, Lcom/baidu/vis/ClassIfication/SDKExceptions$IlleagleLicense;

    invoke-direct {v0}, Lcom/baidu/vis/ClassIfication/SDKExceptions$IlleagleLicense;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 138
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/baidu/vis/ClassIfication/Predictor;->isInited:Z

    if-nez v0, :cond_1

    .line 140
    const-string v0, "ClassIfication"

    const-string v2, "model not init"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v0, Lcom/baidu/vis/ClassIfication/SDKExceptions$NotInit;

    invoke-direct {v0}, Lcom/baidu/vis/ClassIfication/SDKExceptions$NotInit;-><init>()V

    throw v0

    .line 143
    :cond_1
    invoke-static {}, Lcom/baidu/vis/ClassIfication/Predictor;->nativeRelease()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0
.end method

.method public static native nativeModelInit(Ljava/lang/String;Landroid/content/Context;)I
.end method

.method public static native nativePredict(Ljava/lang/Object;Ljava/lang/String;[BII)Lcom/baidu/vis/ClassIfication/Response;
.end method

.method public static native nativeRelease()I
.end method

.method public static declared-synchronized predict(Ljava/lang/Object;)Lcom/baidu/vis/ClassIfication/Response;
    .locals 5
    .param p0, "bmp1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/vis/ClassIfication/SDKExceptions$IlleagleLicense;,
            Lcom/baidu/vis/ClassIfication/SDKExceptions$NotInit;
        }
    .end annotation

    .prologue
    .line 184
    const-class v1, Lcom/baidu/vis/ClassIfication/Predictor;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/baidu/vis/ClassIfication/Predictor;->mAuthorityStatus:I

    if-eqz v0, :cond_0

    .line 186
    const-string v0, "ClassIfication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "license error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/baidu/vis/ClassIfication/Predictor;->mAuthorityStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v0, Lcom/baidu/vis/ClassIfication/SDKExceptions$IlleagleLicense;

    invoke-direct {v0}, Lcom/baidu/vis/ClassIfication/SDKExceptions$IlleagleLicense;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 190
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/baidu/vis/ClassIfication/Predictor;->isInited:Z

    if-nez v0, :cond_1

    .line 192
    const-string v0, "ClassIfication"

    const-string v2, "model not init"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v0, Lcom/baidu/vis/ClassIfication/SDKExceptions$NotInit;

    invoke-direct {v0}, Lcom/baidu/vis/ClassIfication/SDKExceptions$NotInit;-><init>()V

    throw v0

    .line 195
    :cond_1
    const-string v0, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p0, v0, v2, v3, v4}, Lcom/baidu/vis/ClassIfication/Predictor;->nativePredict(Ljava/lang/Object;Ljava/lang/String;[BII)Lcom/baidu/vis/ClassIfication/Response;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized predict(Ljava/lang/String;)Lcom/baidu/vis/ClassIfication/Response;
    .locals 5
    .param p0, "imagePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/vis/ClassIfication/SDKExceptions$IlleagleLicense;,
            Lcom/baidu/vis/ClassIfication/SDKExceptions$NotInit;,
            Lcom/baidu/vis/ClassIfication/SDKExceptions$NV21BytesLengthNotMatch;
        }
    .end annotation

    .prologue
    .line 157
    const-class v1, Lcom/baidu/vis/ClassIfication/Predictor;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/baidu/vis/ClassIfication/Predictor;->mAuthorityStatus:I

    if-eqz v0, :cond_0

    .line 159
    const-string v0, "ClassIfication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "license error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/baidu/vis/ClassIfication/Predictor;->mAuthorityStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v0, Lcom/baidu/vis/ClassIfication/SDKExceptions$IlleagleLicense;

    invoke-direct {v0}, Lcom/baidu/vis/ClassIfication/SDKExceptions$IlleagleLicense;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 163
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/baidu/vis/ClassIfication/Predictor;->isInited:Z

    if-nez v0, :cond_1

    .line 165
    const-string v0, "ClassIfication"

    const-string v2, "model not init"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v0, Lcom/baidu/vis/ClassIfication/SDKExceptions$NotInit;

    invoke-direct {v0}, Lcom/baidu/vis/ClassIfication/SDKExceptions$NotInit;-><init>()V

    throw v0

    .line 168
    :cond_1
    invoke-static {p0}, Lcom/baidu/vis/ClassIfication/Util;->checkFile(Ljava/lang/String;)V

    .line 169
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, p0, v2, v3, v4}, Lcom/baidu/vis/ClassIfication/Predictor;->nativePredict(Ljava/lang/Object;Ljava/lang/String;[BII)Lcom/baidu/vis/ClassIfication/Response;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized predict([BII)Lcom/baidu/vis/ClassIfication/Response;
    .locals 4
    .param p0, "rgbaBytes"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/vis/ClassIfication/SDKExceptions$IlleagleLicense;,
            Lcom/baidu/vis/ClassIfication/SDKExceptions$NotInit;,
            Lcom/baidu/vis/ClassIfication/SDKExceptions$NV21BytesLengthNotMatch;
        }
    .end annotation

    .prologue
    .line 212
    const-class v1, Lcom/baidu/vis/ClassIfication/Predictor;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/baidu/vis/ClassIfication/Predictor;->mAuthorityStatus:I

    if-eqz v0, :cond_0

    .line 214
    const-string v0, "ClassIfication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "license error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/baidu/vis/ClassIfication/Predictor;->mAuthorityStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance v0, Lcom/baidu/vis/ClassIfication/SDKExceptions$IlleagleLicense;

    invoke-direct {v0}, Lcom/baidu/vis/ClassIfication/SDKExceptions$IlleagleLicense;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 218
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/baidu/vis/ClassIfication/Predictor;->isInited:Z

    if-nez v0, :cond_1

    .line 220
    const-string v0, "ClassIfication"

    const-string v2, "model not init"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v0, Lcom/baidu/vis/ClassIfication/SDKExceptions$NotInit;

    invoke-direct {v0}, Lcom/baidu/vis/ClassIfication/SDKExceptions$NotInit;-><init>()V

    throw v0

    .line 223
    :cond_1
    array-length v0, p0

    if-nez v0, :cond_2

    .line 225
    const-string v0, "ClassIfication"

    const-string v2, "NV21Bytes Length NotMatch"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance v0, Lcom/baidu/vis/ClassIfication/SDKExceptions$NV21BytesLengthNotMatch;

    invoke-direct {v0}, Lcom/baidu/vis/ClassIfication/SDKExceptions$NV21BytesLengthNotMatch;-><init>()V

    throw v0

    .line 228
    :cond_2
    const/4 v0, 0x0

    const-string v2, ""

    invoke-static {v0, v2, p0, p1, p2}, Lcom/baidu/vis/ClassIfication/Predictor;->nativePredict(Ljava/lang/Object;Ljava/lang/String;[BII)Lcom/baidu/vis/ClassIfication/Response;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0
.end method
