.class public Lcom/xiaomi/scanner/translation/TranslateModel;
.super Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;
.source "TranslateModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback",
        "<",
        "Lcom/xiaomi/scanner/translation/bean/TranslateResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final KEY_TIME_SRC_LANG:Ljava/lang/String; = "keyRealTimeSrcLang2"

.field public static final KEY_TIME_TRANSLATE_DES_LANG:Ljava/lang/String; = "keyRealTimeDesLang"

.field public static final SERVER_MAX:I = 0x4b0

.field private static instance:Lcom/xiaomi/scanner/translation/TranslateModel;


# instance fields
.field private callback:Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback",
            "<",
            "Lcom/xiaomi/scanner/translation/bean/TranslateResult;",
            ">;"
        }
    .end annotation
.end field

.field private desLangCode:Ljava/lang/String;

.field private desLangList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private langMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTranslateImageRealHeight:F

.field private mTranslateWorkType:I

.field private scaleX:F

.field private scaleY:F

.field private srcLangCode:Ljava/lang/String;

.field private srcLangList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/scanner/translation/TranslateModel;->instance:Lcom/xiaomi/scanner/translation/TranslateModel;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 55
    invoke-direct {p0}, Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;-><init>()V

    .line 35
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/xiaomi/scanner/translation/TranslateModel;->langMap:Ljava/util/Map;

    .line 37
    iput v4, p0, Lcom/xiaomi/scanner/translation/TranslateModel;->scaleX:F

    iput v4, p0, Lcom/xiaomi/scanner/translation/TranslateModel;->scaleY:F

    .line 56
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0c0000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "defaultCodes":[Ljava/lang/String;
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "defaultLangs":[Ljava/lang/String;
    array-length v3, v0

    array-length v4, v1

    if-ne v3, v4, :cond_0

    .line 59
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 60
    iget-object v3, p0, Lcom/xiaomi/scanner/translation/TranslateModel;->langMap:Ljava/util/Map;

    aget-object v4, v0, v2

    aget-object v5, v1, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    .end local v2    # "i":I
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/xiaomi/scanner/translation/TranslateModel;->desLangList:Ljava/util/List;

    .line 64
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/xiaomi/scanner/translation/TranslateModel;->srcLangList:Ljava/util/List;

    .line 65
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/translation/TranslateModel;->initLang([Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/translation/TranslateModel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/translation/TranslateModel;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslateModel;->srcLangCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/scanner/translation/TranslateModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/translation/TranslateModel;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/scanner/translation/TranslateModel;->saveToLocal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaomi/scanner/translation/TranslateModel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/translation/TranslateModel;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslateModel;->desLangCode:Ljava/lang/String;

    return-object v0
.end method

.method private getFromLocal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "TranslateModel"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 103
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance()Lcom/xiaomi/scanner/translation/TranslateModel;
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lcom/xiaomi/scanner/translation/TranslateModel;->instance:Lcom/xiaomi/scanner/translation/TranslateModel;

    if-nez v0, :cond_1

    .line 47
    const-class v1, Lcom/xiaomi/scanner/translation/TranslateModel;

    monitor-enter v1

    .line 48
    :try_start_0
    sget-object v0, Lcom/xiaomi/scanner/translation/TranslateModel;->instance:Lcom/xiaomi/scanner/translation/TranslateModel;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/xiaomi/scanner/translation/TranslateModel;

    invoke-direct {v0}, Lcom/xiaomi/scanner/translation/TranslateModel;-><init>()V

    sput-object v0, Lcom/xiaomi/scanner/translation/TranslateModel;->instance:Lcom/xiaomi/scanner/translation/TranslateModel;

    .line 51
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_1
    sget-object v0, Lcom/xiaomi/scanner/translation/TranslateModel;->instance:Lcom/xiaomi/scanner/translation/TranslateModel;

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getLangFromCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/TranslateModel;->langMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    .local v0, "lang":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 121
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/TranslateModel;->desLangList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "lang":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 123
    .restart local v0    # "lang":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private initLang([Ljava/lang/String;)V
    .locals 4
    .param p1, "defaultCodes"    # [Ljava/lang/String;

    .prologue
    .line 81
    const-string v2, "keyRealTimeDesLang"

    const-string v3, ""

    invoke-direct {p0, v2, v3}, Lcom/xiaomi/scanner/translation/TranslateModel;->getFromLocal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "saveLang":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    iput-object v0, p0, Lcom/xiaomi/scanner/translation/TranslateModel;->desLangCode:Ljava/lang/String;

    .line 87
    :goto_0
    const-string v2, "keyRealTimeSrcLang2"

    const-string v3, ""

    invoke-direct {p0, v2, v3}, Lcom/xiaomi/scanner/translation/TranslateModel;->getFromLocal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "saveSrc":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 89
    iput-object v1, p0, Lcom/xiaomi/scanner/translation/TranslateModel;->srcLangCode:Ljava/lang/String;

    .line 93
    :goto_1
    return-void

    .line 85
    .end local v1    # "saveSrc":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    aget-object v2, p1, v2

    iput-object v2, p0, Lcom/xiaomi/scanner/translation/TranslateModel;->desLangCode:Ljava/lang/String;

    goto :goto_0

    .line 91
    .restart local v1    # "saveSrc":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x1

    aget-object v2, p1, v2

    iput-object v2, p0, Lcom/xiaomi/scanner/translation/TranslateModel;->srcLangCode:Ljava/lang/String;

    goto :goto_1
.end method

.method private saveToLocal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "TranslateModel"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 97
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 98
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 99
    return-void
.end method


# virtual methods
.method public getChineseLangCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getCodeFromLang(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "desLang"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/TranslateModel;->langMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 166
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 167
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 171
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v2

    :cond_1
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0c0000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    goto :goto_0
.end method

.method public getDesLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslateModel;->desLangCode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/translation/TranslateModel;->getLangFromCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDesLangList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslateModel;->desLangList:Ljava/util/List;

    return-object v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/xiaomi/scanner/translation/TranslateModel;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/xiaomi/scanner/translation/TranslateModel;->scaleY:F

    return v0
.end method

.method public getSrcLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslateModel;->srcLangCode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/translation/TranslateModel;->getLangFromCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSrcLangList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslateModel;->srcLangList:Ljava/util/List;

    return-object v0
.end method

.method public getTranslateImageRealHeight()F
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/xiaomi/scanner/translation/TranslateModel;->mTranslateImageRealHeight:F

    return v0
.end method

.method public onFail(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;->onFail(I)V

    .line 159
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslateModel;->callback:Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslateModel;->callback:Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;->onFail(I)V

    .line 162
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/xiaomi/scanner/translation/bean/TranslateResult;)V
    .locals 2
    .param p1, "obj"    # Lcom/xiaomi/scanner/translation/bean/TranslateResult;

    .prologue
    .line 147
    iget v0, p1, Lcom/xiaomi/scanner/translation/bean/TranslateResult;->resultCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/scanner/translation/bean/TranslateResult;->getLineInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 148
    :cond_0
    iget v0, p1, Lcom/xiaomi/scanner/translation/bean/TranslateResult;->resultCode:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/translation/TranslateModel;->onFail(I)V

    .line 154
    :cond_1
    :goto_0
    return-void

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslateModel;->callback:Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslateModel;->callback:Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Lcom/xiaomi/scanner/translation/bean/TranslateResult;

    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/translation/TranslateModel;->onSuccess(Lcom/xiaomi/scanner/translation/bean/TranslateResult;)V

    return-void
.end method

.method public sendTranslate(Landroid/graphics/Bitmap;II)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "workType"    # I
    .param p3, "degree"    # I

    .prologue
    .line 131
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 132
    iput p2, p0, Lcom/xiaomi/scanner/translation/TranslateModel;->mTranslateWorkType:I

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/TranslateModel;->useLocalRotate()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 135
    invoke-static {p1, p3}, Lcom/xiaomi/scanner/util/PictureDecoder;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 137
    :cond_1
    const-string v0, "translate_server_req"

    invoke-static {v0}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslateModel;->srcLangCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/scanner/translation/TranslateModel;->desLangCode:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/TranslateModel;->useLocalRotate()Z

    move-result v2

    invoke-static {p1, p0, v0, v1, v2}, Lcom/xiaomi/scanner/util/HttpUtils;->asyncRealTimeTranslate(Landroid/graphics/Bitmap;Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 139
    return-void
.end method

.method public setCallback(Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback",
            "<",
            "Lcom/xiaomi/scanner/translation/bean/TranslateResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "callback":Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;, "Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback<Lcom/xiaomi/scanner/translation/bean/TranslateResult;>;"
    iput-object p1, p0, Lcom/xiaomi/scanner/translation/TranslateModel;->callback:Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;

    .line 128
    return-void
.end method

.method public setScaleX(F)V
    .locals 0
    .param p1, "scaleX"    # F

    .prologue
    .line 187
    iput p1, p0, Lcom/xiaomi/scanner/translation/TranslateModel;->scaleX:F

    .line 188
    return-void
.end method

.method public setScaleY(F)V
    .locals 0
    .param p1, "scaleY"    # F

    .prologue
    .line 191
    iput p1, p0, Lcom/xiaomi/scanner/translation/TranslateModel;->scaleY:F

    .line 192
    return-void
.end method

.method public setTranslateImageRealHeight(F)V
    .locals 0
    .param p1, "mTranslateImageRealHeight"    # F

    .prologue
    .line 199
    iput p1, p0, Lcom/xiaomi/scanner/translation/TranslateModel;->mTranslateImageRealHeight:F

    .line 200
    return-void
.end method

.method public updateLangs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "srcLang"    # Ljava/lang/String;
    .param p2, "desLang"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/translation/TranslateModel;->getCodeFromLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/TranslateModel;->srcLangCode:Ljava/lang/String;

    .line 108
    invoke-virtual {p0, p2}, Lcom/xiaomi/scanner/translation/TranslateModel;->getCodeFromLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/TranslateModel;->desLangCode:Ljava/lang/String;

    .line 109
    new-instance v0, Lcom/xiaomi/scanner/translation/TranslateModel$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/translation/TranslateModel$1;-><init>(Lcom/xiaomi/scanner/translation/TranslateModel;)V

    invoke-static {v0}, Lcom/xiaomi/scanner/util/ScannerThreadPool;->poolExecute(Ljava/lang/Runnable;)V

    .line 116
    return-void
.end method

.method public useLocalRotate()Z
    .locals 2

    .prologue
    .line 142
    iget v0, p0, Lcom/xiaomi/scanner/translation/TranslateModel;->mTranslateWorkType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
