.class interface abstract Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer$GetInfoFromNetTask;
.super Ljava/lang/Object;
.source "SyncPeopleFaceFromServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "GetInfoFromNetTask"
.end annotation


# virtual methods
.method public abstract run()Lorg/json/JSONObject;
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
.end method
