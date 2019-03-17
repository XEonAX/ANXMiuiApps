.class Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple$1;
.super Ljava/lang/Object;
.source "PickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 298
    iput-object p1, p0, Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple$1;->this$0:Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 301
    iget-object v0, p0, Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple$1;->this$0:Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;

    iget-object v0, v0, Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;->mActivity:Lcom/miui/gallery/picker/PickerActivity;

    iget-object v0, v0, Lcom/miui/gallery/picker/PickerActivity;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v0}, Lcom/miui/gallery/picker/helper/Picker;->cancel()V

    .line 302
    return-void
.end method
