.class Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter;
.super Landroid/widget/BaseAdapter;
.source "ProduceCreationDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/ProduceCreationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProduceCreationAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mCreationModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/ui/ProduceCreationDialog$CreationModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/gallery/ui/ProduceCreationDialog;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/ProduceCreationDialog;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/ui/ProduceCreationDialog$CreationModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p2, "creationModels":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/ui/ProduceCreationDialog$CreationModel;>;"
    iput-object p1, p0, Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter;->this$0:Lcom/miui/gallery/ui/ProduceCreationDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 168
    iput-object p2, p0, Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter;->mCreationModelList:Ljava/util/List;

    .line 169
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter;->mCreationModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/miui/gallery/ui/ProduceCreationDialog$CreationModel;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 178
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter;->mCreationModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter;->mCreationModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/ProduceCreationDialog$CreationModel;

    .line 181
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter;->getItem(I)Lcom/miui/gallery/ui/ProduceCreationDialog$CreationModel;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 186
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, "holder":Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 193
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040060

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 194
    new-instance v0, Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter$ViewHolder;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter$ViewHolder;-><init>(Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter;Lcom/miui/gallery/ui/ProduceCreationDialog$1;)V

    .line 195
    .restart local v0    # "holder":Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter$ViewHolder;
    const v1, 0x7f120141

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 196
    const v1, 0x7f120142

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 197
    const v1, 0x7f120143

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter$ViewHolder;->information:Landroid/widget/TextView;

    .line 198
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 199
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter$ViewHolder;
    check-cast v0, Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter$ViewHolder;

    .line 202
    .restart local v0    # "holder":Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter;->getItem(I)Lcom/miui/gallery/ui/ProduceCreationDialog$CreationModel;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter$ViewHolder;->bindView(Lcom/miui/gallery/ui/ProduceCreationDialog$CreationModel;I)V

    .line 203
    return-object p2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 226
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter$ViewHolder;

    .line 227
    .local v1, "holder":Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter$ViewHolder;
    iget v2, v1, Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter$ViewHolder;->position:I

    .line 228
    .local v2, "which":I
    iget-object v3, p0, Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter;->this$0:Lcom/miui/gallery/ui/ProduceCreationDialog;

    invoke-static {v3}, Lcom/miui/gallery/ui/ProduceCreationDialog;->access$200(Lcom/miui/gallery/ui/ProduceCreationDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter;->this$0:Lcom/miui/gallery/ui/ProduceCreationDialog;

    invoke-static {v3}, Lcom/miui/gallery/ui/ProduceCreationDialog;->access$300(Lcom/miui/gallery/ui/ProduceCreationDialog;)Lcom/miui/gallery/ui/ProduceCreationDialog$OnOperationSelectedListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 229
    const-string v3, "ProduceCreationDialog"

    const-string v4, "Creation select : %d"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 230
    iget-object v3, p0, Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter;->this$0:Lcom/miui/gallery/ui/ProduceCreationDialog;

    invoke-static {v3}, Lcom/miui/gallery/ui/ProduceCreationDialog;->access$200(Lcom/miui/gallery/ui/ProduceCreationDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/ProduceCreationDialog$CreationModel;

    .line 231
    .local v0, "creationModel":Lcom/miui/gallery/ui/ProduceCreationDialog$CreationModel;
    iget-boolean v3, v0, Lcom/miui/gallery/ui/ProduceCreationDialog$CreationModel;->isRemainWhenClick:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter;->this$0:Lcom/miui/gallery/ui/ProduceCreationDialog;

    .line 232
    invoke-static {v3}, Lcom/miui/gallery/ui/ProduceCreationDialog;->access$300(Lcom/miui/gallery/ui/ProduceCreationDialog;)Lcom/miui/gallery/ui/ProduceCreationDialog$OnOperationSelectedListener;

    move-result-object v3

    iget v4, v0, Lcom/miui/gallery/ui/ProduceCreationDialog$CreationModel;->creationId:I

    invoke-interface {v3, v4}, Lcom/miui/gallery/ui/ProduceCreationDialog$OnOperationSelectedListener;->onOperationSelected(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    iget-object v3, p0, Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter;->this$0:Lcom/miui/gallery/ui/ProduceCreationDialog;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/ProduceCreationDialog;->dismissSafely()V

    .line 236
    .end local v0    # "creationModel":Lcom/miui/gallery/ui/ProduceCreationDialog$CreationModel;
    :cond_0
    return-void
.end method

.method public setInformation(ILjava/lang/String;)V
    .locals 3
    .param p1, "creationId"    # I
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 216
    iget-object v1, p0, Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter;->mCreationModelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/ProduceCreationDialog$CreationModel;

    .line 217
    .local v0, "creationModel":Lcom/miui/gallery/ui/ProduceCreationDialog$CreationModel;
    iget v2, v0, Lcom/miui/gallery/ui/ProduceCreationDialog$CreationModel;->creationId:I

    if-ne v2, p1, :cond_0

    .line 218
    iput-object p2, v0, Lcom/miui/gallery/ui/ProduceCreationDialog$CreationModel;->informationString:Ljava/lang/String;

    .line 222
    .end local v0    # "creationModel":Lcom/miui/gallery/ui/ProduceCreationDialog$CreationModel;
    :cond_1
    return-void
.end method

.method public setRemainWhenClick(IZ)V
    .locals 3
    .param p1, "creationId"    # I
    .param p2, "isRemain"    # Z

    .prologue
    .line 207
    iget-object v1, p0, Lcom/miui/gallery/ui/ProduceCreationDialog$ProduceCreationAdapter;->mCreationModelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/ProduceCreationDialog$CreationModel;

    .line 208
    .local v0, "creationModel":Lcom/miui/gallery/ui/ProduceCreationDialog$CreationModel;
    iget v2, v0, Lcom/miui/gallery/ui/ProduceCreationDialog$CreationModel;->creationId:I

    if-ne v2, p1, :cond_0

    .line 209
    iput-boolean p2, v0, Lcom/miui/gallery/ui/ProduceCreationDialog$CreationModel;->isRemainWhenClick:Z

    .line 213
    .end local v0    # "creationModel":Lcom/miui/gallery/ui/ProduceCreationDialog$CreationModel;
    :cond_1
    return-void
.end method
