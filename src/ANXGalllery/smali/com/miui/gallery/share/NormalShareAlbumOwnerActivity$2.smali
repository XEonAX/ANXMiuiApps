.class Lcom/miui/gallery/share/NormalShareAlbumOwnerActivity$2;
.super Ljava/lang/Object;
.source "NormalShareAlbumOwnerActivity.java"

# interfaces
.implements Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/share/NormalShareAlbumOwnerActivity;->tryToRequestBarcodeUrl()V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/share/NormalShareAlbumOwnerActivity;


# direct methods
.method constructor <init>(Lcom/miui/gallery/share/NormalShareAlbumOwnerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/share/NormalShareAlbumOwnerActivity;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/miui/gallery/share/NormalShareAlbumOwnerActivity$2;->this$0:Lcom/miui/gallery/share/NormalShareAlbumOwnerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCompletion(Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    .prologue
    .line 105
    check-cast p1, Ljava/lang/Void;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/gallery/share/NormalShareAlbumOwnerActivity$2;->onCompletion(Ljava/lang/Void;Ljava/lang/String;IZ)V

    return-void
.end method

.method public onCompletion(Ljava/lang/Void;Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "id"    # Ljava/lang/Void;
    .param p2, "barcode"    # Ljava/lang/String;
    .param p3, "error"    # I
    .param p4, "cancelled"    # Z

    .prologue
    .line 109
    if-eqz p4, :cond_0

    .line 121
    :goto_0
    return-void

    .line 114
    :cond_0
    if-nez p3, :cond_1

    if-eqz p2, :cond_1

    .line 115
    iget-object v0, p0, Lcom/miui/gallery/share/NormalShareAlbumOwnerActivity$2;->this$0:Lcom/miui/gallery/share/NormalShareAlbumOwnerActivity;

    invoke-static {v0}, Lcom/miui/gallery/share/NormalShareAlbumOwnerActivity;->access$100(Lcom/miui/gallery/share/NormalShareAlbumOwnerActivity;)Lcom/miui/gallery/share/QRPreference;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/miui/gallery/share/QRPreference;->setQRText(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/miui/gallery/share/NormalShareAlbumOwnerActivity$2;->this$0:Lcom/miui/gallery/share/NormalShareAlbumOwnerActivity;

    invoke-static {v0}, Lcom/miui/gallery/share/NormalShareAlbumOwnerActivity;->access$100(Lcom/miui/gallery/share/NormalShareAlbumOwnerActivity;)Lcom/miui/gallery/share/QRPreference;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/share/QRPreference$Status;->SUCCESS:Lcom/miui/gallery/share/QRPreference$Status;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/share/QRPreference;->setStatus(Lcom/miui/gallery/share/QRPreference$Status;)V

    goto :goto_0

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/share/NormalShareAlbumOwnerActivity$2;->this$0:Lcom/miui/gallery/share/NormalShareAlbumOwnerActivity;

    invoke-static {v0}, Lcom/miui/gallery/share/NormalShareAlbumOwnerActivity;->access$100(Lcom/miui/gallery/share/NormalShareAlbumOwnerActivity;)Lcom/miui/gallery/share/QRPreference;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/share/QRPreference$Status;->FAILED:Lcom/miui/gallery/share/QRPreference$Status;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/share/QRPreference;->setStatus(Lcom/miui/gallery/share/QRPreference$Status;)V

    goto :goto_0
.end method
