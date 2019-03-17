.class public Lmiui/gallery/support/MiuiSdkCompat;
.super Ljava/lang/Object;
.source "MiuiSdkCompat.java"


# static fields
.field private static final DARK_ICON_SUPPORTED:Lcom/miui/gallery/util/LazyValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/util/LazyValue",
            "<",
            "Landroid/content/Context;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final MIUI_SDK_LEVEL:Lcom/miui/gallery/util/LazyValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/util/LazyValue",
            "<",
            "Landroid/content/Context;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MIUI_VERSION_CODE:Lcom/miui/gallery/util/LazyValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/util/LazyValue",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lmiui/gallery/support/MiuiSdkCompat$1;

    invoke-direct {v0}, Lmiui/gallery/support/MiuiSdkCompat$1;-><init>()V

    sput-object v0, Lmiui/gallery/support/MiuiSdkCompat;->MIUI_SDK_LEVEL:Lcom/miui/gallery/util/LazyValue;

    .line 36
    new-instance v0, Lmiui/gallery/support/MiuiSdkCompat$2;

    invoke-direct {v0}, Lmiui/gallery/support/MiuiSdkCompat$2;-><init>()V

    sput-object v0, Lmiui/gallery/support/MiuiSdkCompat;->MIUI_VERSION_CODE:Lcom/miui/gallery/util/LazyValue;

    .line 46
    new-instance v0, Lmiui/gallery/support/MiuiSdkCompat$3;

    invoke-direct {v0}, Lmiui/gallery/support/MiuiSdkCompat$3;-><init>()V

    sput-object v0, Lmiui/gallery/support/MiuiSdkCompat;->DARK_ICON_SUPPORTED:Lcom/miui/gallery/util/LazyValue;

    return-void
.end method

.method private static isMiui10StyleUsable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 222
    sget-object v0, Lmiui/gallery/support/MiuiSdkCompat;->MIUI_SDK_LEVEL:Lcom/miui/gallery/util/LazyValue;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/util/LazyValue;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    sget-object v0, Lmiui/gallery/support/MiuiSdkCompat;->MIUI_VERSION_CODE:Lcom/miui/gallery/util/LazyValue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/LazyValue;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNightMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 217
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setEditActionModeButton(Landroid/content/Context;Landroid/widget/Button;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "button"    # Landroid/widget/Button;
    .param p2, "buttonType"    # I

    .prologue
    .line 67
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-static {p0}, Lmiui/gallery/support/MiuiSdkCompat;->isMiui10StyleUsable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    invoke-static {p0, p1, p2}, Lmiui/gallery/support/MiuiSdkCompat;->setEditActionModeButtonByIcon(Landroid/content/Context;Landroid/widget/Button;I)V

    goto :goto_0

    .line 73
    :cond_2
    invoke-static {p1, p2}, Lmiui/gallery/support/MiuiSdkCompat;->setEditActionModeButtonByText(Landroid/widget/Button;I)V

    goto :goto_0
.end method

.method public static setEditActionModeButton(Landroid/content/Context;Lmiui/view/EditActionMode;II)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "editActionMode"    # Lmiui/view/EditActionMode;
    .param p2, "buttonId"    # I
    .param p3, "buttonType"    # I

    .prologue
    .line 141
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    invoke-static {p0}, Lmiui/gallery/support/MiuiSdkCompat;->isMiui10StyleUsable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 146
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lmiui/gallery/support/MiuiSdkCompat;->setEditActionModeButtonByIcon(Landroid/content/Context;Lmiui/view/EditActionMode;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "MiuiSdkCompat"

    const-string v2, "set EditActionMode button icon is not supported"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    invoke-static {p1, p2, p3}, Lmiui/gallery/support/MiuiSdkCompat;->setEditActionModeButtonByText(Lmiui/view/EditActionMode;II)V

    goto :goto_0

    .line 152
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_2
    invoke-static {p1, p2, p3}, Lmiui/gallery/support/MiuiSdkCompat;->setEditActionModeButtonByText(Lmiui/view/EditActionMode;II)V

    goto :goto_0
.end method

.method private static setEditActionModeButtonByIcon(Landroid/content/Context;Landroid/widget/Button;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "button"    # Landroid/widget/Button;
    .param p2, "buttonType"    # I

    .prologue
    .line 99
    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 101
    .local v0, "res":Landroid/content/res/Resources;
    packed-switch p2, :pswitch_data_0

    .line 136
    :goto_0
    return-void

    .line 103
    :pswitch_0
    sget-object v1, Lmiui/gallery/support/MiuiSdkCompat;->DARK_ICON_SUPPORTED:Lcom/miui/gallery/util/LazyValue;

    .line 104
    invoke-virtual {v1, p0}, Lcom/miui/gallery/util/LazyValue;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lmiui/gallery/support/MiuiSdkCompat;->isNightMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lmiui/R$drawable;->action_mode_title_button_select_all_dark:I

    .line 103
    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 107
    sget v1, Lmiui/R$string;->select_all:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 104
    :cond_0
    sget v1, Lmiui/R$drawable;->action_mode_title_button_select_all_light:I

    goto :goto_1

    .line 110
    :pswitch_1
    sget-object v1, Lmiui/gallery/support/MiuiSdkCompat;->DARK_ICON_SUPPORTED:Lcom/miui/gallery/util/LazyValue;

    .line 111
    invoke-virtual {v1, p0}, Lcom/miui/gallery/util/LazyValue;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lmiui/gallery/support/MiuiSdkCompat;->isNightMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lmiui/R$drawable;->action_mode_title_button_deselect_all_dark:I

    .line 110
    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 115
    sget v1, Lmiui/R$string;->deselect_all:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 111
    :cond_1
    sget v1, Lmiui/R$drawable;->action_mode_title_button_deselect_all_light:I

    goto :goto_2

    .line 118
    :pswitch_2
    sget-object v1, Lmiui/gallery/support/MiuiSdkCompat;->DARK_ICON_SUPPORTED:Lcom/miui/gallery/util/LazyValue;

    .line 119
    invoke-virtual {v1, p0}, Lcom/miui/gallery/util/LazyValue;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lmiui/gallery/support/MiuiSdkCompat;->isNightMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lmiui/R$drawable;->action_mode_title_button_confirm_dark:I

    .line 118
    :goto_3
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 123
    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 119
    :cond_2
    sget v1, Lmiui/R$drawable;->action_mode_title_button_confirm_light:I

    goto :goto_3

    .line 126
    :pswitch_3
    sget-object v1, Lmiui/gallery/support/MiuiSdkCompat;->DARK_ICON_SUPPORTED:Lcom/miui/gallery/util/LazyValue;

    .line 127
    invoke-virtual {v1, p0}, Lcom/miui/gallery/util/LazyValue;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Lmiui/gallery/support/MiuiSdkCompat;->isNightMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lmiui/R$drawable;->action_mode_title_button_cancel_dark:I

    .line 126
    :goto_4
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 131
    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 127
    :cond_3
    sget v1, Lmiui/R$drawable;->action_mode_title_button_cancel_light:I

    goto :goto_4

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static setEditActionModeButtonByIcon(Landroid/content/Context;Lmiui/view/EditActionMode;II)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "editActionMode"    # Lmiui/view/EditActionMode;
    .param p2, "buttonId"    # I
    .param p3, "buttonType"    # I

    .prologue
    .line 178
    packed-switch p3, :pswitch_data_0

    .line 214
    :goto_0
    return-void

    .line 180
    :pswitch_0
    const-string v1, ""

    sget-object v0, Lmiui/gallery/support/MiuiSdkCompat;->DARK_ICON_SUPPORTED:Lcom/miui/gallery/util/LazyValue;

    .line 182
    invoke-virtual {v0, p0}, Lcom/miui/gallery/util/LazyValue;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lmiui/gallery/support/MiuiSdkCompat;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lmiui/R$drawable;->action_mode_title_button_select_all_dark:I

    .line 180
    :goto_1
    invoke-interface {p1, p2, v1, v0}, Lmiui/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    goto :goto_0

    .line 182
    :cond_0
    sget v0, Lmiui/R$drawable;->action_mode_title_button_select_all_light:I

    goto :goto_1

    .line 188
    :pswitch_1
    const-string v1, ""

    sget-object v0, Lmiui/gallery/support/MiuiSdkCompat;->DARK_ICON_SUPPORTED:Lcom/miui/gallery/util/LazyValue;

    .line 190
    invoke-virtual {v0, p0}, Lcom/miui/gallery/util/LazyValue;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lmiui/gallery/support/MiuiSdkCompat;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lmiui/R$drawable;->action_mode_title_button_deselect_all_dark:I

    .line 188
    :goto_2
    invoke-interface {p1, p2, v1, v0}, Lmiui/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    goto :goto_0

    .line 190
    :cond_1
    sget v0, Lmiui/R$drawable;->action_mode_title_button_deselect_all_light:I

    goto :goto_2

    .line 196
    :pswitch_2
    const-string v1, ""

    sget-object v0, Lmiui/gallery/support/MiuiSdkCompat;->DARK_ICON_SUPPORTED:Lcom/miui/gallery/util/LazyValue;

    .line 198
    invoke-virtual {v0, p0}, Lcom/miui/gallery/util/LazyValue;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lmiui/gallery/support/MiuiSdkCompat;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lmiui/R$drawable;->action_mode_title_button_confirm_dark:I

    .line 196
    :goto_3
    invoke-interface {p1, p2, v1, v0}, Lmiui/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    goto :goto_0

    .line 198
    :cond_2
    sget v0, Lmiui/R$drawable;->action_mode_title_button_confirm_light:I

    goto :goto_3

    .line 204
    :pswitch_3
    const-string v1, ""

    sget-object v0, Lmiui/gallery/support/MiuiSdkCompat;->DARK_ICON_SUPPORTED:Lcom/miui/gallery/util/LazyValue;

    .line 206
    invoke-virtual {v0, p0}, Lcom/miui/gallery/util/LazyValue;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lmiui/gallery/support/MiuiSdkCompat;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lmiui/R$drawable;->action_mode_title_button_cancel_dark:I

    .line 204
    :goto_4
    invoke-interface {p1, p2, v1, v0}, Lmiui/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    goto :goto_0

    .line 206
    :cond_3
    sget v0, Lmiui/R$drawable;->action_mode_title_button_cancel_light:I

    goto :goto_4

    .line 178
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static setEditActionModeButtonByText(Landroid/widget/Button;I)V
    .locals 1
    .param p0, "button"    # Landroid/widget/Button;
    .param p1, "buttonType"    # I

    .prologue
    .line 80
    packed-switch p1, :pswitch_data_0

    .line 96
    :goto_0
    return-void

    .line 82
    :pswitch_0
    sget v0, Lmiui/R$string;->select_all:I

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 85
    :pswitch_1
    sget v0, Lmiui/R$string;->deselect_all:I

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 88
    :pswitch_2
    const v0, 0x104000a

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 91
    :pswitch_3
    const/high16 v0, 0x1040000

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static setEditActionModeButtonByText(Lmiui/view/EditActionMode;II)V
    .locals 1
    .param p0, "editActionMode"    # Lmiui/view/EditActionMode;
    .param p1, "buttonId"    # I
    .param p2, "buttonType"    # I

    .prologue
    .line 158
    packed-switch p2, :pswitch_data_0

    .line 174
    :goto_0
    return-void

    .line 160
    :pswitch_0
    sget v0, Lmiui/R$string;->select_all:I

    invoke-interface {p0, p1, v0}, Lmiui/view/EditActionMode;->setButton(II)V

    goto :goto_0

    .line 163
    :pswitch_1
    sget v0, Lmiui/R$string;->deselect_all:I

    invoke-interface {p0, p1, v0}, Lmiui/view/EditActionMode;->setButton(II)V

    goto :goto_0

    .line 166
    :pswitch_2
    const v0, 0x104000a

    invoke-interface {p0, p1, v0}, Lmiui/view/EditActionMode;->setButton(II)V

    goto :goto_0

    .line 169
    :pswitch_3
    const/high16 v0, 0x1040000

    invoke-interface {p0, p1, v0}, Lmiui/view/EditActionMode;->setButton(II)V

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
