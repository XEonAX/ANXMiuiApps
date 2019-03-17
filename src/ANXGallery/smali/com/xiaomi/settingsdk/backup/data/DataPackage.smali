.class public Lcom/xiaomi/settingsdk/backup/data/DataPackage;
.super Ljava/lang/Object;
.source "DataPackage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xiaomi/settingsdk/backup/data/DataPackage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDataItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/settingsdk/backup/data/SettingItem",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mFileItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lcom/xiaomi/settingsdk/backup/data/DataPackage$1;

    invoke-direct {v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage$1;-><init>()V

    sput-object v0, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->mDataItems:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->mFileItems:Ljava/util/Map;

    .line 41
    return-void
.end method

.method static synthetic access$000(Landroid/os/Bundle;)Lcom/xiaomi/settingsdk/backup/data/DataPackage;
    .locals 1
    .param p0, "x0"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-static {p0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->parseDataPackageBundle(Landroid/os/Bundle;)Lcom/xiaomi/settingsdk/backup/data/DataPackage;

    move-result-object v0

    return-object v0
.end method

.method private getDataPackageBundle()Landroid/os/Bundle;
    .locals 8

    .prologue
    .line 75
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 76
    .local v0, "dataPackageBundle":Landroid/os/Bundle;
    iget-object v6, p0, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->mDataItems:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 77
    .local v3, "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaomi/settingsdk/backup/data/SettingItem<*>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 78
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    .line 79
    .local v5, "value":Lcom/xiaomi/settingsdk/backup/data/SettingItem;, "Lcom/xiaomi/settingsdk/backup/data/SettingItem<*>;"
    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 81
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaomi/settingsdk/backup/data/SettingItem<*>;>;"
    .end local v5    # "value":Lcom/xiaomi/settingsdk/backup/data/SettingItem;, "Lcom/xiaomi/settingsdk/backup/data/SettingItem<*>;"
    :cond_0
    iget-object v6, p0, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->mFileItems:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 82
    .local v2, "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/ParcelFileDescriptor;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 83
    .restart local v1    # "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    .line 84
    .local v4, "value":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    .line 86
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/ParcelFileDescriptor;>;"
    .end local v4    # "value":Landroid/os/ParcelFileDescriptor;
    :cond_1
    return-object v0
.end method

.method private static parseDataPackageBundle(Landroid/os/Bundle;)Lcom/xiaomi/settingsdk/backup/data/DataPackage;
    .locals 6
    .param p0, "dataPackageBundle"    # Landroid/os/Bundle;

    .prologue
    .line 56
    if-nez p0, :cond_1

    .line 57
    const/4 v1, 0x0

    .line 71
    :cond_0
    return-object v1

    .line 59
    :cond_1
    const-class v3, Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 60
    new-instance v1, Lcom/xiaomi/settingsdk/backup/data/DataPackage;

    invoke-direct {v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;-><init>()V

    .line 61
    .local v1, "pkg":Lcom/xiaomi/settingsdk/backup/data/DataPackage;
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 62
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 63
    .local v2, "value":Landroid/os/Parcelable;
    instance-of v3, v2, Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    if-eqz v3, :cond_3

    .line 64
    iget-object v5, v1, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->mDataItems:Ljava/util/Map;

    move-object v3, v2

    check-cast v3, Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_3
    instance-of v3, v2, Landroid/os/ParcelFileDescriptor;

    if-eqz v3, :cond_2

    .line 67
    iget-object v3, v1, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->mFileItems:Ljava/util/Map;

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .end local v2    # "value":Landroid/os/Parcelable;
    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONObject;

    .prologue
    .line 98
    new-instance v0, Lcom/xiaomi/settingsdk/backup/data/KeyJsonSettingItem;

    invoke-direct {v0}, Lcom/xiaomi/settingsdk/backup/data/KeyJsonSettingItem;-><init>()V

    .line 99
    .local v0, "item":Lcom/xiaomi/settingsdk/backup/data/KeyJsonSettingItem;
    iput-object p1, v0, Lcom/xiaomi/settingsdk/backup/data/KeyJsonSettingItem;->key:Ljava/lang/String;

    .line 100
    invoke-virtual {v0, p2}, Lcom/xiaomi/settingsdk/backup/data/KeyJsonSettingItem;->setValue(Ljava/lang/Object;)V

    .line 101
    iget-object v1, p0, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->mDataItems:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-void
.end method

.method public appendToWrappedBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->getDataPackageBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 132
    .local v0, "dataPackageBundle":Landroid/os/Bundle;
    const-string v1, "data_package"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 133
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/settingsdk/backup/data/SettingItem",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->mDataItems:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->getDataPackageBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 143
    return-void
.end method
