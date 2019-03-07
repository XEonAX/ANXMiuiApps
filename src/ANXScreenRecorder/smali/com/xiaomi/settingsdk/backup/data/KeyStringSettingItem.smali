.class public Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;
.super Lcom/xiaomi/settingsdk/backup/data/SettingItem;
.source "KeyStringSettingItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/settingsdk/backup/data/SettingItem",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE:Ljava/lang/String; = "string"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem$1;

    invoke-direct {v0}, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem$1;-><init>()V

    sput-object v0, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;-><init>()V

    return-void
.end method


# virtual methods
.method protected getJsonValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "string"

    return-object v0
.end method

.method protected setValueFromJson(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 34
    const-string v0, "value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;->setValue(Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method protected bridge synthetic stringToValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;->stringToValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected stringToValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "rawValue"    # Ljava/lang/String;

    .prologue
    .line 16
    return-object p1
.end method

.method protected bridge synthetic valueToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;->valueToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected valueToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "actualValue"    # Ljava/lang/String;

    .prologue
    .line 22
    return-object p1
.end method
