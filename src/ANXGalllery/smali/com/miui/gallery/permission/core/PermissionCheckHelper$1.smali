.class Lcom/miui/gallery/permission/core/PermissionCheckHelper$1;
.super Ljava/lang/Object;
.source "PermissionCheckHelper.java"

# interfaces
.implements Lcom/miui/gallery/permission/core/OnPermissionIntroduced;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/permission/core/PermissionCheckHelper;->showPermissionIntroduction([Lcom/miui/gallery/permission/core/PermissionCheckHelper$CheckResult;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/permission/core/PermissionCheckHelper;

.field final synthetic val$index:I

.field final synthetic val$results:[Lcom/miui/gallery/permission/core/PermissionCheckHelper$CheckResult;


# direct methods
.method constructor <init>(Lcom/miui/gallery/permission/core/PermissionCheckHelper;[Lcom/miui/gallery/permission/core/PermissionCheckHelper$CheckResult;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/permission/core/PermissionCheckHelper;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/miui/gallery/permission/core/PermissionCheckHelper$1;->this$0:Lcom/miui/gallery/permission/core/PermissionCheckHelper;

    iput-object p2, p0, Lcom/miui/gallery/permission/core/PermissionCheckHelper$1;->val$results:[Lcom/miui/gallery/permission/core/PermissionCheckHelper$CheckResult;

    iput p3, p0, Lcom/miui/gallery/permission/core/PermissionCheckHelper$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionIntroduced(Z)V
    .locals 3
    .param p1, "allowed"    # Z

    .prologue
    .line 75
    if-eqz p1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/miui/gallery/permission/core/PermissionCheckHelper$1;->val$results:[Lcom/miui/gallery/permission/core/PermissionCheckHelper$CheckResult;

    iget v1, p0, Lcom/miui/gallery/permission/core/PermissionCheckHelper$1;->val$index:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    iput v1, v0, Lcom/miui/gallery/permission/core/PermissionCheckHelper$CheckResult;->result:I

    .line 86
    :goto_0
    iget v0, p0, Lcom/miui/gallery/permission/core/PermissionCheckHelper$1;->val$index:I

    iget-object v1, p0, Lcom/miui/gallery/permission/core/PermissionCheckHelper$1;->val$results:[Lcom/miui/gallery/permission/core/PermissionCheckHelper$CheckResult;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 87
    iget-object v0, p0, Lcom/miui/gallery/permission/core/PermissionCheckHelper$1;->this$0:Lcom/miui/gallery/permission/core/PermissionCheckHelper;

    iget-object v1, p0, Lcom/miui/gallery/permission/core/PermissionCheckHelper$1;->val$results:[Lcom/miui/gallery/permission/core/PermissionCheckHelper$CheckResult;

    iget v2, p0, Lcom/miui/gallery/permission/core/PermissionCheckHelper$1;->val$index:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/permission/core/PermissionCheckHelper;->access$200(Lcom/miui/gallery/permission/core/PermissionCheckHelper;[Lcom/miui/gallery/permission/core/PermissionCheckHelper$CheckResult;I)V

    .line 91
    :goto_1
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/permission/core/PermissionCheckHelper$1;->this$0:Lcom/miui/gallery/permission/core/PermissionCheckHelper;

    invoke-static {v0}, Lcom/miui/gallery/permission/core/PermissionCheckHelper;->access$000(Lcom/miui/gallery/permission/core/PermissionCheckHelper;)Lcom/miui/gallery/permission/core/PermissionCheckCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/permission/core/PermissionCheckHelper$1;->val$results:[Lcom/miui/gallery/permission/core/PermissionCheckHelper$CheckResult;

    iget v2, p0, Lcom/miui/gallery/permission/core/PermissionCheckHelper$1;->val$index:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/miui/gallery/permission/core/PermissionCheckHelper$CheckResult;->permission:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/miui/gallery/permission/core/PermissionCheckCallback;->isPermissionRequired(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/miui/gallery/permission/core/PermissionCheckHelper$1;->val$results:[Lcom/miui/gallery/permission/core/PermissionCheckHelper$CheckResult;

    iget v1, p0, Lcom/miui/gallery/permission/core/PermissionCheckHelper$1;->val$index:I

    aget-object v0, v0, v1

    const/4 v1, -0x1

    iput v1, v0, Lcom/miui/gallery/permission/core/PermissionCheckHelper$CheckResult;->result:I

    goto :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/permission/core/PermissionCheckHelper$1;->this$0:Lcom/miui/gallery/permission/core/PermissionCheckHelper;

    invoke-static {v0}, Lcom/miui/gallery/permission/core/PermissionCheckHelper;->access$100(Lcom/miui/gallery/permission/core/PermissionCheckHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/permission/core/PermissionCheckHelper$1;->this$0:Lcom/miui/gallery/permission/core/PermissionCheckHelper;

    iget-object v1, p0, Lcom/miui/gallery/permission/core/PermissionCheckHelper$1;->val$results:[Lcom/miui/gallery/permission/core/PermissionCheckHelper$CheckResult;

    invoke-static {v0, v1}, Lcom/miui/gallery/permission/core/PermissionCheckHelper;->access$300(Lcom/miui/gallery/permission/core/PermissionCheckHelper;[Lcom/miui/gallery/permission/core/PermissionCheckHelper$CheckResult;)V

    goto :goto_1
.end method
