.class Lcom/miui/gallery/push/messagehandler/CloudControlMessageHandler$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "CloudControlMessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/push/messagehandler/CloudControlMessageHandler;->handleDirect(Landroid/content/Context;Lcom/miui/gallery/push/GalleryPushMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/miui/gallery/cloudcontrol/FeatureProfile;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/push/messagehandler/CloudControlMessageHandler;


# direct methods
.method constructor <init>(Lcom/miui/gallery/push/messagehandler/CloudControlMessageHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/push/messagehandler/CloudControlMessageHandler;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/miui/gallery/push/messagehandler/CloudControlMessageHandler$1;->this$0:Lcom/miui/gallery/push/messagehandler/CloudControlMessageHandler;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
