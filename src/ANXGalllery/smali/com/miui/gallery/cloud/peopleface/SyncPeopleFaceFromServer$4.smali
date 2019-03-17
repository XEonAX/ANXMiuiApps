.class Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer$4;
.super Ljava/lang/Object;
.source "SyncPeopleFaceFromServer.java"

# interfaces
.implements Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer$GetInfoFromNetTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->getFaceConcreteInfoList(Ljava/util/ArrayList;)Lorg/json/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;

.field final synthetic val$urlParam:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer$4;->this$0:Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;

    iput-object p2, p0, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer$4;->val$urlParam:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Ljava/net/URISyntaxException;,
            Lcom/miui/gallery/cloud/GalleryMiCloudServerException;
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer$4;->this$0:Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;

    iget-object v1, p0, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer$4;->val$urlParam:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->access$200(Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
