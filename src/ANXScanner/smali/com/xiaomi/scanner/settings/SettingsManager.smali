.class public Lcom/xiaomi/scanner/settings/SettingsManager;
.super Ljava/lang/Object;
.source "SettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/settings/SettingsManager$OnSettingChangedListener;
    }
.end annotation


# static fields
.field public static final CAMERA_SCOPE_PREFIX:Ljava/lang/String; = "_preferences_camera_"

.field public static final MODULE_SCOPE_PREFIX:Ljava/lang/String; = "_preferences_module_"

.field public static final SCOPE_GLOBAL:Ljava/lang/String; = "default_scope"

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCustomPreferences:Landroid/content/SharedPreferences;

.field private final mDefaultPreferences:Landroid/content/SharedPreferences;

.field private final mDefaultsStore:Lcom/xiaomi/scanner/settings/DefaultsStore;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/scanner/settings/SettingsManager$OnSettingChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageName:Ljava/lang/String;

.field private final mSharedPreferenceListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "SettingsManager"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/settings/SettingsManager;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/xiaomi/scanner/settings/DefaultsStore;

    invoke-direct {v0}, Lcom/xiaomi/scanner/settings/DefaultsStore;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mDefaultsStore:Lcom/xiaomi/scanner/settings/DefaultsStore;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mListeners:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mSharedPreferenceListeners:Ljava/util/List;

    .line 85
    iput-object p1, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mContext:Landroid/content/Context;

    .line 86
    iget-object v0, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mPackageName:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mDefaultPreferences:Landroid/content/SharedPreferences;

    .line 89
    return-void
.end method

.method static convert(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 508
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static convert(J)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 519
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static convert(Z)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Z

    .prologue
    .line 530
    if-eqz p0, :cond_0

    const-string v0, "1"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public static getCameraSettingScope(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "cameraIdValue"    # Ljava/lang/String;

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_preferences_camera_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "moduleScopeNamespace"    # Ljava/lang/String;

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_preferences_module_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPreferencesFromScope(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 1
    .param p1, "scope"    # Ljava/lang/String;

    .prologue
    .line 241
    const-string v0, "default_scope"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mDefaultPreferences:Landroid/content/SharedPreferences;

    .line 249
    :goto_0
    return-object v0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mCustomPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mCustomPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/settings/SettingsManager;->closePreferences(Landroid/content/SharedPreferences;)V

    .line 248
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/settings/SettingsManager;->openPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mCustomPreferences:Landroid/content/SharedPreferences;

    .line 249
    iget-object v0, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mCustomPreferences:Landroid/content/SharedPreferences;

    goto :goto_0
.end method

.method private getSharedPreferenceListener(Lcom/xiaomi/scanner/settings/SettingsManager$OnSettingChangedListener;)Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    .locals 1
    .param p1, "listener"    # Lcom/xiaomi/scanner/settings/SettingsManager$OnSettingChangedListener;

    .prologue
    .line 153
    new-instance v0, Lcom/xiaomi/scanner/settings/SettingsManager$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/scanner/settings/SettingsManager$1;-><init>(Lcom/xiaomi/scanner/settings/SettingsManager;Lcom/xiaomi/scanner/settings/SettingsManager$OnSettingChangedListener;)V

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/xiaomi/scanner/settings/SettingsManager$OnSettingChangedListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/xiaomi/scanner/settings/SettingsManager$OnSettingChangedListener;

    .prologue
    .line 167
    if-nez p1, :cond_0

    .line 168
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "OnSettingChangedListener cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/settings/SettingsManager;->getSharedPreferenceListener(Lcom/xiaomi/scanner/settings/SettingsManager$OnSettingChangedListener;)Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    move-result-object v0

    .line 178
    .local v0, "sharedPreferenceListener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    iget-object v1, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mSharedPreferenceListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v1, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mDefaultPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 181
    iget-object v1, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mCustomPreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_2

    .line 182
    iget-object v1, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mCustomPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 185
    :cond_2
    sget-object v1, Lcom/xiaomi/scanner/settings/SettingsManager;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listeners: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mListeners:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected closePreferences(Landroid/content/SharedPreferences;)V
    .locals 3
    .param p1, "preferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 128
    iget-object v1, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mSharedPreferenceListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 129
    .local v0, "listener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_0

    .line 131
    .end local v0    # "listener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    :cond_0
    return-void
.end method

.method public getBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 375
    invoke-virtual {p0, p2}, Lcom/xiaomi/scanner/settings/SettingsManager;->getBooleanDefault(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/scanner/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .prologue
    .line 365
    if-eqz p3, :cond_0

    const-string v0, "1"

    .line 366
    .local v0, "defaultValueString":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/scanner/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 365
    .end local v0    # "defaultValueString":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    const-string v0, "0"

    goto :goto_0

    .line 367
    .restart local v0    # "defaultValueString":Ljava/lang/String;
    .restart local v1    # "value":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getBooleanDefault(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 305
    iget-object v2, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mDefaultsStore:Lcom/xiaomi/scanner/settings/DefaultsStore;

    invoke-virtual {v2, p1}, Lcom/xiaomi/scanner/settings/DefaultsStore;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "defaultValueString":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 307
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getDefaultPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mDefaultPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getIndexOfCurrentValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 390
    iget-object v3, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mDefaultsStore:Lcom/xiaomi/scanner/settings/DefaultsStore;

    invoke-virtual {v3, p2}, Lcom/xiaomi/scanner/settings/DefaultsStore;->getPossibleValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 391
    .local v1, "possibleValues":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-nez v3, :cond_1

    .line 392
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No possible values for scope="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 396
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/scanner/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 397
    .local v2, "value":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_3

    .line 398
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 399
    return v0

    .line 397
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 402
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current value for scope="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not in list of possible values"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getInteger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 342
    invoke-virtual {p0, p2}, Lcom/xiaomi/scanner/settings/SettingsManager;->getIntegerDefault(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/scanner/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 3
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/Integer;

    .prologue
    .line 332
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "defaultValueString":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/scanner/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public getIntegerDefault(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 297
    iget-object v1, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mDefaultsStore:Lcom/xiaomi/scanner/settings/DefaultsStore;

    invoke-virtual {v1, p1}, Lcom/xiaomi/scanner/settings/DefaultsStore;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "defaultValueString":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 6
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/Long;

    .prologue
    .line 350
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "defaultValueString":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/scanner/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 353
    .local v2, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    .line 356
    .end local p3    # "defaultValue":Ljava/lang/Long;
    :goto_0
    return-object p3

    .line 354
    .restart local p3    # "defaultValue":Ljava/lang/Long;
    :catch_0
    move-exception v1

    .line 355
    .local v1, "e":Ljava/lang/NumberFormatException;
    sget-object v3, Lcom/xiaomi/scanner/settings/SettingsManager;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLong error, key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 324
    invoke-virtual {p0, p2}, Lcom/xiaomi/scanner/settings/SettingsManager;->getStringDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/scanner/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/settings/SettingsManager;->getPreferencesFromScope(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 316
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getStringDefault(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mDefaultsStore:Lcom/xiaomi/scanner/settings/DefaultsStore;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/settings/DefaultsStore;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDefault(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 487
    invoke-virtual {p0, p2}, Lcom/xiaomi/scanner/settings/SettingsManager;->getStringDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, "defaultValue":Ljava/lang/String;
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/scanner/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 489
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public isSet(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 478
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/settings/SettingsManager;->getPreferencesFromScope(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 479
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method protected openPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 5
    .param p1, "scope"    # Ljava/lang/String;

    .prologue
    .line 107
    iget-object v2, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 110
    .local v1, "preferences":Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mSharedPreferenceListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 111
    .local v0, "listener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_0

    .line 114
    .end local v0    # "listener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    :cond_0
    return-object v1
.end method

.method public remove(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 496
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/settings/SettingsManager;->getPreferencesFromScope(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 497
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 498
    return-void
.end method

.method public removeAllListeners()V
    .locals 3

    .prologue
    .line 221
    iget-object v1, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mSharedPreferenceListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 222
    .local v0, "listener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    iget-object v2, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mDefaultPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 224
    iget-object v2, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mCustomPreferences:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    .line 225
    iget-object v2, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mCustomPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_0

    .line 228
    .end local v0    # "listener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mSharedPreferenceListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 229
    iget-object v1, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 230
    return-void
.end method

.method public removeListener(Lcom/xiaomi/scanner/settings/SettingsManager$OnSettingChangedListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaomi/scanner/settings/SettingsManager$OnSettingChangedListener;

    .prologue
    .line 193
    if-nez p1, :cond_0

    .line 194
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 197
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mListeners:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 214
    :cond_1
    :goto_0
    return-void

    .line 201
    :cond_2
    iget-object v2, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mListeners:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 202
    .local v0, "index":I
    iget-object v2, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mListeners:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 204
    iget-object v2, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mSharedPreferenceListeners:Ljava/util/List;

    .line 205
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 206
    .local v1, "sharedPreferenceListener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    iget-object v2, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mSharedPreferenceListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 207
    iget-object v2, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mDefaultPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 210
    iget-object v2, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mCustomPreferences:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_1

    .line 211
    iget-object v2, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mCustomPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 420
    invoke-static {p3}, Lcom/xiaomi/scanner/settings/SettingsManager;->convert(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/scanner/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 428
    invoke-static {p3, p4}, Lcom/xiaomi/scanner/settings/SettingsManager;->convert(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/scanner/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 411
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/settings/SettingsManager;->getPreferencesFromScope(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 412
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 413
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .prologue
    .line 437
    invoke-static {p3}, Lcom/xiaomi/scanner/settings/SettingsManager;->convert(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/scanner/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method public setDefaults(Ljava/lang/String;I[I)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .param p3, "possibleValues"    # [I

    .prologue
    .line 267
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "defaultValueString":Ljava/lang/String;
    array-length v3, p3

    new-array v2, v3, [Ljava/lang/String;

    .line 269
    .local v2, "possibleValuesString":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p3

    if-ge v1, v3, :cond_0

    .line 270
    aget v3, p3, v1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 272
    :cond_0
    iget-object v3, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mDefaultsStore:Lcom/xiaomi/scanner/settings/DefaultsStore;

    invoke-virtual {v3, p1, v0, v2}, Lcom/xiaomi/scanner/settings/DefaultsStore;->storeDefaults(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public setDefaults(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "possibleValues"    # [Ljava/lang/String;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mDefaultsStore:Lcom/xiaomi/scanner/settings/DefaultsStore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/scanner/settings/DefaultsStore;->storeDefaults(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method public setDefaults(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 281
    if-eqz p2, :cond_0

    const-string v0, "1"

    .line 282
    .local v0, "defaultValueString":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "1"

    aput-object v3, v1, v2

    .line 283
    .local v1, "possibleValues":[Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mDefaultsStore:Lcom/xiaomi/scanner/settings/DefaultsStore;

    invoke-virtual {v2, p1, v0, v1}, Lcom/xiaomi/scanner/settings/DefaultsStore;->storeDefaults(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 284
    return-void

    .line 281
    .end local v0    # "defaultValueString":Ljava/lang/String;
    .end local v1    # "possibleValues":[Ljava/lang/String;
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public setToDefault(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 444
    invoke-virtual {p0, p2}, Lcom/xiaomi/scanner/settings/SettingsManager;->getStringDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/scanner/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    return-void
.end method

.method public setValueByIndex(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "index"    # I

    .prologue
    .line 460
    iget-object v1, p0, Lcom/xiaomi/scanner/settings/SettingsManager;->mDefaultsStore:Lcom/xiaomi/scanner/settings/DefaultsStore;

    invoke-virtual {v1, p2}, Lcom/xiaomi/scanner/settings/DefaultsStore;->getPossibleValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, "possibleValues":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 462
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No possible values for scope="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 466
    :cond_0
    if-ltz p3, :cond_1

    array-length v1, v0

    if-ge p3, v1, :cond_1

    .line 467
    aget-object v1, v0, p3

    invoke-virtual {p0, p1, p2, v1}, Lcom/xiaomi/scanner/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    return-void

    .line 469
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "For possible values of scope="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
