.class public Lcom/miui/internal/server/TelocationUpdateService;
.super Landroid/app/IntentService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;,
        Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateResponse;,
        Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;
    }
.end annotation


# static fields
.field public static final ACTION_TELOCATION_DOWNLOAD_COMPLETED:Ljava/lang/String; = "com.miui.data.TELOCATION_DOWNLOAD_COMPLETED"

.field public static final ACTION_UPDATE_TELOCATION:Ljava/lang/String; = "com.miui.data.UPDATE_TELOCATION"

.field private static final TAG:Ljava/lang/String; = "TelocationUpdateService"

.field private static final hG:Ljava/lang/String; = "77eb2e8a5755abd016c0d69ba74b219c"

.field private static final iA:Ljava/lang/String; = "telocation.idf"

.field private static final iB:Ljava/lang/String; = "telocation-patch"

.field private static final iC:Ljava/lang/String; = "telocation-old"

.field private static final iD:Ljava/lang/String; = "telocation-new"

.field private static final iE:I = 0x3

.field private static final iF:Ljava/lang/String; = "ver"

.field private static final iG:Ljava/lang/String; = "t"

.field private static final iH:Ljava/lang/String; = "m"

.field private static final iI:Ljava/lang/String; = "d101b17c77ff93cs"

.field private static final iJ:I = 0x1b4

.field private static final iz:Ljava/lang/String;


# instance fields
.field private iK:J

.field private iL:Landroid/app/DownloadManager;

.field private iM:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miui/internal/server/DataUpdateManager;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/cspmisc/patch/info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/server/TelocationUpdateService;->iz:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 73
    const-string v0, "TelocationUpdateService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method private static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    .line 320
    nop

    .line 322
    :try_start_0
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lmiui/security/DigestUtils;->get(Ljava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lmiui/text/ExtraTextUtils;->toHexReadable([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    if-eqz p0, :cond_1

    .line 329
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 332
    :goto_0
    goto :goto_3

    .line 330
    :catch_0
    move-exception p0

    .line 331
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 327
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 324
    :catch_1
    move-exception v0

    .line 325
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 327
    if-eqz p0, :cond_0

    .line 329
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 332
    :goto_1
    goto :goto_2

    .line 330
    :catch_2
    move-exception p0

    .line 331
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 336
    :cond_0
    :goto_2
    const/4 v0, 0x0

    :cond_1
    :goto_3
    return-object v0

    .line 327
    :goto_4
    if-eqz p0, :cond_2

    .line 329
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 332
    goto :goto_5

    .line 330
    :catch_3
    move-exception p0

    .line 331
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 332
    :cond_2
    :goto_5
    throw v0
.end method

.method private a(Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 149
    const/4 v1, 0x1

    new-array v2, v1, [J

    iget-wide v3, p1, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->iR:J

    const/4 v5, 0x0

    aput-wide v3, v2, v5

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 151
    iget-object v2, p0, Lcom/miui/internal/server/TelocationUpdateService;->iL:Landroid/app/DownloadManager;

    invoke-virtual {v2, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_6

    .line 154
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 155
    const-string v2, "status"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 160
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 157
    return-void

    .line 160
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 161
    nop

    .line 167
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/miui/internal/server/TelocationUpdateService;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "telocation-patch"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 168
    const/4 v2, 0x0

    .line 170
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/miui/internal/server/TelocationUpdateService;->iL:Landroid/app/DownloadManager;

    iget-wide v6, p1, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->iR:J

    .line 171
    invoke-virtual {v4, v6, v7}, Landroid/app/DownloadManager;->openDownloadedFile(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 172
    :try_start_2
    invoke-static {v3, v0}, Lmiui/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_1

    .line 176
    nop

    .line 178
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 180
    goto :goto_0

    .line 179
    :catch_0
    move-exception p1

    .line 173
    :goto_0
    return-void

    .line 176
    :cond_1
    nop

    .line 178
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 180
    :goto_1
    goto :goto_2

    .line 179
    :catch_1
    move-exception v2

    goto :goto_1

    .line 184
    :goto_2
    nop

    .line 185
    iget-object v2, p1, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->iT:Ljava/lang/String;

    .line 186
    iget v3, p1, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->iU:I

    if-nez v3, :cond_2

    .line 187
    iget-object v3, p1, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->iS:Ljava/lang/String;

    .line 188
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-direct {p0, v3, v2, v0}, Lcom/miui/internal/server/TelocationUpdateService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    .line 189
    :cond_2
    iget v2, p1, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->iU:I

    if-ne v2, v1, :cond_3

    .line 190
    iget-object v2, p1, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->iS:Ljava/lang/String;

    .line 191
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-direct {p0, v2, v0}, Lcom/miui/internal/server/TelocationUpdateService;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    .line 194
    :cond_3
    move v0, v5

    :goto_3
    if-eqz v0, :cond_4

    .line 195
    iget-object v0, p0, Lcom/miui/internal/server/TelocationUpdateService;->iL:Landroid/app/DownloadManager;

    new-array v1, v1, [J

    iget-wide v2, p1, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->iR:J

    aput-wide v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->remove([J)I

    .line 196
    iget-object p1, p0, Lcom/miui/internal/server/TelocationUpdateService;->iM:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->c(Landroid/content/SharedPreferences;)V

    .line 198
    :cond_4
    return-void

    .line 176
    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_4

    :catchall_1
    move-exception p1

    :goto_4
    if-eqz v2, :cond_5

    .line 178
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 180
    goto :goto_5

    .line 179
    :catch_2
    move-exception v0

    .line 180
    :cond_5
    :goto_5
    throw p1

    .line 160
    :catchall_2
    move-exception p1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p1

    .line 163
    :cond_6
    return-void
.end method

.method private ad()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "telocation.idf"

    invoke-static {v0, v1}, Lcom/miui/internal/util/DirectIndexedFileExtractor;->getDirectIndexedFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v1

    .line 305
    :cond_0
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 306
    const-string v1, "telocation.idf"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    invoke-direct {p0, p2, p1}, Lcom/miui/internal/server/TelocationUpdateService;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 257
    const-string p2, "TelocationUpdateService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Telocation Full Update from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/internal/server/TelocationUpdateService;->iK:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-static {}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getInstance()Lmiui/telephony/phonenumber/ChineseTelocationConverter;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return p1
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    nop

    .line 203
    invoke-static {p3}, Lcom/miui/internal/server/TelocationUpdateService;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 205
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/miui/internal/server/TelocationUpdateService;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "telocation-old"

    invoke-direct {p1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/miui/internal/server/TelocationUpdateService;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "telocation-new"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const/4 v2, 0x3

    .line 208
    :goto_0
    if-lez v2, :cond_2

    .line 209
    const/4 v3, 0x0

    .line 211
    :try_start_0
    invoke-direct {p0}, Lcom/miui/internal/server/TelocationUpdateService;->ad()Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 212
    :try_start_1
    invoke-static {v4, p1}, Lmiui/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 214
    invoke-static {v4}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 215
    nop

    .line 218
    :try_start_2
    new-instance v3, Lmiui/util/Patcher;

    invoke-direct {v3}, Lmiui/util/Patcher;-><init>()V

    .line 219
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 220
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 219
    invoke-virtual {v3, v4, v5, p3}, Lmiui/util/Patcher;->applyPatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 221
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/miui/internal/server/TelocationUpdateService;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 223
    const-string v3, "TelocationUpdateService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Telocation Patch Update from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/miui/internal/server/TelocationUpdateService;->iK:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-static {}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getInstance()Lmiui/telephony/phonenumber/ChineseTelocationConverter;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 223
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 229
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 230
    nop

    .line 232
    if-eqz v1, :cond_1

    .line 233
    goto :goto_2

    .line 235
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 236
    goto :goto_0

    .line 228
    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 229
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    throw p2

    .line 214
    :catchall_1
    move-exception p1

    move-object v3, v4

    goto :goto_1

    :catchall_2
    move-exception p1

    :goto_1
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw p1

    .line 237
    :cond_2
    :goto_2
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 238
    goto :goto_3

    .line 239
    :cond_3
    const-string p1, "TelocationUpdateService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error: patch file md5 mismatch: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :goto_3
    if-nez v1, :cond_4

    .line 245
    const/4 p1, 0x1

    :try_start_3
    invoke-direct {p0, p1}, Lcom/miui/internal/server/TelocationUpdateService;->g(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 248
    goto :goto_4

    .line 246
    :catch_0
    move-exception p1

    .line 247
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 251
    :cond_4
    :goto_4
    return v1
.end method

.method private f(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 263
    invoke-static {p1}, Lcom/miui/internal/server/TelocationUpdateService;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 266
    const-string p2, "telocation.idf"

    invoke-static {p0, p1, p2}, Lcom/miui/internal/util/DirectIndexedFileExtractor;->replaceDirectIndexedFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    .line 267
    if-eqz p2, :cond_0

    .line 268
    invoke-static {}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->reloadInstance()V

    goto :goto_0

    .line 270
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 271
    const-string p1, "TelocationUpdateService"

    const-string v0, "replaceTelocationFile fail"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :goto_0
    return p2

    .line 275
    :cond_1
    const-string p1, "TelocationUpdateService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: new telocation file md5 mismatch: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 p1, 0x0

    return p1
.end method

.method private static g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 340
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 343
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 344
    if-eqz p1, :cond_3

    array-length v0, p1

    const/16 v2, 0x10

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 347
    :cond_1
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v0, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 350
    :try_start_0
    const-string p1, "AES/CBC/PKCS5Padding"

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 351
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    const-string v3, "0102030405060708"

    .line 352
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 353
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 354
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 355
    if-nez p0, :cond_2

    .line 356
    return-object v1

    .line 358
    :cond_2
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 359
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 360
    :catch_0
    move-exception p0

    .line 361
    return-object v1

    .line 345
    :cond_3
    :goto_0
    return-object v1

    .line 341
    :cond_4
    :goto_1
    return-object v1
.end method

.method private g(Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 112
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 113
    const-string v2, "ver"

    iget-wide v3, p0, Lcom/miui/internal/server/TelocationUpdateService;->iK:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v2, "t"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-direct {p0}, Lcom/miui/internal/server/TelocationUpdateService;->ad()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/internal/server/TelocationUpdateService;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 117
    if-eqz v1, :cond_3

    .line 118
    const-string v2, "TelocationUpdateService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Local file md5 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v2, "m"

    if-eqz p1, :cond_0

    const-string p1, "-1"

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/internal/server/TelocationUpdateService;->iz:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p0}, Lcom/miui/internal/server/TelocationUpdateService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "77eb2e8a5755abd016c0d69ba74b219c"

    invoke-static {v0, v1, v2}, Lcom/miui/internal/util/DataUpdateUtils;->getSignedUrl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-static {p1}, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateResponse;->q(Ljava/lang/String;)Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateResponse;

    move-result-object p1

    .line 129
    invoke-virtual {p1}, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateResponse;->ae()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    iget-object p1, p1, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateResponse;->jl:Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;

    .line 131
    iget-object v0, p1, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->jg:Ljava/lang/String;

    .line 132
    iget-object v1, p1, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->jf:Ljava/lang/String;

    .line 133
    const-string v2, "TelocationUpdateService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Patch file md5: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v1, p0, Lcom/miui/internal/server/TelocationUpdateService;->iM:Landroid/content/SharedPreferences;

    invoke-static {v1}, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->b(Landroid/content/SharedPreferences;)Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;

    move-result-object v1

    .line 137
    if-eqz v1, :cond_1

    .line 138
    iget-object v2, p0, Lcom/miui/internal/server/TelocationUpdateService;->iL:Landroid/app/DownloadManager;

    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    iget-wide v5, v1, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->iR:J

    aput-wide v5, v3, v4

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager;->remove([J)I

    .line 141
    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/internal/server/TelocationUpdateService;->o(Ljava/lang/String;)J

    move-result-wide v8

    .line 142
    new-instance v0, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;

    iget-object v10, p1, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->jf:Ljava/lang/String;

    iget-object v11, p1, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->je:Ljava/lang/String;

    iget v12, p1, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->iU:I

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/miui/internal/server/TelocationUpdateService;->iM:Landroid/content/SharedPreferences;

    .line 143
    invoke-virtual {v0, p1}, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->a(Landroid/content/SharedPreferences;)V

    .line 145
    :cond_2
    return-void

    .line 122
    :cond_3
    return-void
.end method

.method static synthetic h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-static {p0, p1}, Lcom/miui/internal/server/TelocationUpdateService;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private o(Ljava/lang/String;)J
    .locals 2

    .line 287
    new-instance v0, Landroid/app/DownloadManager$Request;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 288
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/app/DownloadManager$Request;->setAllowedOverMetered(Z)Landroid/app/DownloadManager$Request;

    .line 289
    invoke-virtual {v0, p1}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    .line 290
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    .line 291
    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 292
    invoke-virtual {v0, p1}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    .line 294
    iget-object p1, p0, Lcom/miui/internal/server/TelocationUpdateService;->iL:Landroid/app/DownloadManager;

    invoke-virtual {p1, v0}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static p(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 312
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/internal/server/TelocationUpdateService;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 313
    :catch_0
    move-exception p0

    .line 314
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 315
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .line 78
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 79
    const-string v0, "download"

    invoke-virtual {p0, v0}, Lcom/miui/internal/server/TelocationUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/miui/internal/server/TelocationUpdateService;->iL:Landroid/app/DownloadManager;

    .line 80
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/server/TelocationUpdateService;->iM:Landroid/content/SharedPreferences;

    .line 81
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    .line 85
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getInstance()Lmiui/telephony/phonenumber/ChineseTelocationConverter;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getVersion()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/miui/internal/server/TelocationUpdateService;->iK:J

    .line 87
    const-string v1, "com.miui.data.UPDATE_TELOCATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    const/4 p1, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/internal/server/TelocationUpdateService;->g(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    goto :goto_2

    .line 90
    :catch_0
    move-exception p1

    .line 91
    const-string v0, "TelocationUpdateService"

    const-string v1, "Telocation requestUpdate failed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 94
    :cond_0
    const-string v1, "com.miui.data.TELOCATION_DOWNLOAD_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 95
    iget-object v0, p0, Lcom/miui/internal/server/TelocationUpdateService;->iM:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->b(Landroid/content/SharedPreferences;)Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;

    move-result-object v0

    .line 97
    const-string v1, "extra_download_id"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 98
    if-eqz v0, :cond_2

    iget-wide v3, v0, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->iR:J

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    goto :goto_1

    .line 103
    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Lcom/miui/internal/server/TelocationUpdateService;->a(Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    goto :goto_2

    .line 104
    :catch_1
    move-exception p1

    .line 105
    const-string v0, "TelocationUpdateService"

    const-string v1, "Telocation applyUpdate failed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 99
    :cond_2
    :goto_1
    return-void

    .line 109
    :cond_3
    :goto_2
    return-void
.end method
