.class public Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;
.super Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;
.source "KingSoftAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter$ScannerSubHandler;
    }
.end annotation


# static fields
.field private static final KING_SOFT_DEFINITION:I = 0x2

.field private static final KING_SOFT_DONE:I = 0x3

.field private static final KING_SOFT_IDLE:I = 0x0

.field private static final KING_SOFT_OCR:I = 0x1

.field private static final LAN_CHINESE:Ljava/lang/String; = "chinese_cn"

.field private static final LAN_ENGLISH:Ljava/lang/String; = "english"

.field private static final LAN_FRENCH:Ljava/lang/String; = "french"

.field private static final LAN_GERMAN:Ljava/lang/String; = "german"

.field private static final LAN_JAPANESE:Ljava/lang/String; = "japanese"

.field private static final LAN_KOREAN:Ljava/lang/String; = "korean"

.field private static final LAN_SPANISH:Ljava/lang/String; = "spanish"

.field private static final MSG_SUB_SCAN:I = 0x1

.field private static final NARROW_SPACE_STRING:Ljava/lang/String; = " [narrow] "

.field private static final NARROW_STRING:Ljava/lang/String; = "[narrow]"

.field private static final REMOVE_CHARACTERS:Ljava/util/regex/Pattern;

.field private static final SCAN_STATE_PAUSE:I = 0x12

.field private static final SCAN_STATE_START:I = 0x11

.field private static final SCAN_STATE_STOP:I = 0x13

.field private static final SIZE:I = 0x10000

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field private static sSupportedLanguagesPairs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private iCharRectBottom:[I

.field private iCharRectLeft:[I

.field private iCharRectRight:[I

.field private iCharRectTop:[I

.field private iDistance:[I

.field private mCibaOcrEngine:Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;

.field private mDebugTime:J

.field private mIKSCibaQueryResultListener:Lcom/kingsoft/iciba/powerwordocrjar/IKSCibaQueryResultListener;

.field private mLock:Ljava/lang/Object;

.field private mScanStatus:I

.field private mSubHandler:Landroid/os/Handler;

.field private mTempPath:Ljava/lang/String;

.field private mThread:Landroid/os/HandlerThread;

.field private mTranslationResult:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;

.field private mTranslationStatus:I

.field private rst:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 42
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "KingSoftAdapter"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    .line 44
    const-string v0, "[`~@#^&*+=|{}\\[\\]<>/~@#%\u2026\u2026&*\uff08\uff09\u2014\u2014+|{}\u3010\u3011]"

    .line 45
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->REMOVE_CHARACTERS:Ljava/util/regex/Pattern;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->sSupportedLanguagesPairs:Ljava/util/ArrayList;

    .line 81
    sget-object v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->sSupportedLanguagesPairs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->sSupportedLanguagesPairs:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;

    const-string v2, "english"

    const-string v3, "chinese_cn"

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->sSupportedLanguagesPairs:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;

    const-string v2, "chinese_cn"

    const-string v3, "english"

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->sSupportedLanguagesPairs:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;

    const-string v2, "japanese"

    const-string v3, "chinese_cn"

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->sSupportedLanguagesPairs:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;

    const-string v2, "french"

    const-string v3, "chinese_cn"

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->sSupportedLanguagesPairs:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;

    const-string v2, "spanish"

    const-string v3, "chinese_cn"

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->sSupportedLanguagesPairs:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;

    const-string v2, "german"

    const-string v3, "chinese_cn"

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->sSupportedLanguagesPairs:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;

    const-string v2, "korean"

    const-string v3, "chinese_cn"

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/scanner/settings/SettingsManager;Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settingsManager"    # Lcom/xiaomi/scanner/settings/SettingsManager;
    .param p3, "translationListener"    # Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationListener;

    .prologue
    const/high16 v1, 0x10000

    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;-><init>(Landroid/content/Context;Lcom/xiaomi/scanner/settings/SettingsManager;Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationListener;)V

    .line 71
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->rst:[B

    .line 72
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->iDistance:[I

    .line 73
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->iCharRectLeft:[I

    .line 74
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->iCharRectTop:[I

    .line 75
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->iCharRectRight:[I

    .line 76
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->iCharRectBottom:[I

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mTranslationStatus:I

    .line 93
    const/16 v0, 0x11

    iput v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mScanStatus:I

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mLock:Ljava/lang/Object;

    .line 217
    new-instance v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter$2;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter$2;-><init>(Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mIKSCibaQueryResultListener:Lcom/kingsoft/iciba/powerwordocrjar/IKSCibaQueryResultListener;

    .line 102
    invoke-direct {p0}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->checkSupportedPair()V

    .line 103
    invoke-direct {p0}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->setSupportedPairEntry()V

    .line 104
    return-void
.end method

.method static synthetic access$000()Lcom/xiaomi/scanner/debug/Log$Tag;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->getStatus()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->appendStatus(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->notifyTranslationDone()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;Lcom/xiaomi/scanner/translation/bean/ScanDataBean;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;
    .param p1, "x1"    # Lcom/xiaomi/scanner/translation/bean/ScanDataBean;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->scanInternal(Lcom/xiaomi/scanner/translation/bean/ScanDataBean;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mSubHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mSubHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$402(Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mScanStatus:I

    return p1
.end method

.method static synthetic access$500(Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$502(Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;
    .param p1, "x1"    # Landroid/os/HandlerThread;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mThread:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic access$600(Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;)J
    .locals 2
    .param p0, "x0"    # Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mDebugTime:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;)Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mTranslationResult:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;

    return-object v0
.end method

.method static synthetic access$800(Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->notifyTranslationFail()V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private appendStatus(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 212
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 213
    :try_start_0
    iget v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mTranslationStatus:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mTranslationStatus:I

    .line 214
    monitor-exit v1

    .line 215
    return-void

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private checkSupportedPair()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 295
    iget-object v3, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mSettingsManager:Lcom/xiaomi/scanner/settings/SettingsManager;

    const-string v4, "default_scope"

    const-string v5, "key_translation_long_source_lan"

    const-string v6, "english"

    invoke-virtual {v3, v4, v5, v6}, Lcom/xiaomi/scanner/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, "sourceValue":Ljava/lang/String;
    iget-object v3, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mSettingsManager:Lcom/xiaomi/scanner/settings/SettingsManager;

    const-string v4, "default_scope"

    const-string v5, "key_translation_long_dest_lan"

    const-string v6, "chinese_cn"

    invoke-virtual {v3, v4, v5, v6}, Lcom/xiaomi/scanner/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "destValue":Ljava/lang/String;
    sget-object v3, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->sSupportedLanguagesPairs:Ljava/util/ArrayList;

    new-instance v4, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;

    invoke-direct {v4, v2, v1}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->sSupportedLanguagesPairs:Ljava/util/ArrayList;

    .line 300
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 301
    sget-object v3, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->sSupportedLanguagesPairs:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;

    .line 302
    .local v0, "defPair":Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;
    sget-object v3, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->sSupportedLanguagesPairs:Ljava/util/ArrayList;

    new-instance v4, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;

    iget-object v5, v0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;->mSource:Ljava/lang/String;

    iget-object v6, v0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;->mDest:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 303
    iput-boolean v7, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mIsLanguageChoiceValid:Z

    .line 309
    .end local v0    # "defPair":Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;
    :cond_0
    :goto_0
    return-void

    .line 305
    .restart local v0    # "defPair":Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;
    :cond_1
    iget-object v3, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mSettingsManager:Lcom/xiaomi/scanner/settings/SettingsManager;

    const-string v4, "default_scope"

    const-string v5, "key_translation_long_source_lan"

    iget-object v6, v0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;->mSource:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/xiaomi/scanner/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v3, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mSettingsManager:Lcom/xiaomi/scanner/settings/SettingsManager;

    const-string v4, "default_scope"

    const-string v5, "key_translation_long_dest_lan"

    iget-object v6, v0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;->mDest:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/xiaomi/scanner/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getStatus()I
    .locals 2

    .prologue
    .line 200
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 201
    :try_start_0
    iget v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mTranslationStatus:I

    monitor-exit v1

    return v0

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private notifyTranslationDone()V
    .locals 2

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->getStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 269
    sget-object v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "notifyTranslationDone"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mTranslationListener:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationListener;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mTranslationListener:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationListener;

    invoke-interface {v0}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationListener;->onTranslationDone()V

    .line 273
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mTranslationResult:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;

    .line 274
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->setStatus(I)V

    .line 276
    :cond_1
    return-void
.end method

.method private notifyTranslationFail()V
    .locals 2

    .prologue
    .line 279
    sget-object v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "notifyTranslationFail"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mTranslationListener:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationListener;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mTranslationListener:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationListener;

    invoke-interface {v0}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationListener;->onTranslationDone()V

    .line 283
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mTranslationResult:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;

    .line 284
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->setStatus(I)V

    .line 285
    return-void
.end method

.method private declared-synchronized ocrProc(Lcom/xiaomi/scanner/translation/bean/ScanDataBean$ScanType;)V
    .locals 24
    .param p1, "type"    # Lcom/xiaomi/scanner/translation/bean/ScanDataBean$ScanType;

    .prologue
    .line 497
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->rst:[B

    if-nez v2, :cond_0

    .line 498
    sget-object v2, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v3, "skip ocr"

    invoke-static {v2, v3}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    :goto_0
    monitor-exit p0

    return-void

    .line 501
    :cond_0
    const/16 v2, 0x100

    :try_start_1
    new-array v8, v2, [I

    .line 502
    .local v8, "itemnum":[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v8, v2

    .line 503
    sget-object v2, Lcom/xiaomi/scanner/translation/bean/ScanDataBean$ScanType;->OCR:Lcom/xiaomi/scanner/translation/bean/ScanDataBean$ScanType;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->getOcrLanguageID()I

    move-result v4

    .line 504
    .local v4, "sourceLan":I
    :goto_1
    sget-object v2, Lcom/xiaomi/scanner/translation/bean/ScanDataBean$ScanType;->OCR:Lcom/xiaomi/scanner/translation/bean/ScanDataBean$ScanType;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_3

    move v5, v4

    .line 505
    .local v5, "destLan":I
    :goto_2
    sget-object v2, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ocr imagePath: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mTempPath:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 506
    sget-object v2, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ocr language:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "->"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 507
    sget-object v2, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ocr rect: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mOcrRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 511
    .local v22, "time":J
    new-instance v2, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;-><init>(Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mTranslationResult:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;

    .line 512
    sget-object v2, Lcom/xiaomi/scanner/translation/bean/ScanDataBean$ScanType;->TRANSLATE_POINT:Lcom/xiaomi/scanner/translation/bean/ScanDataBean$ScanType;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_5

    .line 513
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mTranslationResult:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->iDistance:[I

    const/4 v6, 0x0

    aget v2, v2, v6

    if-ltz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->iDistance:[I

    const/4 v6, 0x0

    aget v2, v2, v6

    const/16 v6, 0x50

    if-ge v2, v6, :cond_4

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v3, v2}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->setCredibility(Z)V

    .line 514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mCibaOcrEngine:Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mTempPath:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->rst:[B

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mOcrRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mOcrRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mOcrRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mOcrRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->iDistance:[I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->iCharRectLeft:[I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->iCharRectTop:[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->iCharRectRight:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->iCharRectBottom:[I

    invoke-virtual/range {v2 .. v15}, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->instantTransPoint(Ljava/lang/String;III[B[III[I[I[I[I[I)V

    .line 528
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->appendStatus(I)V

    .line 582
    :goto_4
    sget-object v2, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ocr cost="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v22

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " credibility="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->iDistance:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mTranslationListener:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationListener;

    if-eqz v2, :cond_1

    .line 586
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mTranslationListener:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mTranslationResult:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;

    move-object/from16 v0, p1

    invoke-interface {v2, v3, v0}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationListener;->onOcrDone(Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;Lcom/xiaomi/scanner/translation/bean/ScanDataBean$ScanType;)V

    .line 589
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->notifyTranslationDone()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 497
    .end local v4    # "sourceLan":I
    .end local v5    # "destLan":I
    .end local v8    # "itemnum":[I
    .end local v22    # "time":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 503
    .restart local v8    # "itemnum":[I
    :cond_2
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->getSourceID()I

    move-result v4

    goto/16 :goto_1

    .line 504
    .restart local v4    # "sourceLan":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->getDestID()I

    move-result v5

    goto/16 :goto_2

    .line 513
    .restart local v5    # "destLan":I
    .restart local v22    # "time":J
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 529
    :cond_5
    sget-object v2, Lcom/xiaomi/scanner/translation/bean/ScanDataBean$ScanType;->TRANSLATE_AREA:Lcom/xiaomi/scanner/translation/bean/ScanDataBean$ScanType;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_6

    .line 531
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mCibaOcrEngine:Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mTempPath:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->rst:[B

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mOcrRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mOcrRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mOcrRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mOcrRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->iDistance:[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->iCharRectLeft:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->iCharRectTop:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->iCharRectRight:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->iCharRectBottom:[I

    move-object/from16 v17, v0

    invoke-virtual/range {v2 .. v17}, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->instantTransArea(Ljava/lang/String;III[B[IIIII[I[I[I[I[I)V

    .line 547
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->appendStatus(I)V

    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mTranslationResult:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->setCredibility(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 550
    :try_start_3
    new-instance v20, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->rst:[B

    const/4 v3, 0x0

    const/4 v6, 0x0

    aget v6, v8, v6

    const-string v7, "UCS-2"

    move-object/from16 v0, v20

    invoke-direct {v0, v2, v3, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 551
    .local v20, "result":Ljava/lang/String;
    const-string v2, "\r\n"

    const-string v3, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    .line 552
    sget-object v2, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->REMOVE_CHARACTERS:Ljava/util/regex/Pattern;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v19

    .line 553
    .local v19, "m":Ljava/util/regex/Matcher;
    const-string v2, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 554
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mTranslationResult:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->setOcrResult(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    .line 555
    .end local v19    # "m":Ljava/util/regex/Matcher;
    .end local v20    # "result":Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 556
    .local v18, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v2, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ocr exception:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mTranslationResult:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->setCredibility(Z)V

    goto/16 :goto_4

    .line 561
    .end local v18    # "e":Ljava/lang/Exception;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mCibaOcrEngine:Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mTempPath:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->rst:[B

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mOcrRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mOcrRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mOcrRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mOcrRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->iDistance:[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->iCharRectLeft:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->iCharRectTop:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->iCharRectRight:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->iCharRectBottom:[I

    move-object/from16 v17, v0

    invoke-virtual/range {v2 .. v17}, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->instantRecogArea(Ljava/lang/String;III[B[IIIII[I[I[I[I[I)Ljava/lang/String;

    move-result-object v20

    .line 577
    .restart local v20    # "result":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mTranslationResult:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->setOcrResult(Ljava/lang/String;)V

    .line 578
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->setStatus(I)V

    .line 579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mTranslationResult:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->setCredibility(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_4
.end method

.method private saveData(Lcom/xiaomi/scanner/translation/bean/ScanDataBean;)Z
    .locals 4
    .param p1, "bean"    # Lcom/xiaomi/scanner/translation/bean/ScanDataBean;

    .prologue
    .line 482
    const/4 v1, 0x1

    .line 483
    .local v1, "recycleBitmap":Z
    const/4 v0, 0x0

    .line 484
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Lcom/xiaomi/scanner/translation/bean/ScanDataBean;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 485
    invoke-virtual {p1}, Lcom/xiaomi/scanner/translation/bean/ScanDataBean;->getCropRect()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 486
    invoke-virtual {p1}, Lcom/xiaomi/scanner/translation/bean/ScanDataBean;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaomi/scanner/translation/bean/ScanDataBean;->getCropRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/scanner/util/PictureDecoder;->cropBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 487
    invoke-virtual {p1, v0}, Lcom/xiaomi/scanner/translation/bean/ScanDataBean;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 491
    :goto_0
    const/4 v1, 0x0

    .line 493
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mTempPath:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/xiaomi/scanner/util/Util;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z

    move-result v2

    return v2

    .line 489
    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/scanner/translation/bean/ScanDataBean;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private scanInternal(Lcom/xiaomi/scanner/translation/bean/ScanDataBean;)V
    .locals 4
    .param p1, "bean"    # Lcom/xiaomi/scanner/translation/bean/ScanDataBean;

    .prologue
    .line 382
    sget-object v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "scanInternal"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 384
    invoke-direct {p0}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->getStatus()I

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    sget-object v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last translation is going on, mTranslationStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 418
    :goto_0
    return-void

    .line 388
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/scanner/translation/bean/ScanDataBean;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_4

    .line 389
    :cond_1
    sget-object v1, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scan data bean is null, bean="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " bitmap== null "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 390
    invoke-virtual {p1}, Lcom/xiaomi/scanner/translation/bean/ScanDataBean;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-static {v1, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 391
    invoke-direct {p0}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->notifyTranslationFail()V

    goto :goto_0

    .line 390
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const-string v0, ""

    goto :goto_2

    .line 394
    :cond_4
    iget v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mScanStatus:I

    const/16 v1, 0x11

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/xiaomi/scanner/translation/bean/ScanDataBean;->isScanPointType()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 395
    sget-object v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scan pause by user, mScanStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mScanStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 396
    invoke-direct {p0}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->notifyTranslationFail()V

    goto :goto_0

    .line 399
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mDebugTime:J

    .line 401
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->initTranslationEngine()V

    .line 402
    iget-boolean v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mIsEngineInitialized:Z

    if-nez v0, :cond_6

    .line 403
    sget-object v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TranslationEngine init fail, engine="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mCibaOcrEngine:Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 404
    invoke-direct {p0}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->notifyTranslationFail()V

    goto/16 :goto_0

    .line 409
    :cond_6
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->saveData(Lcom/xiaomi/scanner/translation/bean/ScanDataBean;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 410
    sget-object v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "save bitmap failed"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 411
    invoke-direct {p0}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->notifyTranslationFail()V

    goto/16 :goto_0

    .line 415
    :cond_7
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->setOcrRect(Lcom/xiaomi/scanner/translation/bean/ScanDataBean;)V

    .line 417
    invoke-virtual {p1}, Lcom/xiaomi/scanner/translation/bean/ScanDataBean;->getScanType()Lcom/xiaomi/scanner/translation/bean/ScanDataBean$ScanType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->ocrProc(Lcom/xiaomi/scanner/translation/bean/ScanDataBean$ScanType;)V

    goto/16 :goto_0
.end method

.method private setOcrRect(Lcom/xiaomi/scanner/translation/bean/ScanDataBean;)V
    .locals 4
    .param p1, "bean"    # Lcom/xiaomi/scanner/translation/bean/ScanDataBean;

    .prologue
    const/4 v3, 0x0

    .line 461
    const/4 v1, 0x0

    .line 462
    .local v1, "bitmapWidth":I
    const/4 v0, 0x0

    .line 463
    .local v0, "bitmapHeight":I
    invoke-virtual {p1}, Lcom/xiaomi/scanner/translation/bean/ScanDataBean;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 464
    invoke-virtual {p1}, Lcom/xiaomi/scanner/translation/bean/ScanDataBean;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 465
    invoke-virtual {p1}, Lcom/xiaomi/scanner/translation/bean/ScanDataBean;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 467
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mOcrRect:Landroid/graphics/Rect;

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 468
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mOcrRect:Landroid/graphics/Rect;

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 469
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mOcrRect:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 470
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mOcrRect:Landroid/graphics/Rect;

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 471
    return-void
.end method

.method private setStatus(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 206
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 207
    :try_start_0
    iput p1, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mTranslationStatus:I

    .line 208
    monitor-exit v1

    .line 209
    return-void

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setSupportedPairEntry()V
    .locals 3

    .prologue
    .line 288
    sget-object v1, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->sSupportedLanguagesPairs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;

    .line 289
    .local v0, "pair":Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;
    iget-object v2, v0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;->mSource:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->getLanguageEntryFromValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;->mSourceEntry:Ljava/lang/String;

    .line 290
    iget-object v2, v0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;->mDest:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->getLanguageEntryFromValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;->mDestEntry:Ljava/lang/String;

    goto :goto_0

    .line 292
    .end local v0    # "pair":Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 2

    .prologue
    .line 448
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->rst:[B

    .line 449
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->iDistance:[I

    .line 450
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->iCharRectLeft:[I

    .line 451
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->iCharRectTop:[I

    .line 452
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->iCharRectRight:[I

    .line 453
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->iCharRectBottom:[I

    .line 454
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mTranslationListener:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationListener;

    .line 455
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mCibaOcrEngine:Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mCibaOcrEngine:Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->setOnIKSCibaQueryResultListener(Lcom/kingsoft/iciba/powerwordocrjar/IKSCibaQueryResultListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    :cond_0
    monitor-exit p0

    return-void

    .line 448
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public finishCurrentTranslation()V
    .locals 3

    .prologue
    .line 474
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 475
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mTranslationResult:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mTranslationResult:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->setState(I)V

    .line 478
    :cond_0
    monitor-exit v1

    .line 479
    return-void

    .line 478
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllTranslatePairs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    sget-object v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->sSupportedLanguagesPairs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDestEntry()Ljava/lang/String;
    .locals 4

    .prologue
    .line 317
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mSettingsManager:Lcom/xiaomi/scanner/settings/SettingsManager;

    const-string v1, "default_scope"

    const-string v2, "key_translation_long_dest_lan"

    const-string v3, "chinese_cn"

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/scanner/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->getLanguageEntryFromValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDestID()I
    .locals 4

    .prologue
    .line 327
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mSettingsManager:Lcom/xiaomi/scanner/settings/SettingsManager;

    const-string v1, "default_scope"

    const-string v2, "key_translation_long_dest_lan"

    const-string v3, "chinese_cn"

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/scanner/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->getLanguageIdFromValues(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getOcrLanguageID()I
    .locals 4

    .prologue
    .line 332
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mSettingsManager:Lcom/xiaomi/scanner/settings/SettingsManager;

    const-string v2, "default_scope"

    const-string v3, "pref_document_ocr_language"

    .line 333
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isInternationalBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "english"

    .line 332
    :goto_0
    invoke-virtual {v1, v2, v3, v0}, Lcom/xiaomi/scanner/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->getLanguageIdFromValues(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 333
    :cond_0
    const-string v0, "chinese_cn"

    goto :goto_0
.end method

.method public getSelection(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "srcEntry"    # Ljava/lang/String;
    .param p2, "desEntry"    # Ljava/lang/String;

    .prologue
    .line 337
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->sSupportedLanguagesPairs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 338
    sget-object v2, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->sSupportedLanguagesPairs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;

    .line 339
    .local v1, "pair":Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;
    iget-object v2, v1, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;->mSourceEntry:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;->mDestEntry:Ljava/lang/String;

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 343
    .end local v0    # "i":I
    .end local v1    # "pair":Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;
    :goto_1
    return v0

    .line 337
    .restart local v0    # "i":I
    .restart local v1    # "pair":Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 343
    .end local v1    # "pair":Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getSourceEntry()Ljava/lang/String;
    .locals 4

    .prologue
    .line 312
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mSettingsManager:Lcom/xiaomi/scanner/settings/SettingsManager;

    const-string v1, "default_scope"

    const-string v2, "key_translation_long_source_lan"

    const-string v3, "english"

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/scanner/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->getLanguageEntryFromValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSourceID()I
    .locals 4

    .prologue
    .line 322
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mSettingsManager:Lcom/xiaomi/scanner/settings/SettingsManager;

    const-string v1, "default_scope"

    const-string v2, "key_translation_long_source_lan"

    const-string v3, "english"

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/scanner/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->getLanguageIdFromValues(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getVendorInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initScan()V
    .locals 2

    .prologue
    .line 165
    sget-object v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "initScan"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    :cond_0
    const/16 v0, 0x11

    iput v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mScanStatus:I

    .line 169
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TranslationEngine"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mThread:Landroid/os/HandlerThread;

    .line 170
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 171
    new-instance v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter$ScannerSubHandler;

    iget-object v1, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter$ScannerSubHandler;-><init>(Landroid/os/Looper;Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mSubHandler:Landroid/os/Handler;

    .line 173
    :cond_1
    return-void
.end method

.method public initTranslationEngine()V
    .locals 5

    .prologue
    .line 136
    iget-boolean v2, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mIsEngineInitialized:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 137
    :cond_0
    sget-object v2, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initTranslationEngine mIsEngineInitialized="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mIsEngineInitialized:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 162
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 141
    .local v1, "file":Ljava/io/File;
    if-nez v1, :cond_2

    .line 142
    sget-object v2, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v3, "initTranslationEngine null file"

    invoke-static {v2, v3}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/temp.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mTempPath:Ljava/lang/String;

    .line 149
    :try_start_0
    new-instance v2, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;

    iget-object v3, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mCibaOcrEngine:Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;

    .line 150
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mCibaOcrEngine:Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;

    iget-object v3, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mIKSCibaQueryResultListener:Lcom/kingsoft/iciba/powerwordocrjar/IKSCibaQueryResultListener;

    invoke-virtual {v2, v3}, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->setOnIKSCibaQueryResultListener(Lcom/kingsoft/iciba/powerwordocrjar/IKSCibaQueryResultListener;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 161
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mIsEngineInitialized:Z

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v2, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v3, "CibaOcrEngine"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 157
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v3, "CibaOcrEngine"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public pauseScan()V
    .locals 2

    .prologue
    .line 176
    sget-object v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "pauseScan"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mSubHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 178
    const/16 v0, 0x12

    iput v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mScanStatus:I

    .line 179
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mSubHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 181
    :cond_0
    return-void
.end method

.method protected processHyperLinkClick(Ljava/lang/String;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 421
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mCibaOcrEngine:Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;

    if-eqz v2, :cond_0

    .line 427
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mCibaOcrEngine:Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;

    iget-object v3, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, p1, v4, v5}, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->showDetailMeaning(Landroid/content/Context;Ljava/lang/String;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v3, "process Hyper link error, use broswer open it"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 430
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 431
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 433
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.iciba.com/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 434
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public scan(Lcom/xiaomi/scanner/translation/bean/ScanDataBean;)V
    .locals 2
    .param p1, "bean"    # Lcom/xiaomi/scanner/translation/bean/ScanDataBean;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 370
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TranslationEngine"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mThread:Landroid/os/HandlerThread;

    .line 371
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 372
    new-instance v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter$ScannerSubHandler;

    iget-object v1, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter$ScannerSubHandler;-><init>(Landroid/os/Looper;Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mSubHandler:Landroid/os/Handler;

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mSubHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 376
    const/16 v0, 0x11

    iput v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mScanStatus:I

    .line 377
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mSubHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 379
    :cond_2
    return-void
.end method

.method public setOcrLanguage(Ljava/lang/String;)V
    .locals 3
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 364
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mSettingsManager:Lcom/xiaomi/scanner/settings/SettingsManager;

    const-string v1, "default_scope"

    const-string v2, "pref_document_ocr_language"

    invoke-virtual {v0, v1, v2, p1}, Lcom/xiaomi/scanner/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method public stopScan()V
    .locals 2

    .prologue
    .line 184
    sget-object v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "stopScan"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 185
    new-instance v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter$1;-><init>(Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;)V

    invoke-static {v0}, Lcom/xiaomi/scanner/util/ScannerThreadPool;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 197
    return-void
.end method

.method public updateSelection(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "srcEntry"    # Ljava/lang/String;
    .param p2, "desEntry"    # Ljava/lang/String;

    .prologue
    .line 347
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->getSelection(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 348
    .local v1, "position":I
    if-ltz v1, :cond_0

    sget-object v2, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->sSupportedLanguagesPairs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 349
    sget-object v2, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->sSupportedLanguagesPairs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;

    .line 350
    .local v0, "pair":Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mSettingsManager:Lcom/xiaomi/scanner/settings/SettingsManager;

    const-string v3, "default_scope"

    const-string v4, "key_translation_long_source_lan"

    iget-object v5, v0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;->mSource:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/xiaomi/scanner/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mSettingsManager:Lcom/xiaomi/scanner/settings/SettingsManager;

    const-string v3, "default_scope"

    const-string v4, "key_translation_long_dest_lan"

    iget-object v5, v0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;->mDest:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/xiaomi/scanner/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const/4 v2, 0x1

    .line 354
    .end local v0    # "pair":Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
