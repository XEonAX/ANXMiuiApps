.class public Lmiui/phrase/PhraseEditActivity;
.super Lmiui/app/ListActivity;
.source "PhraseEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/phrase/PhraseEditActivity$PhraseListAdapter;
    }
.end annotation


# static fields
.field private static final MAX_PHRASE_SIZE:I = 0x14

.field private static final REQUEST_ADD_PHRASE:I = 0x0

.field private static final STATE_CHECKED_ITEMS:Ljava/lang/String; = "state_checked_items"


# instance fields
.field private mAdapter:Landroid/widget/BaseAdapter;

.field private mEditableListViewWrapper:Lmiui/widget/EditableListViewWrapper;

.field private mMultiChoiceModeListener:Landroid/widget/AbsListView$MultiChoiceModeListener;

.field private mPhraseList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lmiui/app/ListActivity;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/phrase/PhraseEditActivity;->mPhraseList:Ljava/util/ArrayList;

    .line 43
    iput-object v0, p0, Lmiui/phrase/PhraseEditActivity;->mAdapter:Landroid/widget/BaseAdapter;

    .line 48
    new-instance v0, Lmiui/phrase/PhraseEditActivity$1;

    invoke-direct {v0, p0}, Lmiui/phrase/PhraseEditActivity$1;-><init>(Lmiui/phrase/PhraseEditActivity;)V

    iput-object v0, p0, Lmiui/phrase/PhraseEditActivity;->mMultiChoiceModeListener:Landroid/widget/AbsListView$MultiChoiceModeListener;

    return-void
.end method

.method static synthetic access$000(Lmiui/phrase/PhraseEditActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lmiui/phrase/PhraseEditActivity;

    .line 39
    iget-object v0, p0, Lmiui/phrase/PhraseEditActivity;->mPhraseList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/phrase/PhraseEditActivity;)Landroid/widget/BaseAdapter;
    .locals 1
    .param p0, "x0"    # Lmiui/phrase/PhraseEditActivity;

    .line 39
    iget-object v0, p0, Lmiui/phrase/PhraseEditActivity;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/phrase/PhraseEditActivity;)Lmiui/widget/EditableListViewWrapper;
    .locals 1
    .param p0, "x0"    # Lmiui/phrase/PhraseEditActivity;

    .line 39
    iget-object v0, p0, Lmiui/phrase/PhraseEditActivity;->mEditableListViewWrapper:Lmiui/widget/EditableListViewWrapper;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 225
    if-nez p1, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 226
    const-string v0, "phrase_list"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 228
    .local v0, "phraseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 229
    iput-object v0, p0, Lmiui/phrase/PhraseEditActivity;->mPhraseList:Ljava/util/ArrayList;

    .line 230
    iget-object v1, p0, Lmiui/phrase/PhraseEditActivity;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 233
    .end local v0    # "phraseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 138
    invoke-super {p0, p1}, Lmiui/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    invoke-static {p0}, Landroid/provider/MiuiSettings$FrequentPhrases;->getFrequentPhrases(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lmiui/phrase/PhraseEditActivity;->mPhraseList:Ljava/util/ArrayList;

    .line 141
    new-instance v0, Lmiui/phrase/PhraseEditActivity$PhraseListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/phrase/PhraseEditActivity$PhraseListAdapter;-><init>(Lmiui/phrase/PhraseEditActivity;Lmiui/phrase/PhraseEditActivity$1;)V

    iput-object v0, p0, Lmiui/phrase/PhraseEditActivity;->mAdapter:Landroid/widget/BaseAdapter;

    .line 143
    sget v0, Lcom/miui/system/internal/R$layout;->phrase_list_header:I

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 144
    .local v0, "headerView":Landroid/view/View;
    invoke-virtual {p0}, Lmiui/phrase/PhraseEditActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 145
    .local v2, "listView":Landroid/widget/ListView;
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 146
    new-instance v1, Lmiui/phrase/PhraseEditActivity$3;

    invoke-direct {v1, p0}, Lmiui/phrase/PhraseEditActivity$3;-><init>(Lmiui/phrase/PhraseEditActivity;)V

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 188
    new-instance v1, Lmiui/widget/EditableListViewWrapper;

    invoke-virtual {p0}, Lmiui/phrase/PhraseEditActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-direct {v1, v3}, Lmiui/widget/EditableListViewWrapper;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Lmiui/phrase/PhraseEditActivity;->mEditableListViewWrapper:Lmiui/widget/EditableListViewWrapper;

    .line 189
    iget-object v1, p0, Lmiui/phrase/PhraseEditActivity;->mEditableListViewWrapper:Lmiui/widget/EditableListViewWrapper;

    iget-object v3, p0, Lmiui/phrase/PhraseEditActivity;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1, v3}, Lmiui/widget/EditableListViewWrapper;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 190
    iget-object v1, p0, Lmiui/phrase/PhraseEditActivity;->mEditableListViewWrapper:Lmiui/widget/EditableListViewWrapper;

    iget-object v3, p0, Lmiui/phrase/PhraseEditActivity;->mMultiChoiceModeListener:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-virtual {v1, v3}, Lmiui/widget/EditableListViewWrapper;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 191
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 201
    invoke-virtual {p0}, Lmiui/phrase/PhraseEditActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/miui/system/internal/R$menu;->phrase_action:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 207
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/miui/system/internal/R$id;->menu_add_phrase:I

    if-ne v0, v1, :cond_1

    .line 208
    iget-object v0, p0, Lmiui/phrase/PhraseEditActivity;->mPhraseList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/phrase/PhraseEditActivity;->mPhraseList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v2

    const/16 v3, 0x14

    if-le v0, v3, :cond_0

    .line 209
    invoke-virtual {p0}, Lmiui/phrase/PhraseEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/miui/system/internal/R$string;->frequent_phrases_size_exceeded:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 211
    .local v0, "sizeExceeded":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lmiui/phrase/PhraseEditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    .line 212
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v1

    .line 211
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 212
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 213
    .end local v0    # "sizeExceeded":Ljava/lang/CharSequence;
    goto :goto_0

    .line 214
    :cond_0
    invoke-static {}, Lmiui/content/ExtraIntent;->getAddPhraseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 215
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "phrase_list"

    iget-object v4, p0, Lmiui/phrase/PhraseEditActivity;->mPhraseList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 216
    invoke-virtual {p0, v0, v1}, Lmiui/phrase/PhraseEditActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 218
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v2

    .line 220
    :cond_1
    invoke-super {p0, p1}, Lmiui/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .line 195
    invoke-super {p0}, Lmiui/app/ListActivity;->onPause()V

    .line 196
    iget-object v0, p0, Lmiui/phrase/PhraseEditActivity;->mPhraseList:Ljava/util/ArrayList;

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$FrequentPhrases;->setFrequentPhrases(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 197
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .line 118
    invoke-super {p0, p1}, Lmiui/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 119
    const-string v0, "state_checked_items"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 120
    .local v0, "finalPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lmiui/phrase/PhraseEditActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lmiui/phrase/PhraseEditActivity$2;

    invoke-direct {v2, p0, v0}, Lmiui/phrase/PhraseEditActivity$2;-><init>(Lmiui/phrase/PhraseEditActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 134
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v0, "positions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lmiui/phrase/PhraseEditActivity;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 108
    iget-object v2, p0, Lmiui/phrase/PhraseEditActivity;->mEditableListViewWrapper:Lmiui/widget/EditableListViewWrapper;

    invoke-virtual {v2, v1}, Lmiui/widget/EditableListViewWrapper;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    .end local v1    # "i":I
    :cond_1
    const-string v1, "state_checked_items"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 113
    invoke-super {p0, p1}, Lmiui/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 114
    return-void
.end method
