.class public Lcom/miui/gallery/cloud/GalleryErrorCode;
.super Ljava/lang/Object;
.source "GalleryErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/GalleryErrorCode$MiCloudServerExceptionHandler;,
        Lcom/miui/gallery/cloud/GalleryErrorCode$ExceptionWithErrorCode;,
        Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;,
        Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;
    }
.end annotation


# static fields
.field private static final sAlbumNotEmptyHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

.field private static final sAlbumNotExistsHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

.field private static sExceptionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sGalleryNotFoundHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

.field public static final sGalleryServerErrors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final sNoErrorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

.field private static final sNotRetryErrorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

.field private static final sRetryErrorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

.field private static final sSpaceFullHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0x2720

    const/16 v8, 0x2718

    const/16 v7, 0x2711

    const/4 v5, 0x0

    const v6, 0xc363

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryServerErrors:Ljava/util/HashMap;

    .line 175
    new-instance v0, Lcom/miui/gallery/cloud/GalleryErrorCode$1;

    invoke-direct {v0}, Lcom/miui/gallery/cloud/GalleryErrorCode$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sNoErrorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    .line 186
    new-instance v0, Lcom/miui/gallery/cloud/GalleryErrorCode$2;

    invoke-direct {v0}, Lcom/miui/gallery/cloud/GalleryErrorCode$2;-><init>()V

    sput-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sSpaceFullHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    .line 198
    new-instance v0, Lcom/miui/gallery/cloud/GalleryErrorCode$3;

    invoke-direct {v0}, Lcom/miui/gallery/cloud/GalleryErrorCode$3;-><init>()V

    sput-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sRetryErrorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    .line 216
    new-instance v0, Lcom/miui/gallery/cloud/GalleryErrorCode$4;

    invoke-direct {v0}, Lcom/miui/gallery/cloud/GalleryErrorCode$4;-><init>()V

    sput-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sNotRetryErrorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    .line 225
    new-instance v0, Lcom/miui/gallery/cloud/GalleryErrorCode$5;

    invoke-direct {v0}, Lcom/miui/gallery/cloud/GalleryErrorCode$5;-><init>()V

    sput-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryNotFoundHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    .line 239
    new-instance v0, Lcom/miui/gallery/cloud/GalleryErrorCode$6;

    invoke-direct {v0}, Lcom/miui/gallery/cloud/GalleryErrorCode$6;-><init>()V

    sput-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sAlbumNotExistsHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    .line 282
    new-instance v0, Lcom/miui/gallery/cloud/GalleryErrorCode$7;

    invoke-direct {v0}, Lcom/miui/gallery/cloud/GalleryErrorCode$7;-><init>()V

    sput-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sAlbumNotEmptyHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    .line 310
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryServerErrors:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;

    sget-object v3, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v4, Lcom/miui/gallery/cloud/GalleryErrorCode;->sNoErrorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    invoke-direct {v2, v5, v3, v4}, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;-><init>(ILcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryServerErrors:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;

    sget-object v3, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->RetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v4, Lcom/miui/gallery/cloud/GalleryErrorCode;->sRetryErrorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    invoke-direct {v2, v7, v3, v4}, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;-><init>(ILcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryServerErrors:Ljava/util/HashMap;

    const/16 v1, 0x2730

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;

    const/16 v3, 0x2730

    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->RetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v5, Lcom/miui/gallery/cloud/GalleryErrorCode;->sRetryErrorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;-><init>(ILcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryServerErrors:Ljava/util/HashMap;

    const/16 v1, 0x507f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;

    const/16 v3, 0x507f

    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->RetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v5, Lcom/miui/gallery/cloud/GalleryErrorCode;->sRetryErrorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;-><init>(ILcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryServerErrors:Ljava/util/HashMap;

    const/16 v1, 0x59d8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;

    const/16 v3, 0x59d8

    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->RetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v5, Lcom/miui/gallery/cloud/GalleryErrorCode;->sRetryErrorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;-><init>(ILcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryServerErrors:Ljava/util/HashMap;

    const v1, 0xc355

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;

    const v3, 0xc355

    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->RetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v5, Lcom/miui/gallery/cloud/GalleryErrorCode;->sRetryErrorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;-><init>(ILcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryServerErrors:Ljava/util/HashMap;

    const v1, 0xc352

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;

    const v3, 0xc352

    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->RetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v5, Lcom/miui/gallery/cloud/GalleryErrorCode;->sRetryErrorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;-><init>(ILcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryServerErrors:Ljava/util/HashMap;

    const v1, 0xc353

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;

    const v3, 0xc353

    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->RetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v5, Lcom/miui/gallery/cloud/GalleryErrorCode;->sRetryErrorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;-><init>(ILcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryServerErrors:Ljava/util/HashMap;

    const v1, 0xc357

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;

    const v3, 0xc357

    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->RetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v5, Lcom/miui/gallery/cloud/GalleryErrorCode;->sRetryErrorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;-><init>(ILcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryServerErrors:Ljava/util/HashMap;

    const v1, 0xc35a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;

    const v3, 0xc35a

    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->RetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v5, Lcom/miui/gallery/cloud/GalleryErrorCode;->sRetryErrorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;-><init>(ILcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryServerErrors:Ljava/util/HashMap;

    const v1, 0xc361

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;

    const v3, 0xc361

    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->RetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v5, Lcom/miui/gallery/cloud/GalleryErrorCode;->sRetryErrorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;-><init>(ILcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryServerErrors:Ljava/util/HashMap;

    const v1, 0xc366

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;

    const v3, 0xc366

    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->RetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v5, Lcom/miui/gallery/cloud/GalleryErrorCode;->sRetryErrorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;-><init>(ILcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryServerErrors:Ljava/util/HashMap;

    const v1, 0xc356

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;

    const v3, 0xc356

    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotContinueError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v5, Lcom/miui/gallery/cloud/GalleryErrorCode;->sSpaceFullHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;-><init>(ILcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryServerErrors:Ljava/util/HashMap;

    const v1, 0xc360

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;

    const v3, 0xc360

    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotContinueError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v5, Lcom/miui/gallery/cloud/GalleryErrorCode;->sRetryErrorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;-><init>(ILcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryServerErrors:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;

    sget-object v3, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v4, Lcom/miui/gallery/cloud/GalleryErrorCode;->sNotRetryErrorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    invoke-direct {v2, v6, v3, v4}, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;-><init>(ILcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryServerErrors:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;

    sget-object v3, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v4, Lcom/miui/gallery/cloud/GalleryErrorCode;->sNotRetryErrorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    invoke-direct {v2, v8, v3, v4}, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;-><init>(ILcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryServerErrors:Ljava/util/HashMap;

    const/16 v1, 0x2721

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;

    const/16 v3, 0x2721

    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v5, Lcom/miui/gallery/cloud/GalleryErrorCode;->sNotRetryErrorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;-><init>(ILcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryServerErrors:Ljava/util/HashMap;

    const/16 v1, 0x4e2e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;

    const/16 v3, 0x4e2e

    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v5, Lcom/miui/gallery/cloud/GalleryErrorCode;->sNotRetryErrorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;-><init>(ILcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryServerErrors:Ljava/util/HashMap;

    const v1, 0xc351

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;

    const v3, 0xc351

    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v5, Lcom/miui/gallery/cloud/GalleryErrorCode;->sNotRetryErrorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;-><init>(ILcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryServerErrors:Ljava/util/HashMap;

    const v1, 0xc354

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;

    const v3, 0xc354

    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v5, Lcom/miui/gallery/cloud/GalleryErrorCode;->sNotRetryErrorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;-><init>(ILcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryServerErrors:Ljava/util/HashMap;

    const v1, 0xc358

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;

    const v3, 0xc358

    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v5, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryNotFoundHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;-><init>(ILcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryServerErrors:Ljava/util/HashMap;

    const v1, 0xc359

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;

    const v3, 0xc359

    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v5, Lcom/miui/gallery/cloud/GalleryErrorCode;->sNotRetryErrorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;-><init>(ILcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryServerErrors:Ljava/util/HashMap;

    const v1, 0xc35b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;

    const v3, 0xc35b

    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v5, Lcom/miui/gallery/cloud/GalleryErrorCode;->sNotRetryErrorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;-><init>(ILcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryServerErrors:Ljava/util/HashMap;

    const v1, 0xc35d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;

    const v3, 0xc35d

    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v5, Lcom/miui/gallery/cloud/GalleryErrorCode;->sNotRetryErrorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;-><init>(ILcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryServerErrors:Ljava/util/HashMap;

    const v1, 0xc35f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;

    const v3, 0xc35f

    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v5, Lcom/miui/gallery/cloud/GalleryErrorCode;->sNotRetryErrorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;-><init>(ILcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryServerErrors:Ljava/util/HashMap;

    const v1, 0xc362

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;

    const v3, 0xc362

    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v5, Lcom/miui/gallery/cloud/GalleryErrorCode;->sNotRetryErrorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;-><init>(ILcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryServerErrors:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;

    sget-object v3, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v4, Lcom/miui/gallery/cloud/GalleryErrorCode;->sNotRetryErrorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    invoke-direct {v2, v6, v3, v4}, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;-><init>(ILcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryServerErrors:Ljava/util/HashMap;

    const v1, 0xc364

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;

    const v3, 0xc364

    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v5, Lcom/miui/gallery/cloud/GalleryErrorCode;->sNotRetryErrorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;-><init>(ILcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryServerErrors:Ljava/util/HashMap;

    const v1, 0xc365

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;

    const v3, 0xc365

    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v5, Lcom/miui/gallery/cloud/GalleryErrorCode;->sNotRetryErrorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;-><init>(ILcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryServerErrors:Ljava/util/HashMap;

    const v1, 0xc367

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;

    const v3, 0xc367

    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v5, Lcom/miui/gallery/cloud/GalleryErrorCode;->sNotRetryErrorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;-><init>(ILcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryServerErrors:Ljava/util/HashMap;

    const v1, 0xc368

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;

    const v3, 0xc368

    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v5, Lcom/miui/gallery/cloud/GalleryErrorCode;->sNotRetryErrorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;-><init>(ILcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryServerErrors:Ljava/util/HashMap;

    const v1, 0xc369

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;

    const v3, 0xc369

    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v5, Lcom/miui/gallery/cloud/GalleryErrorCode;->sNotRetryErrorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;-><init>(ILcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryServerErrors:Ljava/util/HashMap;

    const v1, 0xc36a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;

    const v3, 0xc36a

    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v5, Lcom/miui/gallery/cloud/GalleryErrorCode;->sNotRetryErrorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;-><init>(ILcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryServerErrors:Ljava/util/HashMap;

    const v1, 0xc36b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;

    const v3, 0xc36b

    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v5, Lcom/miui/gallery/cloud/GalleryErrorCode;->sNotRetryErrorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;-><init>(ILcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryServerErrors:Ljava/util/HashMap;

    const v1, 0xc36c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;

    const v3, 0xc36c

    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v5, Lcom/miui/gallery/cloud/GalleryErrorCode;->sNotRetryErrorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;-><init>(ILcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryServerErrors:Ljava/util/HashMap;

    const v1, 0xc36d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;

    const v3, 0xc36d

    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v5, Lcom/miui/gallery/cloud/GalleryErrorCode;->sNotRetryErrorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;-><init>(ILcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryServerErrors:Ljava/util/HashMap;

    const v1, 0xc36e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;

    const v3, 0xc36e

    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v5, Lcom/miui/gallery/cloud/GalleryErrorCode;->sNotRetryErrorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;-><init>(ILcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryServerErrors:Ljava/util/HashMap;

    const v1, 0x13884

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;

    const v3, 0x13884

    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v5, Lcom/miui/gallery/cloud/GalleryErrorCode;->sNotRetryErrorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;-><init>(ILcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryServerErrors:Ljava/util/HashMap;

    const v1, 0xc35c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;

    const v3, 0xc35c

    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->AlbumNotExist:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v5, Lcom/miui/gallery/cloud/GalleryErrorCode;->sAlbumNotExistsHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;-><init>(ILcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryServerErrors:Ljava/util/HashMap;

    const v1, 0xc35e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;

    const v3, 0xc35e

    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->AlbumNotEmpty:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v5, Lcom/miui/gallery/cloud/GalleryErrorCode;->sAlbumNotEmptyHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;-><init>(ILcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryServerErrors:Ljava/util/HashMap;

    const v1, 0x9c43

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;

    const v3, 0x9c43

    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v5, Lcom/miui/gallery/cloud/GalleryErrorCode;->sNotRetryErrorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;-><init>(ILcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryServerErrors:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;

    sget-object v3, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v4, Lcom/miui/gallery/cloud/GalleryErrorCode;->sNotRetryErrorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    invoke-direct {v2, v9, v3, v4}, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;-><init>(ILcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sGalleryServerErrors:Ljava/util/HashMap;

    const v1, 0xcb20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;

    const v3, 0xcb20

    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->ResetSyncTag:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;-><init>(ILcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sExceptionMap:Ljava/util/Map;

    .line 364
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sExceptionMap:Ljava/util/Map;

    const-class v1, Ljavax/crypto/IllegalBlockSizeException;

    const/16 v2, -0x65

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sExceptionMap:Ljava/util/Map;

    const-class v1, Ljavax/crypto/BadPaddingException;

    const/16 v2, -0x66

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sExceptionMap:Ljava/util/Map;

    const-class v1, Lorg/json/JSONException;

    const/16 v2, -0x67

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sExceptionMap:Ljava/util/Map;

    const-class v1, Ljava/io/IOException;

    const/16 v2, -0x68

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sExceptionMap:Ljava/util/Map;

    const-class v1, Lcom/miui/gallery/cloud/GalleryMiCloudServerException;

    const/16 v2, -0x69

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sExceptionMap:Ljava/util/Map;

    const-class v1, Ljava/net/MalformedURLException;

    const/16 v2, -0x6a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sExceptionMap:Ljava/util/Map;

    const-class v1, Ljava/io/UnsupportedEncodingException;

    const/16 v2, -0x6b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sExceptionMap:Ljava/util/Map;

    const-class v1, Lorg/apache/http/client/ClientProtocolException;

    const/16 v2, -0x6c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sExceptionMap:Ljava/util/Map;

    const-class v1, Ljava/net/URISyntaxException;

    const/16 v2, -0x6d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sExceptionMap:Ljava/util/Map;

    const-class v1, Ljava/lang/UnsupportedOperationException;

    const/16 v2, -0x6e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sExceptionMap:Ljava/util/Map;

    const-class v1, Ljava/net/SocketTimeoutException;

    const/16 v2, -0x6f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode;->sExceptionMap:Ljava/util/Map;

    const-class v1, Ljava/net/UnknownHostException;

    const/16 v2, -0x70

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-static {p0}, Lcom/miui/gallery/cloud/GalleryErrorCode;->hasUnCreatedGroupInLocalDB(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-static {p0}, Lcom/miui/gallery/cloud/GalleryErrorCode;->hasDeleteItemsInAGroup(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-static {p0}, Lcom/miui/gallery/cloud/GalleryErrorCode;->cancelDeleteGroupOperation(Ljava/lang/String;)V

    return-void
.end method

.method private static cancelDeleteGroupOperation(Ljava/lang/String;)V
    .locals 5
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 464
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 465
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "localFlag"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 466
    sget-object v1, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    const-string v2, "_id = ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object p0, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/miui/gallery/util/GalleryUtils;->safeUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 470
    return-void
.end method

.method public static fromThrowable(Ljava/lang/Throwable;)I
    .locals 5
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 389
    instance-of v3, p0, Lcom/miui/gallery/cloud/GalleryErrorCode$ExceptionWithErrorCode;

    if-eqz v3, :cond_1

    .line 390
    check-cast p0, Lcom/miui/gallery/cloud/GalleryErrorCode$ExceptionWithErrorCode;

    .end local p0    # "t":Ljava/lang/Throwable;
    iget v2, p0, Lcom/miui/gallery/cloud/GalleryErrorCode$ExceptionWithErrorCode;->mErrorCode:I

    .line 402
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v2, "errorCode":I
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return v2

    .line 393
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "errorCode":I
    :cond_1
    const/4 v2, -0x2

    .line 394
    .restart local v2    # "errorCode":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .restart local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    const-class v3, Ljava/lang/Object;

    if-eq v0, v3, :cond_0

    .line 395
    sget-object v3, Lcom/miui/gallery/cloud/GalleryErrorCode;->sExceptionMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 396
    .local v1, "err":Ljava/lang/Integer;
    if-eqz v1, :cond_2

    .line 397
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 398
    goto :goto_0

    .line 394
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1
.end method

.method private static hasDeleteItemsInAGroup(Ljava/lang/String;)Z
    .locals 10
    .param p0, "localGroupId"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 439
    const/4 v6, 0x0

    .line 441
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 442
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getCloudLimit1Uri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "localFlag = ?  AND localGroupId = ? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v9, 0x2

    .line 449
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x1

    aput-object p0, v4, v5

    const/4 v5, 0x0

    .line 442
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 452
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    if-eqz v6, :cond_0

    .line 457
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v7

    .line 460
    :goto_0
    return v0

    .line 456
    :cond_1
    if-eqz v6, :cond_2

    .line 457
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v8

    .line 460
    goto :goto_0

    .line 456
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 457
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private static hasUnCreatedGroupInLocalDB(Ljava/lang/String;)Z
    .locals 10
    .param p0, "localGroupId"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 414
    const/4 v6, 0x0

    .line 416
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 417
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getCloudLimit1Uri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "localFlag = ?  AND _id = ? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v9, 0x8

    .line 424
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x1

    aput-object p0, v4, v5

    const/4 v5, 0x0

    .line 417
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 427
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    if-eqz v6, :cond_0

    .line 432
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v7

    .line 435
    :goto_0
    return v0

    .line 431
    :cond_1
    if-eqz v6, :cond_2

    .line 432
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v8

    .line 435
    goto :goto_0

    .line 431
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 432
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static isClientError(I)Z
    .locals 1
    .param p0, "err"    # I

    .prologue
    .line 410
    if-gez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
