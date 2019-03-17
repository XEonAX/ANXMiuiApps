.class public final Lcom/miui/gallery/ui/AlertDialogFragment$Builder;
.super Ljava/lang/Object;
.source "AlertDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/AlertDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mCancelable:Z

.field private mCheckBoxMessage:Ljava/lang/CharSequence;

.field private mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mIsChecked:Z

.field private mMessage:Ljava/lang/CharSequence;

.field private mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private mNegativeButtonText:Ljava/lang/CharSequence;

.field private mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPositiveButtonText:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->mCancelable:Z

    return-void
.end method


# virtual methods
.method public create()Lcom/miui/gallery/ui/AlertDialogFragment;
    .locals 3

    .prologue
    .line 146
    new-instance v0, Lcom/miui/gallery/ui/AlertDialogFragment;

    invoke-direct {v0}, Lcom/miui/gallery/ui/AlertDialogFragment;-><init>()V

    .line 147
    .local v0, "dialog":Lcom/miui/gallery/ui/AlertDialogFragment;
    iget-object v1, p0, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AlertDialogFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v1, p0, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AlertDialogFragment;->setMessage(Ljava/lang/CharSequence;)V

    .line 149
    iget-boolean v1, p0, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->mIsChecked:Z

    iget-object v2, p0, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->mCheckBoxMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/AlertDialogFragment;->setCheckBox(ZLjava/lang/CharSequence;)V

    .line 150
    iget-object v1, p0, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/AlertDialogFragment;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 151
    iget-object v1, p0, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/AlertDialogFragment;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 152
    iget-object v1, p0, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AlertDialogFragment;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 153
    iget-object v1, p0, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AlertDialogFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 154
    iget-boolean v1, p0, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AlertDialogFragment;->setCancelable(Z)V

    .line 155
    return-object v0
.end method

.method public setCancelable(Z)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;
    .locals 0
    .param p1, "cancelable"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->mCancelable:Z

    .line 142
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->mMessage:Ljava/lang/CharSequence;

    .line 104
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;
    .locals 0
    .param p1, "buttonText"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 120
    iput-object p2, p0, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 121
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;
    .locals 0
    .param p1, "buttonText"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 126
    iput-object p2, p0, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 127
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 99
    return-object p0
.end method
