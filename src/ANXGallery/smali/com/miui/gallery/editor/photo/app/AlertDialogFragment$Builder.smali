.class public Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;
.super Ljava/lang/Object;
.source "AlertDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCancellable:Z

.field private mMessageId:I

.field private mNegativeId:I

.field private mPositiveId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;
    .locals 4

    .prologue
    .line 113
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 114
    .local v0, "arguments":Landroid/os/Bundle;
    iget v2, p0, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;->mMessageId:I

    if-eqz v2, :cond_0

    .line 115
    const-string v2, "AlertDialogFragment:message_resource"

    iget v3, p0, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;->mMessageId:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 117
    :cond_0
    iget v2, p0, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;->mPositiveId:I

    if-eqz v2, :cond_1

    .line 118
    const-string v2, "AlertDialogFragment:positive_resource"

    iget v3, p0, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;->mPositiveId:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    :cond_1
    iget v2, p0, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;->mNegativeId:I

    if-eqz v2, :cond_2

    .line 121
    const-string v2, "AlertDialogFragment:negative_resource"

    iget v3, p0, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;->mNegativeId:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    :cond_2
    new-instance v1, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;

    invoke-direct {v1}, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;-><init>()V

    .line 124
    .local v1, "dialog":Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;
    iget-boolean v2, p0, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;->mCancellable:Z

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;->setCancelable(Z)V

    .line 125
    invoke-virtual {v1, v0}, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 126
    return-object v1
.end method

.method public setCancellable(Z)Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;
    .locals 0
    .param p1, "cancellable"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;->mCancellable:Z

    .line 109
    return-object p0
.end method

.method public setMessage(I)Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;
    .locals 0
    .param p1, "msg"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;->mMessageId:I

    .line 94
    return-object p0
.end method

.method public setNegativeButton(I)Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;
    .locals 0
    .param p1, "negative"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;->mNegativeId:I

    .line 104
    return-object p0
.end method

.method public setPositiveButton(I)Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;
    .locals 0
    .param p1, "positive"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Builder;->mPositiveId:I

    .line 99
    return-object p0
.end method
