.class Lcom/miui/gallery/cloud/card/SyncCardToServer$1;
.super Ljava/lang/Object;
.source "SyncCardToServer.java"

# interfaces
.implements Lcom/miui/gallery/cloud/card/network/RequestArguments;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/cloud/card/SyncCardToServer;->syncCreateCard(Lcom/miui/gallery/card/Card;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/cloud/card/network/RequestArguments",
        "<",
        "Lcom/miui/gallery/cloud/card/model/CardCreateResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cloud/card/SyncCardToServer;


# direct methods
.method constructor <init>(Lcom/miui/gallery/cloud/card/SyncCardToServer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/cloud/card/SyncCardToServer;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/miui/gallery/cloud/card/SyncCardToServer$1;->this$0:Lcom/miui/gallery/cloud/card/SyncCardToServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMethod()I
    .locals 1

    .prologue
    .line 62
    const/16 v0, 0x3ea

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/miui/gallery/cloud/HostManager$Story;->getCreateCardUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
