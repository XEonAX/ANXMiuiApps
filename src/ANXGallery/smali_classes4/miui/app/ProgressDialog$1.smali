.class Lmiui/app/ProgressDialog$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic xv:Lmiui/app/ProgressDialog;


# direct methods
.method constructor <init>(Lmiui/app/ProgressDialog;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lmiui/app/ProgressDialog$1;->xv:Lmiui/app/ProgressDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 177
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 178
    iget-object p1, p0, Lmiui/app/ProgressDialog$1;->xv:Lmiui/app/ProgressDialog;

    invoke-static {p1}, Lmiui/app/ProgressDialog;->b(Lmiui/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lmiui/app/ProgressDialog$1;->xv:Lmiui/app/ProgressDialog;

    invoke-static {v0}, Lmiui/app/ProgressDialog;->a(Lmiui/app/ProgressDialog;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object p1, p0, Lmiui/app/ProgressDialog$1;->xv:Lmiui/app/ProgressDialog;

    invoke-static {p1}, Lmiui/app/ProgressDialog;->c(Lmiui/app/ProgressDialog;)Ljava/text/NumberFormat;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/app/ProgressDialog$1;->xv:Lmiui/app/ProgressDialog;

    .line 181
    invoke-static {p1}, Lmiui/app/ProgressDialog;->d(Lmiui/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 182
    iget-object p1, p0, Lmiui/app/ProgressDialog$1;->xv:Lmiui/app/ProgressDialog;

    invoke-static {p1}, Lmiui/app/ProgressDialog;->e(Lmiui/app/ProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    .line 183
    iget-object v0, p0, Lmiui/app/ProgressDialog$1;->xv:Lmiui/app/ProgressDialog;

    invoke-static {v0}, Lmiui/app/ProgressDialog;->e(Lmiui/app/ProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    .line 184
    int-to-double v1, p1

    int-to-double v3, v0

    div-double/2addr v1, v3

    .line 185
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 186
    iget-object v0, p0, Lmiui/app/ProgressDialog$1;->xv:Lmiui/app/ProgressDialog;

    invoke-static {v0}, Lmiui/app/ProgressDialog;->c(Lmiui/app/ProgressDialog;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 187
    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 189
    iget-object v1, p0, Lmiui/app/ProgressDialog$1;->xv:Lmiui/app/ProgressDialog;

    invoke-virtual {v1}, Lmiui/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 190
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$color;->progress_percent_color:I

    .line 191
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 192
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v1, 0x0

    .line 194
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x22

    .line 192
    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 197
    iget-object v0, p0, Lmiui/app/ProgressDialog$1;->xv:Lmiui/app/ProgressDialog;

    invoke-static {v0}, Lmiui/app/ProgressDialog;->d(Lmiui/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    :cond_0
    return-void
.end method
