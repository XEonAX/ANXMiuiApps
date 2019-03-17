.class final Lcom/miui/gallery/provider/CloudUtils$2;
.super Landroid/os/AsyncTask;
.source "CloudUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/provider/CloudUtils;->callMethodAsync(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$args:Landroid/os/Bundle;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$method:Ljava/lang/String;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/miui/gallery/provider/CloudUtils$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/gallery/provider/CloudUtils$2;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/miui/gallery/provider/CloudUtils$2;->val$method:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/gallery/provider/CloudUtils$2;->val$args:Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 367
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/provider/CloudUtils$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    .line 371
    iget-object v0, p0, Lcom/miui/gallery/provider/CloudUtils$2;->val$context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/miui/gallery/provider/CloudUtils$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/CloudUtils$2;->val$uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/gallery/provider/CloudUtils$2;->val$method:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/gallery/provider/CloudUtils$2;->val$args:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 374
    :cond_0
    return-object v4
.end method
