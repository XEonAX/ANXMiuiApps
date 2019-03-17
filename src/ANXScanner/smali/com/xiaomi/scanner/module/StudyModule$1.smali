.class Lcom/xiaomi/scanner/module/StudyModule$1;
.super Ljava/lang/Object;
.source "StudyModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/module/StudyModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/module/StudyModule;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/module/StudyModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/module/StudyModule;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/xiaomi/scanner/module/StudyModule$1;->this$0:Lcom/xiaomi/scanner/module/StudyModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 191
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 192
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/xiaomi/scanner/module/StudyModule$1;->this$0:Lcom/xiaomi/scanner/module/StudyModule;

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/module/StudyModule;->cancelWorkTask(Z)V

    .line 195
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
