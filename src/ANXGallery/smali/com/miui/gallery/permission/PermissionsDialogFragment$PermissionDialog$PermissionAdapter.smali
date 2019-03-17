.class Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$PermissionAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "PermissionsDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PermissionAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/miui/gallery/permission/PermissionsDialogFragment$BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionWrapper;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog;)V
    .locals 1

    .prologue
    .line 96
    iput-object p1, p0, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$PermissionAdapter;->this$0:Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$PermissionAdapter;->mPermissions:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog;Lcom/miui/gallery/permission/PermissionsDialogFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog;
    .param p2, "x1"    # Lcom/miui/gallery/permission/PermissionsDialogFragment$1;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$PermissionAdapter;-><init>(Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$PermissionAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$PermissionAdapter;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$PermissionAdapter;->mPermissions:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$PermissionAdapter;->mPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 126
    iget-object v1, p0, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$PermissionAdapter;->mPermissions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionWrapper;

    .line 127
    .local v0, "permission":Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionWrapper;
    invoke-static {v0}, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionWrapper;->access$200(Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionWrapper;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    const/4 v1, 0x1

    .line 130
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 96
    check-cast p1, Lcom/miui/gallery/permission/PermissionsDialogFragment$BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$PermissionAdapter;->onBindViewHolder(Lcom/miui/gallery/permission/PermissionsDialogFragment$BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/gallery/permission/PermissionsDialogFragment$BaseViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Lcom/miui/gallery/permission/PermissionsDialogFragment$BaseViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$PermissionAdapter;->mPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionWrapper;

    invoke-virtual {p1, v0}, Lcom/miui/gallery/permission/PermissionsDialogFragment$BaseViewHolder;->bindPermission(Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionWrapper;)V

    .line 117
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$PermissionAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/permission/PermissionsDialogFragment$BaseViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/permission/PermissionsDialogFragment$BaseViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 106
    packed-switch p2, :pswitch_data_0

    .line 110
    new-instance v0, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionViewHolder;

    const v1, 0x7f040164

    invoke-static {p1, v1}, Lcom/miui/gallery/permission/PermissionsDialogFragment$BaseViewHolder;->getView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionViewHolder;-><init>(Landroid/view/View;)V

    :goto_0
    return-object v0

    .line 108
    :pswitch_0
    new-instance v0, Lcom/miui/gallery/permission/PermissionsDialogFragment$CategoryViewHolder;

    const v1, 0x7f040163

    invoke-static {p1, v1}, Lcom/miui/gallery/permission/PermissionsDialogFragment$BaseViewHolder;->getView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/permission/PermissionsDialogFragment$CategoryViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setPermissions(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/permission/core/Permission;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/permission/core/Permission;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 135
    iget-object v2, p0, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$PermissionAdapter;->mPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 136
    if-eqz p1, :cond_3

    .line 137
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 138
    .local v0, "optionals":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionWrapper;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/permission/core/Permission;

    .line 139
    .local v1, "permission":Lcom/miui/gallery/permission/core/Permission;
    iget-boolean v3, v1, Lcom/miui/gallery/permission/core/Permission;->mRequired:Z

    if-eqz v3, :cond_0

    .line 140
    iget-object v3, p0, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$PermissionAdapter;->mPermissions:Ljava/util/ArrayList;

    new-instance v4, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionWrapper;

    invoke-direct {v4, v1, v8}, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionWrapper;-><init>(Lcom/miui/gallery/permission/core/Permission;Z)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    :cond_0
    new-instance v3, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionWrapper;

    invoke-direct {v3, v1, v8}, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionWrapper;-><init>(Lcom/miui/gallery/permission/core/Permission;Z)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 145
    .end local v1    # "permission":Lcom/miui/gallery/permission/core/Permission;
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$PermissionAdapter;->mPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 146
    iget-object v2, p0, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$PermissionAdapter;->mPermissions:Ljava/util/ArrayList;

    new-instance v3, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionWrapper;

    new-instance v4, Lcom/miui/gallery/permission/core/Permission;

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    invoke-direct {v4, v5, v6, v7, v9}, Lcom/miui/gallery/permission/core/Permission;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {v3, v4, v9}, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionWrapper;-><init>(Lcom/miui/gallery/permission/core/Permission;Z)V

    invoke-virtual {v2, v8, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 149
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 150
    iget-object v2, p0, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$PermissionAdapter;->mPermissions:Ljava/util/ArrayList;

    new-instance v3, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionWrapper;

    new-instance v4, Lcom/miui/gallery/permission/core/Permission;

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/miui/gallery/permission/core/Permission;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {v3, v4, v9}, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionWrapper;-><init>(Lcom/miui/gallery/permission/core/Permission;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v2, p0, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$PermissionAdapter;->mPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 155
    .end local v0    # "optionals":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionWrapper;>;"
    :cond_3
    invoke-virtual {p0}, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$PermissionAdapter;->notifyDataSetChanged()V

    .line 156
    return-void
.end method
