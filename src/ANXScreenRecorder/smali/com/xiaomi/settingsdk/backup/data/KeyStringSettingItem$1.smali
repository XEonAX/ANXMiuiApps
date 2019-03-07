.class final Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem$1;
.super Ljava/lang/Object;
.source "KeyStringSettingItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 52
    new-instance v0, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;

    invoke-direct {v0}, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;-><init>()V

    .line 53
    .local v0, "obj":Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;
    invoke-virtual {v0, p1}, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;->fillFromParcel(Landroid/os/Parcel;)V

    .line 54
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 47
    new-array v0, p1, [Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem$1;->newArray(I)[Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;

    move-result-object v0

    return-object v0
.end method
