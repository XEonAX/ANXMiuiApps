.class Lmiui/hybrid/feature/Contact$1;
.super Landroid/os/AsyncTask;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/hybrid/feature/Contact;->lookupContact(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/hybrid/feature/Contact;

.field final synthetic val$request:Lmiui/hybrid/Request;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lmiui/hybrid/feature/Contact;Landroid/content/ContentResolver;Lmiui/hybrid/Request;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/hybrid/feature/Contact;

    .line 108
    iput-object p1, p0, Lmiui/hybrid/feature/Contact$1;->this$0:Lmiui/hybrid/feature/Contact;

    iput-object p2, p0, Lmiui/hybrid/feature/Contact$1;->val$resolver:Landroid/content/ContentResolver;

    iput-object p3, p0, Lmiui/hybrid/feature/Contact$1;->val$request:Lmiui/hybrid/Request;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lmiui/hybrid/feature/Contact$1;->doInBackground([Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lmiui/hybrid/feature/Contact$1;->val$resolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lmiui/hybrid/feature/Contact;->access$000(Landroid/content/ContentResolver;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 108
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lmiui/hybrid/feature/Contact$1;->onPostExecute(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "result"    # Lorg/json/JSONObject;

    .line 116
    iget-object v0, p0, Lmiui/hybrid/feature/Contact$1;->val$request:Lmiui/hybrid/Request;

    invoke-virtual {v0}, Lmiui/hybrid/Request;->getCallback()Lmiui/hybrid/Callback;

    move-result-object v0

    new-instance v1, Lmiui/hybrid/Response;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lmiui/hybrid/Response;-><init>(ILorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lmiui/hybrid/Callback;->callback(Lmiui/hybrid/Response;)V

    .line 117
    return-void
.end method
