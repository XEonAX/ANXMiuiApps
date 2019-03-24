.class Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$1;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->a(Landroid/widget/ListView;I)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic jY:Landroid/widget/ListView;

.field final synthetic jZ:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;


# direct methods
.method constructor <init>(Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/widget/ListView;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$1;->jZ:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p6, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$1;->jY:Landroid/widget/ListView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 228
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 229
    iget-object p3, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$1;->jZ:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-boolean p3, p3, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mEditMode:Z

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$1;->jZ:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object p3, p3, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCheckedItems:[Z

    if-eqz p3, :cond_0

    .line 230
    iget-object p3, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$1;->jZ:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object p3, p3, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCheckedItems:[Z

    aget-boolean p3, p3, p1

    .line 231
    if-eqz p3, :cond_0

    .line 232
    iget-object p3, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$1;->jY:Landroid/widget/ListView;

    const/4 v0, 0x1

    invoke-virtual {p3, p1, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 235
    :cond_0
    return-object p2
.end method
