.class Lcom/miui/gallery/view/BrightnessManager$BrightnessAsynTask;
.super Landroid/os/AsyncTask;
.source "BrightnessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/view/BrightnessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BrightnessAsynTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/view/BrightnessManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/view/BrightnessManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/view/BrightnessManager;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/miui/gallery/view/BrightnessManager$BrightnessAsynTask;->this$0:Lcom/miui/gallery/view/BrightnessManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Float;
    .locals 6
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    const/high16 v5, -0x40800000    # -1.0f

    .line 47
    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/view/BrightnessManager$BrightnessAsynTask;->this$0:Lcom/miui/gallery/view/BrightnessManager;

    invoke-static {v2}, Lcom/miui/gallery/view/BrightnessManager;->access$000(Lcom/miui/gallery/view/BrightnessManager;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 48
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_3

    .line 49
    iget-object v2, p0, Lcom/miui/gallery/view/BrightnessManager$BrightnessAsynTask;->this$0:Lcom/miui/gallery/view/BrightnessManager;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/miui/gallery/view/BrightnessManager;->access$102(Lcom/miui/gallery/view/BrightnessManager;I)I

    .line 50
    iget-object v2, p0, Lcom/miui/gallery/view/BrightnessManager$BrightnessAsynTask;->this$0:Lcom/miui/gallery/view/BrightnessManager;

    invoke-static {v2}, Lcom/miui/gallery/view/BrightnessManager;->access$100(Lcom/miui/gallery/view/BrightnessManager;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 51
    iget-object v2, p0, Lcom/miui/gallery/view/BrightnessManager$BrightnessAsynTask;->this$0:Lcom/miui/gallery/view/BrightnessManager;

    invoke-static {v2}, Lcom/miui/gallery/view/BrightnessManager;->access$200(Lcom/miui/gallery/view/BrightnessManager;)F

    move-result v2

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_1

    .line 52
    iget-object v2, p0, Lcom/miui/gallery/view/BrightnessManager$BrightnessAsynTask;->this$0:Lcom/miui/gallery/view/BrightnessManager;

    invoke-static {v2}, Lcom/miui/gallery/view/BrightnessManager;->access$300(Lcom/miui/gallery/view/BrightnessManager;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 53
    iget-object v2, p0, Lcom/miui/gallery/view/BrightnessManager$BrightnessAsynTask;->this$0:Lcom/miui/gallery/view/BrightnessManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/miui/gallery/view/BrightnessManager;->access$102(Lcom/miui/gallery/view/BrightnessManager;I)I

    .line 54
    iget-object v2, p0, Lcom/miui/gallery/view/BrightnessManager$BrightnessAsynTask;->this$0:Lcom/miui/gallery/view/BrightnessManager;

    invoke-static {v2}, Lcom/miui/gallery/view/BrightnessManager;->access$200(Lcom/miui/gallery/view/BrightnessManager;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 68
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return-object v2

    .line 56
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/view/BrightnessManager$BrightnessAsynTask;->this$0:Lcom/miui/gallery/view/BrightnessManager;

    invoke-static {v2}, Lcom/miui/gallery/view/BrightnessManager;->access$300(Lcom/miui/gallery/view/BrightnessManager;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_0

    .line 59
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/view/BrightnessManager$BrightnessAsynTask;->this$0:Lcom/miui/gallery/view/BrightnessManager;

    invoke-static {v2}, Lcom/miui/gallery/view/BrightnessManager;->access$300(Lcom/miui/gallery/view/BrightnessManager;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_0

    .line 61
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/view/BrightnessManager$BrightnessAsynTask;->this$0:Lcom/miui/gallery/view/BrightnessManager;

    invoke-static {v2}, Lcom/miui/gallery/view/BrightnessManager;->access$100(Lcom/miui/gallery/view/BrightnessManager;)I

    move-result v2

    if-nez v2, :cond_3

    .line 62
    iget-object v2, p0, Lcom/miui/gallery/view/BrightnessManager$BrightnessAsynTask;->this$0:Lcom/miui/gallery/view/BrightnessManager;

    invoke-static {v2}, Lcom/miui/gallery/view/BrightnessManager;->access$200(Lcom/miui/gallery/view/BrightnessManager;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 65
    .end local v0    # "activity":Landroid/app/Activity;
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 68
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_3
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/view/BrightnessManager$BrightnessAsynTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Float;)V
    .locals 4
    .param p1, "resultBrightness"    # Ljava/lang/Float;

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 74
    invoke-virtual {p0}, Lcom/miui/gallery/view/BrightnessManager$BrightnessAsynTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/miui/gallery/view/BrightnessManager$BrightnessAsynTask;->this$0:Lcom/miui/gallery/view/BrightnessManager;

    iget-object v1, p0, Lcom/miui/gallery/view/BrightnessManager$BrightnessAsynTask;->this$0:Lcom/miui/gallery/view/BrightnessManager;

    invoke-static {v1}, Lcom/miui/gallery/view/BrightnessManager;->access$400(Lcom/miui/gallery/view/BrightnessManager;)Z

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lcom/miui/gallery/view/BrightnessManager$BrightnessAsynTask;->this$0:Lcom/miui/gallery/view/BrightnessManager;

    invoke-static {v3}, Lcom/miui/gallery/view/BrightnessManager;->access$100(Lcom/miui/gallery/view/BrightnessManager;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/gallery/view/BrightnessManager;->adjustBrightnessTask(ZFI)V

    .line 77
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 43
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/view/BrightnessManager$BrightnessAsynTask;->onPostExecute(Ljava/lang/Float;)V

    return-void
.end method
