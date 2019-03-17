.class public interface abstract Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$Model;
.super Ljava/lang/Object;
.source "GallerySettingsSyncContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/settingssync/GallerySettingsSyncContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Model"
.end annotation


# virtual methods
.method public abstract getUploadSettings()Lorg/json/JSONObject;
.end method

.method public abstract isDirty()Z
.end method

.method public abstract markDirty(Z)V
.end method

.method public abstract onDownloadSettings(Lorg/json/JSONObject;)Z
.end method
