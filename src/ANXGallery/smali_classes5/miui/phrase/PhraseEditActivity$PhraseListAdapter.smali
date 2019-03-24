.class Lmiui/phrase/PhraseEditActivity$PhraseListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhraseEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/phrase/PhraseEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhraseListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/phrase/PhraseEditActivity$PhraseListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/phrase/PhraseEditActivity;


# direct methods
.method private constructor <init>(Lmiui/phrase/PhraseEditActivity;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lmiui/phrase/PhraseEditActivity$PhraseListAdapter;->this$0:Lmiui/phrase/PhraseEditActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/phrase/PhraseEditActivity;Lmiui/phrase/PhraseEditActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/phrase/PhraseEditActivity;
    .param p2, "x1"    # Lmiui/phrase/PhraseEditActivity$1;

    .line 235
    invoke-direct {p0, p1}, Lmiui/phrase/PhraseEditActivity$PhraseListAdapter;-><init>(Lmiui/phrase/PhraseEditActivity;)V

    return-void
.end method

.method private newView()Landroid/view/View;
    .locals 3

    .line 280
    iget-object v0, p0, Lmiui/phrase/PhraseEditActivity$PhraseListAdapter;->this$0:Lmiui/phrase/PhraseEditActivity;

    sget v1, Lcom/miui/system/internal/R$layout;->phrase_list_item:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 239
    iget-object v0, p0, Lmiui/phrase/PhraseEditActivity$PhraseListAdapter;->this$0:Lmiui/phrase/PhraseEditActivity;

    invoke-static {v0}, Lmiui/phrase/PhraseEditActivity;->access$000(Lmiui/phrase/PhraseEditActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/phrase/PhraseEditActivity$PhraseListAdapter;->this$0:Lmiui/phrase/PhraseEditActivity;

    invoke-static {v0}, Lmiui/phrase/PhraseEditActivity;->access$000(Lmiui/phrase/PhraseEditActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 244
    iget-object v0, p0, Lmiui/phrase/PhraseEditActivity$PhraseListAdapter;->this$0:Lmiui/phrase/PhraseEditActivity;

    invoke-static {v0}, Lmiui/phrase/PhraseEditActivity;->access$000(Lmiui/phrase/PhraseEditActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 245
    const/4 v0, 0x0

    return-object v0

    .line 247
    :cond_0
    iget-object v0, p0, Lmiui/phrase/PhraseEditActivity$PhraseListAdapter;->this$0:Lmiui/phrase/PhraseEditActivity;

    invoke-static {v0}, Lmiui/phrase/PhraseEditActivity;->access$000(Lmiui/phrase/PhraseEditActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 252
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 262
    move-object v0, p2

    .line 263
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 264
    invoke-direct {p0}, Lmiui/phrase/PhraseEditActivity$PhraseListAdapter;->newView()Landroid/view/View;

    move-result-object v0

    .line 266
    new-instance v1, Lmiui/phrase/PhraseEditActivity$PhraseListAdapter$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lmiui/phrase/PhraseEditActivity$PhraseListAdapter$ViewHolder;-><init>(Lmiui/phrase/PhraseEditActivity$PhraseListAdapter;Lmiui/phrase/PhraseEditActivity$1;)V

    .line 267
    .local v1, "holder":Lmiui/phrase/PhraseEditActivity$PhraseListAdapter$ViewHolder;
    const v2, 0x1020014

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v1, v2}, Lmiui/phrase/PhraseEditActivity$PhraseListAdapter$ViewHolder;->access$502(Lmiui/phrase/PhraseEditActivity$PhraseListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 268
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 271
    .end local v1    # "holder":Lmiui/phrase/PhraseEditActivity$PhraseListAdapter$ViewHolder;
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/phrase/PhraseEditActivity$PhraseListAdapter$ViewHolder;

    .line 272
    .restart local v1    # "holder":Lmiui/phrase/PhraseEditActivity$PhraseListAdapter$ViewHolder;
    if-eqz v1, :cond_1

    .line 273
    invoke-static {v1}, Lmiui/phrase/PhraseEditActivity$PhraseListAdapter$ViewHolder;->access$500(Lmiui/phrase/PhraseEditActivity$PhraseListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lmiui/phrase/PhraseEditActivity$PhraseListAdapter;->this$0:Lmiui/phrase/PhraseEditActivity;

    invoke-static {v3}, Lmiui/phrase/PhraseEditActivity;->access$000(Lmiui/phrase/PhraseEditActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    :cond_1
    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 257
    const/4 v0, 0x1

    return v0
.end method
