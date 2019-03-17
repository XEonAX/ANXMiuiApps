.class public Lcom/miui/gallery/permission/core/PermissionCheckHelper;
.super Ljava/lang/Object;
.source "PermissionCheckHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/permission/core/PermissionCheckHelper$CheckResult;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCallback:Lcom/miui/gallery/permission/core/PermissionCheckCallback;

.field private mIsShowWhenLocked:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;ZLcom/miui/gallery/permission/core/PermissionCheckCallback;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "isShowWhenLocked"    # Z
    .param p3, "callback"    # Lcom/miui/gallery/permission/core/PermissionCheckCallback;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PermissionCheckHelper: activity or callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_1
    iput-object p1, p0, Lcom/miui/gallery/permission/core/PermissionCheckHelper;->mActivity:Landroid/app/Activity;

    .line 35
    iput-boolean p2, p0, Lcom/miui/gallery/permission/core/PermissionCheckHelper;->mIsShowWhenLocked:Z

    .line 36
    iput-object p3, p0, Lcom/miui/gallery/permission/core/PermissionCheckHelper;->mCallback:Lcom/miui/gallery/permission/core/PermissionCheckCallback;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/permission/core/PermissionCheckHelper;)Lcom/miui/gallery/permission/core/PermissionCheckCallback;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/permission/core/PermissionCheckHelper;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/gallery/permission/core/PermissionCheckHelper;->mCallback:Lcom/miui/gallery/permission/core/PermissionCheckCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/permission/core/PermissionCheckHelper;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/permission/core/PermissionCheckHelper;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/gallery/permission/core/PermissionCheckHelper;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/permission/core/PermissionCheckHelper;[Lcom/miui/gallery/permission/core/PermissionCheckHelper$CheckResult;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/permission/core/PermissionCheckHelper;
    .param p1, "x1"    # [Lcom/miui/gallery/permission/core/PermissionCheckHelper$CheckResult;
    .param p2, "x2"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/permission/core/PermissionCheckHelper;->showPermissionIntroduction([Lcom/miui/gallery/permission/core/PermissionCheckHelper$CheckResult;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/permission/core/PermissionCheckHelper;[Lcom/miui/gallery/permission/core/PermissionCheckHelper$CheckResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/permission/core/PermissionCheckHelper;
    .param p1, "x1"    # [Lcom/miui/gallery/permission/core/PermissionCheckHelper$CheckResult;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/miui/gallery/permission/core/PermissionCheckHelper;->requestPermissions([Lcom/miui/gallery/permission/core/PermissionCheckHelper$CheckResult;)V

    return-void
.end method

.method private filterResults([Lcom/miui/gallery/permission/core/PermissionCheckHelper$CheckResult;I)[Ljava/lang/String;
    .locals 5
    .param p1, "results"    # [Lcom/miui/gallery/permission/core/PermissionCheckHelper$CheckResult;
    .param p2, "filterGrantFlag"    # I

    .prologue
    .line 114
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 115
    .local v1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p1, v2

    .line 116
    .local v0, "checkResult":Lcom/miui/gallery/permission/core/PermissionCheckHelper$CheckResult;
    iget v4, v0, Lcom/miui/gallery/permission/core/PermissionCheckHelper$CheckResult;->result:I

    if-ne v4, p2, :cond_0

    .line 117
    iget-object v4, v0, Lcom/miui/gallery/permission/core/PermissionCheckHelper$CheckResult;->permission:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    .end local v0    # "checkResult":Lcom/miui/gallery/permission/core/PermissionCheckHelper$CheckResult;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method private initResults([Ljava/lang/String;)[Lcom/miui/gallery/permission/core/PermissionCheckHelper$CheckResult;
    .locals 4
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 124
    array-length v2, p1

    new-array v1, v2, [Lcom/miui/gallery/permission/core/PermissionCheckHelper$CheckResult;

    .line 125
    .local v1, "results":[Lcom/miui/gallery/permission/core/PermissionCheckHelper$CheckResult;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 126
    new-instance v2, Lcom/miui/gallery/permission/core/PermissionCheckHelper$CheckResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/miui/gallery/permission/core/PermissionCheckHelper$CheckResult;-><init>(Lcom/miui/gallery/permission/core/PermissionCheckHelper$1;)V

    aput-object v2, v1, v0

    .line 127
    aget-object v2, v1, v0

    aget-object v3, p1, v0

    iput-object v3, v2, Lcom/miui/gallery/permission/core/PermissionCheckHelper$CheckResult;->permission:Ljava/lang/String;

    .line 128
    aget-object v2, v1, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/miui/gallery/permission/core/PermissionCheckHelper$CheckResult;->result:I

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_0
    return-object v1
.end method

.method private requestPermissions([Lcom/miui/gallery/permission/core/PermissionCheckHelper$CheckResult;)V
    .locals 6
    .param p1, "results"    # [Lcom/miui/gallery/permission/core/PermissionCheckHelper$CheckResult;

    .prologue
    const/4 v4, 0x0

    .line 96
    invoke-direct {p0, p1, v4}, Lcom/miui/gallery/permission/core/PermissionCheckHelper;->filterResults([Lcom/miui/gallery/permission/core/PermissionCheckHelper$CheckResult;I)[Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "needRequestPermissions":[Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/gallery/permission/core/PermissionCheckHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v1}, Lcom/miui/gallery/permission/core/PermissionUtils;->getUngrantedPermissions(Landroid/app/Activity;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "ungrantedPermissions":[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v3, v2

    if-lez v3, :cond_1

    .line 99
    iget-boolean v3, p0, Lcom/miui/gallery/permission/core/PermissionCheckHelper;->mIsShowWhenLocked:Z

    if-eqz v3, :cond_0

    .line 100
    iget-object v3, p0, Lcom/miui/gallery/permission/core/PermissionCheckHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/permission/core/PermissionDeniedActivity;->startActivity(Landroid/app/Activity;Ljava/util/List;Z)V

    .line 101
    iget-object v3, p0, Lcom/miui/gallery/permission/core/PermissionCheckHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 111
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/permission/core/PermissionCheckHelper;->mActivity:Landroid/app/Activity;

    const/16 v4, 0x2e

    invoke-static {v3, v2, v4}, Lcom/miui/gallery/permission/core/PermissionUtils;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 107
    :cond_1
    array-length v3, v1

    new-array v0, v3, [I

    .line 108
    .local v0, "grantResults":[I
    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([II)V

    .line 109
    iget-object v3, p0, Lcom/miui/gallery/permission/core/PermissionCheckHelper;->mCallback:Lcom/miui/gallery/permission/core/PermissionCheckCallback;

    invoke-interface {v3, v1, v0}, Lcom/miui/gallery/permission/core/PermissionCheckCallback;->onPermissionsChecked([Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method private showPermissionIntroduction([Lcom/miui/gallery/permission/core/PermissionCheckHelper$CheckResult;I)V
    .locals 4
    .param p1, "results"    # [Lcom/miui/gallery/permission/core/PermissionCheckHelper$CheckResult;
    .param p2, "index"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/miui/gallery/permission/core/PermissionCheckHelper;->mCallback:Lcom/miui/gallery/permission/core/PermissionCheckCallback;

    iget-object v1, p0, Lcom/miui/gallery/permission/core/PermissionCheckHelper;->mActivity:Landroid/app/Activity;

    aget-object v2, p1, p2

    iget-object v2, v2, Lcom/miui/gallery/permission/core/PermissionCheckHelper$CheckResult;->permission:Ljava/lang/String;

    new-instance v3, Lcom/miui/gallery/permission/core/PermissionCheckHelper$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/miui/gallery/permission/core/PermissionCheckHelper$1;-><init>(Lcom/miui/gallery/permission/core/PermissionCheckHelper;[Lcom/miui/gallery/permission/core/PermissionCheckHelper$CheckResult;I)V

    invoke-interface {v0, v1, v2, v3}, Lcom/miui/gallery/permission/core/PermissionCheckCallback;->showPermissionIntroduction(Landroid/app/Activity;Ljava/lang/String;Lcom/miui/gallery/permission/core/OnPermissionIntroduced;)V

    .line 93
    return-void
.end method


# virtual methods
.method public checkPermission()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 43
    iget-object v2, p0, Lcom/miui/gallery/permission/core/PermissionCheckHelper;->mCallback:Lcom/miui/gallery/permission/core/PermissionCheckCallback;

    invoke-interface {v2}, Lcom/miui/gallery/permission/core/PermissionCheckCallback;->getRuntimePermissions()[Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "permissions":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-gtz v2, :cond_1

    .line 45
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/permission/core/PermissionCheckHelper;->mCallback:Lcom/miui/gallery/permission/core/PermissionCheckCallback;

    new-array v3, v3, [I

    invoke-interface {v2, v0, v3}, Lcom/miui/gallery/permission/core/PermissionCheckCallback;->onPermissionsChecked([Ljava/lang/String;[I)V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/gallery/permission/core/PermissionCheckHelper;->initResults([Ljava/lang/String;)[Lcom/miui/gallery/permission/core/PermissionCheckHelper$CheckResult;

    move-result-object v1

    .line 49
    .local v1, "results":[Lcom/miui/gallery/permission/core/PermissionCheckHelper$CheckResult;
    invoke-direct {p0, v1, v3}, Lcom/miui/gallery/permission/core/PermissionCheckHelper;->showPermissionIntroduction([Lcom/miui/gallery/permission/core/PermissionCheckHelper$CheckResult;I)V

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 53
    const/16 v3, 0x2e

    if-ne p1, v3, :cond_2

    if-eqz p2, :cond_2

    .line 54
    const/4 v1, 0x1

    .line 55
    .local v1, "succeed":Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v2, "unGrantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_1

    .line 57
    aget v3, p3, v0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/gallery/permission/core/PermissionCheckHelper;->mCallback:Lcom/miui/gallery/permission/core/PermissionCheckCallback;

    aget-object v4, p2, v0

    invoke-interface {v3, v4}, Lcom/miui/gallery/permission/core/PermissionCheckCallback;->isPermissionRequired(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    const/4 v1, 0x0

    .line 56
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_1
    if-eqz v1, :cond_3

    .line 63
    iget-object v3, p0, Lcom/miui/gallery/permission/core/PermissionCheckHelper;->mCallback:Lcom/miui/gallery/permission/core/PermissionCheckCallback;

    invoke-interface {v3, p2, p3}, Lcom/miui/gallery/permission/core/PermissionCheckCallback;->onPermissionsChecked([Ljava/lang/String;[I)V

    .line 69
    .end local v0    # "i":I
    .end local v1    # "succeed":Z
    .end local v2    # "unGrantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    return-void

    .line 65
    .restart local v0    # "i":I
    .restart local v1    # "succeed":Z
    .restart local v2    # "unGrantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    iget-object v3, p0, Lcom/miui/gallery/permission/core/PermissionCheckHelper;->mActivity:Landroid/app/Activity;

    iget-boolean v4, p0, Lcom/miui/gallery/permission/core/PermissionCheckHelper;->mIsShowWhenLocked:Z

    invoke-static {v3, v2, v4}, Lcom/miui/gallery/permission/core/PermissionDeniedActivity;->startActivity(Landroid/app/Activity;Ljava/util/List;Z)V

    .line 66
    iget-object v3, p0, Lcom/miui/gallery/permission/core/PermissionCheckHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method
