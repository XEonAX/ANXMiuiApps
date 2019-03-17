.class final Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$a;
.super Landroid/os/AsyncTask;
.source "nexTemplateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/nexstreaming/nexeditorsdk/nexProject;

.field b:Ljava/lang/String;

.field c:Ljava/lang/Runnable;

.field d:Z

.field final synthetic e:Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;

.field private f:Z


# direct methods
.method constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;Lcom/nexstreaming/nexeditorsdk/nexProject;Ljava/lang/String;ZLjava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 679
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$a;->e:Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 680
    iput-object p2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$a;->a:Lcom/nexstreaming/nexeditorsdk/nexProject;

    .line 681
    iput-object p3, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$a;->b:Ljava/lang/String;

    .line 682
    iput-object p5, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$a;->c:Ljava/lang/Runnable;

    .line 683
    iput-boolean p4, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$a;->d:Z

    .line 684
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .prologue
    .line 689
    :try_start_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$a;->e:Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$a;->a:Lcom/nexstreaming/nexeditorsdk/nexProject;

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$a;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$a;->d:Z

    sget-object v4, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;->NONE:Lcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;->getValue()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->access$300(Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;Lcom/nexstreaming/nexeditorsdk/nexProject;Ljava/lang/String;ZI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$a;->f:Z
    :try_end_0
    .catch Lcom/nexstreaming/nexeditorsdk/exception/ExpiredTimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 690
    :catch_0
    move-exception v0

    .line 691
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/exception/ExpiredTimeException;->printStackTrace()V

    goto :goto_0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$a;->e:Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->access$400(Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$a;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$a;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 703
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->access$502(Z)Z

    .line 704
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 672
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$a;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 672
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$a;->a(Ljava/lang/Void;)V

    return-void
.end method
