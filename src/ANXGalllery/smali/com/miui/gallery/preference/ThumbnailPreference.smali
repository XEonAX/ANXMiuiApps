.class public Lcom/miui/gallery/preference/ThumbnailPreference;
.super Ljava/lang/Object;
.source "ThumbnailPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/preference/ThumbnailPreference$SingletonHolder;
    }
.end annotation


# instance fields
.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.miui.gallery_thumbnails"

    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/preference/ThumbnailPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 19
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/preference/ThumbnailPreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/preference/ThumbnailPreference$1;

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/miui/gallery/preference/ThumbnailPreference;-><init>()V

    return-void
.end method

.method public static clear()Z
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/miui/gallery/preference/ThumbnailPreference;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public static containsThumbnailKey(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-static {}, Lcom/miui/gallery/preference/ThumbnailPreference;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static getPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/miui/gallery/preference/ThumbnailPreference$SingletonHolder;->access$100()Lcom/miui/gallery/preference/ThumbnailPreference;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/gallery/preference/ThumbnailPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static putThumbnailKey(Ljava/lang/String;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-static {}, Lcom/miui/gallery/preference/ThumbnailPreference;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 27
    return-void
.end method
