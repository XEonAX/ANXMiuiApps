.class public Lcom/miui/gallery/ui/DocumentsUIFragment;
.super Lcom/miui/gallery/widget/GalleryDialogFragment;
.source "DocumentsUIFragment.java"


# instance fields
.field private mLayoutId:I

.field private mMessage:Ljava/lang/String;

.field private mPositiveClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPositiveText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(II)Lcom/miui/gallery/ui/DocumentsUIFragment;
    .locals 3
    .param p0, "page"    # I
    .param p1, "requestCode"    # I

    .prologue
    .line 30
    new-instance v0, Lcom/miui/gallery/ui/DocumentsUIFragment;

    invoke-direct {v0}, Lcom/miui/gallery/ui/DocumentsUIFragment;-><init>()V

    .line 31
    .local v0, "docUI":Lcom/miui/gallery/ui/DocumentsUIFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 32
    .local v1, "params":Landroid/os/Bundle;
    const-string/jumbo v2, "which_page"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 33
    const-string v2, "request_code"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 34
    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/DocumentsUIFragment;->setArguments(Landroid/os/Bundle;)V

    .line 35
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/miui/gallery/ui/DocumentsUIFragment;->setCancelable(Z)V

    .line 42
    invoke-virtual {p0}, Lcom/miui/gallery/ui/DocumentsUIFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 43
    .local v1, "params":Landroid/os/Bundle;
    const-string/jumbo v3, "which_page"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 44
    .local v0, "page":I
    const-string v3, "request_code"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 45
    .local v2, "requestCode":I
    const v3, 0x7f0c01d8

    invoke-virtual {p0, v3}, Lcom/miui/gallery/ui/DocumentsUIFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/ui/DocumentsUIFragment;->mTitle:Ljava/lang/String;

    .line 46
    const v3, 0x7f0c01d3

    invoke-virtual {p0, v3}, Lcom/miui/gallery/ui/DocumentsUIFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/ui/DocumentsUIFragment;->mMessage:Ljava/lang/String;

    .line 47
    packed-switch v0, :pswitch_data_0

    .line 61
    const v3, 0x7f040073

    iput v3, p0, Lcom/miui/gallery/ui/DocumentsUIFragment;->mLayoutId:I

    .line 62
    const v3, 0x7f0c01d1

    invoke-virtual {p0, v3}, Lcom/miui/gallery/ui/DocumentsUIFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/ui/DocumentsUIFragment;->mPositiveText:Ljava/lang/String;

    .line 63
    new-instance v3, Lcom/miui/gallery/ui/DocumentsUIFragment$2;

    invoke-direct {v3, p0, v2}, Lcom/miui/gallery/ui/DocumentsUIFragment$2;-><init>(Lcom/miui/gallery/ui/DocumentsUIFragment;I)V

    iput-object v3, p0, Lcom/miui/gallery/ui/DocumentsUIFragment;->mPositiveClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 72
    :goto_0
    return-void

    .line 49
    :pswitch_0
    const v3, 0x7f040074

    iput v3, p0, Lcom/miui/gallery/ui/DocumentsUIFragment;->mLayoutId:I

    .line 50
    const v3, 0x7f0c01d2

    invoke-virtual {p0, v3}, Lcom/miui/gallery/ui/DocumentsUIFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/ui/DocumentsUIFragment;->mPositiveText:Ljava/lang/String;

    .line 51
    new-instance v3, Lcom/miui/gallery/ui/DocumentsUIFragment$1;

    invoke-direct {v3, p0, v2}, Lcom/miui/gallery/ui/DocumentsUIFragment$1;-><init>(Lcom/miui/gallery/ui/DocumentsUIFragment;I)V

    iput-object v3, p0, Lcom/miui/gallery/ui/DocumentsUIFragment;->mPositiveClickListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    new-instance v1, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/DocumentsUIFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/miui/gallery/ui/DocumentsUIFragment;->mTitle:Ljava/lang/String;

    .line 77
    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/DocumentsUIFragment;->mMessage:Ljava/lang/String;

    .line 78
    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    iget v2, p0, Lcom/miui/gallery/ui/DocumentsUIFragment;->mLayoutId:I

    .line 79
    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setView(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/DocumentsUIFragment;->mPositiveText:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/gallery/ui/DocumentsUIFragment;->mPositiveClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 80
    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    .line 82
    .local v0, "builder":Lmiui/app/AlertDialog$Builder;
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
