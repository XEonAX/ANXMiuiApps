.class Lcom/miui/gallery/share/PublicShareUiHandler$2;
.super Ljava/lang/Object;
.source "PublicShareUiHandler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/share/PublicShareUiHandler;->updatePublicPreference(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/share/PublicShareUiHandler;

.field final synthetic val$publicUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/gallery/share/PublicShareUiHandler;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/share/PublicShareUiHandler;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/miui/gallery/share/PublicShareUiHandler$2;->this$0:Lcom/miui/gallery/share/PublicShareUiHandler;

    iput-object p2, p0, Lcom/miui/gallery/share/PublicShareUiHandler$2;->val$publicUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 94
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    iget-object v2, p0, Lcom/miui/gallery/share/PublicShareUiHandler$2;->val$publicUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 96
    .local v1, "url":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 98
    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/share/PublicShareUiHandler$2;->this$0:Lcom/miui/gallery/share/PublicShareUiHandler;

    iget-object v2, v2, Lcom/miui/gallery/share/PublicShareUiHandler;->mActivity:Lcom/miui/gallery/share/ShareAlbumBaseActivity;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 99
    :catch_0
    move-exception v2

    goto :goto_0
.end method
