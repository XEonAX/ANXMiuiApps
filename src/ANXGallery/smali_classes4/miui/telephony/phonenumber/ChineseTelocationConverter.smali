.class public Lmiui/telephony/phonenumber/ChineseTelocationConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/phonenumber/ChineseTelocationConverter$DatFileRawReadListener;
    }
.end annotation


# static fields
.field public static final AREACODE_INDEX:I = 0x1

.field private static FA:Lmiui/telephony/phonenumber/ChineseTelocationConverter; = null

.field private static final Fn:I = 0x7

.field private static final Fo:I = 0x8

.field private static final Fp:I = 0xd

.field private static final Fq:Ljava/lang/String; = ""

.field private static final Fr:Ljava/lang/String; = "telocation.idf"

.field private static final Fs:Ljava/lang/String; = "operators.dat"

.field private static final Ft:Ljava/lang/String; = "xiaomi_mobile.dat"

.field private static final Fu:Ljava/lang/String; = "tel_uniqid_len8.dat"

.field private static final Fv:I = 0x3

.field private static final Fw:I = 0x4

.field private static final Fx:I = 0x5

.field private static final Fy:I = 0x7

.field private static final Fz:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOCATION_INDEX:I = 0x0

.field public static final LOCATION_KIND:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ChineseTelocation"

.field public static final UNIQUE_ID_NONE:I


# instance fields
.field private final FB:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final FC:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final FD:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final FE:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private FF:Lmiui/util/DirectIndexedFile$Reader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->Fz:Ljava/util/HashSet;

    .line 48
    new-instance v0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;

    invoke-direct {v0}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;-><init>()V

    sput-object v0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->FA:Lmiui/telephony/phonenumber/ChineseTelocationConverter;

    .line 58
    sget-object v0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->Fz:Ljava/util/HashSet;

    const-string v1, "170"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->Fz:Ljava/util/HashSet;

    const-string v1, "171"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->FB:Ljava/util/HashMap;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->FC:Ljava/util/HashMap;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->FD:Ljava/util/HashSet;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->FE:Ljava/util/HashSet;

    .line 63
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "telocation.idf"

    invoke-static {v0, v1}, Lcom/miui/internal/util/DirectIndexedFileExtractor;->getDirectIndexedFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    :try_start_0
    invoke-static {v0}, Lmiui/util/DirectIndexedFile;->open(Ljava/lang/String;)Lmiui/util/DirectIndexedFile$Reader;

    move-result-object v1

    iput-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->FF:Lmiui/util/DirectIndexedFile$Reader;

    .line 68
    const-string v1, "ChineseTelocation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read Telocation from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 74
    :cond_0
    :goto_0
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->FF:Lmiui/util/DirectIndexedFile$Reader;

    if-nez v0, :cond_1

    .line 76
    :try_start_1
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 77
    const-string v1, "telocation.idf"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lmiui/util/DirectIndexedFile;->open(Ljava/io/InputStream;)Lmiui/util/DirectIndexedFile$Reader;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->FF:Lmiui/util/DirectIndexedFile$Reader;

    .line 79
    const-string v0, "ChineseTelocation"

    const-string v1, "Read Telocation from assets"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 82
    goto :goto_1

    .line 80
    :catch_1
    move-exception v0

    .line 81
    const-string v0, "ChineseTelocation"

    const-string v1, "Can\'t read telocation.idf, NO mobile telocation supported!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_1
    :goto_1
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->FF:Lmiui/util/DirectIndexedFile$Reader;

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->FF:Lmiui/util/DirectIndexedFile$Reader;

    invoke-virtual {v0}, Lmiui/util/DirectIndexedFile$Reader;->getDataVersion()I

    move-result v0

    .line 86
    const-string v1, "ChineseTelocation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Telocation version :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_2
    return-void
.end method

.method static synthetic a(Lmiui/telephony/phonenumber/ChineseTelocationConverter;)Ljava/util/HashMap;
    .locals 0

    .line 21
    iget-object p0, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->FC:Ljava/util/HashMap;

    return-object p0
.end method

.method private a(Ljava/lang/String;Lmiui/telephony/phonenumber/ChineseTelocationConverter$DatFileRawReadListener;)V
    .locals 6

    .line 336
    nop

    .line 338
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 339
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 340
    nop

    .line 341
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 343
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    goto :goto_0

    .line 346
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, "version"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 347
    const-string v1, "ChineseTelocation"

    const-string v3, "%s version: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    aget-object v0, v0, v5

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    goto :goto_0

    .line 350
    :cond_1
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-interface {p2, v0}, Lmiui/telephony/phonenumber/ChineseTelocationConverter$DatFileRawReadListener;->b([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 352
    goto :goto_0

    .line 356
    :cond_2
    nop

    .line 358
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 356
    :catchall_0
    move-exception p1

    goto :goto_4

    .line 353
    :catch_0
    move-exception p1

    move-object v0, v2

    goto :goto_1

    .line 356
    :catchall_1
    move-exception p1

    move-object v2, v0

    goto :goto_4

    .line 353
    :catch_1
    move-exception p1

    .line 354
    :goto_1
    :try_start_3
    const-string p2, "ChineseTelocation"

    const-string v1, "Failed to getxiaomi_mobile.dat"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 356
    if-eqz v0, :cond_3

    .line 358
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 361
    :goto_2
    goto :goto_3

    .line 359
    :catch_2
    move-exception p1

    .line 360
    const-string p2, "ChineseTelocation"

    const-string v0, "Failed to close reader"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 364
    :cond_3
    :goto_3
    return-void

    .line 356
    :goto_4
    if-eqz v2, :cond_4

    .line 358
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 361
    goto :goto_5

    .line 359
    :catch_3
    move-exception p2

    .line 360
    const-string v0, "ChineseTelocation"

    const-string v1, "Failed to close reader"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    :cond_4
    :goto_5
    throw p1
.end method

.method static synthetic b(Lmiui/telephony/phonenumber/ChineseTelocationConverter;)Ljava/util/HashSet;
    .locals 0

    .line 21
    iget-object p0, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->FD:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic c(Lmiui/telephony/phonenumber/ChineseTelocationConverter;)Ljava/util/HashSet;
    .locals 0

    .line 21
    iget-object p0, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->FE:Ljava/util/HashSet;

    return-object p0
.end method

.method private cT()V
    .locals 2

    .line 301
    const-string v0, "operators.dat"

    new-instance v1, Lmiui/telephony/phonenumber/ChineseTelocationConverter$1;

    invoke-direct {v1, p0}, Lmiui/telephony/phonenumber/ChineseTelocationConverter$1;-><init>(Lmiui/telephony/phonenumber/ChineseTelocationConverter;)V

    invoke-direct {p0, v0, v1}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->a(Ljava/lang/String;Lmiui/telephony/phonenumber/ChineseTelocationConverter$DatFileRawReadListener;)V

    .line 307
    return-void
.end method

.method private cU()V
    .locals 2

    .line 310
    const-string v0, "xiaomi_mobile.dat"

    new-instance v1, Lmiui/telephony/phonenumber/ChineseTelocationConverter$2;

    invoke-direct {v1, p0}, Lmiui/telephony/phonenumber/ChineseTelocationConverter$2;-><init>(Lmiui/telephony/phonenumber/ChineseTelocationConverter;)V

    invoke-direct {p0, v0, v1}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->a(Ljava/lang/String;Lmiui/telephony/phonenumber/ChineseTelocationConverter$DatFileRawReadListener;)V

    .line 316
    return-void
.end method

.method private cV()V
    .locals 2

    .line 319
    const-string v0, "tel_uniqid_len8.dat"

    new-instance v1, Lmiui/telephony/phonenumber/ChineseTelocationConverter$3;

    invoke-direct {v1, p0}, Lmiui/telephony/phonenumber/ChineseTelocationConverter$3;-><init>(Lmiui/telephony/phonenumber/ChineseTelocationConverter;)V

    invoke-direct {p0, v0, v1}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->a(Ljava/lang/String;Lmiui/telephony/phonenumber/ChineseTelocationConverter$DatFileRawReadListener;)V

    .line 333
    return-void
.end method

.method public static getInstance()Lmiui/telephony/phonenumber/ChineseTelocationConverter;
    .locals 1

    .line 100
    sget-object v0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->FA:Lmiui/telephony/phonenumber/ChineseTelocationConverter;

    return-object v0
.end method

.method public static reloadInstance()V
    .locals 1

    .line 108
    new-instance v0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;

    invoke-direct {v0}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;-><init>()V

    sput-object v0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->FA:Lmiui/telephony/phonenumber/ChineseTelocationConverter;

    .line 109
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->FF:Lmiui/util/DirectIndexedFile$Reader;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->FF:Lmiui/util/DirectIndexedFile$Reader;

    invoke-virtual {v0}, Lmiui/util/DirectIndexedFile$Reader;->close()V

    .line 96
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 97
    return-void
.end method

.method public getAreaCode(Landroid/location/Address;)Ljava/lang/String;
    .locals 6

    .line 218
    if-eqz p1, :cond_6

    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->FF:Lmiui/util/DirectIndexedFile$Reader;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 222
    :cond_0
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->FB:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 223
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->FB:Ljava/util/HashMap;

    monitor-enter v0

    .line 224
    :try_start_0
    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->FB:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 225
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x3e8

    if-ge v2, v3, :cond_2

    .line 226
    iget-object v3, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->FF:Lmiui/util/DirectIndexedFile$Reader;

    invoke-virtual {v3, v1, v2, v1}, Lmiui/util/DirectIndexedFile$Reader;->get(III)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 227
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 228
    iget-object v4, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->FB:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 232
    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 235
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object p1

    .line 237
    const-string v1, "ChineseTelocation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adminArea:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " locality:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 240
    const-string v1, "\u7701"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 241
    const-string v1, "\u5e02"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 242
    const-string v1, "\u5e02"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 243
    const-string v1, "\u533a"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 244
    const-string v1, "\u53bf"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 245
    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->FB:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 246
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 247
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 248
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 250
    :cond_4
    goto :goto_2

    .line 252
    :cond_5
    const-string p1, ""

    return-object p1

    .line 219
    :cond_6
    :goto_3
    const-string p1, ""

    return-object p1
.end method

.method public getAreaCode(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->FF:Lmiui/util/DirectIndexedFile$Reader;

    if-nez v0, :cond_0

    .line 197
    const-string p1, ""

    return-object p1

    .line 199
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getUniqId(Ljava/lang/CharSequence;IIZ)I

    move-result p1

    .line 200
    iget-object p2, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->FF:Lmiui/util/DirectIndexedFile$Reader;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1, v0}, Lmiui/util/DirectIndexedFile$Reader;->get(III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getLocation(Ljava/lang/CharSequence;IIZ)Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->FF:Lmiui/util/DirectIndexedFile$Reader;

    if-nez v0, :cond_0

    .line 177
    const-string p1, ""

    return-object p1

    .line 181
    :cond_0
    if-nez p4, :cond_1

    .line 182
    const-string p1, ""

    return-object p1

    .line 185
    :cond_1
    const/4 p4, 0x1

    invoke-virtual {p0, p1, p2, p3, p4}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getUniqId(Ljava/lang/CharSequence;IIZ)I

    move-result p1

    .line 187
    if-gtz p1, :cond_2

    .line 188
    const-string p1, ""

    return-object p1

    .line 191
    :cond_2
    iget-object p2, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->FF:Lmiui/util/DirectIndexedFile$Reader;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1, p3}, Lmiui/util/DirectIndexedFile$Reader;->get(III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getOperator(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 3

    .line 262
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto/16 :goto_3

    .line 265
    :cond_0
    add-int/2addr p3, p2

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 266
    iget-object p2, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->FC:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    if-nez p2, :cond_2

    .line 267
    iget-object p2, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->FC:Ljava/util/HashMap;

    monitor-enter p2

    .line 268
    :try_start_0
    iget-object p3, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->FC:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result p3

    if-nez p3, :cond_1

    .line 269
    invoke-direct {p0}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->cT()V

    .line 271
    :cond_1
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 273
    :cond_2
    :goto_0
    const/4 p2, 0x0

    invoke-interface {p1, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p3

    .line 274
    sget-object v0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->Fz:Ljava/util/HashSet;

    invoke-virtual {v0, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_7

    .line 275
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    const/4 v0, 0x7

    if-ge p3, v0, :cond_3

    .line 276
    const-string p1, ""

    return-object p1

    .line 278
    :cond_3
    iget-object p3, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->FD:Ljava/util/HashSet;

    invoke-virtual {p3}, Ljava/util/HashSet;->size()I

    move-result p3

    if-nez p3, :cond_5

    .line 279
    iget-object p3, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->FD:Ljava/util/HashSet;

    monitor-enter p3

    .line 280
    :try_start_1
    iget-object v2, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->FD:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 281
    invoke-direct {p0}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->cU()V

    .line 283
    :cond_4
    monitor-exit p3

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 285
    :cond_5
    :goto_1
    iget-object p3, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->FD:Ljava/util/HashSet;

    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 286
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/miui/internal/R$string;->xiaomi_mobile:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 288
    :cond_6
    invoke-interface {p1, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p3

    goto :goto_2

    .line 289
    :cond_7
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_8

    invoke-interface {p1, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "1064"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 290
    invoke-interface {p1, p2, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p3

    .line 292
    :cond_8
    :goto_2
    iget-object p1, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->FC:Ljava/util/HashMap;

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 293
    iget-object p1, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->FC:Ljava/util/HashMap;

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 295
    :cond_9
    const-string p1, ""

    return-object p1

    .line 263
    :cond_a
    :goto_3
    const-string p1, ""

    return-object p1
.end method

.method public getUniqId(Ljava/lang/CharSequence;IIZ)I
    .locals 7

    .line 112
    const/16 v0, 0x30

    if-lez p3, :cond_0

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v0, :cond_0

    .line 113
    add-int/lit8 p2, p2, 0x1

    .line 114
    add-int/lit8 p3, p3, -0x1

    .line 116
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt p3, v2, :cond_1

    .line 117
    return v1

    .line 119
    :cond_1
    iget-object v3, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->FE:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 120
    iget-object v3, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->FE:Ljava/util/HashSet;

    monitor-enter v3

    .line 121
    :try_start_0
    iget-object v4, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->FE:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 122
    invoke-direct {p0}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->cV()V

    .line 124
    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 128
    :cond_3
    :goto_0
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    packed-switch v3, :pswitch_data_0

    .line 164
    const/4 p4, 0x2

    if-le p3, p4, :cond_b

    .line 166
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    sub-int/2addr p3, v0

    mul-int/2addr p3, v4

    add-int/lit8 v1, p2, 0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    sub-int/2addr v1, v0

    add-int/2addr p3, v1

    mul-int/2addr p3, v4

    add-int/2addr p2, p4

    .line 167
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    sub-int/2addr p1, v0

    add-int/2addr p3, p1

    .line 168
    return p3

    .line 161
    :pswitch_0
    const/16 p3, 0x14

    add-int/2addr p2, v2

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    sub-int/2addr p1, v0

    add-int/2addr p3, p1

    .line 162
    return p3

    .line 132
    :pswitch_1
    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v5, 0xd

    if-ne v3, v0, :cond_5

    if-eqz p4, :cond_4

    if-lt p3, v5, :cond_4

    add-int v3, p2, p3

    .line 133
    invoke-interface {p1, p2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "1064"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 135
    :cond_4
    return v4

    .line 136
    :cond_5
    if-eqz p4, :cond_b

    const/4 p4, 0x7

    if-lt p3, p4, :cond_b

    .line 138
    const v3, 0xf4240

    .line 139
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v0

    const v6, 0x186a0

    mul-int/2addr v2, v6

    add-int/2addr v3, v2

    add-int/lit8 v2, p2, 0x2

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v0

    mul-int/lit16 v2, v2, 0x2710

    add-int/2addr v3, v2

    add-int/lit8 v2, p2, 0x3

    .line 140
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v0

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v3, v2

    add-int/lit8 v2, p2, 0x4

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v3, v2

    add-int/lit8 v2, p2, 0x5

    .line 141
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v0

    mul-int/2addr v2, v4

    add-int/2addr v3, v2

    add-int/lit8 v2, p2, 0x6

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v0

    add-int/2addr v3, v2

    .line 142
    const v2, 0x150ead

    if-ne v3, v2, :cond_6

    if-le p3, v4, :cond_6

    add-int/lit8 v2, p2, 0x7

    .line 143
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v6, 0x38

    if-ne v2, v6, :cond_6

    add-int/lit8 v2, p2, 0x8

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v0, :cond_6

    add-int/lit8 v2, p2, 0x9

    .line 144
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v0, :cond_6

    add-int/lit8 v2, p2, 0xa

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v0, :cond_6

    .line 146
    return v1

    .line 148
    :cond_6
    const/16 v1, 0x8

    if-lt p3, v1, :cond_7

    iget-object v2, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->FE:Ljava/util/HashSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 150
    mul-int/lit8 v3, v3, 0xa

    add-int/2addr p2, p4

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    sub-int/2addr p1, v0

    add-int/2addr v3, p1

    goto :goto_1

    .line 151
    :cond_7
    if-lt p3, v5, :cond_a

    const p3, 0x1583d0

    if-lt v3, p3, :cond_8

    const p3, 0x15aadf

    if-le v3, p3, :cond_9

    :cond_8
    const p3, 0x103c40

    if-lt v3, p3, :cond_a

    const p3, 0x104027

    if-gt v3, p3, :cond_a

    .line 154
    :cond_9
    mul-int/lit8 v3, v3, 0x64

    add-int/lit8 p3, p2, 0x7

    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    sub-int/2addr p3, v0

    mul-int/2addr p3, v4

    add-int/2addr v3, p3

    add-int/2addr p2, v1

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    sub-int/2addr p1, v0

    add-int/2addr v3, p1

    .line 156
    :cond_a
    :goto_1
    return v3

    .line 130
    :pswitch_2
    nop

    .line 171
    :cond_b
    return v1

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getVersion()I
    .locals 1

    .line 371
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->FF:Lmiui/util/DirectIndexedFile$Reader;

    invoke-virtual {v0}, Lmiui/util/DirectIndexedFile$Reader;->getDataVersion()I

    move-result v0

    return v0
.end method

.method public parseAreaCode(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->FF:Lmiui/util/DirectIndexedFile$Reader;

    if-nez v0, :cond_0

    .line 206
    const-string p1, ""

    return-object p1

    .line 208
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getUniqId(Ljava/lang/CharSequence;IIZ)I

    move-result p1

    .line 209
    iget-object p2, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->FF:Lmiui/util/DirectIndexedFile$Reader;

    const/4 p3, 0x1

    invoke-virtual {p2, v0, p1, p3}, Lmiui/util/DirectIndexedFile$Reader;->get(III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
