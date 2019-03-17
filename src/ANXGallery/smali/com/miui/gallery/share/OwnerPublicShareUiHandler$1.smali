.class Lcom/miui/gallery/share/OwnerPublicShareUiHandler$1;
.super Ljava/lang/Object;
.source "OwnerPublicShareUiHandler.java"

# interfaces
.implements Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->tryToChangePublicStatus()V
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
.field final synthetic this$0:Lcom/miui/gallery/share/OwnerPublicShareUiHandler;


# direct methods
.method constructor <init>(Lcom/miui/gallery/share/OwnerPublicShareUiHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/share/OwnerPublicShareUiHandler;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler$1;->this$0:Lcom/miui/gallery/share/OwnerPublicShareUiHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCompletion(Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    .prologue
    .line 55
    check-cast p1, Ljava/lang/Void;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/gallery/share/OwnerPublicShareUiHandler$1;->onCompletion(Ljava/lang/Void;Ljava/lang/String;IZ)V

    return-void
.end method

.method public onCompletion(Ljava/lang/Void;Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "id"    # Ljava/lang/Void;
    .param p2, "publicUrl"    # Ljava/lang/String;
    .param p3, "error"    # I
    .param p4, "cancelled"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 60
    iget-object v0, p0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler$1;->this$0:Lcom/miui/gallery/share/OwnerPublicShareUiHandler;

    iget-object v0, v0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->mPublicPreference:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler$1;->this$0:Lcom/miui/gallery/share/OwnerPublicShareUiHandler;

    invoke-static {v3}, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->access$000(Lcom/miui/gallery/share/OwnerPublicShareUiHandler;)Lcom/miui/gallery/share/PublishProgressPreference;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 62
    if-eqz p4, :cond_0

    .line 79
    :goto_0
    return-void

    .line 66
    :cond_0
    if-nez p3, :cond_2

    .line 67
    iget-object v0, p0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler$1;->this$0:Lcom/miui/gallery/share/OwnerPublicShareUiHandler;

    iget-object v1, p0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler$1;->this$0:Lcom/miui/gallery/share/OwnerPublicShareUiHandler;

    .line 68
    invoke-static {v1}, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->access$100(Lcom/miui/gallery/share/OwnerPublicShareUiHandler;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 67
    invoke-virtual {v0, v1, p2}, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->updatePublicPreference(ZLjava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler$1;->this$0:Lcom/miui/gallery/share/OwnerPublicShareUiHandler;

    invoke-static {v0}, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->access$100(Lcom/miui/gallery/share/OwnerPublicShareUiHandler;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0c03e6

    :goto_1
    invoke-static {v0}, Lcom/miui/gallery/share/UIHelper;->toast(I)V

    .line 71
    iget-object v0, p0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler$1;->this$0:Lcom/miui/gallery/share/OwnerPublicShareUiHandler;

    invoke-static {v0}, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->access$100(Lcom/miui/gallery/share/OwnerPublicShareUiHandler;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler$1;->this$0:Lcom/miui/gallery/share/OwnerPublicShareUiHandler;

    invoke-static {v1}, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->access$100(Lcom/miui/gallery/share/OwnerPublicShareUiHandler;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 69
    :cond_1
    const v0, 0x7f0c0508

    goto :goto_1

    .line 73
    :cond_2
    iget-object v3, p0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler$1;->this$0:Lcom/miui/gallery/share/OwnerPublicShareUiHandler;

    iget-object v0, p0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler$1;->this$0:Lcom/miui/gallery/share/OwnerPublicShareUiHandler;

    invoke-static {v0}, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->access$100(Lcom/miui/gallery/share/OwnerPublicShareUiHandler;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0, p2}, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->updatePublicPreference(ZLjava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler$1;->this$0:Lcom/miui/gallery/share/OwnerPublicShareUiHandler;

    invoke-static {v0}, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->access$100(Lcom/miui/gallery/share/OwnerPublicShareUiHandler;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0c03e5

    :goto_3
    invoke-static {v0}, Lcom/miui/gallery/share/UIHelper;->toast(I)V

    .line 77
    iget-object v0, p0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler$1;->this$0:Lcom/miui/gallery/share/OwnerPublicShareUiHandler;

    invoke-static {v0}, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->access$100(Lcom/miui/gallery/share/OwnerPublicShareUiHandler;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler$1;->this$0:Lcom/miui/gallery/share/OwnerPublicShareUiHandler;

    invoke-static {v3}, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->access$100(Lcom/miui/gallery/share/OwnerPublicShareUiHandler;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_5

    :goto_4
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 73
    goto :goto_2

    .line 75
    :cond_4
    const v0, 0x7f0c0507

    goto :goto_3

    :cond_5
    move v1, v2

    .line 77
    goto :goto_4
.end method
