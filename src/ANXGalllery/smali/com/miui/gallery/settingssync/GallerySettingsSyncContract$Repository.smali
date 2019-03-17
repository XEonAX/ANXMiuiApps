.class public interface abstract Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$Repository;
.super Ljava/lang/Object;
.source "GallerySettingsSyncContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/settingssync/GallerySettingsSyncContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Repository"
.end annotation


# virtual methods
.method public abstract getSyncableSettings()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$SyncableSetting;",
            ">;"
        }
    .end annotation
.end method
