.class Lcom/xiaomi/scanner/settings/SettingsManager$1;
.super Ljava/lang/Object;
.source "SettingsManager.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/settings/SettingsManager;->getSharedPreferenceListener(Lcom/xiaomi/scanner/settings/SettingsManager$OnSettingChangedListener;)Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/settings/SettingsManager;

.field final synthetic val$listener:Lcom/xiaomi/scanner/settings/SettingsManager$OnSettingChangedListener;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/settings/SettingsManager;Lcom/xiaomi/scanner/settings/SettingsManager$OnSettingChangedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/settings/SettingsManager;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/xiaomi/scanner/settings/SettingsManager$1;->this$0:Lcom/xiaomi/scanner/settings/SettingsManager;

    iput-object p2, p0, Lcom/xiaomi/scanner/settings/SettingsManager$1;->val$listener:Lcom/xiaomi/scanner/settings/SettingsManager$OnSettingChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/xiaomi/scanner/settings/SettingsManager$1;->val$listener:Lcom/xiaomi/scanner/settings/SettingsManager$OnSettingChangedListener;

    iget-object v1, p0, Lcom/xiaomi/scanner/settings/SettingsManager$1;->this$0:Lcom/xiaomi/scanner/settings/SettingsManager;

    invoke-interface {v0, v1, p2}, Lcom/xiaomi/scanner/settings/SettingsManager$OnSettingChangedListener;->onSettingChanged(Lcom/xiaomi/scanner/settings/SettingsManager;Ljava/lang/String;)V

    .line 158
    return-void
.end method
