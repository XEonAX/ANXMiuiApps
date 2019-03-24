.class public Lmiui/app/ProgressDialog;
.super Lmiui/app/AlertDialog;
.source "SourceFile"


# static fields
.field public static final STYLE_HORIZONTAL:I = 0x1

.field public static final STYLE_SPINNER:I


# instance fields
.field private cy:Landroid/widget/TextView;

.field private mMessage:Ljava/lang/CharSequence;

.field private xg:Landroid/widget/ProgressBar;

.field private xh:Landroid/widget/TextView;

.field private xi:I

.field private xj:Ljava/lang/String;

.field private xk:Ljava/text/NumberFormat;

.field private xl:I

.field private xm:I

.field private xn:I

.field private xo:I

.field private xp:I

.field private xq:Landroid/graphics/drawable/Drawable;

.field private xr:Landroid/graphics/drawable/Drawable;

.field private xs:Z

.field private xt:Z

.field private xu:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lmiui/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 p1, 0x0

    iput p1, p0, Lmiui/app/ProgressDialog;->xi:I

    .line 69
    invoke-direct {p0}, Lmiui/app/ProgressDialog;->cb()V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2}, Lmiui/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 43
    const/4 p1, 0x0

    iput p1, p0, Lmiui/app/ProgressDialog;->xi:I

    .line 86
    invoke-direct {p0}, Lmiui/app/ProgressDialog;->cb()V

    .line 87
    return-void
.end method

.method static synthetic a(Lmiui/app/ProgressDialog;)Ljava/lang/CharSequence;
    .locals 0

    .line 28
    iget-object p0, p0, Lmiui/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic b(Lmiui/app/ProgressDialog;)Landroid/widget/TextView;
    .locals 0

    .line 28
    iget-object p0, p0, Lmiui/app/ProgressDialog;->cy:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Lmiui/app/ProgressDialog;)Ljava/text/NumberFormat;
    .locals 0

    .line 28
    iget-object p0, p0, Lmiui/app/ProgressDialog;->xk:Ljava/text/NumberFormat;

    return-object p0
.end method

.method private cb()V
    .locals 2

    .line 90
    const-string v0, "%1d/%2d"

    iput-object v0, p0, Lmiui/app/ProgressDialog;->xj:Ljava/lang/String;

    .line 91
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/ProgressDialog;->xk:Ljava/text/NumberFormat;

    .line 92
    iget-object v0, p0, Lmiui/app/ProgressDialog;->xk:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 93
    return-void
.end method

.method static synthetic d(Lmiui/app/ProgressDialog;)Landroid/widget/TextView;
    .locals 0

    .line 28
    iget-object p0, p0, Lmiui/app/ProgressDialog;->xh:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic e(Lmiui/app/ProgressDialog;)Landroid/widget/ProgressBar;
    .locals 0

    .line 28
    iget-object p0, p0, Lmiui/app/ProgressDialog;->xg:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private onProgressChanged()V
    .locals 2

    .line 466
    iget v0, p0, Lmiui/app/ProgressDialog;->xi:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 467
    iget-object v0, p0, Lmiui/app/ProgressDialog;->xu:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/app/ProgressDialog;->xu:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    iget-object v0, p0, Lmiui/app/ProgressDialog;->xu:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 471
    :cond_0
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lmiui/app/ProgressDialog;
    .locals 1

    .line 105
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lmiui/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lmiui/app/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lmiui/app/ProgressDialog;
    .locals 6

    .line 119
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lmiui/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lmiui/app/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lmiui/app/ProgressDialog;
    .locals 6

    .line 134
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lmiui/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lmiui/app/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lmiui/app/ProgressDialog;
    .locals 1

    .line 151
    new-instance v0, Lmiui/app/ProgressDialog;

    invoke-direct {v0, p0}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 152
    invoke-virtual {v0, p1}, Lmiui/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 153
    invoke-virtual {v0, p2}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 154
    invoke-virtual {v0, p3}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 155
    invoke-virtual {v0, p4}, Lmiui/app/ProgressDialog;->setCancelable(Z)V

    .line 156
    invoke-virtual {v0, p5}, Lmiui/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 157
    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->show()V

    .line 158
    return-object v0
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .line 314
    iget-object v0, p0, Lmiui/app/ProgressDialog;->xg:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lmiui/app/ProgressDialog;->xg:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    return v0

    .line 317
    :cond_0
    iget v0, p0, Lmiui/app/ProgressDialog;->xl:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 290
    iget-object v0, p0, Lmiui/app/ProgressDialog;->xg:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lmiui/app/ProgressDialog;->xg:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    return v0

    .line 293
    :cond_0
    iget v0, p0, Lmiui/app/ProgressDialog;->xm:I

    return v0
.end method

.method public getSecondaryProgress()I
    .locals 1

    .line 302
    iget-object v0, p0, Lmiui/app/ProgressDialog;->xg:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lmiui/app/ProgressDialog;->xg:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v0

    return v0

    .line 305
    :cond_0
    iget v0, p0, Lmiui/app/ProgressDialog;->xn:I

    return v0
.end method

.method public incrementProgressBy(I)V
    .locals 1

    .line 340
    iget-object v0, p0, Lmiui/app/ProgressDialog;->xg:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lmiui/app/ProgressDialog;->xg:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 342
    invoke-direct {p0}, Lmiui/app/ProgressDialog;->onProgressChanged()V

    goto :goto_0

    .line 344
    :cond_0
    iget v0, p0, Lmiui/app/ProgressDialog;->xo:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiui/app/ProgressDialog;->xo:I

    .line 346
    :goto_0
    return-void
.end method

.method public incrementSecondaryProgressBy(I)V
    .locals 1

    .line 354
    iget-object v0, p0, Lmiui/app/ProgressDialog;->xg:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lmiui/app/ProgressDialog;->xg:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    .line 356
    invoke-direct {p0}, Lmiui/app/ProgressDialog;->onProgressChanged()V

    goto :goto_0

    .line 358
    :cond_0
    iget v0, p0, Lmiui/app/ProgressDialog;->xp:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiui/app/ProgressDialog;->xp:I

    .line 360
    :goto_0
    return-void
.end method

.method public isIndeterminate()Z
    .locals 1

    .line 410
    iget-object v0, p0, Lmiui/app/ProgressDialog;->xg:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lmiui/app/ProgressDialog;->xg:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    return v0

    .line 413
    :cond_0
    iget-boolean v0, p0, Lmiui/app/ProgressDialog;->xs:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 163
    invoke-virtual {p0}, Lmiui/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 164
    invoke-virtual {p0}, Lmiui/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/miui/internal/R$styleable;->AlertDialog:[I

    const/4 v3, 0x0

    const v4, 0x101005d

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 169
    iget v2, p0, Lmiui/app/ProgressDialog;->xi:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 174
    new-instance v2, Lmiui/app/ProgressDialog$1;

    invoke-direct {v2, p0}, Lmiui/app/ProgressDialog$1;-><init>(Lmiui/app/ProgressDialog;)V

    iput-object v2, p0, Lmiui/app/ProgressDialog;->xu:Landroid/os/Handler;

    .line 201
    sget v2, Lcom/miui/internal/R$styleable;->AlertDialog_horizontalProgressLayout:I

    sget v4, Lcom/miui/internal/R$layout;->alert_dialog_progress:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 204
    sget v2, Lcom/miui/internal/R$id;->progress_percent:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lmiui/app/ProgressDialog;->xh:Landroid/widget/TextView;

    goto :goto_0

    .line 206
    :cond_0
    sget v2, Lcom/miui/internal/R$styleable;->AlertDialog_progressLayout:I

    sget v4, Lcom/miui/internal/R$layout;->progress_dialog:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 210
    :goto_0
    const v2, 0x102000d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lmiui/app/ProgressDialog;->xg:Landroid/widget/ProgressBar;

    .line 211
    sget v2, Lmiui/R$id;->message:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lmiui/app/ProgressDialog;->cy:Landroid/widget/TextView;

    .line 212
    invoke-virtual {p0, v0}, Lmiui/app/ProgressDialog;->setView(Landroid/view/View;)V

    .line 214
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 215
    iget v0, p0, Lmiui/app/ProgressDialog;->xl:I

    if-lez v0, :cond_1

    .line 216
    iget v0, p0, Lmiui/app/ProgressDialog;->xl:I

    invoke-virtual {p0, v0}, Lmiui/app/ProgressDialog;->setMax(I)V

    .line 218
    :cond_1
    iget v0, p0, Lmiui/app/ProgressDialog;->xm:I

    if-lez v0, :cond_2

    .line 219
    iget v0, p0, Lmiui/app/ProgressDialog;->xm:I

    invoke-virtual {p0, v0}, Lmiui/app/ProgressDialog;->setProgress(I)V

    .line 221
    :cond_2
    iget v0, p0, Lmiui/app/ProgressDialog;->xn:I

    if-lez v0, :cond_3

    .line 222
    iget v0, p0, Lmiui/app/ProgressDialog;->xn:I

    invoke-virtual {p0, v0}, Lmiui/app/ProgressDialog;->setSecondaryProgress(I)V

    .line 224
    :cond_3
    iget v0, p0, Lmiui/app/ProgressDialog;->xo:I

    if-lez v0, :cond_4

    .line 225
    iget v0, p0, Lmiui/app/ProgressDialog;->xo:I

    invoke-virtual {p0, v0}, Lmiui/app/ProgressDialog;->incrementProgressBy(I)V

    .line 227
    :cond_4
    iget v0, p0, Lmiui/app/ProgressDialog;->xp:I

    if-lez v0, :cond_5

    .line 228
    iget v0, p0, Lmiui/app/ProgressDialog;->xp:I

    invoke-virtual {p0, v0}, Lmiui/app/ProgressDialog;->incrementSecondaryProgressBy(I)V

    .line 230
    :cond_5
    iget-object v0, p0, Lmiui/app/ProgressDialog;->xq:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 231
    iget-object v0, p0, Lmiui/app/ProgressDialog;->xq:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lmiui/app/ProgressDialog;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 233
    :cond_6
    iget-object v0, p0, Lmiui/app/ProgressDialog;->xr:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 234
    iget-object v0, p0, Lmiui/app/ProgressDialog;->xr:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lmiui/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    :cond_7
    iget-object v0, p0, Lmiui/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    .line 237
    iget-object v0, p0, Lmiui/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 239
    :cond_8
    iget-boolean v0, p0, Lmiui/app/ProgressDialog;->xs:Z

    invoke-virtual {p0, v0}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 240
    invoke-direct {p0}, Lmiui/app/ProgressDialog;->onProgressChanged()V

    .line 241
    invoke-super {p0, p1}, Lmiui/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 242
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 246
    invoke-super {p0}, Lmiui/app/AlertDialog;->onStart()V

    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/app/ProgressDialog;->xt:Z

    .line 248
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 252
    invoke-super {p0}, Lmiui/app/AlertDialog;->onStop()V

    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/app/ProgressDialog;->xt:Z

    .line 254
    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 1

    .line 397
    iget-object v0, p0, Lmiui/app/ProgressDialog;->xg:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lmiui/app/ProgressDialog;->xg:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_0

    .line 400
    :cond_0
    iput-boolean p1, p0, Lmiui/app/ProgressDialog;->xs:Z

    .line 402
    :goto_0
    return-void
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 383
    iget-object v0, p0, Lmiui/app/ProgressDialog;->xg:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lmiui/app/ProgressDialog;->xg:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 386
    :cond_0
    iput-object p1, p0, Lmiui/app/ProgressDialog;->xr:Landroid/graphics/drawable/Drawable;

    .line 388
    :goto_0
    return-void
.end method

.method public setMax(I)V
    .locals 1

    .line 326
    iget-object v0, p0, Lmiui/app/ProgressDialog;->xg:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lmiui/app/ProgressDialog;->xg:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 328
    invoke-direct {p0}, Lmiui/app/ProgressDialog;->onProgressChanged()V

    goto :goto_0

    .line 330
    :cond_0
    iput p1, p0, Lmiui/app/ProgressDialog;->xl:I

    .line 332
    :goto_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2

    .line 418
    iget-object v0, p0, Lmiui/app/ProgressDialog;->xg:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 419
    iget v0, p0, Lmiui/app/ProgressDialog;->xi:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 420
    iput-object p1, p0, Lmiui/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    .line 422
    :cond_0
    iget-object v0, p0, Lmiui/app/ProgressDialog;->cy:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 424
    :cond_1
    iput-object p1, p0, Lmiui/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    .line 426
    :goto_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 262
    iget-boolean v0, p0, Lmiui/app/ProgressDialog;->xt:Z

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lmiui/app/ProgressDialog;->xg:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 264
    invoke-direct {p0}, Lmiui/app/ProgressDialog;->onProgressChanged()V

    goto :goto_0

    .line 266
    :cond_0
    iput p1, p0, Lmiui/app/ProgressDialog;->xm:I

    .line 268
    :goto_0
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 369
    iget-object v0, p0, Lmiui/app/ProgressDialog;->xg:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lmiui/app/ProgressDialog;->xg:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 372
    :cond_0
    iput-object p1, p0, Lmiui/app/ProgressDialog;->xq:Landroid/graphics/drawable/Drawable;

    .line 374
    :goto_0
    return-void
.end method

.method public setProgressNumberFormat(Ljava/lang/String;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lmiui/app/ProgressDialog;->xj:Ljava/lang/String;

    .line 449
    invoke-direct {p0}, Lmiui/app/ProgressDialog;->onProgressChanged()V

    .line 450
    return-void
.end method

.method public setProgressPercentFormat(Ljava/text/NumberFormat;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lmiui/app/ProgressDialog;->xk:Ljava/text/NumberFormat;

    .line 462
    invoke-direct {p0}, Lmiui/app/ProgressDialog;->onProgressChanged()V

    .line 463
    return-void
.end method

.method public setProgressStyle(I)V
    .locals 0

    .line 436
    iput p1, p0, Lmiui/app/ProgressDialog;->xi:I

    .line 437
    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 1

    .line 276
    iget-object v0, p0, Lmiui/app/ProgressDialog;->xg:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lmiui/app/ProgressDialog;->xg:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 278
    invoke-direct {p0}, Lmiui/app/ProgressDialog;->onProgressChanged()V

    goto :goto_0

    .line 280
    :cond_0
    iput p1, p0, Lmiui/app/ProgressDialog;->xn:I

    .line 282
    :goto_0
    return-void
.end method
