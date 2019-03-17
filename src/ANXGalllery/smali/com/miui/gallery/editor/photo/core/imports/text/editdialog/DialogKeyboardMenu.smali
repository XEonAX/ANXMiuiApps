.class public Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogKeyboardMenu;
.super Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;
.source "DialogKeyboardMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    const/4 v0, 0x0

    const v1, 0x7f0c04df

    const v2, 0x7f0202b9

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    .line 11
    return-void
.end method


# virtual methods
.method protected initSubMenuView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 15
    const/4 v0, 0x0

    return-object v0
.end method

.method public initializeData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "initializeData"    # Ljava/lang/Object;

    .prologue
    .line 21
    return-void
.end method

.method public bridge synthetic release()V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;->release()V

    return-void
.end method

.method public bridge synthetic setChecked(Z)V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;->setChecked(Z)V

    return-void
.end method
