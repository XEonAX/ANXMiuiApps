.class public Lcom/miui/gallery/preference/DocumentProviderPreference;
.super Ljava/lang/Object;
.source "DocumentProviderPreference.java"


# direct methods
.method public static getOpenExternalDocumentCount()I
    .locals 2

    .prologue
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "document_provider_access_intent_count_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getSecondaryStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isFirstEntrance()Z
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "document_provider_first_entrance_sdcard_permission_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getSecondaryStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setFirstEntrance(Z)V
    .locals 2
    .param p0, "isFirstEntrance"    # Z

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "document_provider_first_entrance_sdcard_permission_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getSecondaryStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 27
    return-void
.end method

.method public static setOpenExternalDocumentCount(I)V
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "document_provider_access_intent_count_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getSecondaryStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/miui/gallery/preference/PreferenceHelper;->putInt(Ljava/lang/String;I)V

    .line 19
    return-void
.end method
