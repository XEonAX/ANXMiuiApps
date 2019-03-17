.class Lmiui/external/SdkErrorActivity$2$1;
.super Landroid/os/AsyncTask;
.source "SdkErrorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/external/SdkErrorActivity$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/external/SdkErrorActivity$2;

.field final synthetic val$updateDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lmiui/external/SdkErrorActivity$2;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lmiui/external/SdkErrorActivity$2$1;->this$1:Lmiui/external/SdkErrorActivity$2;

    iput-object p2, p0, Lmiui/external/SdkErrorActivity$2$1;->val$updateDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 83
    const-wide/16 v2, 0x1388

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    iget-object v1, p0, Lmiui/external/SdkErrorActivity$2$1;->this$1:Lmiui/external/SdkErrorActivity$2;

    iget-object v1, v1, Lmiui/external/SdkErrorActivity$2;->this$0:Lmiui/external/SdkErrorActivity;

    invoke-static {v1}, Lmiui/external/SdkErrorActivity;->access$100(Lmiui/external/SdkErrorActivity;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 78
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmiui/external/SdkErrorActivity$2$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 92
    iget-object v1, p0, Lmiui/external/SdkErrorActivity$2$1;->val$updateDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 93
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/external/SdkErrorActivity$2$1;->this$1:Lmiui/external/SdkErrorActivity$2;

    iget-object v1, v1, Lmiui/external/SdkErrorActivity$2;->this$0:Lmiui/external/SdkErrorActivity;

    invoke-static {v1}, Lmiui/external/SdkErrorActivity;->access$200(Lmiui/external/SdkErrorActivity;)Landroid/app/Dialog;

    move-result-object v0

    .line 94
    .local v0, "dialog":Landroid/app/Dialog;
    :goto_0
    new-instance v1, Lmiui/external/SdkErrorActivity$SdkDialogFragment;

    iget-object v2, p0, Lmiui/external/SdkErrorActivity$2$1;->this$1:Lmiui/external/SdkErrorActivity$2;

    iget-object v2, v2, Lmiui/external/SdkErrorActivity$2;->this$0:Lmiui/external/SdkErrorActivity;

    invoke-direct {v1, v2, v0}, Lmiui/external/SdkErrorActivity$SdkDialogFragment;-><init>(Lmiui/external/SdkErrorActivity;Landroid/app/Dialog;)V

    iget-object v2, p0, Lmiui/external/SdkErrorActivity$2$1;->this$1:Lmiui/external/SdkErrorActivity$2;

    iget-object v2, v2, Lmiui/external/SdkErrorActivity$2;->this$0:Lmiui/external/SdkErrorActivity;

    invoke-virtual {v2}, Lmiui/external/SdkErrorActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "SdkUpdateFinishDialog"

    invoke-virtual {v1, v2, v3}, Lmiui/external/SdkErrorActivity$SdkDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 95
    return-void

    .line 93
    .end local v0    # "dialog":Landroid/app/Dialog;
    :cond_0
    iget-object v1, p0, Lmiui/external/SdkErrorActivity$2$1;->this$1:Lmiui/external/SdkErrorActivity$2;

    iget-object v1, v1, Lmiui/external/SdkErrorActivity$2;->this$0:Lmiui/external/SdkErrorActivity;

    invoke-static {v1}, Lmiui/external/SdkErrorActivity;->access$300(Lmiui/external/SdkErrorActivity;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 78
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lmiui/external/SdkErrorActivity$2$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
