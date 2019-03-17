.class public abstract Lcom/xiaomi/settingsdk/backup/data/SettingItem;
.super Ljava/lang/Object;
.source "SettingItem.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/xiaomi/settingsdk/backup/data/SettingItem",
        "<*>;>;"
    }
.end annotation


# instance fields
.field public key:Ljava/lang/String;

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    .local p0, "this":Lcom/xiaomi/settingsdk/backup/data/SettingItem;, "Lcom/xiaomi/settingsdk/backup/data/SettingItem<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/xiaomi/settingsdk/backup/data/SettingItem;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/settingsdk/backup/data/SettingItem",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lcom/xiaomi/settingsdk/backup/data/SettingItem;, "Lcom/xiaomi/settingsdk/backup/data/SettingItem<TT;>;"
    .local p1, "another":Lcom/xiaomi/settingsdk/backup/data/SettingItem;, "Lcom/xiaomi/settingsdk/backup/data/SettingItem<*>;"
    if-nez p1, :cond_0

    .line 112
    const/4 v0, 0x1

    .line 117
    :goto_0
    return v0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->key:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->key:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 115
    const/4 v0, -0x1

    goto :goto_0

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->key:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 13
    .local p0, "this":Lcom/xiaomi/settingsdk/backup/data/SettingItem;, "Lcom/xiaomi/settingsdk/backup/data/SettingItem<TT;>;"
    check-cast p1, Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    invoke-virtual {p0, p1}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->compareTo(Lcom/xiaomi/settingsdk/backup/data/SettingItem;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 90
    .local p0, "this":Lcom/xiaomi/settingsdk/backup/data/SettingItem;, "Lcom/xiaomi/settingsdk/backup/data/SettingItem<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected fillFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 94
    .local p0, "this":Lcom/xiaomi/settingsdk/backup/data/SettingItem;, "Lcom/xiaomi/settingsdk/backup/data/SettingItem<TT;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "rawValue":Ljava/lang/String;
    iput-object v0, p0, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->key:Ljava/lang/String;

    .line 98
    invoke-virtual {p0, v1}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->setValue(Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lcom/xiaomi/settingsdk/backup/data/SettingItem;, "Lcom/xiaomi/settingsdk/backup/data/SettingItem<TT;>;"
    iget-object v0, p0, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/xiaomi/settingsdk/backup/data/SettingItem;, "Lcom/xiaomi/settingsdk/backup/data/SettingItem<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->value:Ljava/lang/Object;

    .line 31
    return-void
.end method

.method protected abstract stringToValue(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method protected abstract valueToString(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 103
    .local p0, "this":Lcom/xiaomi/settingsdk/backup/data/SettingItem;, "Lcom/xiaomi/settingsdk/backup/data/SettingItem<TT;>;"
    invoke-virtual {p0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "rawValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->key:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    return-void
.end method
