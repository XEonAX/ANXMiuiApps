.class public interface abstract Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$SyncableSetting;
.super Ljava/lang/Object;
.source "GallerySettingsSyncContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/settingssync/GallerySettingsSyncContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SyncableSetting"
.end annotation


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getValue()Ljava/lang/String;
.end method

.method public abstract isEnabled()Ljava/lang/Boolean;
.end method

.method public abstract isExport()Z
.end method

.method public abstract writeValue(Ljava/lang/Boolean;Ljava/lang/Object;)V
.end method
