.class public interface abstract Lmiui/cloud/backup/ICloudBackup;
.super Ljava/lang/Object;
.source "ICloudBackup.java"


# virtual methods
.method public abstract getCurrentVersion(Landroid/content/Context;)I
.end method

.method public abstract onBackupSettings(Landroid/content/Context;Lmiui/cloud/backup/data/DataPackage;)V
.end method

.method public abstract onRestoreSettings(Landroid/content/Context;Lmiui/cloud/backup/data/DataPackage;I)V
.end method
