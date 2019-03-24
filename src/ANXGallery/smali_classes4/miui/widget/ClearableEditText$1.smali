.class Lmiui/widget/ClearableEditText$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/ClearableEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qg:Lmiui/widget/ClearableEditText;


# direct methods
.method constructor <init>(Lmiui/widget/ClearableEditText;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lmiui/widget/ClearableEditText$1;->Qg:Lmiui/widget/ClearableEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 74
    iget-object v0, p0, Lmiui/widget/ClearableEditText$1;->Qg:Lmiui/widget/ClearableEditText;

    invoke-static {v0}, Lmiui/widget/ClearableEditText;->a(Lmiui/widget/ClearableEditText;)Z

    move-result v0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/4 v1, 0x1

    if-lez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eq v0, p1, :cond_1

    .line 75
    iget-object p1, p0, Lmiui/widget/ClearableEditText$1;->Qg:Lmiui/widget/ClearableEditText;

    iget-object v0, p0, Lmiui/widget/ClearableEditText$1;->Qg:Lmiui/widget/ClearableEditText;

    invoke-static {v0}, Lmiui/widget/ClearableEditText;->a(Lmiui/widget/ClearableEditText;)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {p1, v0}, Lmiui/widget/ClearableEditText;->a(Lmiui/widget/ClearableEditText;Z)Z

    .line 76
    iget-object p1, p0, Lmiui/widget/ClearableEditText$1;->Qg:Lmiui/widget/ClearableEditText;

    invoke-virtual {p1}, Lmiui/widget/ClearableEditText;->refreshDrawableState()V

    .line 77
    iget-object p1, p0, Lmiui/widget/ClearableEditText$1;->Qg:Lmiui/widget/ClearableEditText;

    invoke-static {p1}, Lmiui/widget/ClearableEditText;->b(Lmiui/widget/ClearableEditText;)Lmiui/widget/ClearableEditText$AccessHelper;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 78
    iget-object p1, p0, Lmiui/widget/ClearableEditText$1;->Qg:Lmiui/widget/ClearableEditText;

    invoke-static {p1}, Lmiui/widget/ClearableEditText;->b(Lmiui/widget/ClearableEditText;)Lmiui/widget/ClearableEditText$AccessHelper;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/widget/ClearableEditText$AccessHelper;->invalidateRoot()V

    .line 81
    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 70
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 66
    return-void
.end method
