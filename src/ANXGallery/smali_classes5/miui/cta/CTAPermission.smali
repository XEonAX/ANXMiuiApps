.class public Lmiui/cta/CTAPermission;
.super Ljava/lang/Object;
.source "CTAPermission.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cta/CTAPermission$Permission;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CTAPermission"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMessage(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permValue"    # I

    .line 49
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 50
    return-object v0

    .line 53
    :cond_0
    invoke-static {p0, p1}, Lmiui/cta/CTAPermission;->getPermissionNames(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    .line 54
    .local v1, "permNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    return-object v0

    .line 58
    :cond_1
    invoke-static {p0, v1}, Lmiui/cta/CTAPermission;->getPermissionMessage(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPermissionMap(Landroid/content/Context;)Landroid/util/SparseArray;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 82
    .local v1, "resources":Landroid/content/res/Resources;
    sget v0, Lcom/miui/system/internal/R$array;->cta_permissions:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "permissions":[Ljava/lang/String;
    sget v0, Lcom/miui/system/internal/R$array;->cta_permission_names:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "permissionNames":[Ljava/lang/String;
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v4, v0

    .line 85
    .local v4, "permMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    array-length v0, v2

    array-length v6, v3

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 86
    .local v6, "N":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move v7, v0

    .end local v0    # "i":I
    .local v7, "i":I
    if-ge v7, v6, :cond_2

    .line 87
    aget-object v8, v2, v7

    .line 88
    .local v8, "permCombine":Ljava/lang/String;
    const-string v0, "\\|"

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 89
    .local v9, "perms":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 90
    .local v0, "value":I
    array-length v10, v9

    move v12, v0

    const/4 v11, 0x0

    .end local v0    # "value":I
    .local v12, "value":I
    :goto_1
    if-ge v11, v10, :cond_0

    aget-object v0, v9, v11

    move-object v13, v0

    .line 92
    .local v13, "perm":Ljava/lang/String;
    :try_start_0
    invoke-static {v13}, Lmiui/cta/CTAPermission$Permission;->valueOf(Ljava/lang/String;)Lmiui/cta/CTAPermission$Permission;

    move-result-object v0

    .line 93
    .local v0, "permission":Lmiui/cta/CTAPermission$Permission;
    iget v14, v0, Lmiui/cta/CTAPermission$Permission;->value:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    or-int v0, v12, v14

    .line 96
    .end local v12    # "value":I
    .local v0, "value":I
    nop

    .line 90
    move v12, v0

    goto :goto_2

    .line 94
    .end local v0    # "value":I
    .restart local v12    # "value":I
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v14, "CTAPermission"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown permission: "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v13    # "perm":Ljava/lang/String;
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 98
    :cond_0
    if-lez v12, :cond_1

    .line 99
    aget-object v0, v3, v7

    invoke-virtual {v4, v12, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 86
    .end local v8    # "permCombine":Ljava/lang/String;
    .end local v9    # "perms":[Ljava/lang/String;
    .end local v12    # "value":I
    :cond_1
    add-int/lit8 v0, v7, 0x1

    .end local v7    # "i":I
    .local v0, "i":I
    goto :goto_0

    .line 102
    .end local v0    # "i":I
    :cond_2
    return-object v4
.end method

.method private static getPermissionMessage(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 107
    .local p1, "permNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 108
    .local v0, "N":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 109
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "permMsg":Ljava/lang/String;
    goto :goto_1

    .line 110
    .end local v1    # "permMsg":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 111
    sget v3, Lcom/miui/system/internal/R$string;->cta_permission_and:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "and":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    .end local v3    # "and":Ljava/lang/String;
    .restart local v1    # "permMsg":Ljava/lang/String;
    goto :goto_1

    .line 114
    .end local v1    # "permMsg":Ljava/lang/String;
    :cond_1
    sget v2, Lcom/miui/system/internal/R$string;->cta_permission_delimiter:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "delimiter":Ljava/lang/String;
    sget v3, Lcom/miui/system/internal/R$string;->cta_permission_and:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 116
    .restart local v3    # "and":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .local v4, "out":Ljava/lang/StringBuilder;
    nop

    .local v1, "i":I
    :goto_0
    add-int/lit8 v5, v0, -0x2

    if-ge v1, v5, :cond_2

    .line 118
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    .end local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v0, -0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    .end local v2    # "delimiter":Ljava/lang/String;
    .end local v3    # "and":Ljava/lang/String;
    .end local v4    # "out":Ljava/lang/StringBuilder;
    .local v1, "permMsg":Ljava/lang/String;
    :goto_1
    return-object v1
.end method

.method private static getPermissionNames(Landroid/content/Context;I)Ljava/util/List;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v0, "permNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Lmiui/cta/CTAPermission;->getPermissionMap(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v1

    .line 64
    .local v1, "permMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 67
    .local v2, "index":I
    :goto_0
    if-ltz v2, :cond_1

    .line 68
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 69
    .local v3, "key":I
    and-int v4, p1, v3

    if-ne v4, v3, :cond_0

    .line 70
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    xor-int/lit8 v4, v3, -0x1

    and-int/2addr p1, v4

    .line 73
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 74
    .end local v3    # "key":I
    goto :goto_0

    .line 76
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 77
    return-object v0
.end method
