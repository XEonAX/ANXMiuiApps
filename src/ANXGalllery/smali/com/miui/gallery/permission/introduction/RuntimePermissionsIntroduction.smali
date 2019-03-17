.class public Lcom/miui/gallery/permission/introduction/RuntimePermissionsIntroduction;
.super Ljava/lang/Object;
.source "RuntimePermissionsIntroduction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAllOptionalPermissions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/miui/gallery/permission/RuntimePermissions;->PERMISSION_OPTIONAL:[Ljava/lang/String;

    return-object v0
.end method

.method private static getAllRequiredPermissions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/miui/gallery/permission/RuntimePermissions;->PERMISSIONS_REQUIRED:[Ljava/lang/String;

    return-object v0
.end method

.method private static parsePermissions(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/permission/core/Permission;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 32
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v3, "permissionGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/permission/core/Permission;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 34
    .local v5, "tempFilter":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/miui/gallery/permission/core/Permission;>;"
    invoke-static {}, Lcom/miui/gallery/permission/introduction/RuntimePermissionsIntroduction;->getAllRequiredPermissions()[Ljava/lang/String;

    move-result-object v4

    .line 35
    .local v4, "requiredPermissions":[Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 36
    array-length v8, v4

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v2, v4, v6

    .line 37
    .local v2, "permission":Ljava/lang/String;
    const/4 v9, 0x1

    invoke-static {p0, v2, v9}, Lcom/miui/gallery/permission/RuntimePermissions;->parsePermission(Landroid/content/Context;Ljava/lang/String;Z)Lcom/miui/gallery/permission/core/Permission;

    move-result-object v1

    .line 38
    .local v1, "p":Lcom/miui/gallery/permission/core/Permission;
    if-eqz v1, :cond_0

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 39
    invoke-virtual {v5, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 45
    .end local v1    # "p":Lcom/miui/gallery/permission/core/Permission;
    .end local v2    # "permission":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/miui/gallery/permission/introduction/RuntimePermissionsIntroduction;->getAllOptionalPermissions()[Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "optionalPermissions":[Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 47
    array-length v8, v0

    move v6, v7

    :goto_1
    if-ge v6, v8, :cond_3

    aget-object v2, v0, v6

    .line 48
    .restart local v2    # "permission":Ljava/lang/String;
    invoke-static {p0, v2, v7}, Lcom/miui/gallery/permission/RuntimePermissions;->parsePermission(Landroid/content/Context;Ljava/lang/String;Z)Lcom/miui/gallery/permission/core/Permission;

    move-result-object v1

    .line 49
    .restart local v1    # "p":Lcom/miui/gallery/permission/core/Permission;
    if-eqz v1, :cond_2

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 50
    invoke-virtual {v5, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 55
    .end local v1    # "p":Lcom/miui/gallery/permission/core/Permission;
    .end local v2    # "permission":Ljava/lang/String;
    :cond_3
    return-object v3
.end method


# virtual methods
.method public introduce(Landroid/app/Activity;Ljava/lang/String;Lcom/miui/gallery/permission/core/OnPermissionIntroduced;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/miui/gallery/permission/core/OnPermissionIntroduced;

    .prologue
    .line 18
    invoke-static {}, Lcom/miui/gallery/preference/BaseGalleryPreferences$PermissionIntroduction;->isRuntimePermissionsIntroduced()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    const/4 v0, 0x1

    invoke-interface {p3, v0}, Lcom/miui/gallery/permission/core/OnPermissionIntroduced;->onPermissionIntroduced(Z)V

    .line 29
    :goto_0
    return-void

    .line 21
    :cond_0
    invoke-static {p1}, Lcom/miui/gallery/permission/introduction/RuntimePermissionsIntroduction;->parsePermissions(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/permission/introduction/RuntimePermissionsIntroduction$1;

    invoke-direct {v1, p0, p3}, Lcom/miui/gallery/permission/introduction/RuntimePermissionsIntroduction$1;-><init>(Lcom/miui/gallery/permission/introduction/RuntimePermissionsIntroduction;Lcom/miui/gallery/permission/core/OnPermissionIntroduced;)V

    invoke-static {v0, v1}, Lcom/miui/gallery/permission/PermissionsDialogFragment;->newInstance(Ljava/util/ArrayList;Lcom/miui/gallery/permission/core/OnPermissionIntroduced;)Lcom/miui/gallery/permission/PermissionsDialogFragment;

    move-result-object v0

    .line 27
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "PermissionsDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/permission/PermissionsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
