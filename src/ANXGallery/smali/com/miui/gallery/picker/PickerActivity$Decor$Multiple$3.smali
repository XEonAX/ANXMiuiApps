.class Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple$3;
.super Landroid/database/DataSetObserver;
.source "PickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;->applyActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;


# direct methods
.method constructor <init>(Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple$3;->this$0:Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    .line 317
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 318
    iget-object v0, p0, Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple$3;->this$0:Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;

    iget-object v0, v0, Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;->mActivity:Lcom/miui/gallery/picker/PickerActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/picker/PickerActivity;->updateTitle()V

    .line 319
    iget-object v0, p0, Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple$3;->this$0:Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;

    invoke-static {v0}, Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;->access$000(Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;)Landroid/widget/Button;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple$3;->this$0:Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;

    iget-object v0, v0, Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;->mActivity:Lcom/miui/gallery/picker/PickerActivity;

    iget-object v0, v0, Lcom/miui/gallery/picker/PickerActivity;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v0}, Lcom/miui/gallery/picker/helper/Picker;->count()I

    move-result v0

    iget-object v2, p0, Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple$3;->this$0:Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;

    iget-object v2, v2, Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;->mActivity:Lcom/miui/gallery/picker/PickerActivity;

    iget-object v2, v2, Lcom/miui/gallery/picker/PickerActivity;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v2}, Lcom/miui/gallery/picker/helper/Picker;->baseline()I

    move-result v2

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 320
    return-void

    .line 319
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 3

    .prologue
    .line 324
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 325
    iget-object v0, p0, Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple$3;->this$0:Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;

    iget-object v0, v0, Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;->mActivity:Lcom/miui/gallery/picker/PickerActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/picker/PickerActivity;->updateTitle()V

    .line 326
    iget-object v0, p0, Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple$3;->this$0:Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;

    invoke-static {v0}, Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;->access$000(Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;)Landroid/widget/Button;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple$3;->this$0:Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;

    iget-object v0, v0, Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;->mActivity:Lcom/miui/gallery/picker/PickerActivity;

    iget-object v0, v0, Lcom/miui/gallery/picker/PickerActivity;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v0}, Lcom/miui/gallery/picker/helper/Picker;->count()I

    move-result v0

    iget-object v2, p0, Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple$3;->this$0:Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;

    iget-object v2, v2, Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;->mActivity:Lcom/miui/gallery/picker/PickerActivity;

    iget-object v2, v2, Lcom/miui/gallery/picker/PickerActivity;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v2}, Lcom/miui/gallery/picker/helper/Picker;->baseline()I

    move-result v2

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 327
    return-void

    .line 326
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
