.class public Lcom/xiaomi/scanner/translation/adapter/TranslationAdapterFactory;
.super Ljava/lang/Object;
.source "TranslationAdapterFactory.java"


# static fields
.field public static final TRANSLATION_GOOGLE:I = 0x2

.field public static final TRANSLATION_KING:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdapter(Landroid/content/Context;Lcom/xiaomi/scanner/settings/SettingsManager;Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationListener;)Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settingsManager"    # Lcom/xiaomi/scanner/settings/SettingsManager;
    .param p2, "translationListener"    # Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationListener;

    .prologue
    .line 13
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapterFactory;->getAdapter(Landroid/content/Context;Lcom/xiaomi/scanner/settings/SettingsManager;Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationListener;I)Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static getAdapter(Landroid/content/Context;Lcom/xiaomi/scanner/settings/SettingsManager;Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationListener;I)Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settingsManager"    # Lcom/xiaomi/scanner/settings/SettingsManager;
    .param p2, "translationListener"    # Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationListener;
    .param p3, "type"    # I

    .prologue
    .line 18
    .line 23
    new-instance v0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;-><init>(Landroid/content/Context;Lcom/xiaomi/scanner/settings/SettingsManager;Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationListener;)V

    return-object v0
.end method
