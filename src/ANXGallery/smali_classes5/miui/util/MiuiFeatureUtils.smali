.class public Lmiui/util/MiuiFeatureUtils;
.super Ljava/lang/Object;
.source "MiuiFeatureUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/MiuiFeatureUtils$ConfigReader;,
        Lmiui/util/MiuiFeatureUtils$Features;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONFIG_FILE_PATH:Ljava/lang/String; = "/system/etc/miui_feature/default.conf"

.field public static final FEATURE_COMPLETE_ANIMATION:Ljava/lang/String; = "feature_complete_animation"

.field public static final FEATURE_RUNTIME_BLUR:Ljava/lang/String; = "feature_runtime_blur"

.field public static final FEATURE_THUMBNAIL:Ljava/lang/String; = "feature_thumbnail"

.field private static final LITE_CONFIG_FILE_PATH:Ljava/lang/String; = "/system/etc/miui_feature/lite.conf"

.field private static final MIUISDK_FEATURE_PREFIX:Ljava/lang/String; = "ro.sys."

.field private static final MIUISDK_KEY:Ljava/lang/String; = "miuisdk"

.field private static final PRPPERTY:Ljava/lang/String; = "persist.sys.miui_feature_config"

.field private static final SYSTEM_KEY:Ljava/lang/String; = "system"

.field private static final TAG:Ljava/lang/String; = "MiuiFeatureUtils"

.field private static sConfigFilePath:Ljava/lang/String;

.field private static sConfigResult:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sIsLiteMode:Z

.field private static sIsLiteModeSupported:Z

.field private static sMiuisdkConfigResult:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static sSystemConfigResult:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lmiui/util/MiuiFeatureUtils;->sIsLiteMode:Z

    .line 36
    sput-boolean v0, Lmiui/util/MiuiFeatureUtils;->sIsLiteModeSupported:Z

    .line 44
    :try_start_0
    invoke-static {}, Lmiui/util/MiuiFeatureUtils;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    goto :goto_0

    .line 45
    :catch_0
    move-exception v1

    .line 46
    .local v1, "e":Ljava/lang/Exception;
    sput-boolean v0, Lmiui/util/MiuiFeatureUtils;->sIsLiteModeSupported:Z

    .line 47
    const-string v0, "MiuiFeatureUtils"

    const-string v2, "Failed to initialize MiuiFeatureUtils!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static getLocalFeature(Landroid/content/Context;)Lmiui/util/MiuiFeatureUtils$Features;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, "pkg":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 321
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 323
    :cond_0
    sget-object v1, Lmiui/util/MiuiFeatureUtils;->sConfigResult:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 324
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 325
    sget-object v1, Lmiui/util/MiuiFeatureUtils;->sConfigResult:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 326
    .local v1, "features":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v2, Lmiui/util/MiuiFeatureUtils$Features;

    invoke-direct {v2, v1}, Lmiui/util/MiuiFeatureUtils$Features;-><init>(Ljava/util/HashMap;)V

    return-object v2

    .line 329
    .end local v1    # "features":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_1
    const-string v1, "MiuiFeatureUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get feature set for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 v1, 0x0

    return-object v1
.end method

.method private static init()V
    .locals 5

    .line 224
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/miui_feature/default.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v2, "/system/etc/miui_feature/lite.conf"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    sput-boolean v1, Lmiui/util/MiuiFeatureUtils;->sIsLiteModeSupported:Z

    .line 230
    :cond_0
    const-string v0, "persist.sys.miui_feature_config"

    invoke-static {v0}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 232
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    sput-object v0, Lmiui/util/MiuiFeatureUtils;->sConfigFilePath:Ljava/lang/String;

    .line 236
    :cond_1
    sget-object v2, Lmiui/util/MiuiFeatureUtils;->sConfigFilePath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 237
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/etc/miui_feature/default.conf"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 238
    const-string v2, "/system/etc/miui_feature/default.conf"

    sput-object v2, Lmiui/util/MiuiFeatureUtils;->sConfigFilePath:Ljava/lang/String;

    .line 242
    :cond_2
    sget-object v2, Lmiui/util/MiuiFeatureUtils;->sConfigFilePath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 243
    new-instance v2, Lmiui/util/MiuiFeatureUtils$ConfigReader;

    sget-object v3, Lmiui/util/MiuiFeatureUtils;->sConfigFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Lmiui/util/MiuiFeatureUtils$ConfigReader;-><init>(Ljava/lang/String;)V

    .line 244
    .local v2, "reader":Lmiui/util/MiuiFeatureUtils$ConfigReader;
    invoke-virtual {v2}, Lmiui/util/MiuiFeatureUtils$ConfigReader;->parse()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 245
    invoke-virtual {v2}, Lmiui/util/MiuiFeatureUtils$ConfigReader;->getConfigResult()Ljava/util/HashMap;

    move-result-object v3

    sput-object v3, Lmiui/util/MiuiFeatureUtils;->sConfigResult:Ljava/util/HashMap;

    .line 246
    sget-object v3, Lmiui/util/MiuiFeatureUtils;->sConfigResult:Ljava/util/HashMap;

    if-eqz v3, :cond_3

    .line 247
    sget-object v3, Lmiui/util/MiuiFeatureUtils;->sConfigResult:Ljava/util/HashMap;

    const-string v4, "system"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    sput-object v3, Lmiui/util/MiuiFeatureUtils;->sSystemConfigResult:Ljava/util/HashMap;

    .line 248
    sget-object v3, Lmiui/util/MiuiFeatureUtils;->sConfigResult:Ljava/util/HashMap;

    const-string v4, "miuisdk"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    sput-object v3, Lmiui/util/MiuiFeatureUtils;->sMiuisdkConfigResult:Ljava/util/HashMap;

    .line 251
    :cond_3
    const-string v3, "/system/etc/miui_feature/lite.conf"

    sget-object v4, Lmiui/util/MiuiFeatureUtils;->sConfigFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 252
    sput-boolean v1, Lmiui/util/MiuiFeatureUtils;->sIsLiteMode:Z

    .line 254
    :cond_4
    const-string v1, "MiuiFeatureUtils"

    const-string v3, "Loaded and parsed feature configure file successfully"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .end local v2    # "reader":Lmiui/util/MiuiFeatureUtils$ConfigReader;
    :cond_5
    return-void
.end method

.method public static isLiteMode()Z
    .locals 1

    .line 339
    sget-boolean v0, Lmiui/util/MiuiFeatureUtils;->sIsLiteMode:Z

    return v0
.end method

.method public static isLiteModeSupported()Z
    .locals 1

    .line 348
    sget-boolean v0, Lmiui/util/MiuiFeatureUtils;->sIsLiteModeSupported:Z

    return v0
.end method

.method public static isLocalFeatureSupported(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 289
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    return p2

    .line 292
    :cond_0
    const/4 v0, 0x0

    .line 293
    .local v0, "pkg":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 294
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 296
    :cond_1
    sget-object v1, Lmiui/util/MiuiFeatureUtils;->sConfigResult:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    .line 297
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 298
    sget-object v1, Lmiui/util/MiuiFeatureUtils;->sConfigResult:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 299
    .local v1, "features":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz v1, :cond_2

    .line 300
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 301
    .local v2, "result":Ljava/lang/Boolean;
    if-eqz v2, :cond_2

    .line 302
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 307
    .end local v1    # "features":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v2    # "result":Ljava/lang/Boolean;
    :cond_2
    const-string v1, "MiuiFeatureUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get feature "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return p2
.end method

.method public static isSystemFeatureSupported(Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "feature"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .line 267
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    return p1

    .line 270
    :cond_0
    sget-object v0, Lmiui/util/MiuiFeatureUtils;->sSystemConfigResult:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 271
    sget-object v0, Lmiui/util/MiuiFeatureUtils;->sSystemConfigResult:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 272
    .local v0, "result":Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    .line 273
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 276
    .end local v0    # "result":Ljava/lang/Boolean;
    :cond_1
    const-string v0, "MiuiFeatureUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get system feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return p1
.end method

.method public static setMiuisdkProperties()V
    .locals 6

    .line 359
    sget-object v0, Lmiui/util/MiuiFeatureUtils;->sMiuisdkConfigResult:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 360
    return-void

    .line 364
    :cond_0
    :try_start_0
    sget-object v0, Lmiui/util/MiuiFeatureUtils;->sMiuisdkConfigResult:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 365
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 366
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 367
    .local v3, "value":Ljava/lang/Boolean;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v3, :cond_1

    .line 368
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ro.sys."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmiui/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Boolean;
    :cond_1
    goto :goto_0

    .line 373
    :cond_2
    goto :goto_1

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiFeatureUtils"

    const-string v2, "Failed to set miui sdk features."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
