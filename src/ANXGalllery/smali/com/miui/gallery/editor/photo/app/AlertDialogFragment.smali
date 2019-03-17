.class public Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;
.super Lcom/miui/gallery/widget/GalleryDialogFragment;
.source "AlertDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;,
        Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Callbacks;
    }
.end annotation


# instance fields
.field private mCallbacks:Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Callbacks;

.field private mOnClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;-><init>()V

    .line 63
    new-instance v0, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$1;-><init>(Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;)Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Callbacks;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;->mCallbacks:Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Callbacks;

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 40
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;->mCallbacks:Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Callbacks;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;->mCallbacks:Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Callbacks;

    invoke-interface {v0, p0}, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Callbacks;->onCancel(Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;)V

    .line 43
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 21
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 22
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "AlertDialogFragment:message_resource"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 23
    .local v2, "res":I
    if-eqz v2, :cond_0

    .line 24
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 26
    :cond_0
    const-string v3, "AlertDialogFragment:negative_resource"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 30
    :cond_1
    const-string v3, "AlertDialogFragment:positive_resource"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 34
    :cond_2
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onDetach()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;->mCallbacks:Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Callbacks;

    .line 61
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 48
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;->mCallbacks:Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Callbacks;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;->mCallbacks:Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Callbacks;

    invoke-interface {v0, p0}, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Callbacks;->onDismiss(Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;)V

    .line 51
    :cond_0
    return-void
.end method

.method public final setCallbacks(Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Callbacks;)V
    .locals 0
    .param p1, "callbacks"    # Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Callbacks;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;->mCallbacks:Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Callbacks;

    .line 55
    return-void
.end method
