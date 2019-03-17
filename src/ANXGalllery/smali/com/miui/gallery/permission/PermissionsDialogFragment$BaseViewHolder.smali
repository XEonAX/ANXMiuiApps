.class abstract Lcom/miui/gallery/permission/PermissionsDialogFragment$BaseViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "PermissionsDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/permission/PermissionsDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BaseViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 224
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 225
    return-void
.end method

.method public static getView(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 2
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "layoutRes"    # I

    .prologue
    .line 228
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract bindPermission(Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionWrapper;)V
.end method
