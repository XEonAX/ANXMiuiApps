.class Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$3;
.super Ljava/lang/Object;
.source "ShareAlbumOwnerBaseActivity.java"

# interfaces
.implements Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->addSharer(ILcom/miui/gallery/share/CloudUserCacheEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
        "<",
        "Ljava/lang/Void;",
        "Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;

.field final synthetic val$which:I


# direct methods
.method constructor <init>(Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$3;->this$0:Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;

    iput p2, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$3;->val$which:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCompletion(Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    .prologue
    .line 139
    check-cast p1, Ljava/lang/Void;

    check-cast p2, Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$3;->onCompletion(Ljava/lang/Void;Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;IZ)V

    return-void
.end method

.method public onCompletion(Ljava/lang/Void;Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;IZ)V
    .locals 4
    .param p1, "id"    # Ljava/lang/Void;
    .param p2, "result"    # Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;
    .param p3, "error"    # I
    .param p4, "cancelled"    # Z

    .prologue
    .line 144
    if-eqz p4, :cond_0

    .line 145
    iget-object v0, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$3;->this$0:Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;

    iget-object v1, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$3;->this$0:Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;

    const v2, 0x7f0c00cc

    invoke-virtual {v1, v2}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/share/UIHelper;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 153
    :goto_0
    return-void

    .line 148
    :cond_0
    if-nez p3, :cond_1

    if-eqz p2, :cond_1

    .line 149
    invoke-static {}, Lcom/miui/gallery/share/PhoneShareAlbumProvider;->getInstance()Lcom/miui/gallery/share/PhoneShareAlbumProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$3;->this$0:Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;

    iget v2, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$3;->val$which:I

    iget-object v3, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$3;->this$0:Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;

    iget-object v3, v3, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p2, v3}, Lcom/miui/gallery/share/PhoneShareAlbumProvider;->shareOperation(Landroid/app/Activity;ILcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$3;->this$0:Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;

    iget-object v1, p0, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity$3;->this$0:Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;

    const v2, 0x7f0c01ec

    invoke-virtual {v1, v2}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/share/UIHelper;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
