.class public Lcom/miui/gallery/search/widget/SearchView;
.super Landroid/widget/LinearLayout;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/search/widget/SearchView$SearchViewListener;
    }
.end annotation


# instance fields
.field private mEditText:Lmiui/widget/ClearableEditText;

.field private mSearchViewListener:Lcom/miui/gallery/search/widget/SearchView$SearchViewListener;

.field private mVoiceButton:Landroid/view/View;

.field private mVoiceButtonEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/search/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/search/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/gallery/search/widget/SearchView;->mVoiceButtonEnabled:Z

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 55
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040138

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 56
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 58
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0, v1}, Lcom/miui/gallery/search/widget/SearchView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    const v2, 0x7f120282

    invoke-virtual {p0, v2}, Lcom/miui/gallery/search/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiui/widget/ClearableEditText;

    iput-object v2, p0, Lcom/miui/gallery/search/widget/SearchView;->mEditText:Lmiui/widget/ClearableEditText;

    .line 61
    iget-object v2, p0, Lcom/miui/gallery/search/widget/SearchView;->mEditText:Lmiui/widget/ClearableEditText;

    new-instance v3, Lcom/miui/gallery/search/widget/SearchView$1;

    invoke-direct {v3, p0}, Lcom/miui/gallery/search/widget/SearchView$1;-><init>(Lcom/miui/gallery/search/widget/SearchView;)V

    invoke-virtual {v2, v3}, Lmiui/widget/ClearableEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 69
    iget-object v2, p0, Lcom/miui/gallery/search/widget/SearchView;->mEditText:Lmiui/widget/ClearableEditText;

    new-instance v3, Lcom/miui/gallery/search/widget/SearchView$2;

    invoke-direct {v3, p0}, Lcom/miui/gallery/search/widget/SearchView$2;-><init>(Lcom/miui/gallery/search/widget/SearchView;)V

    invoke-virtual {v2, v3}, Lmiui/widget/ClearableEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 83
    iget-object v2, p0, Lcom/miui/gallery/search/widget/SearchView;->mEditText:Lmiui/widget/ClearableEditText;

    new-instance v3, Lcom/miui/gallery/search/widget/SearchView$3;

    invoke-direct {v3, p0}, Lcom/miui/gallery/search/widget/SearchView$3;-><init>(Lcom/miui/gallery/search/widget/SearchView;)V

    invoke-virtual {v2, v3}, Lmiui/widget/ClearableEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 101
    const v2, 0x7f120283

    invoke-virtual {p0, v2}, Lcom/miui/gallery/search/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const v2, 0x7f1200ed

    invoke-virtual {p0, v2}, Lcom/miui/gallery/search/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/search/widget/SearchView;->mVoiceButton:Landroid/view/View;

    .line 103
    iget-object v2, p0, Lcom/miui/gallery/search/widget/SearchView;->mVoiceButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    invoke-direct {p0}, Lcom/miui/gallery/search/widget/SearchView;->updateVoiceButtonState()V

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/search/widget/SearchView;)Lcom/miui/gallery/search/widget/SearchView$SearchViewListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/widget/SearchView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/gallery/search/widget/SearchView;->mSearchViewListener:Lcom/miui/gallery/search/widget/SearchView$SearchViewListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/search/widget/SearchView;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/search/widget/SearchView;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/miui/gallery/search/widget/SearchView;->updateVoiceButtonState()V

    return-void
.end method

.method private getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 2

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/miui/gallery/search/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private updateVoiceButtonState()V
    .locals 2

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/miui/gallery/search/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/search/widget/SearchView;->mEditText:Lmiui/widget/ClearableEditText;

    invoke-virtual {v0}, Lmiui/widget/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/miui/gallery/search/widget/SearchView;->mVoiceButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/search/widget/SearchView;->mVoiceButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public clearFocus()V
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Landroid/widget/LinearLayout;->clearFocus()V

    .line 152
    invoke-virtual {p0}, Lcom/miui/gallery/search/widget/SearchView;->hideInputMethod()Z

    .line 153
    iget-object v0, p0, Lcom/miui/gallery/search/widget/SearchView;->mEditText:Lmiui/widget/ClearableEditText;

    invoke-virtual {v0}, Lmiui/widget/ClearableEditText;->clearFocus()V

    .line 154
    return-void
.end method

.method public getQueryText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/miui/gallery/search/widget/SearchView;->mEditText:Lmiui/widget/ClearableEditText;

    invoke-virtual {v0}, Lmiui/widget/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideInputMethod()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 166
    invoke-direct {p0}, Lcom/miui/gallery/search/widget/SearchView;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 167
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/search/widget/SearchView;->mEditText:Lmiui/widget/ClearableEditText;

    invoke-virtual {v2}, Lmiui/widget/ClearableEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    const/4 v1, 0x1

    .line 170
    :cond_0
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 109
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/search/widget/SearchView;->mSearchViewListener:Lcom/miui/gallery/search/widget/SearchView$SearchViewListener;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 112
    :sswitch_0
    iget-object v0, p0, Lcom/miui/gallery/search/widget/SearchView;->mSearchViewListener:Lcom/miui/gallery/search/widget/SearchView$SearchViewListener;

    invoke-interface {v0, p0}, Lcom/miui/gallery/search/widget/SearchView$SearchViewListener;->onCancelSearch(Landroid/view/View;)V

    goto :goto_0

    .line 115
    :sswitch_1
    iget-object v0, p0, Lcom/miui/gallery/search/widget/SearchView;->mSearchViewListener:Lcom/miui/gallery/search/widget/SearchView$SearchViewListener;

    invoke-interface {v0, p0}, Lcom/miui/gallery/search/widget/SearchView$SearchViewListener;->onStartVoiceAssistant(Landroid/view/View;)V

    goto :goto_0

    .line 110
    :sswitch_data_0
    .sparse-switch
        0x7f1200ed -> :sswitch_1
        0x7f120283 -> :sswitch_0
    .end sparse-switch
.end method

.method public selectAll(Z)V
    .locals 2
    .param p1, "selectAll"    # Z

    .prologue
    .line 142
    if-eqz p1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/miui/gallery/search/widget/SearchView;->mEditText:Lmiui/widget/ClearableEditText;

    invoke-virtual {v0}, Lmiui/widget/ClearableEditText;->selectAll()V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/search/widget/SearchView;->mEditText:Lmiui/widget/ClearableEditText;

    invoke-virtual {p0}, Lcom/miui/gallery/search/widget/SearchView;->getQueryText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/gallery/search/widget/SearchView;->getQueryText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_1
    invoke-virtual {v1, v0}, Lmiui/widget/ClearableEditText;->setSelection(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setCursorVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 126
    iget-object v0, p0, Lcom/miui/gallery/search/widget/SearchView;->mEditText:Lmiui/widget/ClearableEditText;

    invoke-virtual {v0, p1}, Lmiui/widget/ClearableEditText;->setCursorVisible(Z)V

    .line 127
    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 1
    .param p1, "hintText"    # Ljava/lang/String;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/miui/gallery/search/widget/SearchView;->mEditText:Lmiui/widget/ClearableEditText;

    invoke-virtual {v0, p1}, Lmiui/widget/ClearableEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 131
    return-void
.end method

.method public setQueryText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/miui/gallery/search/widget/SearchView;->mEditText:Lmiui/widget/ClearableEditText;

    invoke-virtual {v0, p1}, Lmiui/widget/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 135
    return-void
.end method

.method public setSearchViewListener(Lcom/miui/gallery/search/widget/SearchView$SearchViewListener;)V
    .locals 0
    .param p1, "searchViewListener"    # Lcom/miui/gallery/search/widget/SearchView$SearchViewListener;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/miui/gallery/search/widget/SearchView;->mSearchViewListener:Lcom/miui/gallery/search/widget/SearchView$SearchViewListener;

    .line 123
    return-void
.end method

.method public setVoiceButtonEnabled(Z)V
    .locals 0
    .param p1, "voiceButtonEnabled"    # Z

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/miui/gallery/search/widget/SearchView;->mVoiceButtonEnabled:Z

    .line 175
    invoke-direct {p0}, Lcom/miui/gallery/search/widget/SearchView;->updateVoiceButtonState()V

    .line 176
    return-void
.end method

.method public showInputMethod()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 157
    invoke-direct {p0}, Lcom/miui/gallery/search/widget/SearchView;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 158
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 159
    iget-object v2, p0, Lcom/miui/gallery/search/widget/SearchView;->mEditText:Lmiui/widget/ClearableEditText;

    invoke-virtual {v2}, Lmiui/widget/ClearableEditText;->requestFocus()Z

    .line 160
    iget-object v2, p0, Lcom/miui/gallery/search/widget/SearchView;->mEditText:Lmiui/widget/ClearableEditText;

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v1

    .line 162
    :cond_0
    return v1
.end method
