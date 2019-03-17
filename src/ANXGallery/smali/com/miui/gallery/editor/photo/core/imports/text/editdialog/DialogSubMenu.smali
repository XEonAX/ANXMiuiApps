.class abstract Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;
.super Ljava/lang/Object;
.source "DialogSubMenu.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mListener:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mNavigationButton:Landroid/view/View;

.field private mNavigationDrawableRes:I

.field private mNavigationStringRes:I

.field private mRadioButton:Landroid/widget/TextView;

.field private mSubMenuView:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "navigationStringRes"    # I
    .param p4, "navigationDrawableRes"    # I

    .prologue
    .line 23
    .local p0, "this":Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;, "Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu<TT;TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;->mNavigationStringRes:I

    .line 25
    iput p4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;->mNavigationDrawableRes:I

    .line 26
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;->initNavigationRadioButton(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;->mNavigationButton:Landroid/view/View;

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;->initSubMenuView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;->mSubMenuView:Landroid/view/ViewGroup;

    .line 28
    return-void
.end method

.method private initNavigationRadioButton(Landroid/content/Context;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;, "Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu<TT;TE;>;"
    const/4 v4, 0x0

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040155

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 36
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f1202a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;->mRadioButton:Landroid/widget/TextView;

    .line 37
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;->mRadioButton:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;->mNavigationDrawableRes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 38
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;->mRadioButton:Landroid/widget/TextView;

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;->mNavigationStringRes:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    return-object v0
.end method


# virtual methods
.method getNavigationButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 45
    .local p0, "this":Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;, "Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu<TT;TE;>;"
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;->mNavigationButton:Landroid/view/View;

    return-object v0
.end method

.method getSubMenuView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;, "Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu<TT;TE;>;"
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;->mSubMenuView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method abstract initSubMenuView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
.end method

.method public abstract initializeData(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation
.end method

.method public release()V
    .locals 0

    .prologue
    .line 58
    .local p0, "this":Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;, "Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu<TT;TE;>;"
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 53
    .local p0, "this":Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;, "Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu<TT;TE;>;"
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;->mRadioButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 54
    return-void
.end method
