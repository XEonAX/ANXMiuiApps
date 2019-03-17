.class Lcom/miui/gallery/share/PublicShareUiHandler$1;
.super Landroid/os/Handler;
.source "PublicShareUiHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/share/PublicShareUiHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/share/PublicShareUiHandler;


# direct methods
.method constructor <init>(Lcom/miui/gallery/share/PublicShareUiHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/share/PublicShareUiHandler;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/miui/gallery/share/PublicShareUiHandler$1;->this$0:Lcom/miui/gallery/share/PublicShareUiHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/miui/gallery/share/PublicShareUiHandler$1;->this$0:Lcom/miui/gallery/share/PublicShareUiHandler;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/miui/gallery/share/PublicShareUiHandler;->access$000(Lcom/miui/gallery/share/PublicShareUiHandler;I)V

    .line 48
    return-void
.end method
