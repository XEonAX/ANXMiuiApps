.class public Lcom/miui/gallery/preference/MemoryPreferenceHelper;
.super Ljava/lang/Object;
.source "MemoryPreferenceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/preference/MemoryPreferenceHelper$SingletonHolder;
    }
.end annotation


# instance fields
.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/miui/gallery/preference/MemoryPreferencesImpl;

    invoke-direct {v0}, Lcom/miui/gallery/preference/MemoryPreferencesImpl;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/preference/MemoryPreferenceHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 16
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/preference/MemoryPreferenceHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/preference/MemoryPreferenceHelper$1;

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/miui/gallery/preference/MemoryPreferenceHelper;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Lcom/miui/gallery/preference/MemoryPreferenceHelper;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 76
    return-void
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .prologue
    .line 51
    invoke-static {}, Lcom/miui/gallery/preference/MemoryPreferenceHelper;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 35
    invoke-static {}, Lcom/miui/gallery/preference/MemoryPreferenceHelper;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/miui/gallery/preference/MemoryPreferenceHelper$SingletonHolder;->access$100()Lcom/miui/gallery/preference/MemoryPreferenceHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/gallery/preference/MemoryPreferenceHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static putBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Z

    .prologue
    .line 47
    invoke-static {}, Lcom/miui/gallery/preference/MemoryPreferenceHelper;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 48
    return-void
.end method

.method public static putInt(Ljava/lang/String;I)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 31
    invoke-static {}, Lcom/miui/gallery/preference/MemoryPreferenceHelper;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 32
    return-void
.end method
