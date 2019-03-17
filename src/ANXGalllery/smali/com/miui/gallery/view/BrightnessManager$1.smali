.class Lcom/miui/gallery/view/BrightnessManager$1;
.super Landroid/database/ContentObserver;
.source "BrightnessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/view/BrightnessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/view/BrightnessManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/view/BrightnessManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/view/BrightnessManager;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/miui/gallery/view/BrightnessManager$1;->this$0:Lcom/miui/gallery/view/BrightnessManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 133
    iget-object v1, p0, Lcom/miui/gallery/view/BrightnessManager$1;->this$0:Lcom/miui/gallery/view/BrightnessManager;

    invoke-static {v1}, Lcom/miui/gallery/view/BrightnessManager;->access$500(Lcom/miui/gallery/view/BrightnessManager;)Landroid/app/Activity;

    move-result-object v0

    .line 134
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/view/BrightnessManager$1;->this$0:Lcom/miui/gallery/view/BrightnessManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/miui/gallery/view/BrightnessManager;->access$402(Lcom/miui/gallery/view/BrightnessManager;Z)Z

    .line 137
    iget-object v1, p0, Lcom/miui/gallery/view/BrightnessManager$1;->this$0:Lcom/miui/gallery/view/BrightnessManager;

    invoke-static {v1}, Lcom/miui/gallery/view/BrightnessManager;->access$600(Lcom/miui/gallery/view/BrightnessManager;)V

    goto :goto_0
.end method
