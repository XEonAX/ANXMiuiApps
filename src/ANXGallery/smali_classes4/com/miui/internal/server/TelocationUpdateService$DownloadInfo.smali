.class final Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/server/TelocationUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DownloadInfo"
.end annotation


# static fields
.field private static final iN:Ljava/lang/String; = "telocation_download_id"

.field private static final iO:Ljava/lang/String; = "telocation_downloaded_file_md5"

.field private static final iP:Ljava/lang/String; = "telocation_new_file_md5"

.field private static final iQ:Ljava/lang/String; = "telocation_patch_type"


# instance fields
.field public iR:J

.field public iS:Ljava/lang/String;

.field public iT:Ljava/lang/String;

.field public iU:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    iput-object p3, p0, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->iS:Ljava/lang/String;

    .line 382
    iput-wide p1, p0, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->iR:J

    .line 383
    iput-object p4, p0, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->iT:Ljava/lang/String;

    .line 384
    iput p5, p0, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->iU:I

    .line 385
    return-void
.end method

.method public static b(Landroid/content/SharedPreferences;)Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;
    .locals 6

    .line 397
    new-instance v0, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;

    invoke-direct {v0}, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;-><init>()V

    .line 398
    const-string v1, "telocation_download_id"

    const-wide/16 v2, -0x1

    invoke-interface {p0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->iR:J

    .line 399
    iget-wide v4, v0, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->iR:J

    cmp-long v1, v4, v2

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 400
    return-object v2

    .line 402
    :cond_0
    const-string v1, "telocation_downloaded_file_md5"

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->iS:Ljava/lang/String;

    .line 403
    iget-object v1, v0, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->iS:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 404
    return-object v2

    .line 406
    :cond_1
    const-string v1, "telocation_new_file_md5"

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->iT:Ljava/lang/String;

    .line 407
    iget-object v1, v0, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->iT:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 408
    return-object v2

    .line 410
    :cond_2
    const-string v1, "telocation_patch_type"

    const/4 v3, -0x1

    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->iU:I

    .line 411
    iget p0, v0, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->iU:I

    if-ne p0, v3, :cond_3

    .line 412
    return-object v2

    .line 415
    :cond_3
    return-object v0
.end method

.method public static c(Landroid/content/SharedPreferences;)V
    .locals 1

    .line 419
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "telocation_download_id"

    .line 420
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "telocation_downloaded_file_md5"

    .line 421
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "telocation_new_file_md5"

    .line 422
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "telocation_patch_type"

    .line 423
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 424
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 425
    return-void
.end method


# virtual methods
.method public a(Landroid/content/SharedPreferences;)V
    .locals 3

    .line 388
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "telocation_download_id"

    iget-wide v1, p0, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->iR:J

    .line 389
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "telocation_downloaded_file_md5"

    iget-object v1, p0, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->iS:Ljava/lang/String;

    .line 390
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "telocation_new_file_md5"

    iget-object v1, p0, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->iT:Ljava/lang/String;

    .line 391
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "telocation_patch_type"

    iget v1, p0, Lcom/miui/internal/server/TelocationUpdateService$DownloadInfo;->iU:I

    .line 392
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 393
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 394
    return-void
.end method
