.class Lmiui/text/ChinesePinyinConverter$ChinesePinyinDictionary;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/text/ChinesePinyinConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChinesePinyinDictionary"
.end annotation


# static fields
.field private static final Gf:Ljava/lang/String; = "pinyinindex.idf"


# instance fields
.field private Gg:Lmiui/util/DirectIndexedFile$Reader;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "pinyinindex.idf"

    .line 441
    invoke-static {v0, v1}, Lcom/miui/internal/util/DirectIndexedFileExtractor;->getDirectIndexedFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 444
    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    :try_start_0
    invoke-static {v0}, Lmiui/util/DirectIndexedFile;->open(Ljava/lang/String;)Lmiui/util/DirectIndexedFile$Reader;

    move-result-object v0

    iput-object v0, p0, Lmiui/text/ChinesePinyinConverter$ChinesePinyinDictionary;->Gg:Lmiui/util/DirectIndexedFile$Reader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    goto :goto_0

    .line 447
    :catch_0
    move-exception v0

    .line 448
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 452
    :cond_0
    :goto_0
    iget-object v0, p0, Lmiui/text/ChinesePinyinConverter$ChinesePinyinDictionary;->Gg:Lmiui/util/DirectIndexedFile$Reader;

    if-nez v0, :cond_1

    .line 454
    :try_start_1
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 455
    const-string v1, "pinyinindex.idf"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lmiui/util/DirectIndexedFile;->open(Ljava/io/InputStream;)Lmiui/util/DirectIndexedFile$Reader;

    move-result-object v0

    iput-object v0, p0, Lmiui/text/ChinesePinyinConverter$ChinesePinyinDictionary;->Gg:Lmiui/util/DirectIndexedFile$Reader;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 459
    goto :goto_1

    .line 457
    :catch_1
    move-exception v0

    .line 458
    const-string v0, "ChinesePinyinConverter"

    const-string v1, "Init resource IOException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_1
    :goto_1
    return-void
.end method

.method synthetic constructor <init>(Lmiui/text/ChinesePinyinConverter$1;)V
    .locals 0

    .line 435
    invoke-direct {p0}, Lmiui/text/ChinesePinyinConverter$ChinesePinyinDictionary;-><init>()V

    return-void
.end method


# virtual methods
.method public a(C)[Ljava/lang/String;
    .locals 3

    .line 464
    iget-object v0, p0, Lmiui/text/ChinesePinyinConverter$ChinesePinyinDictionary;->Gg:Lmiui/util/DirectIndexedFile$Reader;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 465
    return-object v1

    .line 467
    :cond_0
    add-int/lit16 p1, p1, -0x4e00

    .line 468
    iget-object v0, p0, Lmiui/text/ChinesePinyinConverter$ChinesePinyinDictionary;->Gg:Lmiui/util/DirectIndexedFile$Reader;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v2}, Lmiui/util/DirectIndexedFile$Reader;->get(III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 469
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    const-string p1, "ChinesePinyinConverter"

    const-string v0, "The ChinesePinyinConverter dictionary is not correct, need rebuild or reset the ROM."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    return-object v1

    .line 473
    :cond_1
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 479
    iget-object v0, p0, Lmiui/text/ChinesePinyinConverter$ChinesePinyinDictionary;->Gg:Lmiui/util/DirectIndexedFile$Reader;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lmiui/text/ChinesePinyinConverter$ChinesePinyinDictionary;->Gg:Lmiui/util/DirectIndexedFile$Reader;

    invoke-virtual {v0}, Lmiui/util/DirectIndexedFile$Reader;->close()V

    .line 482
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 483
    return-void
.end method
