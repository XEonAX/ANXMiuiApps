.class Lcom/miui/internal/app/AlertControllerImpl$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/app/AlertControllerImpl;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cP:Lcom/miui/internal/app/AlertControllerImpl;

.field final synthetic cQ:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/AlertControllerImpl;Landroid/widget/Button;)V
    .locals 0

    .line 725
    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl$4;->cP:Lcom/miui/internal/app/AlertControllerImpl;

    iput-object p2, p0, Lcom/miui/internal/app/AlertControllerImpl$4;->cQ:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 728
    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl$4;->cP:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-static {p1}, Lcom/miui/internal/app/AlertControllerImpl;->i(Lcom/miui/internal/app/AlertControllerImpl;)Lmiui/widget/EditableListViewWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/widget/EditableListViewWrapper;->isAllItemsChecked()Z

    move-result p1

    .line 729
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl$4;->cP:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-static {v0}, Lcom/miui/internal/app/AlertControllerImpl;->i(Lcom/miui/internal/app/AlertControllerImpl;)Lmiui/widget/EditableListViewWrapper;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/EditableListViewWrapper;->setAllItemsChecked(Z)V

    .line 730
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl$4;->cQ:Landroid/widget/Button;

    if-eqz p1, :cond_0

    sget p1, Lmiui/R$string;->select_all:I

    goto :goto_0

    .line 731
    :cond_0
    sget p1, Lmiui/R$string;->deselect_all:I

    .line 730
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 732
    return-void
.end method
