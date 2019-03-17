.class Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;
.super Lcom/miui/gallery/picker/PickerActivity$Decor;
.source "PickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/picker/PickerActivity$Decor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Multiple"
.end annotation


# instance fields
.field private mDoneButton:Landroid/widget/Button;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Lcom/miui/gallery/picker/PickerActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/miui/gallery/picker/PickerActivity;

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/miui/gallery/picker/PickerActivity$Decor;-><init>(Lcom/miui/gallery/picker/PickerActivity;)V

    .line 280
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;->mDoneButton:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public applyActionBar()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 284
    const-string v3, "PickerActivity"

    const-string v6, "applyActionBar"

    invoke-static {v3, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v3, p0, Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;->mActivity:Lcom/miui/gallery/picker/PickerActivity;

    invoke-virtual {v3}, Lcom/miui/gallery/picker/PickerActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 286
    .local v0, "actionBar":Lmiui/app/ActionBar;
    invoke-virtual {v0, v4}, Lmiui/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 287
    invoke-virtual {v0, v5}, Lmiui/app/ActionBar;->setTabsMode(Z)V

    .line 288
    const v3, 0x7f040106

    invoke-virtual {v0, v3}, Lmiui/app/ActionBar;->setCustomView(I)V

    .line 289
    invoke-virtual {v0}, Lmiui/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 290
    .local v2, "titleView":Landroid/view/View;
    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;->mTitle:Landroid/widget/TextView;

    .line 291
    invoke-static {}, Lcom/miui/gallery/util/BuildUtil;->isInternational()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 292
    iget-object v3, p0, Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;->mTitle:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;->mActivity:Lcom/miui/gallery/picker/PickerActivity;

    const v7, 0x7f11004c

    invoke-virtual {v3, v6, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 296
    :goto_0
    const v3, 0x1020019

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 297
    .local v1, "cancel":Landroid/widget/Button;
    iget-object v3, p0, Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;->mActivity:Lcom/miui/gallery/picker/PickerActivity;

    const/4 v6, 0x3

    invoke-static {v3, v1, v6}, Lmiui/gallery/support/MiuiSdkCompat;->setEditActionModeButton(Landroid/content/Context;Landroid/widget/Button;I)V

    .line 298
    new-instance v3, Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple$1;

    invoke-direct {v3, p0}, Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple$1;-><init>(Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    const v3, 0x102001a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;->mDoneButton:Landroid/widget/Button;

    .line 305
    iget-object v3, p0, Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;->mActivity:Lcom/miui/gallery/picker/PickerActivity;

    iget-object v6, p0, Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;->mDoneButton:Landroid/widget/Button;

    const/4 v7, 0x2

    invoke-static {v3, v6, v7}, Lmiui/gallery/support/MiuiSdkCompat;->setEditActionModeButton(Landroid/content/Context;Landroid/widget/Button;I)V

    .line 306
    iget-object v3, p0, Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;->mDoneButton:Landroid/widget/Button;

    new-instance v6, Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple$2;

    invoke-direct {v6, p0}, Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple$2;-><init>(Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    iget-object v6, p0, Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;->mDoneButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;->mActivity:Lcom/miui/gallery/picker/PickerActivity;

    iget-object v3, v3, Lcom/miui/gallery/picker/PickerActivity;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v3}, Lcom/miui/gallery/picker/helper/Picker;->count()I

    move-result v3

    iget-object v7, p0, Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;->mActivity:Lcom/miui/gallery/picker/PickerActivity;

    iget-object v7, v7, Lcom/miui/gallery/picker/PickerActivity;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v7}, Lcom/miui/gallery/picker/helper/Picker;->baseline()I

    move-result v7

    if-lt v3, v7, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 314
    iget-object v3, p0, Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;->mActivity:Lcom/miui/gallery/picker/PickerActivity;

    iget-object v3, v3, Lcom/miui/gallery/picker/PickerActivity;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    new-instance v4, Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple$3;

    invoke-direct {v4, p0}, Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple$3;-><init>(Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;)V

    invoke-interface {v3, v4}, Lcom/miui/gallery/picker/helper/Picker;->registerObserver(Landroid/database/DataSetObserver;)V

    .line 329
    return-void

    .line 294
    .end local v1    # "cancel":Landroid/widget/Button;
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;->mTitle:Landroid/widget/TextView;

    sget-object v6, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .restart local v1    # "cancel":Landroid/widget/Button;
    :cond_1
    move v3, v5

    .line 312
    goto :goto_1
.end method

.method public applyTheme()V
    .locals 0

    .prologue
    .line 333
    return-void
.end method

.method public setPickerTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 340
    iget-object v0, p0, Lcom/miui/gallery/picker/PickerActivity$Decor$Multiple;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 337
    return-void
.end method
