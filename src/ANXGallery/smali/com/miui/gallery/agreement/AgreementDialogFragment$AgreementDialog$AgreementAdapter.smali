.class Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog$AgreementAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AgreementDialogFragment.java"

# interfaces
.implements Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder$OnCheckChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AgreementAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder;",
        ">;",
        "Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder$OnCheckChangedListener;"
    }
.end annotation


# instance fields
.field private mAgreements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog;)V
    .locals 1

    .prologue
    .line 84
    iput-object p1, p0, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog$AgreementAdapter;->this$0:Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog$AgreementAdapter;->mAgreements:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog;Lcom/miui/gallery/agreement/AgreementDialogFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog;
    .param p2, "x1"    # Lcom/miui/gallery/agreement/AgreementDialogFragment$1;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog$AgreementAdapter;-><init>(Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog$AgreementAdapter;->mAgreements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 84
    check-cast p1, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog$AgreementAdapter;->onBindViewHolder(Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder;I)V
    .locals 1
    .param p1, "viewHolder"    # Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog$AgreementAdapter;->mAgreements:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;

    invoke-virtual {p1, v0, p0}, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder;->bindAgreement(Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder$OnCheckChangedListener;)V

    .line 95
    return-void
.end method

.method public onCheckChanged(Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;)V
    .locals 10
    .param p1, "agreement"    # Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 123
    const/4 v2, 0x0

    .line 124
    .local v2, "needNotifyChanged":Z
    invoke-static {p1}, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;->access$200(Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 125
    iget-object v5, p0, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog$AgreementAdapter;->mAgreements:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;

    .line 126
    .local v4, "wrapper":Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;
    invoke-static {v4}, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;->access$100(Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;)Z

    move-result v6

    invoke-static {p1}, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;->access$100(Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;)Z

    move-result v7

    if-eq v6, v7, :cond_0

    .line 127
    invoke-static {p1}, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;->access$100(Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;)Z

    move-result v6

    invoke-static {v4, v6}, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;->access$102(Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;Z)Z

    .line 128
    const/4 v2, 0x1

    goto :goto_0

    .line 132
    .end local v4    # "wrapper":Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;
    :cond_1
    const/4 v1, 0x1

    .line 133
    .local v1, "isSameCheckState":Z
    const/4 v3, 0x0

    .line 134
    .local v3, "selectItem":Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;
    iget-object v7, p0, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog$AgreementAdapter;->mAgreements:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;

    .line 135
    .restart local v4    # "wrapper":Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;
    invoke-static {v4}, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;->access$200(Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 136
    invoke-static {p1}, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;->access$100(Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;)Z

    move-result v8

    invoke-static {v4}, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;->access$100(Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;)Z

    move-result v9

    if-eq v8, v9, :cond_2

    .line 137
    const/4 v1, 0x0

    goto :goto_1

    .line 140
    :cond_3
    move-object v3, v4

    goto :goto_1

    .line 143
    .end local v4    # "wrapper":Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;
    :cond_4
    if-eqz v1, :cond_9

    .line 144
    invoke-static {v3}, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;->access$100(Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;)Z

    move-result v7

    invoke-static {p1}, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;->access$100(Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;)Z

    move-result v8

    if-eq v7, v8, :cond_8

    move v2, v5

    .line 145
    :goto_2
    invoke-static {p1}, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;->access$100(Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;)Z

    move-result v5

    invoke-static {v3, v5}, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;->access$102(Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;Z)Z

    .line 151
    .end local v1    # "isSameCheckState":Z
    .end local v3    # "selectItem":Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;
    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    .line 152
    invoke-virtual {p0}, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog$AgreementAdapter;->notifyDataSetChanged()V

    .line 155
    :cond_6
    const/4 v0, 0x1

    .line 156
    .local v0, "actionButtonEnabled":Z
    iget-object v5, p0, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog$AgreementAdapter;->mAgreements:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;

    .line 157
    .restart local v4    # "wrapper":Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;
    iget-boolean v6, v4, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;->mRequired:Z

    if-eqz v6, :cond_7

    invoke-static {v4}, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;->access$100(Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 158
    const/4 v0, 0x0

    goto :goto_4

    .end local v0    # "actionButtonEnabled":Z
    .end local v4    # "wrapper":Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;
    .restart local v1    # "isSameCheckState":Z
    .restart local v3    # "selectItem":Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;
    :cond_8
    move v2, v6

    .line 144
    goto :goto_2

    .line 147
    :cond_9
    invoke-static {v3}, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;->access$100(Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;)Z

    move-result v7

    if-ne v7, v5, :cond_a

    move v2, v5

    .line 148
    :goto_5
    invoke-static {v3, v6}, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;->access$102(Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;Z)Z

    goto :goto_3

    :cond_a
    move v2, v6

    .line 147
    goto :goto_5

    .line 161
    .end local v1    # "isSameCheckState":Z
    .end local v3    # "selectItem":Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;
    .restart local v0    # "actionButtonEnabled":Z
    :cond_b
    iget-object v5, p0, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog$AgreementAdapter;->this$0:Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog;

    invoke-virtual {v5, v0}, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog;->setActionButtonEnabled(Z)V

    .line 162
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog$AgreementAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder;
    .locals 2
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 89
    new-instance v0, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder;

    const v1, 0x7f040162

    invoke-static {p1, v1}, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder;->getView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public setAgreements(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/agreement/core/Agreement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "agreements":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/agreement/core/Agreement;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 103
    iget-object v3, p0, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog$AgreementAdapter;->mAgreements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 104
    if-eqz p1, :cond_1

    .line 105
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/agreement/core/Agreement;

    .line 106
    .local v0, "agreement":Lcom/miui/gallery/agreement/core/Agreement;
    new-instance v2, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;

    invoke-direct {v2, v0, v5}, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;-><init>(Lcom/miui/gallery/agreement/core/Agreement;Z)V

    .line 107
    .local v2, "wrapper":Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;
    invoke-static {v2, v6}, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;->access$102(Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;Z)Z

    .line 108
    iget-object v4, p0, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog$AgreementAdapter;->mAgreements:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    .end local v0    # "agreement":Lcom/miui/gallery/agreement/core/Agreement;
    .end local v2    # "wrapper":Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog$AgreementAdapter;->mAgreements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 111
    new-instance v1, Lcom/miui/gallery/agreement/core/Agreement;

    iget-object v3, p0, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog$AgreementAdapter;->this$0:Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog;

    invoke-virtual {v3}, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0475

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v5}, Lcom/miui/gallery/agreement/core/Agreement;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 113
    .local v1, "selectItem":Lcom/miui/gallery/agreement/core/Agreement;
    new-instance v2, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;

    invoke-direct {v2, v1, v6}, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;-><init>(Lcom/miui/gallery/agreement/core/Agreement;Z)V

    .line 114
    .restart local v2    # "wrapper":Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;
    invoke-static {v2, v6}, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;->access$102(Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;Z)Z

    .line 115
    iget-object v3, p0, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog$AgreementAdapter;->mAgreements:Ljava/util/List;

    invoke-interface {v3, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 118
    .end local v1    # "selectItem":Lcom/miui/gallery/agreement/core/Agreement;
    .end local v2    # "wrapper":Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementDialog$AgreementAdapter;->notifyDataSetChanged()V

    .line 119
    return-void
.end method
