.class public Lmiui/app/AlertDialog;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/AlertDialog$Builder;
    }
.end annotation


# static fields
.field public static final THEME_DARK:I = 0x2

.field public static final THEME_DARK_EDIT:I = 0x4

.field public static final THEME_DARK_EDIT_DEFAULT:I = 0x6

.field public static final THEME_DAYNIGHT:I = 0x8

.field public static final THEME_DAYNIGHT_EDIT:I = 0x9

.field public static final THEME_DAYNIGHT_EDIT_DEFAULT:I = 0xa

.field public static final THEME_LIGHT:I = 0x3

.field public static final THEME_LIGHT_EDIT:I = 0x5

.field public static final THEME_LIGHT_EDIT_DEFAULT:I = 0x7


# instance fields
.field private wR:Lcom/miui/internal/variable/AlertControllerWrapper;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 109
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmiui/app/AlertDialog;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lmiui/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 110
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 113
    invoke-static {p1, p2}, Lmiui/app/AlertDialog;->a(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 114
    new-instance p2, Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {p0}, Lmiui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p2, p1, p0, v0}, Lcom/miui/internal/variable/AlertControllerWrapper;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object p2, p0, Lmiui/app/AlertDialog;->wR:Lcom/miui/internal/variable/AlertControllerWrapper;

    .line 115
    return-void
.end method

.method static a(Landroid/content/Context;I)I
    .locals 2

    .line 134
    packed-switch p1, :pswitch_data_0

    .line 172
    const/high16 v0, 0x1000000

    if-lt p1, v0, :cond_0

    .line 173
    goto :goto_0

    .line 168
    :pswitch_0
    sget p1, Lcom/miui/internal/R$style;->Theme_DayNight_Dialog_Edit_Default:I

    .line 169
    goto :goto_0

    .line 164
    :pswitch_1
    sget p1, Lcom/miui/internal/R$style;->Theme_DayNight_Dialog_Edit:I

    .line 165
    goto :goto_0

    .line 160
    :pswitch_2
    sget p1, Lmiui/R$style;->Theme_DayNight_Dialog_Alert:I

    .line 161
    goto :goto_0

    .line 156
    :pswitch_3
    sget p1, Lcom/miui/internal/R$style;->Theme_Light_Dialog_Edit_Default:I

    .line 157
    goto :goto_0

    .line 152
    :pswitch_4
    sget p1, Lcom/miui/internal/R$style;->Theme_Dark_Dialog_Edit_Default:I

    .line 153
    goto :goto_0

    .line 148
    :pswitch_5
    sget p1, Lcom/miui/internal/R$style;->Theme_Light_Dialog_Edit:I

    .line 149
    goto :goto_0

    .line 144
    :pswitch_6
    sget p1, Lcom/miui/internal/R$style;->Theme_Dark_Dialog_Edit:I

    .line 145
    goto :goto_0

    .line 140
    :pswitch_7
    sget p1, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    .line 141
    goto :goto_0

    .line 136
    :pswitch_8
    sget p1, Lmiui/R$style;->Theme_Dark_Dialog_Alert:I

    .line 137
    goto :goto_0

    .line 175
    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v0, 0x1010309

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 177
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    .line 183
    :goto_0
    return p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lmiui/app/AlertDialog;)Lcom/miui/internal/variable/AlertControllerWrapper;
    .locals 0

    .line 50
    iget-object p0, p0, Lmiui/app/AlertDialog;->wR:Lcom/miui/internal/variable/AlertControllerWrapper;

    return-object p0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1

    .line 197
    iget-object v0, p0, Lmiui/app/AlertDialog;->wR:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/internal/variable/AlertControllerWrapper;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    return-object p1
.end method

.method public getCheckedItems()[Z
    .locals 1

    .line 302
    iget-object v0, p0, Lmiui/app/AlertDialog;->wR:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {v0}, Lcom/miui/internal/variable/AlertControllerWrapper;->getCheckedItems()[Z

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 206
    iget-object v0, p0, Lmiui/app/AlertDialog;->wR:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {v0}, Lcom/miui/internal/variable/AlertControllerWrapper;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public getMessageView()Landroid/widget/TextView;
    .locals 1

    .line 236
    iget-object v0, p0, Lmiui/app/AlertDialog;->wR:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {v0}, Lcom/miui/internal/variable/AlertControllerWrapper;->getMessageView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getMiuiActionBar()Lmiui/app/ActionBar;
    .locals 1

    .line 129
    iget-object v0, p0, Lmiui/app/AlertDialog;->wR:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {v0}, Lcom/miui/internal/variable/AlertControllerWrapper;->getImpl()Lcom/miui/internal/app/AlertControllerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/app/AlertControllerImpl;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 310
    iget-object v0, p0, Lmiui/app/AlertDialog;->wR:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {v0}, Lcom/miui/internal/variable/AlertControllerWrapper;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 119
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 120
    iget-object p1, p0, Lmiui/app/AlertDialog;->wR:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {p1}, Lcom/miui/internal/variable/AlertControllerWrapper;->installContent()V

    .line 121
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 320
    iget-object v0, p0, Lmiui/app/AlertDialog;->wR:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/variable/AlertControllerWrapper;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 315
    iget-object v0, p0, Lmiui/app/AlertDialog;->wR:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/variable/AlertControllerWrapper;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .line 272
    iget-object v0, p0, Lmiui/app/AlertDialog;->wR:Lcom/miui/internal/variable/AlertControllerWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/miui/internal/variable/AlertControllerWrapper;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 273
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 2

    .line 258
    iget-object v0, p0, Lmiui/app/AlertDialog;->wR:Lcom/miui/internal/variable/AlertControllerWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/miui/internal/variable/AlertControllerWrapper;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 259
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lmiui/app/AlertDialog;->wR:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/internal/variable/AlertControllerWrapper;->setCustomTitle(Landroid/view/View;)V

    .line 221
    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .line 281
    iget-object v0, p0, Lmiui/app/AlertDialog;->wR:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/internal/variable/AlertControllerWrapper;->setIcon(I)V

    .line 282
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 285
    iget-object v0, p0, Lmiui/app/AlertDialog;->wR:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/internal/variable/AlertControllerWrapper;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 286
    return-void
.end method

.method public setIconAttribute(I)V
    .locals 2

    .line 294
    iget-object v0, p0, Lmiui/app/AlertDialog;->wR:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {p0}, Lmiui/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lmiui/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/internal/variable/AlertControllerWrapper;->setIcon(I)V

    .line 295
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 228
    iget-object v0, p0, Lmiui/app/AlertDialog;->wR:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/internal/variable/AlertControllerWrapper;->setMessage(Ljava/lang/CharSequence;)V

    .line 229
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 211
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lmiui/app/AlertDialog;->wR:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/internal/variable/AlertControllerWrapper;->setTitle(Ljava/lang/CharSequence;)V

    .line 213
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1

    .line 244
    iget-object v0, p0, Lmiui/app/AlertDialog;->wR:Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/internal/variable/AlertControllerWrapper;->setView(Landroid/view/View;)V

    .line 245
    return-void
.end method
