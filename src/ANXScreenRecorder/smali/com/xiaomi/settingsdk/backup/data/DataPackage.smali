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

.field public static final KEY_DATA_PACKAGE:Ljava/lang/String; = "data_package"

.field public static final KEY_VERSION:Ljava/lang/String; = "version"


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
    .line 159
    new-instance v0, Lcom/xiaomi/settingsdk/backup/data/DataPackage$1;

    invoke-direct {v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage$1;-><init>()V

    sput-object v0, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->mDataItems:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->mFileItems:Ljava/util/Map;

    .line 46
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

.method public static fromWrappedBundle(Landroid/os/Bundle;)Lcom/xiaomi/settingsdk/backup/data/DataPackage;
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 56
    .local v0, "cloned":Landroid/os/Bundle;
    const-class v3, Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 57
    .local v2, "loader":Ljava/lang/ClassLoader;
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 58
    const-string v3, "data_package"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 59
    .local v1, "dataPackageBundle":Landroid/os/Bundle;
    invoke-static {v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->parseDataPackageBundle(Landroid/os/Bundle;)Lcom/xiaomi/settingsdk/backup/data/DataPackage;

    move-result-object v3

    return-object v3
.end method

.method private getDataPackageBundle()Landroid/os/Bundle;
    .locals 8

    .prologue
    .line 82
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 83
    .local v0, "dataPackageBundle":Landroid/os/Bundle;
    iget-object v7, p0, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->mDataItems:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 84
    .local v4, "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaomi/settingsdk/backup/data/SettingItem<*>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 85
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    .line 86
    .local v6, "value":Lcom/xiaomi/settingsdk/backup/data/SettingItem;, "Lcom/xiaomi/settingsdk/backup/data/SettingItem<*>;"
    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 88
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaomi/settingsdk/backup/data/SettingItem<*>;>;"
    .end local v6    # "value":Lcom/xiaomi/settingsdk/backup/data/SettingItem;, "Lcom/xiaomi/settingsdk/backup/data/SettingItem<*>;"
    :cond_0
    iget-object v7, p0, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->mFileItems:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 89
    .local v3, "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/ParcelFileDescriptor;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 90
    .restart local v2    # "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    .line 91
    .local v5, "value":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    .line 93
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/ParcelFileDescriptor;>;"
    .end local v5    # "value":Landroid/os/ParcelFileDescriptor;
    :cond_1
    return-object v0
.end method

.method public static getVersionFromBundle(Landroid/os/Bundle;)I
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 50
    const-string v0, "version"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static parseDataPackageBundle(Landroid/os/Bundle;)Lcom/xiaomi/settingsdk/backup/data/DataPackage;
    .locals 6
    .param p0, "dataPackageBundle"    # Landroid/os/Bundle;

    .prologue
    .line 63
    if-nez p0, :cond_1

    .line 64
    const/4 v2, 0x0

    .line 78
    :cond_0
    return-object v2

    .line 66
    :cond_1
    const-class v4, Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 67
    new-instance v2, Lcom/xiaomi/settingsdk/backup/data/DataPackage;

    invoke-direct {v2}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;-><init>()V

    .line 68
    .local v2, "pkg":Lcom/xiaomi/settingsdk/backup/data/DataPackage;
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 69
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 70
    .local v3, "value":Landroid/os/Parcelable;
    instance-of v4, v3, Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    if-eqz v4, :cond_3

    .line 71
    iget-object v5, v2, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->mDataItems:Ljava/util/Map;

    move-object v4, v3

    check-cast v4, Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    invoke-interface {v5, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_3
    instance-of v4, v3, Landroid/os/ParcelFileDescriptor;

    if-eqz v4, :cond_2

    .line 74
    iget-object v4, v2, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->mFileItems:Ljava/util/Map;

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .end local v3    # "value":Landroid/os/Parcelable;
    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public addAbstractDataItem(Ljava/lang/String;Lcom/xiaomi/settingsdk/backup/data/SettingItem;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/settingsdk/backup/data/SettingItem",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p2, "item":Lcom/xiaomi/settingsdk/backup/data/SettingItem;, "Lcom/xiaomi/settingsdk/backup/data/SettingItem<*>;"
    iget-object v0, p0, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->mDataItems:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public addKeyFile(Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->mFileItems:Ljava/util/Map;

    const/high16 v1, 0x10000000

    invoke-static {p2, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    return-void
.end method

.method public addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONObject;

    .prologue
    .line 106
    new-instance v0, Lcom/xiaomi/settingsdk/backup/data/KeyJsonSettingItem;

    invoke-direct {v0}, Lcom/xiaomi/settingsdk/backup/data/KeyJsonSettingItem;-><init>()V

    .line 107
    .local v0, "item":Lcom/xiaomi/settingsdk/backup/data/KeyJsonSettingItem;
    iput-object p1, v0, Lcom/xiaomi/settingsdk/backup/data/KeyJsonSettingItem;->key:Ljava/lang/String;

    .line 108
    invoke-virtual {v0, p2}, Lcom/xiaomi/settingsdk/backup/data/KeyJsonSettingItem;->setValue(Ljava/lang/Object;)V

    .line 109
    iget-object v1, p0, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->mDataItems:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void
.end method

.method public addKeyValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 116
    new-instance v0, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;

    invoke-direct {v0}, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;-><init>()V

    .line 117
    .local v0, "item":Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;
    iput-object p1, v0, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;->key:Ljava/lang/String;

    .line 118
    invoke-virtual {v0, p2}, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;->setValue(Ljava/lang/Object;)V

    .line 119
    iget-object v1, p0, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->mDataItems:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return-void
.end method

.method public appendToWrappedBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->getDataPackageBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 143
    .local v0, "dataPackageBundle":Landroid/os/Bundle;
    const-string v1, "data_package"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 144
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 149
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
    .line 132
    iget-object v0, p0, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->mDataItems:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    return-object v0
.end method

.method public getDataItems()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/settingsdk/backup/data/SettingItem",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->mDataItems:Ljava/util/Map;

    return-object v0
.end method

.method public getFile(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->mFileItems:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public getFileItems()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->mFileItems:Ljava/util/Map;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->getDataPackageBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 156
    return-void
.end method
