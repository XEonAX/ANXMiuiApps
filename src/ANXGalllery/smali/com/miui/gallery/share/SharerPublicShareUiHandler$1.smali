.class Lcom/miui/gallery/share/SharerPublicShareUiHandler$1;
.super Ljava/lang/Object;
.source "SharerPublicShareUiHandler.java"

# interfaces
.implements Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/share/SharerPublicShareUiHandler;->tryToRequestPublicUrl()V
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
.field final synthetic this$0:Lcom/miui/gallery/share/SharerPublicShareUiHandler;


# direct methods
.method constructor <init>(Lcom/miui/gallery/share/SharerPublicShareUiHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/share/SharerPublicShareUiHandler;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/miui/gallery/share/SharerPublicShareUiHandler$1;->this$0:Lcom/miui/gallery/share/SharerPublicShareUiHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCompletion(Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Ljava/lang/Void;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/gallery/share/SharerPublicShareUiHandler$1;->onCompletion(Ljava/lang/Void;Ljava/lang/String;IZ)V

    return-void
.end method

.method public onCompletion(Ljava/lang/Void;Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "id"    # Ljava/lang/Void;
    .param p2, "publicUrl"    # Ljava/lang/String;
    .param p3, "error"    # I
    .param p4, "cancelled"    # Z

    .prologue
    .line 32
    if-eqz p4, :cond_1

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    if-nez p3, :cond_0

    if-eqz p2, :cond_0

    .line 37
    iget-object v1, p0, Lcom/miui/gallery/share/SharerPublicShareUiHandler$1;->this$0:Lcom/miui/gallery/share/SharerPublicShareUiHandler;

    .line 38
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 37
    :goto_1
    invoke-virtual {v1, v0, p2}, Lcom/miui/gallery/share/SharerPublicShareUiHandler;->updatePublicPreference(ZLjava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
