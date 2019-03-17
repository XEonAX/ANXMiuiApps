.class public Lcom/miui/gallery/permission/RuntimePermissions;
.super Ljava/lang/Object;
.source "RuntimePermissions.java"


# static fields
.field public static final PERMISSIONS_REQUIRED:[Ljava/lang/String;

.field public static final PERMISSION_OPTIONAL:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/gallery/permission/RuntimePermissions;->PERMISSIONS_REQUIRED:[Ljava/lang/String;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_CONTACTS"

    aput-object v1, v0, v2

    const-string v1, "android.permission.GET_ACCOUNTS"

    aput-object v1, v0, v3

    const-string v1, "android.permission.READ_PHONE_STATE"

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/gallery/permission/RuntimePermissions;->PERMISSION_OPTIONAL:[Ljava/lang/String;

    return-void
.end method

.method public static parsePermission(Landroid/content/Context;Ljava/lang/String;Z)Lcom/miui/gallery/permission/core/Permission;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "required"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v9, -0x1

    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-object v6

    .line 38
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    .line 39
    .local v2, "info":Landroid/content/pm/PermissionInfo;
    if-eqz v2, :cond_0

    .line 40
    const/4 v5, -0x1

    .line 41
    .local v5, "resName":I
    const/4 v4, -0x1

    .line 42
    .local v4, "resDesc":I
    const-string v7, "android.permission-group.STORAGE"

    iget-object v8, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 43
    const v5, 0x7f0c0342

    .line 44
    const v4, 0x7f0c0341

    .line 52
    :cond_2
    :goto_1
    if-eq v5, v9, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "name":Ljava/lang/String;
    :goto_2
    if-eq v4, v9, :cond_6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "desc":Ljava/lang/String;
    :goto_3
    new-instance v7, Lcom/miui/gallery/permission/core/Permission;

    iget-object v8, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-direct {v7, v8, v3, v0, p2}, Lcom/miui/gallery/permission/core/Permission;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v6, v7

    goto :goto_0

    .line 45
    .end local v0    # "desc":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    :cond_3
    const-string v7, "android.permission-group.CONTACTS"

    iget-object v8, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 46
    const v5, 0x7f0c033c

    .line 47
    const v4, 0x7f0c033b

    goto :goto_1

    .line 48
    :cond_4
    const-string v7, "android.permission-group.PHONE"

    iget-object v8, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 49
    const v5, 0x7f0c033f

    .line 50
    const v4, 0x7f0c033e

    goto :goto_1

    .line 52
    :cond_5
    const-string v3, ""

    goto :goto_2

    .line 53
    .restart local v3    # "name":Ljava/lang/String;
    :cond_6
    const-string v0, ""
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 56
    .end local v2    # "info":Landroid/content/pm/PermissionInfo;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "resDesc":I
    .end local v5    # "resName":I
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
