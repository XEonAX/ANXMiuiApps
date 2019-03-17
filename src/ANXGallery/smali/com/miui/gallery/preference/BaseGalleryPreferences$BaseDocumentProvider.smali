.class public Lcom/miui/gallery/preference/BaseGalleryPreferences$BaseDocumentProvider;
.super Ljava/lang/Object;
.source "BaseGalleryPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/preference/BaseGalleryPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseDocumentProvider"
.end annotation


# direct methods
.method public static getExternalSDCardUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getSecondaryStoragePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/preference/BaseGalleryPreferences$BaseDocumentProvider;->getUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "document_provider_uri_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setExternalSDCardUri(Ljava/lang/String;)V
    .locals 1
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 176
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getSecondaryStoragePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/miui/gallery/preference/BaseGalleryPreferences$BaseDocumentProvider;->setUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public static setUri(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "document_provider_uri_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/gallery/preference/PreferenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method
