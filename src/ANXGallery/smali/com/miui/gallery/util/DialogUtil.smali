.class public Lcom/miui/gallery/util/DialogUtil;
.super Ljava/lang/Object;
.source "DialogUtil.java"


# direct methods
.method public static createLoadingDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 17
    :try_start_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040022

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 18
    .local v2, "view":Landroid/view/View;
    const v4, 0x7f1200be

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 19
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    .line 22
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 23
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 26
    .end local v1    # "textView":Landroid/widget/TextView;
    .end local v2    # "view":Landroid/view/View;
    :goto_0
    return-object v3

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static showConfirmAlert(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "positiveListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/CharSequence;
    .param p4, "positiveButtonText"    # Ljava/lang/String;

    .prologue
    .line 168
    :try_start_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 169
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    .line 170
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 171
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 172
    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 173
    invoke-virtual {v1, p4, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 174
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 179
    :goto_0
    return-object v1

    .line 175
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 179
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static showConfirmAlertWithCancel(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/app/AlertDialog;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "positiveListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p2, "negativeListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/CharSequence;
    .param p5, "positiveButtonText"    # Ljava/lang/String;
    .param p6, "negativeTextId"    # I

    .prologue
    .line 148
    :try_start_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 149
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    .line 150
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 151
    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 152
    invoke-virtual {v1, p4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 153
    invoke-virtual {v1, p5, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 154
    invoke-virtual {v1, p6, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 155
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 160
    :goto_0
    return-object v1

    .line 156
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 160
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static showInfoDialog(Landroid/content/Context;IIIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # I
    .param p2, "titleId"    # I
    .param p3, "positiveButtonText"    # I
    .param p4, "negativeButtonText"    # I
    .param p5, "positiveButtonListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p6, "negativeButtonListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 67
    :try_start_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 69
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 70
    invoke-virtual {v1, p3, p5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 71
    invoke-virtual {v1, p4, p6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 72
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 76
    :goto_0
    return-object v1

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static showInfoDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 37
    :try_start_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 39
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    .line 40
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 41
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-object v4

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static showInfoDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "positiveButtonText"    # I
    .param p4, "negativeButtonText"    # I
    .param p5, "positiveButtonListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p6, "negativeButtonListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 97
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/miui/gallery/util/DialogUtil;->showInfoDialog(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static showInfoDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "positiveButtonText"    # I
    .param p4, "negativeButtonText"    # I
    .param p5, "positiveButtonListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p6, "negativeButtonListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p7, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 107
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lcom/miui/gallery/util/DialogUtil;->showInfoDialog(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static showInfoDialog(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cancelable"    # Z
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "positiveButtonText"    # I
    .param p5, "negativeButtonText"    # I
    .param p6, "positiveButtonListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p7, "negativeButtonListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 117
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/miui/gallery/util/DialogUtil;->showInfoDialog(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static showInfoDialog(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cancelable"    # Z
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "positiveButtonText"    # I
    .param p5, "negativeButtonText"    # I
    .param p6, "positiveButtonListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p7, "negativeButtonListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p8, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 129
    :try_start_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 130
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 131
    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 132
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 133
    invoke-virtual {v1, p4, p6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 134
    invoke-virtual {v1, p5, p7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 135
    invoke-virtual {v1, p8}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 136
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 140
    :goto_0
    return-object v1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 140
    const/4 v1, 0x0

    goto :goto_0
.end method
