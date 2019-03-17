.class Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer$2;
.super Ljava/lang/Object;
.source "SyncPeopleFaceFromServer.java"

# interfaces
.implements Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer$GetInfoFromNetTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->sync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;

.field final synthetic val$newFaceInfos:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer$2;->this$0:Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;

    iput-object p2, p0, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer$2;->val$newFaceInfos:Ljava/util/ArrayList;

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
    .line 121
    iget-object v0, p0, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer$2;->this$0:Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;

    iget-object v1, p0, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer$2;->val$newFaceInfos:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->access$100(Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;Ljava/util/ArrayList;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
