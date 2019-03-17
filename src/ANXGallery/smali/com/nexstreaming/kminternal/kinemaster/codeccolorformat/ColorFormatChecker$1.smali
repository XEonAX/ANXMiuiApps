.class final Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$1;
.super Landroid/os/AsyncTask;
.source "ColorFormatChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;->a(Landroid/content/Context;)Lcom/nexstreaming/app/common/task/ResultTask;
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
        "Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/nexstreaming/app/common/task/Task$TaskError;

.field final synthetic b:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 1

    .prologue
    .line 43
    iput-object p1, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$1;->b:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$1;->a:Lcom/nexstreaming/app/common/task/Task$TaskError;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 50
    :try_start_0
    new-instance v1, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;-><init>(Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$1;)V

    .line 51
    invoke-static {v1}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;->a(Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;)Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    .line 52
    :catch_0
    move-exception v1

    .line 53
    const-string v2, "Error getting color format"

    invoke-static {v2, v1}, Lcom/nexstreaming/app/common/task/Task;->makeTaskError(Ljava/lang/String;Ljava/lang/Exception;)Lcom/nexstreaming/app/common/task/Task$TaskError;

    move-result-object v1

    iput-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$1;->a:Lcom/nexstreaming/app/common/task/Task$TaskError;

    goto :goto_0
.end method

.method protected a(Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;)V
    .locals 3

    .prologue
    .line 60
    if-eqz p1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$1;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "km_detected_codec_color_format"

    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 62
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;->a()Lcom/nexstreaming/app/common/task/ResultTask;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nexstreaming/app/common/task/ResultTask;->sendResult(Ljava/lang/Object;)V

    .line 66
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 67
    return-void

    .line 64
    :cond_0
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;->a()Lcom/nexstreaming/app/common/task/ResultTask;

    move-result-object v0

    iget-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$1;->a:Lcom/nexstreaming/app/common/task/Task$TaskError;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/task/ResultTask;->sendFailure(Lcom/nexstreaming/app/common/task/Task$TaskError;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$1;->a([Ljava/lang/Void;)Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 43
    check-cast p1, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;

    invoke-virtual {p0, p1}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$1;->a(Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;)V

    return-void
.end method
