.class Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->a(Lcom/android/internal/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic jY:Landroid/widget/ListView;

.field final synthetic jZ:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

.field final synthetic kd:Lcom/miui/internal/app/AlertControllerImpl;


# direct methods
.method constructor <init>(Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;Landroid/widget/ListView;Lcom/miui/internal/app/AlertControllerImpl;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$4;->jZ:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p2, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$4;->jY:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$4;->kd:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 316
    iget-object p1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$4;->jZ:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object p1, p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCheckedItems:[Z

    if-eqz p1, :cond_0

    .line 317
    iget-object p1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$4;->jZ:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object p1, p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCheckedItems:[Z

    iget-object p2, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$4;->jY:Landroid/widget/ListView;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result p2

    aput-boolean p2, p1, p3

    .line 319
    :cond_0
    iget-object p1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$4;->jZ:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object p1, p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object p2, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$4;->kd:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-virtual {p2}, Lcom/miui/internal/app/AlertControllerImpl;->getDialogInterface()Landroid/content/DialogInterface;

    move-result-object p2

    iget-object p4, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$4;->jY:Landroid/widget/ListView;

    .line 320
    invoke-virtual {p4, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result p4

    .line 319
    invoke-interface {p1, p2, p3, p4}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 321
    return-void
.end method
