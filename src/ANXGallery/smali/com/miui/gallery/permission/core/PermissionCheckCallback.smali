.class public interface abstract Lcom/miui/gallery/permission/core/PermissionCheckCallback;
.super Ljava/lang/Object;
.source "PermissionCheckCallback.java"


# virtual methods
.method public abstract getRuntimePermissions()[Ljava/lang/String;
.end method

.method public abstract isPermissionRequired(Ljava/lang/String;)Z
.end method

.method public abstract onPermissionsChecked([Ljava/lang/String;[I)V
.end method

.method public abstract showPermissionIntroduction(Landroid/app/Activity;Ljava/lang/String;Lcom/miui/gallery/permission/core/OnPermissionIntroduced;)V
.end method
