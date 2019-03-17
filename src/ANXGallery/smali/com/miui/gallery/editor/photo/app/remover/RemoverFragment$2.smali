.class Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment$2;
.super Lcom/miui/gallery/movie/ui/listener/SingleClickListener;
.source "RemoverFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment$2;->this$0:Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;

    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/listener/SingleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onSingleClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.miui.gallery.action.VIEW_WEB"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, "intent":Landroid/content/Intent;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "https://i.mi.com/static2?filename=MicloudWebBill/event/gallery/MagicAllh5.html%1$s#%2$s"

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment$2;->this$0:Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;

    .line 119
    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->access$400(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "&mode=dark"

    :goto_0
    aput-object v2, v5, v6

    const/4 v2, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    aput-object v6, v5, v2

    .line 117
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "url":Ljava/lang/String;
    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment$2;->this$0:Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->startActivity(Landroid/content/Intent;)V

    .line 123
    const-string v2, "photo_editor"

    const-string v3, "remove_tips_click"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void

    .line 119
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    const-string v2, ""

    goto :goto_0
.end method
